void storeEnumTagSinglePayload for MLS.OutgoingFailureToDecrypt(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.OutgoingRemoveSelf(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingRemoveSelf(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingRemoveSelf(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.OutgoingKeyUpdate(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingKeyUpdate(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingKeyUpdate(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.OutgoingGroupNameChange(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingGroupNameChange(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingGroupNameChange(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingCreateGroup(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((((((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingCreateGroup(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.OutgoingGroupRepaired(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingGroupRepaired(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingGroupRepaired(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.OutgoingErrorOccurred(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  result = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingErrorOccurred(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 60;
  v9 = ((v7 + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v7 + 60 > v9;
  v11 = *(v4 - 8);
  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v13)
  {
    v19 = 7;
  }

  else
  {
    v19 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v16 & 0xF8 | 7;
  v21 = v17 + v12 + 1;
  if (v15 >= a2)
  {
    goto LABEL_37;
  }

  v22 = ((v19 + v18 + ((v21 + (((v16 & 0xF8) + 39) & ~v20)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = a2 - v15;
  v24 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = v23 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v28 = *(a1 + v22);
      if (!v28)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = *(a1 + v22);
      if (!v28)
      {
        goto LABEL_37;
      }
    }
  }

  else if (!v27 || (v28 = *(a1 + v22)) == 0)
  {
LABEL_37:
    if ((v14 & 0x80000000) != 0)
    {
      v32 = (*(*(v4 - 8) + 48))((v21 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v20 + 16) & ~v20)) & ~v17);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v31 = *(a1 + 8);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }
  }

  v30 = v28 - 1;
  if (v24)
  {
    v30 = 0;
    LODWORD(v24) = *a1;
  }

  return v15 + (v24 | v30) + 1;
}

void storeEnumTagSinglePayload for MLS.OutgoingErrorOccurred(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 60;
  v11 = ((v9 + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v9 + 60 > v11;
  v13 = *(v6 - 8);
  if (v12)
  {
    v11 = v10;
  }

  v14 = *(v6 - 8);
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80) & 0xF8;
  v19 = v18 | 7;
  v20 = (v18 + 39) & ~(v18 | 7);
  v21 = *(v13 + 80);
  v22 = v21 + v11 + 1;
  v23 = *(v13 + 64);
  if (!v15)
  {
    ++v23;
  }

  v24 = ((v23 + ((v22 + v20) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 < a3)
  {
    v25 = a3 - v17;
    if (((v23 + ((v22 + v20) & ~v21) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v5 = v27;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((v23 + ((v22 + v20) & ~v21) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v28 = a2 - v17;
    }

    else
    {
      v28 = 1;
    }

    if (((v23 + ((v22 + v20) & ~v21) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v29 = ~v17 + a2;
      v30 = a1;
      bzero(a1, v24);
      a1 = v30;
      *v30 = v29;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v24) = v28;
      }

      else
      {
        *(a1 + v24) = v28;
      }
    }

    else if (v5)
    {
      *(a1 + v24) = v28;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v24) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v5)
  {
    goto LABEL_39;
  }

  *(a1 + v24) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if ((v16 & 0x80000000) != 0)
  {
    v31 = ((v22 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v19 + 16) & ~v19)) & ~v21);
    if (v16 >= a2)
    {
      v35 = *(v14 + 56);
      v36 = a2 + 1;
      v37 = (v22 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v19 + 16) & ~v19)) & ~v21;

      v35(v37, v36);
    }

    else
    {
      if (v23 <= 3)
      {
        v32 = ~(-1 << (8 * v23));
      }

      else
      {
        v32 = -1;
      }

      if (v23)
      {
        v33 = v32 & (~v16 + a2);
        if (v23 <= 3)
        {
          v34 = v23;
        }

        else
        {
          v34 = 4;
        }

        bzero(v31, v23);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            *v31 = v33;
            v31[2] = BYTE2(v33);
          }

          else
          {
            *v31 = v33;
          }
        }

        else if (v34 == 1)
        {
          *v31 = v33;
        }

        else
        {
          *v31 = v33;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.OutgoingErrorOccurred.Trigger(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_getTupleTypeMetadata3();
  if (v3 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingErrorOccurred.Trigger(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 60;
  v5 = ((v3 + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v4 > v5)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 | 1;
  if ((v5 | 1) <= 3)
  {
    v7 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v14 = a1[v5];
    if (v14 >= 3)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 254;
}

void storeEnumTagSinglePayload for MLS.OutgoingErrorOccurred.Trigger(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 60;
  v7 = ((v5 + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 > v7)
  {
    v7 = v6;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v7] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 254;
  v13 = (a2 - 254) >> 8;
  bzero(a1, v7 | 1);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingDowngrade.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingDowngrade.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingKickMember.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingKickMember.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MLS.KickMembersOperation.group.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MLS.KickMembersOperation.context.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);
}

uint64_t MLS.KickMembersOperation.persister.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  return swift_unknownObjectRetain();
}

uint64_t MLS.KickMembersOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  a1[1] = v2;
}

uint64_t MLS.KickMembersOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KickMembersOperation.__allocating_init(otherMembers:group:context:credentialProvider:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  v24 = a4[1];
  v25 = *a4;
  v20 = *(a4 + 4);
  v22 = *a8;
  v21 = a8[1];
  Logger.init(subsystem:category:)();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = v25;
  *(v19 + 56) = v24;
  *(v19 + 72) = v20;
  outlined init with take of MLS.KeyUpdatePolicy(a5, v19 + 80);
  *(v19 + 120) = a6;
  *(v19 + 128) = a7;
  *(v19 + 136) = v22;
  *(v19 + 144) = v21;
  return v19;
}

uint64_t MLS.KickMembersOperation.init(otherMembers:group:context:credentialProvider:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v19 = a4[1];
  v20 = *a4;
  v15 = *(a4 + 4);
  v16 = *a8;
  v17 = a8[1];
  Logger.init(subsystem:category:)();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = v20;
  *(v8 + 56) = v19;
  *(v8 + 72) = v15;
  outlined init with take of MLS.KeyUpdatePolicy(a5, v8 + 80);
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 136) = v16;
  *(v8 + 144) = v17;
  return v8;
}

uint64_t MLS.KickMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[138] = v3;
  v4[137] = a2;
  v4[136] = a1;
  v6 = type metadata accessor for MLS.MLSError();
  v4[139] = v6;
  v7 = *(v6 - 8);
  v4[140] = v7;
  v8 = *(v7 + 64) + 15;
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[144] = v9;
  v10 = *(v9 - 8);
  v4[145] = v10;
  v11 = *(v10 + 64) + 15;
  v4[146] = swift_task_alloc();
  v12 = type metadata accessor for MetricCollector.Event();
  v4[147] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v4[150] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  v4[151] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), v14, 0);
}

uint64_t MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v19 = v0;
  v1 = v0[138];
  v0[135] = v0[150];
  v2 = *(v1 + 40);
  v0[152] = v2;
  v3 = *(v1 + 48);
  v0[153] = v3;
  v0[154] = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[138];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v18);
    *(v7 + 12) = 2080;
    v9 = MEMORY[0x266754630](*(v6 + 16), &type metadata for MLS.AllMember);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_264F1F000, v4, v5, "KickMembersOperation finding identities of members { identifier: %s, identities: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v12 = v0[137];
  outlined init with copy of ServerBag.MLS(v0[138] + 80, (v0 + 88));
  v13 = v0[91];
  v0[155] = v13;
  v0[156] = v0[92];
  v0[157] = __swift_project_boxed_opaque_existential_1(v0 + 88, v13);
  v14 = v12[3];
  v15 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  v16 = swift_task_alloc();
  v0[158] = v16;
  *v16 = v0;
  v16[1] = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v14, v15);
}

{
  v109 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1256);
  v4 = *(v0 + 1248);
  v5 = *(v0 + 1240);
  *(v0 + 1288) = *(*(v0 + 1104) + 16);

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v6);

  v8 = (*(v4 + 24))(v2, v7, v5, v4);
  v9 = *(v0 + 1272);
  if (v1)
  {
    v10 = v1;
    v11 = *(v0 + 1080);

    v12 = *(v0 + 1144);
    v13 = *(v0 + 1112);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));
    *(v0 + 1040) = v1;
    v14 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = swift_dynamicCast();
    v16 = *(v0 + 1232);
    v17 = *(v0 + 1224);
    if (v15)
    {
      v18 = *(v0 + 1144);
      v19 = *(v0 + 1136);
      v20 = *(v0 + 1128);
      v21 = *(v0 + 1120);
      v22 = *(v0 + 1112);
      v23 = *(v0 + 1104);

      (*(v21 + 32))(v19, v18, v22);
      v24 = v20;
      v25 = *(v21 + 16);
      v25(v24, v19, v22);

      v26 = Logger.logObject.getter();
      LOBYTE(v19) = static os_log_type_t.error.getter();

      v106 = v19;
      v27 = os_log_type_enabled(v26, v19);
      v28 = *(v0 + 1224);
      if (v27)
      {
        v29 = *(v0 + 1216);
        v30 = *(v0 + 1128);
        v31 = *(v0 + 1120);
        v32 = *(v0 + 1112);
        v33 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v108 = v105;
        *v33 = 136315394;
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v108);

        *(v33 + 4) = v34;
        *(v33 + 12) = 2112;
        _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
        swift_allocError();
        v25(v35, v30, v32);
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = *(v31 + 8);
        v38 = v32;
        v39 = v25;
        v37(v30, v38);
        *(v33 + 14) = v36;
        *v104 = v36;
        _os_log_impl(&dword_264F1F000, v26, v106, "KickMembersOperation failed to retrieve credentials in group { identifier: %s, error: %@ }", v33, 0x16u);
        outlined destroy of NSObject?(v104, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v104, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        MEMORY[0x266755550](v105, -1, -1);
        MEMORY[0x266755550](v33, -1, -1);
      }

      else
      {
        v80 = *(v0 + 1128);
        v81 = *(v0 + 1120);
        v82 = *(v0 + 1112);
        v83 = *(v0 + 1224);

        v37 = *(v81 + 8);
        v39 = v25;
        v37(v80, v82);
      }

      v84 = *(v0 + 1136);
      v85 = *(v0 + 1112);
      _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
      swift_allocError();
      v39(v86, v84, v85);
      swift_willThrow();
      v37(v84, v85);
      v87 = *(v0 + 1040);
LABEL_16:

      v93 = *(v0 + 1192);
      v94 = *(v0 + 1184);
      v95 = *(v0 + 1168);
      v96 = *(v0 + 1144);
      v97 = *(v0 + 1136);
      v98 = *(v0 + 1128);

      v99 = *(v0 + 8);

      return v99();
    }

LABEL_10:
    v67 = *(v0 + 1104);

    v68 = v10;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v0 + 1224);
    if (v71)
    {
      v73 = *(v0 + 1216);
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v108 = v76;
      *v74 = 136315394;
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v72, &v108);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2112;
      v78 = v10;
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 14) = v79;
      *v75 = v79;
      _os_log_impl(&dword_264F1F000, v69, v70, "KickMembersOperation failed to find credentials for members { identifier: %s, error: %@ }", v74, 0x16u);
      outlined destroy of NSObject?(v75, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v75, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266755550](v76, -1, -1);
      MEMORY[0x266755550](v74, -1, -1);
    }

    else
    {
    }

    swift_getErrorValue();
    v88 = *(v0 + 848);
    v89 = Error.readableDescription.getter(*(v0 + 856), *(v0 + 864));
    v91 = v90;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v92 = 9;
    *(v92 + 8) = v89;
    *(v92 + 16) = v91;
    swift_willThrow();
    v87 = v10;
    goto LABEL_16;
  }

  v40 = v8;
  v41 = *(v0 + 1232);
  v42 = *(v0 + 1224);
  v43 = *(v0 + 1104);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 1224);
    v47 = *(v0 + 1216);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v108 = v49;
    *v48 = 136315394;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v108);
    *(v48 + 12) = 2080;
    type metadata accessor for MLS.Identity.SigningIdentity();
    _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity, MEMORY[0x277D6AC60]);
    v50 = Set.description.getter();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v108);

    *(v48 + 14) = v52;
    _os_log_impl(&dword_264F1F000, v44, v45, "KickMembersOperation removing identities from group { identifier: %s, identities: %s }", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v49, -1, -1);
    MEMORY[0x266755550](v48, -1, -1);
  }

  v53 = *(v0 + 1192);
  v54 = *(v0 + 1184);
  v55 = *(v0 + 1176);
  v56 = *(v0 + 1096);
  Date.init()();
  v57 = *(v55 + 20);
  v58 = type metadata accessor for Date();
  (*(*(v58 - 8) + 56))(v53 + v57, 1, 1, v58);
  outlined init with take of MetricCollector.Event(v53, v54);
  v59 = *(v0 + 1080);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = v59;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v61 = v108;
  *(v0 + 1296) = v108;

  *(v0 + 1080) = v61;
  v62 = v56[3];
  v10 = v56[4];
  __swift_project_boxed_opaque_existential_1(v56, v62);
  v63 = *(v40 + 16);
  if (v63)
  {
    v64 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8SwiftMLS0I0O8IdentityO07SigningJ0V_Tt1g5(*(v40 + 16), 0);
    v65 = *(type metadata accessor for MLS.Identity.SigningIdentity() - 8);
    v66 = specialized Sequence._copySequenceContents(initializing:)(&v108, (v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80))), v63, v40);
    outlined consume of Set<MLS.UniqueClientIdentifier>.Iterator._Variant();
    if (v66 != v63)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  else
  {

    v64 = MEMORY[0x277D84F90];
  }

  *(v0 + 1304) = v64;
  v101 = v10[24];
  v107 = (v101 + *v101);
  v102 = v101[1];
  v103 = swift_task_alloc();
  *(v0 + 1312) = v103;
  *v103 = v0;
  v103[1] = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return (v107)(v0 + 744, v64, v62, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1312);
  v4 = *v1;
  v2[165] = v0;

  v5 = v2[163];
  if (v0)
  {
    v6 = v2[162];
    v7 = v2[153];
    v8 = v2[151];

    v9 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
    v10 = v8;
  }

  else
  {
    v11 = v2[151];

    v9 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
    v10 = v11;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

{
  v80 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1104);
  v5._countAndFlagsBits = 0x534C4D7466697753;
  v5._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v5);
  outlined init with copy of ServerBag.MLS(v0 + 744, v0 + 784);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1224);
    v9 = *(v0 + 1216);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v74 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v74);
    *(v10 + 12) = 2080;
    v12 = *(v0 + 808);
    __swift_project_boxed_opaque_existential_1((v0 + 784), v12);
    v13 = *(v12 - 8);
    v14 = *(v13 + 64) + 15;
    swift_task_alloc();
    (*(v13 + 16))();
    v15 = String.init<A>(describing:)();
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 784));
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v74);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v6, v7, "KickMembersOperation creating event { identifier: %s, commitOutput: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 784));
  }

  v19 = *(v0 + 1320);
  v20 = *(v0 + 1104);
  v21 = *(v0 + 768);
  v22 = *(v0 + 776);
  __swift_project_boxed_opaque_existential_1((v0 + 744), v21);
  MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(v21, v22, &v74);
  v24 = v74;
  v23 = v75;
  *(v0 + 1328) = v75;
  v26 = v76;
  v25 = v77;
  *(v0 + 1336) = v76;
  *(v0 + 1344) = v25;
  specialized MLS.GroupOperation.context(commitOutput:)((v0 + 744), &v74);
  v27 = v74;
  v28 = v75;
  *(v0 + 1352) = v74;
  *(v0 + 1360) = v28;
  v29 = v76;
  v30 = v77;
  *(v0 + 1368) = v76;
  *(v0 + 1376) = v30;
  v31 = v78;
  v32 = v79;
  *(v0 + 1384) = v78;
  *(v0 + 1392) = v32;
  if (v19)
  {
    v33 = *(v0 + 1288);
    v34 = *(v0 + 1224);
    v35 = *(v0 + 1080);

    outlined consume of Data._Representation(v26, v25);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));
    v36 = *(v0 + 1192);
    v37 = *(v0 + 1184);
    v38 = *(v0 + 1168);
    v39 = *(v0 + 1144);
    v40 = *(v0 + 1136);
    v41 = *(v0 + 1128);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v44 = *(v0 + 1288);
    v67 = *(v0 + 1224);
    v68 = v27;
    v69 = *(v0 + 1216);
    v70 = v32;
    v45 = *(v0 + 1168);
    v46 = *(v0 + 1160);
    v63 = v24;
    v64 = v28;
    v47 = *(v0 + 1152);
    v48 = *(v0 + 1104);
    v72 = v30;
    v73 = v29;
    v71 = v31;

    UUID.init()();
    v62 = UUID.uuidString.getter();
    v66 = v49;
    (*(v46 + 8))(v45, v47);
    v65 = v48;
    v50 = *(v48 + 56);
    v51 = *(v48 + 64);
    v52 = *(v0 + 1080);

    outlined copy of Data?(v50, v51);

    outlined copy of Data._Representation(v26, v25);
    v53 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v44);

    *(v0 + 344) = v69;
    *(v0 + 352) = v67;
    *(v0 + 360) = v62;
    *(v0 + 368) = v66;
    *(v0 + 376) = v50;
    *(v0 + 384) = v51;
    *(v0 + 392) = v52;
    *(v0 + 400) = v63;
    *(v0 + 408) = v23;
    *(v0 + 416) = v26;
    *(v0 + 424) = v25;
    *(v0 + 432) = v53;
    *(v0 + 440) = v68;
    *(v0 + 448) = v64;
    *(v0 + 456) = v73;
    *(v0 + 464) = v72;
    *(v0 + 472) = v71;
    *(v0 + 480) = v70;
    v54 = *(v0 + 360);
    *(v0 + 16) = *(v0 + 344);
    *(v0 + 32) = v54;
    v55 = *(v0 + 472);
    *(v0 + 128) = *(v0 + 456);
    *(v0 + 144) = v55;
    v56 = *(v0 + 440);
    *(v0 + 96) = *(v0 + 424);
    *(v0 + 112) = v56;
    v57 = *(v0 + 408);
    *(v0 + 64) = *(v0 + 392);
    *(v0 + 80) = v57;
    *(v0 + 48) = *(v0 + 376);
    _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi1_(v0 + 16);
    v58 = *(v65 + 56);
    v59 = *(v65 + 64);
    *(v0 + 632) = v62;
    *(v0 + 640) = v66;
    *(v0 + 648) = v44;
    *(v0 + 656) = 0;
    *(v0 + 664) = 2;
    *(v0 + 672) = v69;
    *(v0 + 680) = v67;
    *(v0 + 688) = v58;
    *(v0 + 696) = v59;
    *(v0 + 624) = v59;
    v60 = *(v0 + 680);
    *(v0 + 592) = *(v0 + 664);
    *(v0 + 608) = v60;
    v61 = *(v0 + 648);
    *(v0 + 560) = *(v0 + 632);
    *(v0 + 576) = v61;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    outlined copy of Data._Representation(v68, v64);
    outlined copy of Data?(v73, v72);
    outlined copy of Data._Representation(v71, v70);
    outlined init with copy of MLS.OutgoingKickMember<MLS.AllMember, Data>(v0 + 344, v0 + 200);

    outlined copy of Data?(v58, v59);
    outlined init with copy of MLS.OutgoingEventState(v0 + 632, v0 + 488);

    return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }
}

{
  v1 = v0[161];
  v2 = v0[138];
  v4 = v2[15];
  v3 = v2[16];
  ObjectType = swift_getObjectType();
  v6 = v2[3];
  v7 = v2[4];

  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v8);
  v0[175] = v9;

  v10 = v2[18];
  v0[127] = v2[17];
  v0[128] = v10;

  v11 = swift_task_alloc();
  v0[176] = v11;
  *v11 = v0;
  v11[1] = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.Persister.removePendingMembers(identifier:otherMembers:clientIdentifier:)(v6, v7, v9, v0 + 127, ObjectType, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1408);
  v4 = *v1;
  v2[177] = v0;

  v5 = v2[175];
  v6 = v2[153];
  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState((v2 + 79));

    v7 = v2[128];

    v8 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v9 = v2[138];

    v10 = v2[128];

    v8 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[153];
  v2 = v0[151];
  v3 = v0[138];

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), v2, 0);
}

{
  v14 = v0;
  v1 = v0[154];
  v2 = v0[153];
  v3 = v0[138];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[153];
    v7 = v0[152];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v13);
    _os_log_impl(&dword_264F1F000, v4, v5, "KickMembersOperation returning operation result { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = v0[153];
  v11 = v0[138];
  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1080);

  swift_getErrorValue();
  v7 = *(v0 + 872);
  v8 = Error.readableDescription.getter(*(v0 + 880), *(v0 + 888));
  closure #1 in MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(v8, v9, v5, v3, v2, "KickMembersOperation failed to remove members { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 896);
  v11 = Error.readableDescription.getter(*(v0 + 904), *(v0 + 912));
  *(v0 + 1424) = v11;
  *(v0 + 1432) = v12;
  *(v0 + 920) = 8;
  *(v0 + 928) = v11;
  *(v0 + 936) = v12;
  *(v0 + 1440) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[180];
  v2 = v0[179];
  v3 = v0[178];
  v20 = v0[173];
  v21 = v0[174];
  v4 = v0[172];
  v5 = v0[171];
  v6 = v0[170];
  v7 = v0[169];
  v8 = v0[168];
  v9 = v0[167];
  v10 = v0[166];
  swift_allocError();
  *v11 = 8;
  *(v11 + 8) = v3;
  *(v11 + 16) = v2;

  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data?(v5, v4);
  outlined consume of Data._Representation(v20, v21);
  outlined destroy of NSObject?((v0 + 43), &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState((v0 + 79));
  outlined destroy of NSObject?((v0 + 43), &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 93);
  v12 = v0[149];
  v13 = v0[148];
  v14 = v0[146];
  v15 = v0[143];
  v16 = v0[142];
  v17 = v0[141];

  v18 = v0[1];

  return v18();
}

{
  v1 = *(v0 + 1096);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 1448) = v4;
  *v4 = v0;
  v4[1] = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 944, v3, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1448);
  v8 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 632);
    v4 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = *(v2 + 1224);
    v6 = *(v2 + 1104);

    v4 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v29 = *(v0 + 196);
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1368);
  v5 = *(v0 + 1360);
  v6 = *(v0 + 1352);
  v26 = *(v0 + 1336);
  v27 = *(v0 + 1344);
  v7 = *(v0 + 1328);
  v30 = *(v0 + 1464);
  v31 = *(v0 + 1192);
  v32 = *(v0 + 1184);
  v33 = *(v0 + 1168);
  v34 = *(v0 + 1144);
  v35 = *(v0 + 1136);
  v36 = *(v0 + 1128);
  v28 = *(v0 + 1096);
  v8 = *(v0 + 1088);
  outlined destroy of NSObject?(v0 + 344, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data?(v4, v3);
  outlined consume of Data._Representation(v6, v5);

  outlined consume of Data._Representation(v26, v27);
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 64);
  *(v8 + 32) = *(v0 + 48);
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = *(v0 + 80);
  v13 = *(v0 + 96);
  v14 = *(v0 + 128);
  *(v8 + 96) = *(v0 + 112);
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  v15 = *(v0 + 144);
  v16 = *(v0 + 160);
  v17 = *(v0 + 176);
  *(v8 + 176) = *(v0 + 192);
  *(v8 + 144) = v16;
  *(v8 + 160) = v17;
  *(v8 + 128) = v15;
  *(v8 + 184) = *(v0 + 560);
  v18 = *(v0 + 576);
  v19 = *(v0 + 592);
  v20 = *(v0 + 608);
  *(v8 + 248) = *(v0 + 624);
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = v18;
  *(v8 + 256) = 0;
  *(v8 + 264) = v29;
  *(v8 + 272) = v29;
  *(v8 + 280) = v30;
  *(v8 + 288) = *(v0 + 632);
  v21 = *(v0 + 648);
  v22 = *(v0 + 664);
  v23 = *(v0 + 680);
  *(v8 + 352) = *(v0 + 696);
  *(v8 + 320) = v22;
  *(v8 + 336) = v23;
  *(v8 + 304) = v21;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v28, v8 + 368);
  *(v8 + 408) = 0;
  *(v8 + 416) = *(v0 + 1080);
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 744));

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1080);

  swift_getErrorValue();
  v7 = *(v0 + 968);
  v8 = Error.readableDescription.getter(*(v0 + 976), *(v0 + 984));
  closure #1 in MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(v8, v9, v5, v3, v2, "KickMembersOperation failed to obtain era { identifier: %s, error: %s }");

  swift_getErrorValue();
  v10 = *(v0 + 992);
  v11 = Error.readableDescription.getter(*(v0 + 1000), *(v0 + 1008));
  *(v0 + 1472) = v11;
  *(v0 + 1480) = v12;
  *(v0 + 824) = 6;
  *(v0 + 832) = v11;
  *(v0 + 840) = v12;
  *(v0 + 1488) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[186];
  v2 = v0[185];
  v3 = v0[184];
  v20 = v0[173];
  v21 = v0[174];
  v4 = v0[172];
  v5 = v0[171];
  v6 = v0[170];
  v7 = v0[169];
  v8 = v0[168];
  v9 = v0[167];
  v10 = v0[166];
  swift_allocError();
  *v11 = 6;
  *(v11 + 8) = v3;
  *(v11 + 16) = v2;

  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data?(v5, v4);
  outlined consume of Data._Representation(v20, v21);
  outlined destroy of NSObject?((v0 + 43), &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  outlined destroy of MLS.OutgoingEventState((v0 + 79));
  outlined destroy of NSObject?((v0 + 43), &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 93);
  v12 = v0[149];
  v13 = v0[148];
  v14 = v0[146];
  v15 = v0[143];
  v16 = v0[142];
  v17 = v0[141];

  v18 = v0[1];

  return v18();
}

{
  v69 = v0;
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1112);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 704));
  *(v0 + 1040) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 1232);
  v7 = *(v0 + 1224);
  if (v5)
  {
    v8 = *(v0 + 1144);
    v9 = *(v0 + 1136);
    v10 = *(v0 + 1128);
    v11 = *(v0 + 1120);
    v12 = *(v0 + 1112);
    v13 = *(v0 + 1104);

    (*(v11 + 32))(v9, v8, v12);
    v14 = v12;
    v15 = *(v11 + 16);
    v15(v10, v9, v14);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1224);
    if (v18)
    {
      v20 = *(v0 + 1216);
      v21 = *(v0 + 1128);
      v22 = *(v0 + 1120);
      v67 = v15;
      v23 = *(v0 + 1112);
      v65 = v17;
      v24 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68[0] = v66;
      *v24 = 136315394;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v68);

      *(v24 + 4) = v25;
      *(v24 + 12) = 2112;
      _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
      swift_allocError();
      v67(v26, v21, v23);
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = *(v22 + 8);
      v29 = v23;
      v15 = v67;
      v28(v21, v29);
      *(v24 + 14) = v27;
      *v64 = v27;
      _os_log_impl(&dword_264F1F000, v16, v65, "KickMembersOperation failed to retrieve credentials in group { identifier: %s, error: %@ }", v24, 0x16u);
      outlined destroy of NSObject?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x266755550](v66, -1, -1);
      MEMORY[0x266755550](v24, -1, -1);
    }

    else
    {
      v43 = *(v0 + 1128);
      v44 = *(v0 + 1120);
      v45 = *(v0 + 1112);
      v46 = *(v0 + 1224);

      v28 = *(v44 + 8);
      v28(v43, v45);
    }

    v47 = *(v0 + 1136);
    v48 = *(v0 + 1112);
    _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.MLSError and conformance MLS.MLSError, MEMORY[0x277D6AEB0]);
    swift_allocError();
    v15(v49, v47, v48);
    swift_willThrow();
    v28(v47, v48);
    v50 = *(v0 + 1040);
  }

  else
  {
    v30 = *(v0 + 1104);

    v31 = v1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 1224);
    if (v34)
    {
      v36 = *(v0 + 1216);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68[0] = v39;
      *v37 = 136315394;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v68);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2112;
      v41 = v1;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v42;
      *v38 = v42;
      _os_log_impl(&dword_264F1F000, v32, v33, "KickMembersOperation failed to find credentials for members { identifier: %s, error: %@ }", v37, 0x16u);
      outlined destroy of NSObject?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266755550](v39, -1, -1);
      MEMORY[0x266755550](v37, -1, -1);
    }

    else
    {
    }

    swift_getErrorValue();
    v51 = *(v0 + 848);
    v52 = Error.readableDescription.getter(*(v0 + 856), *(v0 + 864));
    v54 = v53;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    swift_allocError();
    *v55 = 9;
    *(v55 + 8) = v52;
    *(v55 + 16) = v54;
    swift_willThrow();
    v50 = v1;
  }

  v56 = *(v0 + 1192);
  v57 = *(v0 + 1184);
  v58 = *(v0 + 1168);
  v59 = *(v0 + 1144);
  v60 = *(v0 + 1136);
  v61 = *(v0 + 1128);

  v62 = *(v0 + 8);

  return v62();
}

{
  v1 = v0[165];
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[146];
  v5 = v0[143];
  v6 = v0[142];
  v7 = v0[141];

  v8 = v0[1];

  return v8();
}

uint64_t MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1264);
  v10 = *v2;
  v3[159] = a1;
  v3[160] = v1;

  if (v1)
  {
    v5 = v3[151];
    v6 = v3[135];

    v7 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v5;
  }

  else
  {
    v8 = v3[151];
    v7 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 960);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 1224);
    v9 = *(v3 + 1208);
    v10 = *(v3 + 1104);
    *(v3 + 1464) = v7;
    *(v3 + 196) = *(v3 + 952);

    a1 = MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:);
    a2 = v9;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void closure #1 in MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_264F1F000, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }
}

void *MLS.KickMembersOperation.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];

  outlined consume of Data?(v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v7 = v0[15];
  swift_unknownObjectRelease();
  v8 = v0[18];

  v9 = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t MLS.KickMembersOperation.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];

  outlined consume of Data?(v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v7 = v0[15];
  swift_unknownObjectRelease();
  v8 = v0[18];

  v9 = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.KickMembersOperation(uint64_t a1)
{
  v4 = *(**v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.KickMembersOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 200);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.KickMembersOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS20KickMembersOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t outlined init with copy of MLS.OutgoingKickMember<MLS.AllMember, Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingKickMemberVy_AC03AllF0O10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for MLS.KickMembersOperation(uint64_t a1)
{
  result = _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KickMembersOperation and conformance MLS.KickMembersOperation, type metadata accessor for MLS.KickMembersOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8SwiftMLS0B0O8MLSErrorOAEs5ErrorAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MLS.KickMembersOperation()
{
  result = type metadata singleton initialization cache for MLS.KickMembersOperation;
  if (!type metadata singleton initialization cache for MLS.KickMembersOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.KickMembersOperation()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.KickMembersOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.KickMembersOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 200);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:)();
}

{
  return MEMORY[0x2822009F8](MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:), 0, 0);
}

{
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError();
  swift_allocError();
  *v1 = 5;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError);
  }

  return result;
}

uint64_t MLS.ReceiveResult.description.getter()
{
  v1 = 0x7466417972746552;
  if (*v0 != 1)
  {
    v1 = 0x746552746F4E6F44;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637553;
  }
}

uint64_t _s15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOs0I3KeyAAsAIP11stringValueSSvgTW_0()
{
  v1 = 0x7466417972746572;
  if (*v0 != 1)
  {
    v1 = 0x746552746F4E6F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t _s15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOs0I3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.FetchMemberResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ReceiveResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO13ReceiveResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys();
      v12 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys);
  }

  return result;
}

uint64_t MLS.ReceiveResult.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO13ReceiveResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type MLS.ReceiveResult.CodingKeys and conformance MLS.ReceiveResult.CodingKeys();
  v20 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v30 = &type metadata for MLS.ReceiveResult;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          lazy protocol witness table accessor for type MLS.ReceiveResult.RetryAfterDelayCodingKeys and conformance MLS.ReceiveResult.RetryAfterDelayCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          lazy protocol witness table accessor for type MLS.ReceiveResult.DoNotRetryCodingKeys and conformance MLS.ReceiveResult.DoNotRetryCodingKeys();
          v33 = v22;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type MLS.ReceiveResult.SuccessCodingKeys and conformance MLS.ReceiveResult.SuccessCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveResult()
{
  v1 = 0x7466417972746552;
  if (*v0 != 1)
  {
    v1 = 0x746552746F4E6F44;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637553;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageContext.CodingKeys and conformance MLS.ResendApplicationMessageContext.CodingKeys);
  }

  return result;
}

unint64_t MLS.ResendApplicationMessageResult.description.getter()
{
  v1 = 0x73736563637553;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746552746F4E6F44;
  }

  if (*v0)
  {
    v1 = 0x7466417972746552;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.ResendApplicationMessageResult.CodingKeys()
{
  v1 = 0x73736563637573;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746552746F4E6F64;
  }

  if (*v0)
  {
    v1 = 0x7466417972746572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.ResendApplicationMessageResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.ResendApplicationMessageResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys(uint64_t a1)
{
  DoesNotExistCodingKeys = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys();

  return MEMORY[0x2821FE718](a1, DoesNotExistCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys(uint64_t a1)
{
  DoesNotExistCodingKeys = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys();

  return MEMORY[0x2821FE720](a1, DoesNotExistCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ResendApplicationMessageResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO0I22DoesNotExistCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO0I22DoesNotExistCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys();
      v24 = v33;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys();
      v24 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys();
    v24 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys);
  }

  return result;
}

uint64_t MLS.ResendApplicationMessageResult.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO0I22DoesNotExistCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO0I22DoesNotExistCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO30ResendApplicationMessageResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.CodingKeys and conformance MLS.ResendApplicationMessageResult.CodingKeys();
  v21 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = KeyedDecodingContainer.allKeys.getter();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = specialized Collection<>.popFirst()();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v34 = &type metadata for MLS.ResendApplicationMessageResult;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys and conformance MLS.ResendApplicationMessageResult.RetryAfterDelayCodingKeys();
        v39 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.SuccessCodingKeys and conformance MLS.ResendApplicationMessageResult.SuccessCodingKeys();
        v31 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1Tm(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys and conformance MLS.ResendApplicationMessageResult.MessageDoesNotExistCodingKeys();
      v38 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys and conformance MLS.ResendApplicationMessageResult.DoNotRetryCodingKeys();
      v40 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageResult()
{
  v1 = 0x73736563637553;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746552746F4E6F44;
  }

  if (*v0)
  {
    v1 = 0x7466417972746552;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext.CodingKeys and conformance MLS.FetchGroupRecoveryInfoContext.CodingKeys);
  }

  return result;
}

uint64_t MLS.GroupRecoveryInfo.rawGroupInfo.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.GroupRecoveryInfo.ratchetTree.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.GroupRecoveryInfo.init(groupInfo:ratchetTree:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double MLS.GroupRecoveryInfo.init(groupInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = xmmword_2651B5F50;
  return result;
}

uint64_t MLS.GroupRecoveryInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(31);

  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  MEMORY[0x2667545A0](countAndFlagsBits);

  MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
  if (v4 >> 60 != 15)
  {
    Data.base64EncodedString(options:)(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x2667545A0](v6);

  return 0x666E4970756F7247;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupRecoveryInfo.CodingKeys()
{
  if (*v0)
  {
    result = 0x5474656863746172;
  }

  else
  {
    result = 0x70756F7247776172;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupRecoveryInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70756F7247776172 && a2 == 0xEC0000006F666E49;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupRecoveryInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupRecoveryInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupRecoveryInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupRecoveryInfoV10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupRecoveryInfoV10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v8, v9);
  lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v8;
  v18 = v9;
  v19 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v17, v18);
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    outlined copy of Data?(v15, v14);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v17, v18);
  }

  return (*(v16 + 8))(v7, v4);
}

void MLS.GroupRecoveryInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Data.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int MLS.GroupRecoveryInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t MLS.GroupRecoveryInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupRecoveryInfoV10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupRecoveryInfoV10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v18;
  v17 = v19;
  v20 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v18;
  v13 = v19;
  v14 = v17;
  *a2 = v11;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v13;
  outlined copy of Data._Representation(v11, v14);
  outlined copy of Data?(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v11, v14);
  return outlined consume of Data?(v12, v13);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.GroupRecoveryInfo()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MLS.GroupRecoveryInfo()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Data.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupRecoveryInfo()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Data.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t MLS.FetchGroupRecoveryInfoResult.description.getter()
{
  v1 = v0[1] >> 60;
  if (v1 == 15)
  {
    return 0x7466417972746552;
  }

  if (v1 == 11)
  {
    return 0x746552746F4E6F44;
  }

  v3 = *v0;
  v4 = v0[2];
  v5 = v0[3];
  _StringGuts.grow(_:)(22);

  _StringGuts.grow(_:)(31);

  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  MEMORY[0x2667545A0](countAndFlagsBits);

  MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
  if (v5 >> 60 != 15)
  {
    Data.base64EncodedString(options:)(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x2667545A0](v7);

  MEMORY[0x2667545A0](0x666E4970756F7247, 0xEB00000000203A6FLL);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t MLS.FetchGroupRecoveryInfoResult.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = *v2;
  v25 = v2[1];
  v32 = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (*(&v32 + 1) >> 60 == 15)
  {
    LOBYTE(v33) = 1;
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v31);
    return (*(v16 + 8))(v19, v15);
  }

  if (*(&v32 + 1) >> 60 == 11)
  {
    LOBYTE(v33) = 2;
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys();
    v22 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v29 + 8))(v22, v30);
    return (*(v16 + 8))(v19, v15);
  }

  LOBYTE(v33) = 0;
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v33 = v32;
  v34 = v25;
  lazy protocol witness table accessor for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo();
  v24 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v26 + 8))(v14, v24);
  return (*(v16 + 8))(v19, v15);
}

uint64_t MLS.FetchGroupRecoveryInfoResult.init(from:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v49 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v48 = *(v43 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v41 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v46 = *(v44 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys();
  v19 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }

  v41 = v8;
  v42 = 0;
  v21 = v47;
  v20 = v48;
  v50 = v13;
  v22 = v49;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = specialized Collection<>.popFirst()();
  if (v25 == 3 || v55 != v56 >> 1)
  {
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v32 = &type metadata for MLS.FetchGroupRecoveryInfoResult;
    v26 = v16;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    v28 = v50;
LABEL_9:
    (*(v28 + 8))(v26, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }

  if (v25)
  {
    if (v25 == 1)
    {
      LOBYTE(v51) = 1;
      lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys();
      v26 = v16;
      v27 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v28 = v50;
      if (!v27)
      {
        (*(v46 + 8))(v7, v44);
        (*(v28 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v29 = xmmword_2651B5F50;
LABEL_17:
        v40 = 0uLL;
        v38 = v22;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    LOBYTE(v51) = 2;
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys();
    v36 = v42;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v50;
    if (!v36)
    {
      (*(v20 + 8))(v21, v43);
      (*(v37 + 8))(v16, v12);
      swift_unknownObjectRelease();
      v29 = xmmword_2651BFBB0;
      goto LABEL_17;
    }

LABEL_14:
    (*(v50 + 8))(v16, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }

  LOBYTE(v51) = 0;
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys();
  v35 = v42;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v35)
  {
    goto LABEL_14;
  }

  v38 = v22;
  lazy protocol witness table accessor for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo();
  v39 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v45 + 8))(v11, v39);
  (*(v50 + 8))(v16, v12);
  swift_unknownObjectRelease();
  v29 = v51;
  v40 = v52;
LABEL_18:
  *v38 = v29;
  v38[1] = v40;
  return __swift_destroy_boxed_opaque_existential_1Tm(v57);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberContext.CodingKeys(uint64_t a1)
{
  Member = lazy protocol witness table accessor for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, Member);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberContext.CodingKeys(uint64_t a1)
{
  Member = lazy protocol witness table accessor for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, Member);
}

uint64_t MLS.ResendApplicationMessageContext.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.ResendApplicationMessageContext(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t MLS.FetchMemberResult.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = (*(v2 + 48))(v9, 2, v1);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0x7466417972746552;
    }

    else
    {
      return 0x746552746F4E6F44;
    }
  }

  else
  {
    (*(v2 + 32))(v6, v9, v1);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    MEMORY[0x2667545A0](0x2873736563637553, 0xE800000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2667545A0](41, 0xE100000000000000);
    v13 = v14[0];
    (*(v2 + 8))(v6, v1);
    return v13;
  }
}

uint64_t MLS.FetchMemberResult.allMemberResult.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20]();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  result = (*(v5 + 48))(v12, 2, v4);
  if (result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (result == 1)
    {
      v15 = -2;
    }

    else
    {
      v15 = 126;
    }

    *(a2 + 24) = v15;
  }

  else
  {
    (*(v5 + 32))(v9, v12, v4);
    (*(*(a1 + 24) + 40))(&v18, v4);
    result = (*(v5 + 8))(v9, v4);
    v16 = v19;
    v17 = v20;
    *a2 = v18;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
  }

  return result;
}

uint64_t MLS.FetchMemberResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEF79616C65447265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEA00000000007972)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MLS.FetchMemberResult.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x73736563637573;
  }

  if (a1 == 1)
  {
    return 0x7466417972746572;
  }

  return 0x746552746F4E6F64;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.FetchMemberResult<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.IncomingEventType.CodingKeys.hashValue.getter(*v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.FetchMemberResult<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  MLS.FetchMemberResult.CodingKeys.hash(into:)(v7, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.FetchMemberResult<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.FetchMemberResult.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.FetchMemberResult<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.FetchMemberResult.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberResult<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberResult<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberResult<A>.DoNotRetryCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberResult<A>.DoNotRetryCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.FetchMemberResult<A>.DoNotRetryCodingKeys@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberResult<A>.RetryAfterDelayCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberResult<A>.RetryAfterDelayCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.FetchMemberResult<A>.SuccessCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.IncomingEventType.ApplicationMessageCodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberResult<A>.SuccessCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberResult<A>.SuccessCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.FetchMemberResult.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v61 = a2;
  Member = type metadata accessor for MLS.FetchMemberResult.DoNotRetryCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v59 = Member;
  v7 = type metadata accessor for KeyedEncodingContainer();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v44 - v9;
  v10 = type metadata accessor for MLS.FetchMemberResult.RetryAfterDelayCodingKeys();
  v11 = swift_getWitnessTable();
  v54 = v10;
  v52 = v11;
  v53 = type metadata accessor for KeyedEncodingContainer();
  v51 = *(v53 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v44 - v13;
  v14 = type metadata accessor for MLS.FetchMemberResult.SuccessCodingKeys();
  v15 = swift_getWitnessTable();
  v48 = v14;
  v46 = v15;
  v50 = type metadata accessor for KeyedEncodingContainer();
  v44 = *(v50 - 8);
  v16 = *(v44 + 64);
  v17 = MEMORY[0x28223BE20](v50);
  v47 = &v44 - v18;
  v62 = *(v4 - 8);
  v19 = *(v62 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v45 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v3;
  type metadata accessor for MLS.FetchMemberResult.CodingKeys();
  swift_getWitnessTable();
  v26 = type metadata accessor for KeyedEncodingContainer();
  v63 = *(v26 - 8);
  v64 = v26;
  v27 = *(v63 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v44 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v62;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v22 + 16))(v25, v65, v61);
  v32 = (*(v31 + 48))(v25, 2, v4);
  if (v32)
  {
    if (v32 == 1)
    {
      v67 = 1;
      v33 = v49;
      v34 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v33, v53);
      return (*(v63 + 8))(v29, v34);
    }

    else
    {
      v68 = 2;
      v42 = v55;
      v43 = v64;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v56 + 8))(v42, v57);
      return (*(v63 + 8))(v29, v43);
    }
  }

  else
  {
    v36 = v44;
    v37 = v45;
    (*(v31 + 32))(v45, v25, v4);
    v66 = 0;
    v38 = v47;
    v39 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = *(v60 + 16);
    v41 = v50;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v36 + 8))(v38, v41);
    (*(v31 + 8))(v37, v4);
    return (*(v63 + 8))(v29, v39);
  }
}

uint64_t MLS.FetchMemberResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  Member = type metadata accessor for MLS.FetchMemberResult.DoNotRetryCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v77 = Member;
  v66 = type metadata accessor for KeyedDecodingContainer();
  v65 = *(v66 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v75 = &v58 - v9;
  v10 = type metadata accessor for MLS.FetchMemberResult.RetryAfterDelayCodingKeys();
  v73 = swift_getWitnessTable();
  v74 = v10;
  v64 = type metadata accessor for KeyedDecodingContainer();
  v63 = *(v64 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v72 = &v58 - v12;
  v13 = type metadata accessor for MLS.FetchMemberResult.SuccessCodingKeys();
  v14 = swift_getWitnessTable();
  v70 = v13;
  v69 = v14;
  v62 = type metadata accessor for KeyedDecodingContainer();
  v61 = *(v62 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v71 = &v58 - v16;
  type metadata accessor for MLS.FetchMemberResult.CodingKeys();
  swift_getWitnessTable();
  v17 = type metadata accessor for KeyedDecodingContainer();
  v18 = *(v17 - 8);
  v80 = v17;
  v81 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v67 = a3;
  MemberResult = type metadata accessor for MLS.FetchMemberResult();
  v68 = *(MemberResult - 8);
  v23 = *(v68 + 64);
  v24 = MEMORY[0x28223BE20](MemberResult);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v29 = a1;
  v30 = a1[3];
  v31 = a1[4];
  v87 = v29;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v79 = v21;
  v32 = v82;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v32)
  {
    v59 = v26;
    v60 = v28;
    v82 = MemberResult;
    v33 = v79;
    v34 = v80;
    *&v83 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v85 = ArraySlice.init<A>(_:)();
    *(&v85 + 1) = v35;
    *&v86 = v36;
    *(&v86 + 1) = v37;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v38 = v83;
    if (v83 == 3 || (v58 = v85, v83 = v85, v84 = v86, (Collection.isEmpty.getter() & 1) == 0))
    {
      v42 = type metadata accessor for DecodingError();
      swift_allocError();
      v44 = v43;
      v45 = v33;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v44 = v82;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v81 + 8))(v45, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38)
      {
        v39 = v78;
        if (v38 == 1)
        {
          LOBYTE(v83) = 1;
          v40 = v72;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v63 + 8))(v40, v64);
          (*(v81 + 8))(v33, v34);
          swift_unknownObjectRelease();
          v41 = v60;
          (*(*(a2 - 8) + 56))(v60, 1, 2, a2);
        }

        else
        {
          LOBYTE(v83) = 2;
          v52 = v75;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v65 + 8))(v52, v66);
          (*(v81 + 8))(v33, v34);
          swift_unknownObjectRelease();
          v41 = v60;
          (*(*(a2 - 8) + 56))(v60, 2, 2, a2);
        }

        v57 = v82;
        v54 = v68;
      }

      else
      {
        LOBYTE(v83) = 0;
        v48 = v71;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = *(v67 + 8);
        v50 = v62;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v51 = v81;
        (*(v61 + 8))(v48, v50);
        (*(v51 + 8))(v33, v34);
        swift_unknownObjectRelease();
        v53 = v59;
        (*(*(a2 - 8) + 56))(v59, 0, 2, a2);
        v54 = v68;
        v41 = v60;
        v55 = v53;
        v56 = v82;
        (*(v68 + 32))(v60, v55, v82);
        v57 = v56;
        v39 = v78;
      }

      (*(v54 + 32))(v39, v41, v57);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v87);
}

uint64_t protocol witness for MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:) in conformance MLS.ClientEventDeliverer<A1, B1>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:)();
}

BOOL specialized static MLS.GroupRecoveryInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      outlined copy of Data?(v3, v2);
      outlined copy of Data?(v5, v4);
      outlined consume of Data?(v3, v2);
      return 1;
    }

    goto LABEL_6;
  }

  if (v4 >> 60 == 15)
  {
LABEL_6:
    outlined copy of Data?(v3, v2);
    outlined copy of Data?(v5, v4);
    outlined consume of Data?(v3, v2);
    outlined consume of Data?(v5, v4);
    return 0;
  }

  outlined copy of Data?(v3, v2);
  outlined copy of Data?(v5, v4);
  v7 = specialized static Data.== infix(_:_:)(v3, v2, v5, v4);
  outlined consume of Data?(v5, v4);
  outlined consume of Data?(v3, v2);
  return (v7 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo()
{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult and conformance MLS.ResendApplicationMessageResult()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult and conformance MLS.ResendApplicationMessageResult;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult and conformance MLS.ResendApplicationMessageResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult and conformance MLS.ResendApplicationMessageResult);
  }

  return result;
}

uint64_t dispatch thunk of MLS.Delegate.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 48);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.Delegate.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Delegate.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupRecoveryInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.GroupRecoveryInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.FetchGroupRecoveryInfoResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 32))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.FetchGroupRecoveryInfoResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MLS.FetchGroupRecoveryInfoResult(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t type metadata completion function for MLS.FetchMemberResult(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for MLS.FetchMemberResult(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for MLS.FetchMemberResult(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t specialized MLS.ResendApplicationMessageResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEF79616C65447265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E9B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEA00000000007972)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void MLS.GroupVersion.nextVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 8);
    *a1 = v5;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4;
  }
}

double MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:groupClientContextBlob:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v18;
    (*(v13 + 8))(v16, v12);
  }

  *a7 = a1;
  a7[1] = a2;
  v19 = type metadata accessor for MLS.GroupCreationContext();
  v20 = v19[9];
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a7 + v20, a3, v21);
  if (!v17)
  {
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v22 + 8))(a3, v21);
  *(a7 + v19[10]) = v17;
  v23 = (a7 + v19[11]);
  v24 = v27;
  *v23 = v26;
  v23[1] = v24;
  result = 0.0;
  *(a7 + v19[12]) = xmmword_2651B5F50;
  return result;
}

uint64_t MLS.GroupCreationContext.dataContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = *(v2 + 1);
  v27 = *v2;
  (*(v7 + 16))(&v26 - v9, &v2[*(a1 + 36)], v6);
  v12 = *(v5 - 8);
  if ((*(v12 + 48))(v10, 1, v5) == 1)
  {
    v13 = *(v7 + 8);

    v13(v10, v6);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v26 = v2;
    v16 = *(a1 + 24);

    v17 = v16;
    v18 = v28;
    v19 = MLS.ClientContext.dataRepresentation.getter(v5, v17);
    if (v18)
    {

      return (*(v12 + 8))(v10, v5);
    }

    v14 = v19;
    v15 = v20;
    v28 = 0;
    (*(v12 + 8))(v10, v5);
    v2 = v26;
  }

  v22 = *(a1 + 44);
  v23 = *&v2[*(a1 + 40)];
  v25 = *&v2[v22];
  v24 = *&v2[v22 + 8];
  *a2 = v27;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  *(a2 + 48) = v24;
  *(a2 + 56) = xmmword_2651B5F50;

  return outlined copy of Data?(v25, v24);
}

double MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v16;
    (*(v11 + 8))(v14, v10);
  }

  *a5 = a1;
  a5[1] = a2;
  v17 = type metadata accessor for MLS.GroupCreationContext();
  v18 = v17[9];
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a5 + v18, a3, v19);
  if (!v15)
  {
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v20 + 8))(a3, v19);
  *(a5 + v17[10]) = v15;
  result = 0.0;
  *(a5 + v17[11]) = xmmword_2651B5F50;
  *(a5 + v17[12]) = xmmword_2651B5F50;
  return result;
}

uint64_t MLS.GroupDeletionContext.dataContext.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = *(v2 + 1);
  v23 = *v2;
  (*(v7 + 16))(&v22 - v9, &v2[*(a1 + 36)], v6);
  v12 = *(v5 - 8);
  if ((*(v12 + 48))(v10, 1, v5) == 1)
  {
    v13 = *(v7 + 8);

    result = v13(v10, v6);
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    v17 = *(a1 + 24);

    v18 = v17;
    v19 = v24;
    v20 = MLS.ClientContext.dataRepresentation.getter(v5, v18);
    if (v19)
    {

      return (*(v12 + 8))(v10, v5);
    }

    v15 = v20;
    v16 = v21;
    result = (*(v12 + 8))(v10, v5);
  }

  *a2 = v23;
  a2[1] = v11;
  a2[2] = v15;
  a2[3] = v16;
  return result;
}

uint64_t MLS.GroupDeletionContext.init(identifier:clientContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v13;
    (*(v9 + 8))(v12, v8);
  }

  *a4 = a1;
  a4[1] = a2;
  v14 = *(type metadata accessor for MLS.GroupDeletionContext() + 36);
  v15 = type metadata accessor for Optional();
  return (*(*(v15 - 8) + 32))(a4 + v14, a3, v15);
}

uint64_t MLS.GroupDeletionProcessedContext.init(dataContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  v15 = *a1;
  v14 = a1[1];
  static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v15, v14, a2, a3, v17 - v12);
  result = outlined consume of Data?(v15, v14);
  if (!v4)
  {
    return (*(v10 + 32))(a4, v13, v9);
  }

  return result;
}

uint64_t MLS.GroupFetchContext.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v12;
    result = (*(v7 + 8))(v11, v6);
  }

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t MLS.GroupMembersContext.init(identifier:includePendingMembers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v14;
    result = (*(v9 + 8))(v13, v8);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t MLS.EncryptionContext.dataContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = *(a1 + 16);
  v49 = type metadata accessor for Optional();
  *&v48 = *(v49 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - v7;
  v8 = *(a1 + 24);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = *(v3 + 1);
  v51 = *v3;
  (*(v10 + 16))(&v46 - v12, &v3[*(a1 + 52)], v9);
  v15 = *(v8 - 8);
  if ((*(v15 + 48))(v13, 1, v8) == 1)
  {
    v16 = *(v10 + 8);
    v47 = v14;

    v16(v13, v9);
    v17 = 0;
    v46 = 0xF000000000000000;
  }

  else
  {
    v18 = *(a1 + 40);

    v19 = v18;
    v20 = v62;
    v21 = MLS.ClientContext.dataRepresentation.getter(v8, v19);
    if (v20)
    {

      return (*(v15 + 8))(v13, v8);
    }

    v17 = v21;
    v46 = v22;
    v47 = v14;
    v62 = 0;
    (*(v15 + 8))(v13, v8);
  }

  v24 = *(a1 + 60);
  v25 = &v3[*(a1 + 56)];
  v26 = *v25;
  v57 = v25[1];
  v58 = v26;
  v27 = v25[2];
  v55 = v25[3];
  v56 = v27;
  v28 = v25[4];
  v53 = v25[5];
  v54 = v28;
  v29 = v48;
  v30 = v49;
  v31 = v50;
  (*(v48 + 16))(v50, &v3[v24], v49);
  v32 = v52;
  v33 = *(v52 - 8);
  if ((*(v33 + 48))(v31, 1, v52) == 1)
  {
    outlined copy of MLS.AdditionalAuthenticatedData?(v58, v57, v56, v55, v54, v53);
    (*(v29 + 8))(v31, v30);
    v34 = 0;
    v35 = 0uLL;
    v36 = -2;
  }

  else
  {
    v37 = *(a1 + 32);
    v49 = v17;
    v38 = v32;
    *&v48 = *(v37 + 40);
    outlined copy of MLS.AdditionalAuthenticatedData?(v58, v57, v56, v55, v54, v53);
    (v48)(&v59, v32, v37);
    v48 = v59;
    v34 = v60;
    v36 = v61;
    v39 = v38;
    v17 = v49;
    (*(v33 + 8))(v31, v39);
    v35 = v48;
  }

  v40 = v47;
  v41 = &v3[*(a1 + 64)];
  v42 = *(v41 + 2);
  v44 = *&v3[*(a1 + 68)];
  LOBYTE(v59) = v41[24];
  v43 = v59;
  *a2 = v51;
  *(a2 + 8) = v40;
  v45 = v46;
  *(a2 + 16) = v17;
  *(a2 + 24) = v45;
  *(a2 + 32) = v58;
  *(a2 + 40) = v57;
  *(a2 + 48) = v56;
  *(a2 + 56) = v55;
  *(a2 + 64) = v54;
  *(a2 + 72) = v53;
  *(a2 + 80) = v35;
  *(a2 + 96) = v34;
  *(a2 + 104) = v36;
  *(a2 + 112) = *v41;
  *(a2 + 128) = v42;
  *(a2 + 136) = v43;
  *(a2 + 144) = v44;
}

uint64_t MLS.EncryptionContext.init(identifier:clientContext:additionalAuthenticatedData:destinationMember:originalGroupVersion:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a8;
  v55 = a5;
  v56 = a3;
  v45 = a11;
  v46 = a12;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a4;
  v48 = a4[1];
  v49 = v23;
  v24 = *(a4 + 4);
  v25 = *(a4 + 5);
  v47 = v24;
  v26 = *a6;
  v52 = a6[1];
  v53 = v26;
  v51 = a6[2];
  v50 = *(a6 + 24);
  v27 = *a7;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v28;
    (*(v19 + 8))(v22, v18);
  }

  *a9 = a1;
  a9[1] = a2;
  v57 = v54;
  v58 = a10;
  v59 = v45;
  v60 = v46;
  v29 = type metadata accessor for MLS.EncryptionContext();
  v30 = v29[13];
  v31 = type metadata accessor for Optional();
  v32 = *(v31 - 8);
  v33 = v56;
  (*(v32 + 16))(a9 + v30, v56, v31);
  v34 = a9 + v29[14];
  v35 = v48;
  *v34 = v49;
  *(v34 + 1) = v35;
  *(v34 + 4) = v47;
  *(v34 + 5) = v25;
  v36 = v29[15];
  v37 = type metadata accessor for Optional();
  v38 = *(v37 - 8);
  v39 = a9 + v36;
  v40 = v55;
  (*(v38 + 16))(v39, v55, v37);
  v41 = a9 + v29[16];
  v42 = v52;
  *v41 = v53;
  *(v41 + 1) = v42;
  *(v41 + 2) = v51;
  v41[24] = v50;
  if (!v27)
  {
    v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v38 + 8))(v40, v37);
  result = (*(v32 + 8))(v33, v31);
  *(a9 + v29[17]) = v27;
  return result;
}

uint64_t MLS.GroupNameEncryptionContext.dataContext.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *(v2 + 1);
  v24 = *v2;
  (*(v7 + 16))(&v23 - v9, &v2[*(a1 + 52)], v6);
  v12 = *(v5 - 8);
  if ((*(v12 + 48))(v10, 1, v5) == 1)
  {
    v13 = *(v7 + 8);

    v13(v10, v6);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v23 = v2;
    v16 = *(a1 + 40);

    v17 = v16;
    v18 = v25;
    v19 = MLS.ClientContext.dataRepresentation.getter(v5, v17);
    if (v18)
    {

      return (*(v12 + 8))(v10, v5);
    }

    v14 = v19;
    v15 = v20;
    v25 = 0;
    (*(v12 + 8))(v10, v5);
    v2 = v23;
  }

  v22 = *&v2[*(a1 + 56)];
  *a2 = v24;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v22;
}

uint64_t MLS.GroupNameEncryptionContext.init(identifier:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v30 = a8;
  v31 = a3;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v22;
    (*(v17 + 8))(v20, v16);
  }

  *a9 = a1;
  a9[1] = a2;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = v30;
  v23 = type metadata accessor for MLS.GroupNameEncryptionContext();
  v24 = *(v23 + 52);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  v27 = a9 + v24;
  v28 = v31;
  (*(v26 + 16))(v27, v31, v25);
  if (!v21)
  {
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v26 + 8))(v28, v25);
  *(a9 + *(v23 + 56)) = v21;
  return result;
}

uint64_t MLS.IncomingMessageContext.dataContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = *(v2 + 1);
  v45 = *v2;
  v49 = v13;
  (*(v9 + 16))(v12, &v2[*(a1 + 36)], v8);
  v14 = *(v7 - 8);
  if ((*(v14 + 48))(v12, 1, v7) == 1)
  {
    v44 = v3;
    v15 = *(v9 + 8);

    v15(v12, v8);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    v18 = v2;
    v19 = *(a1 + 24);

    v20 = MLS.ClientContext.dataRepresentation.getter(v7, v19);
    if (v4)
    {

      return (*(v14 + 8))(v12, v7);
    }

    v44 = 0;
    v23 = v21;
    v24 = v20;
    (*(v14 + 8))(v12, v7);
    v17 = v23;
    v16 = v24;
    v2 = v18;
  }

  v25 = *(a1 + 44);
  v26 = &v2[*(a1 + 40)];
  v27 = *(v26 + 1);
  v47[0] = *v26;
  v47[1] = v27;
  v29 = *v26;
  v28 = *(v26 + 1);
  v48[0] = *(v26 + 2);
  *(v48 + 12) = *(v26 + 44);
  *(a2 + 76) = *(v26 + 44);
  *(a2 + 64) = *(v26 + 2);
  v30 = *&v2[v25];
  v31 = *&v2[v25 + 8];
  v32 = *&v2[v25 + 16];
  v33 = *&v2[v25 + 24];
  v35 = *&v2[v25 + 32];
  v34 = *&v2[v25 + 40];
  v36 = *(a1 + 52);
  v37 = &v2[*(a1 + 48)];
  v39 = *v37;
  v43 = v37[1];
  v38 = v43;
  v40 = *&v2[v36];
  v41 = v49;
  *a2 = v45;
  *(a2 + 8) = v41;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v29;
  *(a2 + 48) = v28;
  *(a2 + 96) = v30;
  *(a2 + 104) = v31;
  *(a2 + 112) = v32;
  *(a2 + 120) = v33;
  *(a2 + 128) = v35;
  *(a2 + 136) = v34;
  *(a2 + 144) = v39;
  *(a2 + 152) = v38;
  *(a2 + 160) = v40;
  outlined init with copy of MLS.OutgoingEventState?(v47, v46, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  outlined copy of MLS.AdditionalAuthenticatedData?(v30, v31, v32, v33, v35, v34);
  outlined copy of Data?(v39, v43);
}

uint64_t MLS.IncomingMessageContext.init(identifier:clientContext:expectedSignedData:expectedAdditionalAuthenticatedData:encryptedGroupNameKey:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a6;
  v45 = a7;
  v46 = a3;
  v41[1] = a11;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4[1];
  v47 = *a4;
  v48 = v22;
  v49[0] = a4[2];
  *(v49 + 12) = *(a4 + 44);
  v23 = *a5;
  v42 = a5[1];
  v43 = v23;
  v24 = *(a5 + 4);
  v25 = *(a5 + 5);
  v26 = *a8;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v27;
    (*(v18 + 8))(v21, v17);
  }

  *a9 = a1;
  a9[1] = a2;
  v28 = type metadata accessor for MLS.IncomingMessageContext();
  v29 = v28[9];
  v30 = type metadata accessor for Optional();
  v31 = *(v30 - 8);
  v32 = a9 + v29;
  v33 = v46;
  (*(v31 + 16))(v32, v46, v30);
  v34 = (a9 + v28[10]);
  v35 = v48;
  *v34 = v47;
  v34[1] = v35;
  v34[2] = v49[0];
  *(v34 + 44) = *(v49 + 12);
  v36 = a9 + v28[11];
  v37 = v42;
  *v36 = v43;
  *(v36 + 1) = v37;
  *(v36 + 4) = v24;
  *(v36 + 5) = v25;
  v38 = (a9 + v28[12]);
  v39 = v45;
  *v38 = v44;
  v38[1] = v39;
  if (!v26)
  {
    v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v31 + 8))(v33, v30);
  *(a9 + v28[13]) = v26;
  return result;
}

uint64_t MLS.GroupCreationProcessedContext.init(dataContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a6;
  v31 = a5;
  v30 = a4;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = a1[5];
  v37 = a1[4];
  v38 = v17;
  v18 = a1[7];
  v39 = a1[6];
  v40 = v18;
  v19 = a1[1];
  v33 = *a1;
  v34 = v19;
  v20 = a1[3];
  v35 = a1[2];
  v36 = v20;
  static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v33, *(&v33 + 1), a2, a3, &v29 - v15);
  if (v7)
  {
    return outlined destroy of NSObject?(&v33, v31, v41);
  }

  (*(v13 + 32))(a7, v16, v12);
  v22 = v30(0, a2, a3);
  v23 = a7 + *(v22 + 36);
  v24 = v37;
  v25 = v39;
  *(v23 + 64) = v38;
  *(v23 + 80) = v25;
  v26 = v35;
  v27 = v36;
  *v23 = v34;
  *(v23 + 16) = v26;
  v28 = *(&v40 + 1);
  *(v23 + 96) = v40;
  *(v23 + 32) = v27;
  *(v23 + 48) = v24;
  outlined init with copy of MLS.Group(&v34, v32);

  result = outlined destroy of NSObject?(&v33, v31, v41);
  *(a7 + *(v22 + 40)) = v28;
  return result;
}

double MLS.IncomingFailureToDecryptContext.init(identifier:clientContext:metricCollector:signedData:expectedSignedData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X8>)
{
  v35 = a5;
  v36 = a6;
  v34 = a3;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  v19 = a7[1];
  v37 = *a7;
  v38 = v19;
  v39[0] = a7[2];
  *(v39 + 12) = *(a7 + 44);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v20;
    (*(v14 + 8))(v17, v13);
  }

  *a8 = a1;
  a8[1] = a2;
  v21 = type metadata accessor for MLS.IncomingFailureToDecryptContext();
  v22 = v21[9];
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  v25 = a8 + v22;
  v26 = v34;
  (*(v24 + 16))(v25, v34, v23);
  v27 = (a8 + v21[13]);
  *v27 = xmmword_2651B5F50;
  v27[1] = 0u;
  v27[2] = 0u;
  if (!v18)
  {
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v24 + 8))(v26, v23);
  *(a8 + v21[12]) = v18;
  v28 = (a8 + v21[10]);
  v29 = v36;
  *v28 = v35;
  v28[1] = v29;
  v30 = (a8 + v21[11]);
  v31 = v38;
  *v30 = v37;
  v30[1] = v31;
  v30[2] = v39[0];
  result = *(v39 + 12);
  *(v30 + 44) = *(v39 + 12);
  return result;
}

uint64_t MLS.IncomingFailureToDecryptContext.dataContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = *(v2 + 1);
  v33 = *v2;
  (*(v7 + 16))(&v32 - v9, &v2[*(a1 + 36)], v6);
  v12 = *(v5 - 8);
  if ((*(v12 + 48))(v10, 1, v5) == 1)
  {
    v13 = *(v7 + 8);

    v13(v10, v6);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v32 = v2;
    v16 = *(a1 + 24);

    v17 = v16;
    v18 = v37;
    v19 = MLS.ClientContext.dataRepresentation.getter(v5, v17);
    if (v18)
    {

      return (*(v12 + 8))(v10, v5);
    }

    v14 = v19;
    v15 = v20;
    v37 = 0;
    (*(v12 + 8))(v10, v5);
    v2 = v32;
  }

  v22 = *(a1 + 40);
  v23 = &v2[*(a1 + 44)];
  v24 = *(v23 + 1);
  v35[0] = *v23;
  v35[1] = v24;
  v26 = *v23;
  v25 = *(v23 + 1);
  v36[0] = *(v23 + 2);
  *(v36 + 12) = *(v23 + 44);
  *(a2 + 92) = *(v23 + 44);
  v27 = *(v23 + 2);
  *(a2 + 64) = v25;
  *(a2 + 80) = v27;
  v28 = *&v2[*(a1 + 48)];
  v29 = &v2[v22];
  v31 = *v29;
  v30 = v29[1];
  *a2 = v33;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v31;
  *(a2 + 40) = v30;
  *(a2 + 48) = v26;
  *(a2 + 112) = v28;
  *(a2 + 120) = xmmword_2651B5F50;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;

  outlined copy of Data?(v31, v30);
  return outlined init with copy of MLS.OutgoingEventState?(v35, v34, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
}

double MLS.IncomingFailureToDecryptContext.init(identifier:clientContext:expectedAdditionalAuthenticatedData:metricCollector:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v34 = a6;
  v35 = a3;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  v32 = a4[1];
  v33 = v17;
  v18 = *(a4 + 4);
  v19 = *(a4 + 5);
  v20 = *a5;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v21;
    (*(v13 + 8))(v16, v12);
  }

  *a7 = a1;
  a7[1] = a2;
  v22 = type metadata accessor for MLS.IncomingFailureToDecryptContext();
  v23 = v22[9];
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  v26 = a7 + v23;
  v27 = v35;
  (*(v25 + 16))(v26, v35, v24);
  v28 = a7 + v22[13];
  v29 = v32;
  *v28 = v33;
  *(v28 + 1) = v29;
  *(v28 + 4) = v18;
  *(v28 + 5) = v19;
  if (!v20)
  {
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v25 + 8))(v27, v24);
  *(a7 + v22[12]) = v20;
  *(a7 + v22[10]) = xmmword_2651B5F50;
  v30 = a7 + v22[11];
  *v30 = 0;
  *(v30 + 1) = 0;
  *(v30 + 2) = 0xFFFFFFFF0000;
  result = 0.0;
  *(v30 + 24) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 14) = 0;
  return result;
}

uint64_t MLS.IncomingErrorMessageContext.dataContext.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

unint64_t MLS.IncomingErrorMessageContext.init(identifier:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v15;
    result = (*(v9 + 8))(v13, v8);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v14 = result;
    goto LABEL_3;
  }

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v14;
  return result;
}

uint64_t MLS.IncomingErrorMessageProcessedContext.init(dataContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);

  outlined consume of Data?(v4, v5);

  result = type metadata accessor for MLS.IncomingErrorMessageProcessedContext();
  *(a3 + *(result + 36)) = v6;
  return result;
}

uint64_t MLS.GroupOperationContext.dataContext.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *(v2 + 1);
  v24 = *v2;
  (*(v7 + 16))(&v23 - v9, &v2[*(a1 + 36)], v6);
  v12 = *(v5 - 8);
  if ((*(v12 + 48))(v10, 1, v5) == 1)
  {
    v13 = *(v7 + 8);

    v13(v10, v6);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v23 = v2;
    v16 = *(a1 + 24);

    v17 = v16;
    v18 = v25;
    v19 = MLS.ClientContext.dataRepresentation.getter(v5, v17);
    if (v18)
    {

      return (*(v12 + 8))(v10, v5);
    }

    v14 = v19;
    v15 = v20;
    v25 = 0;
    (*(v12 + 8))(v10, v5);
    v2 = v23;
  }

  v22 = *&v2[*(a1 + 40)];
  *a2 = v24;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v22;
}

{
  return MLS.SigningContext.dataContext.getter(a1, a2);
}

uint64_t MLS.GroupOperationContext.init(identifier:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v28 = a7;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v21;
    (*(v16 + 8))(v19, v15);
  }

  *a8 = a1;
  a8[1] = a2;
  v22 = v28(0, a5, a6);
  v23 = *(v22 + 36);
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  (*(v25 + 16))(a8 + v23, a3, v24);
  if (!v20)
  {
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v25 + 8))(a3, v24);
  *(a8 + *(v22 + 40)) = v20;
  return result;
}

uint64_t MLS.GroupOperationProcessedContext.init(dataContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v23 = *(v10 - 8);
  v24 = v10;
  v11 = *(v23 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v18 = a4(0, a2, a3);
  *(a5 + *(v18 + 40)) = 0;
  v19 = v25;
  static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v14, v15, a2, a3, v13);
  if (v19)
  {
    outlined consume of Data?(v14, v15);
  }

  else
  {
    (*(v23 + 32))(a5, v13, v24);
    *(a5 + *(v18 + 36)) = v16;

    outlined consume of Data?(v14, v15);

    v21 = *(v18 + 40);
    v22 = *(a5 + v21);

    *(a5 + v21) = v17;
  }

  return result;
}

uint64_t MLS.SigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  v7 = *(v1 + 14);
  return MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter(a1);
}

uint64_t MLS.GroupVersion.init(smallEra:epoch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

uint64_t MLS.SigningInput.messageID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Group.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void MLS.Group.version.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t MLS.Group.groupInfo.getter()
{
  v1 = *(v0 + 40);
  outlined copy of Data._Representation(v1, *(v0 + 48));
  return v1;
}

uint64_t MLS.Group.epochAuthenticator.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data._Representation(v1, *(v0 + 64));
  return v1;
}

uint64_t MLS.Group.ratchetTree.getter()
{
  v1 = *(v0 + 72);
  outlined copy of Data._Representation(v1, *(v0 + 80));
  return v1;
}

uint64_t MLS.Group.groupClientContextBlob.getter()
{
  v1 = *(v0 + 88);
  outlined copy of Data?(v1, *(v0 + 96));
  return v1;
}

__n128 MLS.Group.init(identifier:version:groupInfo:epochAuthenticator:ratchetTree:groupClientContextBlob:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = v12;
  a9[1].n128_u32[2] = v13;
  a9[2].n128_u64[0] = v14;
  a9[2].n128_u64[1] = a4;
  a9[3].n128_u64[0] = a5;
  a9[3].n128_u64[1] = a6;
  a9[4].n128_u64[0] = a7;
  a9[4].n128_u64[1] = a8;
  a9[5] = a10;
  a9[6].n128_u64[0] = a11;
  return result;
}

uint64_t MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7[50] = a5;
  v7[51] = a6;
  v7[48] = a3;
  v7[49] = a4;
  v7[46] = a1;
  v7[47] = a2;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v7[52] = v9;
  v10 = *(v9 - 8);
  v7[53] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a7;
  v14 = a7[1];
  v7[54] = v12;
  v7[55] = v13;
  v7[56] = v14;

  return MEMORY[0x2822009F8](MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:), 0, 0);
}

uint64_t MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 32);

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);

  return v9(v3, v4);
}

{
  v1 = *(v0 + 392);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 472) = v6;
  *v6 = v0;
  v6[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);

  return v8(v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v8 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = *(v2 + 448);
    v5 = *(v2 + 384);

    v6 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  else
  {
    v6 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[49];
  v0[63] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[64] = v5;
  (*(v2 + 8))(v1, v3);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  v8 = *(v7 + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[65] = v10;
  *v10 = v0;
  v10[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);

  return v12(v6, v7);
}

{
  v1 = *(v0 + 392);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 64);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 544) = v6;
  *v6 = v0;
  v6[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);

  return v8(v2, v3);
}

{
  v27 = *(v0 + 600);
  v28 = *(v0 + 608);
  v1 = *(v0 + 592);
  v2 = *(v0 + 560);
  v3 = *(v0 + 536);
  v23 = *(v0 + 568);
  v24 = *(v0 + 528);
  v4 = *(v0 + 504);
  v5 = *(v0 + 512);
  v6 = *(v0 + 480);
  v7 = *(v0 + 400);
  v29 = *(v0 + 392);
  v30 = *(v0 + 432);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  v26 = v8;
  v10 = *(v0 + 368);
  swift_unknownObjectRelease();
  if ((v1 & 0x100000000) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = v1;
  }

  if (v2 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = v2;
  }

  v25 = v11;
  if (v2 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = v23;
  }

  v13 = v3 >> 60 == 15;
  *(v0 + 120) = v8;
  v14 = (v0 + 120);
  if (v3 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
  }

  *(v0 + 128) = v9;
  *(v0 + 136) = v1;
  *(v0 + 144) = v1;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v24;
  }

  *(v0 + 152) = v6;
  *(v0 + 160) = v4;
  *(v0 + 168) = v5;
  *(v0 + 176) = v15;
  *(v0 + 184) = v3;
  *(v0 + 192) = v12;
  *(v0 + 200) = v11;
  *(v0 + 208) = v28;
  *(v0 + 216) = v27;
  v16 = *(v0 + 168);
  v17 = *(v0 + 184);
  v18 = *(v0 + 200);
  *(v10 + 96) = v27;
  *(v10 + 64) = v17;
  *(v10 + 80) = v18;
  *(v10 + 48) = v16;
  v19 = *v14;
  v20 = *(v0 + 152);
  *(v10 + 16) = *(v0 + 136);
  *(v10 + 32) = v20;
  *v10 = v19;
  outlined init with copy of MLS.Group(v14, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  *(v0 + 16) = v26;
  *(v0 + 24) = v9;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v15;
  *(v0 + 80) = v3;
  *(v0 + 88) = v12;
  *(v0 + 96) = v25;
  *(v0 + 104) = v28;
  *(v0 + 112) = v27;
  outlined destroy of MLS.Group(v0 + 16);

  v21 = *(v0 + 8);

  return v21();
}

{
  v1 = *(v0 + 400);
  swift_unknownObjectRelease();
  v2 = *(v0 + 464);
  v3 = *(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 392));

  v4 = *(v0 + 432);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 400);
  swift_unknownObjectRelease();
  v2 = *(v0 + 496);
  v3 = *(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 392));

  v4 = *(v0 + 432);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 400);
  swift_unknownObjectRelease();
  v2 = *(v0 + 552);
  v3 = *(v0 + 536);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  if (v3 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = *(v0 + 536);
  }

  if (v3 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 528);
  }

  v8 = *(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 392));

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v7, v6);
  v9 = *(v0 + 432);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 400);
  swift_unknownObjectRelease();

  v3 = *(v0 + 584);
  v4 = *(v0 + 560);
  v5 = *(v0 + 536);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  if (v4 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 560);
  }

  if (v4 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 568);
  }

  if (v5 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = *(v0 + 536);
  }

  if (v5 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v0 + 528);
  }

  v12 = *(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 392));

  outlined consume of Data._Representation(v7, v6);
  outlined consume of Data._Representation(v11, v10);
  outlined consume of Data._Representation(v9, v8);
  v13 = *(v0 + 432);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[41] = v2;
  v4[42] = a1;
  v4[43] = v1;
  v5 = v3[57];
  v10 = *v2;
  v4[58] = v1;

  if (v1)
  {
    v6 = v4[56];
    v7 = v4[48];

    v8 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  else
  {
    v8 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v2 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = a1;

  return MEMORY[0x2822009F8](MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:), 0, 0);
}

void MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)()
{
  if ((v0[60] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[49];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = *(v3 + 80);
    v8 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[61] = v6;
    *v6 = v0;
    v6[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
    v7 = v0[54];

    v8(v7, v2, v3);
  }
}

uint64_t MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v6 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = a2;

  return MEMORY[0x2822009F8](MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:), 0, 0);
}

{
  v6 = *(*v3 + 544);
  v7 = *v3;
  v7[69] = v2;

  if (v2)
  {
    v8 = v7[56];
    v9 = v7[48];

    return MEMORY[0x2822009F8](MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:), 0, 0);
  }

  else
  {
    v11 = v7[55];
    v10 = v7[56];
    v12 = v7[50];
    v23 = v7[51];
    v7[70] = a2;
    v7[71] = a1;
    ObjectType = swift_getObjectType();
    v7[44] = v11;
    v7[45] = v10;
    v14 = *(v23 + 64);
    v22 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v7[72] = v16;
    *v16 = v7;
    v16[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
    v18 = v7[50];
    v17 = v7[51];
    v19 = v7[48];
    v20 = v7[47];

    return (v22)(v20, v19, v7 + 44, ObjectType, v17);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 576);
  v13 = *v3;
  *(*v3 + 584) = v2;

  if (v2)
  {
    v8 = v6[48];

    v9 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  else
  {
    v10 = v6[56];
    v11 = v6[48];
    v6[74] = v6[42];
    v6[75] = a2;
    v6[76] = a1;

    v9 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t MLS.Group.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 6);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  _StringGuts.grow(_:)(49);
  MEMORY[0x2667545A0](0xD000000000000012, 0x80000002651E9B30);
  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v7;
  MEMORY[0x2667545A0](46, 0xE100000000000000);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v8);

  MEMORY[0x2667545A0](v11, v12);

  MEMORY[0x2667545A0](0x4970756F7267202CLL, 0xED0000203A6F666ELL);
  v9 = Data.description.getter();
  MEMORY[0x2667545A0](v9);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.Group.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000012;
  v4 = 0x5474656863746172;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6973726576;
  if (v1 != 1)
  {
    v5 = 0x666E4970756F7267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.Group.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.Group.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.Group.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.Group.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.Group.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO5GroupV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO5GroupV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v38 = *(v1 + 6);
  v9 = v1[5];
  v32 = v1[4];
  v33 = v8;
  v31 = v9;
  v10 = v1[6];
  v29 = v1[7];
  v30 = v10;
  v11 = v1[8];
  v12 = v1[9];
  v27 = v1[10];
  v28 = v11;
  v13 = v1[12];
  v25 = v1[11];
  v26 = v12;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = &v24 - v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v35) = 0;
  v19 = v34;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v19)
  {
    v21 = v30;
    v20 = v31;
    v22 = v29;
    v34 = v13;
    v35 = v33;
    LODWORD(v36) = v38;
    v37 = v32;
    v39 = 1;
    lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v35 = v20;
    v36 = v21;
    v39 = 2;
    outlined copy of Data._Representation(v20, v21);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v35, v36);
    v35 = v22;
    v36 = v28;
    v39 = 3;
    outlined copy of Data._Representation(v22, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v35, v36);
    v35 = v26;
    v36 = v27;
    v39 = 4;
    outlined copy of Data._Representation(v26, v27);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v35, v36);
    v35 = v25;
    v36 = v34;
    v39 = 5;
    outlined copy of Data?(v25, v34);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v35, v36);
  }

  return (*(v4 + 8))(v18, v3);
}