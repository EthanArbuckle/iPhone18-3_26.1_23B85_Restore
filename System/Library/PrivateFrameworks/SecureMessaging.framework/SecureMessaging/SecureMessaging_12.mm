uint64_t type metadata completion function for MLS.GroupDeletionProcessedContext(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MLS.GroupDeletionProcessedContext(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for MLS.GroupDeletionProcessedContext(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void type metadata accessor for DoNotEncode<Task<(), Never>>()
{
  if (!lazy cache variable for type metadata for DoNotEncode<Task<(), Never>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
    v0 = type metadata accessor for DoNotEncode();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DoNotEncode<Task<(), Never>>);
    }
  }
}

void type metadata completion function for MLS.EncryptionContext(uint64_t a1)
{
  v2 = *(a1 + 24);
  type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.AdditionalAuthenticatedData?);
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      type metadata accessor for Optional();
      if (v6 <= 0x3F)
      {
        _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.GroupVersion?);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.EncryptionContext(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if (v5)
  {
    v8 = v5 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 - 8);
  v10 = *(v7 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 80);
  if (v5)
  {
    v15 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v15 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  v16 = *(v7 + 80);
  v17 = *(v7 + 64);
  if (v10)
  {
    v18 = 39;
  }

  else
  {
    v18 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v15 + 7;
  v20 = v16 + 48;
  if (v13 < a2)
  {
    v21 = ((v18 + v17 + ((v20 + ((v19 + ((v14 + 16) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v22 = a2 - v13;
    v23 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = v22 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v21);
        if (v27)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v27 = *(a1 + v21);
        if (v27)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v26)
    {
      v27 = *(a1 + v21);
      if (v27)
      {
LABEL_34:
        v28 = v27 - 1;
        if (v23)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        return v13 + (v29 | v28) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) != 0)
  {
    v32 = (a1 + v14 + 16) & ~v14;
    if (v8 == v13)
    {
      if (v5 >= 2)
      {
        v33 = (*(v4 + 48))(v32);
        goto LABEL_52;
      }
    }

    else if (v10 >= 2)
    {
      v33 = (*(*(v6 - 8) + 48))((v20 + ((v19 + v32) & 0xFFFFFFFFFFFFFFF8)) & ~v16, v10, v6);
LABEL_52:
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(a1 + 1);
  if (v30 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  return (v30 + 1);
}

void *storeEnumTagSinglePayload for MLS.EncryptionContext(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  if (v7)
  {
    v10 = v7 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 - 8);
  v12 = *(v9 + 84);
  v13 = *(v6 + 80);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  v16 = v12 - 1;
  if (!v12)
  {
    v16 = 0;
  }

  if (v10 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v7)
  {
    v19 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v19 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v20 = v19 + 7;
  if (!v12)
  {
    ++v15;
  }

  v21 = ((v15 + ((v14 + 48 + ((v20 + ((v13 + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 < a3)
  {
    v22 = a3 - v18;
    if (((v15 + ((v14 + 48 + ((v20 + ((v13 + 16) & ~v13)) & 0xFFFFFFF8)) & ~v14) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v5 = v24;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v18)
  {
    if (((v15 + ((v14 + 48 + ((v20 + ((v13 + 16) & ~v13)) & 0xFFFFFFF8)) & ~v14) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v25 = a2 - v18;
    }

    else
    {
      v25 = 1;
    }

    if (((v15 + ((v14 + 48 + ((v20 + ((v13 + 16) & ~v13)) & 0xFFFFFFF8)) & ~v14) + 39) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v26 = ~v18 + a2;
      v27 = result;
      bzero(result, v21);
      result = v27;
      *v27 = v26;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v21) = v25;
      }

      else
      {
        *(result + v21) = v25;
      }
    }

    else if (v5)
    {
      *(result + v21) = v25;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v21) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_47;
    }

    *(result + v21) = 0;
LABEL_46:
    if (!a2)
    {
      return result;
    }

    goto LABEL_47;
  }

  if (!v5)
  {
    goto LABEL_46;
  }

  *(result + v21) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_47:
  if ((v17 & 0x80000000) != 0)
  {
    result = ((result + v13 + 16) & ~v13);
    if (v10 == v18)
    {
      if (v7 >= 2)
      {
        v28 = *(v6 + 56);
        v29 = a2 + 1;

        return v28(result, v29);
      }
    }

    else if (v12 >= 2)
    {
      v30 = *(v11 + 56);
      v31 = (v14 + 48 + ((result + v20) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
      v32 = a2 + 1;

      return v30(v31, v32, v12, v8);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    result[1] = a2 - 1;
  }

  return result;
}

uint64_t type metadata completion function for MLS.GroupNameEncryptionContext(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MLS.GroupNameEncryptionContext(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v10 = ((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
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

void storeEnumTagSinglePayload for MLS.GroupNameEncryptionContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

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

void type metadata completion function for MLS.IncomingMessageContext(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.SigningInput?);
    if (v3 <= 0x3F)
    {
      _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.AdditionalAuthenticatedData?);
      if (v4 <= 0x3F)
      {
        _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingMessageContext(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v10 = ((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
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

void storeEnumTagSinglePayload for MLS.IncomingMessageContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v12 = ((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

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

void _s10Foundation4DataVSgMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata completion function for MLS.IncomingFailureToDecryptContext_v2(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?);
    if (v3 <= 0x3F)
    {
      _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.SigningInput?);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext_v2(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v10 = ((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
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

void storeEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext_v2(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v12 = ((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

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

void type metadata completion function for MLS.IncomingFailureToDecryptContext(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?);
    if (v3 <= 0x3F)
    {
      _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.SigningInput?);
      if (v4 <= 0x3F)
      {
        _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.AdditionalAuthenticatedData?);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v10 = ((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48;
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
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
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

void storeEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v12 = ((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFD0)
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
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFD0)
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
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

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

uint64_t type metadata instantiation function for MLS.IncomingErrorMessageContext()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingErrorMessageContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.IncomingErrorMessageContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for MLS.IncomingErrorMessageProcessedContext(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MLS.IncomingErrorMessageProcessedContext(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for MLS.IncomingErrorMessageProcessedContext(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);

    v24();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t type metadata completion function for MLS.GroupCreationProcessedContext(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MLS.GroupCreationProcessedContext(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupCreationProcessedContext(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
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
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
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

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v22 + 72) = 0u;
      *(v22 + 88) = 0u;
      *(v22 + 56) = 0u;
      *(v22 + 40) = 0u;
      *(v22 + 24) = 0u;
      *(v22 + 8) = 0u;
      *v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 8) = a2 - 1;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t type metadata completion function for MLS.GroupOperationContext(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MLS.GroupOperationContext(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
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

void storeEnumTagSinglePayload for MLS.GroupOperationContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

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

void type metadata completion function for MLS.GroupOperationProcessedContext(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for DoNotEncode<Task<(), Never>>();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationProcessedContext(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupOperationProcessedContext(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
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
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
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

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);

    v24();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t MLS.SwiftMLSPersister.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t MLS.SwiftMLSPersister.delegatePersister.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t MLS.SwiftMLSPersister.delegatePersister.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MLS.SwiftMLSPersister.delegatePersister.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.SwiftMLSPersister.delegatePersister.modify;
}

void MLS.SwiftMLSPersister.delegatePersister.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *MLS.SwiftMLSPersister.__allocating_init(clientIdentifier:delegatePersister:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v7 = *a1;
  v6 = a1[1];
  v5[5] = 0;
  swift_unknownObjectWeakInit();
  v5[2] = v7;
  v5[3] = v6;
  swift_beginAccess();
  v5[5] = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v5;
}

void *MLS.SwiftMLSPersister.init(clientIdentifier:delegatePersister:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v3[2] = v5;
  v3[3] = v6;
  swift_beginAccess();
  v3[5] = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t MLS.SwiftMLSPersister.readGroupState(groupID:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;
  v3[9] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readGroupState(groupID:), v4, 0);
}

{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 80);
  v9 = *v3;
  *(*v3 + 96) = v2;

  swift_unknownObjectRelease();
  if (v2)
  {
    v10 = v6[9];
    v11 = v6[5];

    outlined consume of Data._Representation(v6[2], v6[3]);

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readGroupState(groupID:), v10, 0);
  }

  else
  {
    v12 = v6[5];

    outlined consume of Data._Representation(v6[2], v6[3]);
    v13 = *(v9 + 8);

    return v13(a1, a2);
  }
}

uint64_t MLS.SwiftMLSPersister.readGroupState(groupID:)()
{
  v2 = (*(**(v0 + 64) + 96))();
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v6;
    *(v0 + 24) = v4;
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    *(v0 + 32) = v8;
    *(v0 + 40) = v9;
    v10 = *(v3 + 176);
    outlined copy of Data._Representation(v6, v4);

    v15 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = MLS.SwiftMLSPersister.readGroupState(groupID:);

    return v15(v0 + 16, v0 + 32, ObjectType, v3);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v1 = *(v0 + 96);
  return (*(v0 + 8))();
}

uint64_t MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[12] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readEpochData(groupID:epochID:), v5, 0);
}

uint64_t MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)()
{
  v2 = (*(**(v0 + 88) + 96))();
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = v1;
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v7;
    *(v0 + 24) = v6;
    *(v0 + 32) = 1;
    *(v0 + 40) = v5;
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    *(v0 + 48) = v9;
    *(v0 + 56) = v10;
    v11 = *(v3 + 184);
    outlined copy of Data._Representation(v7, v6);

    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

    return v16(v0 + 16, v0 + 48, ObjectType, v3);
  }

  else
  {
    v15 = *(v0 + 8);

    return v15();
  }
}

{
  v1 = *(v0 + 120);
  return (*(v0 + 8))();
}

uint64_t MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *(*v3 + 104);
  v9 = *v3;
  *(*v3 + 120) = v2;

  swift_unknownObjectRelease();
  if (v2)
  {
    v10 = v6[12];
    v11 = v6[7];

    outlined consume of Data._Representation(v6[2], v6[3]);

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readEpochData(groupID:epochID:), v10, 0);
  }

  else
  {
    v12 = v6[7];

    outlined consume of Data._Representation(v6[2], v6[3]);
    v13 = *(v9 + 8);

    return v13(a1, a2);
  }
}

uint64_t MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for MLS.Storage.EpochRecord();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v4[19] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:), v8, 0);
}

uint64_t MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:)()
{
  v1 = *(v0 + 104);
  v70 = MLS.Storage.GroupStateUpdate.groupState.getter();
  v71 = v2;
  *(v0 + 160) = v70;
  *(v0 + 168) = v2;
  v3 = MLS.Storage.GroupStateUpdate.epochInserts.getter();
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = *(v0 + 128);
    v78 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v7 = v78;
    v8 = *(v6 + 16);
    v6 += 16;
    v9 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v73 = *(v6 + 56);
    v75 = v8;
    v10 = (v6 - 8);
    do
    {
      v11 = v7;
      v12 = *(v0 + 152);
      v75(*(v0 + 144), v9, *(v0 + 120));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v13 = *(v0 + 152);
        swift_task_reportUnexpectedExecutor();
      }

      v14 = *(v0 + 144);
      v15 = *(v0 + 120);
      v16 = MLS.Storage.EpochRecord.epochID.getter();
      v17 = MLS.Storage.EpochRecord.data.getter();
      v19 = v18;
      (*v10)(v14, v15);
      v7 = v11;
      v79 = v11;
      v20 = *(v11 + 16);
      v21 = *(v7 + 24);
      if (v20 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v7 = v79;
      }

      *(v7 + 16) = v20 + 1;
      v22 = (v7 + 32 * v20);
      v22[4] = 1;
      v22[5] = v16;
      v22[6] = v17;
      v22[7] = v19;
      v9 += v73;
      --v4;
    }

    while (v4);

    v5 = MEMORY[0x277D84F90];
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v69 = v7;
  *(v0 + 176) = v7;
  v23 = *(v0 + 104);
  v24 = MLS.Storage.GroupStateUpdate.epochUpdates.getter();
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v0 + 128);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v27 = v5;
    v28 = *(v26 + 16);
    v26 += 16;
    v29 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v74 = *(v26 + 56);
    v76 = v28;
    v72 = (v26 - 8);
    do
    {
      v30 = *(v0 + 152);
      v76(*(v0 + 136), v29, *(v0 + 120));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v31 = *(v0 + 152);
        swift_task_reportUnexpectedExecutor();
      }

      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      v34 = MLS.Storage.EpochRecord.epochID.getter();
      v35 = MLS.Storage.EpochRecord.data.getter();
      v37 = v36;
      (*v72)(v32, v33);
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      }

      *(v27 + 16) = v39 + 1;
      v40 = (v27 + 32 * v39);
      v40[4] = 1;
      v40[5] = v34;
      v40[6] = v35;
      v40[7] = v37;
      v29 += v74;
      --v25;
    }

    while (v25);

    v5 = MEMORY[0x277D84F90];
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  *(v0 + 184) = v27;
  v41 = *(v0 + 104);
  v42 = MLS.Storage.GroupStateUpdate.epochDeletes.getter();
  v43 = *(v42 + 16);
  if (v43)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
    v44 = 32;
    v45 = v5;
    do
    {
      v46 = *(v0 + 152);
      v47 = *(v42 + v44);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v48 = *(v0 + 152);
        swift_task_reportUnexpectedExecutor();
      }

      v50 = *(v5 + 16);
      v49 = *(v5 + 24);
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
      }

      *(v5 + 16) = v50 + 1;
      v51 = v5 + 16 * v50;
      *(v51 + 32) = 1;
      *(v51 + 40) = v47;
      v44 += 8;
      --v43;
    }

    while (v43);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  *(v0 + 192) = v45;
  v52 = *(**(v0 + 112) + 96);
  v53 = outlined copy of Data._Representation(*(v0 + 88), *(v0 + 96));
  v54 = v52(v53);
  *(v0 + 200) = v54;
  if (v54)
  {
    v56 = v55;
    v57 = *(v0 + 112);
    v59 = *(v0 + 88);
    v58 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v59;
    *(v0 + 24) = v58;
    *(v0 + 32) = v70;
    *(v0 + 40) = v71;
    *(v0 + 48) = v69;
    *(v0 + 56) = v27;
    *(v0 + 64) = v45;
    v61 = *(v57 + 24);
    *(v0 + 72) = *(v57 + 16);
    *(v0 + 80) = v61;
    v62 = *(v56 + 192);

    v77 = (v62 + *v62);
    v63 = v62[1];
    v64 = swift_task_alloc();
    *(v0 + 208) = v64;
    *v64 = v0;
    v64[1] = MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:);

    return v77(v0 + 16, v0 + 72, ObjectType, v56);
  }

  else
  {
    outlined consume of Data._Representation(*(v0 + 88), *(v0 + 96));
    outlined consume of Data?(v70, v71);

    v67 = *(v0 + 136);
    v66 = *(v0 + 144);

    v68 = *(v0 + 8);

    return v68();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *v1;
  v2[27] = v0;

  v6 = v2[10];

  swift_unknownObjectRelease();
  v7 = v2[19];
  if (v0)
  {
    v8 = MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:);
  }

  else
  {
    v8 = MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  outlined consume of Data._Representation(v0[11], v0[12]);
  outlined consume of Data?(v5, v4);

  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  outlined consume of Data._Representation(v0[11], v0[12]);
  outlined consume of Data?(v5, v4);

  v8 = v0[1];
  v9 = v0[27];

  return v8();
}

uint64_t MLS.SwiftMLSPersister.readGroupState(_:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readGroupState(_:), v3, 0);
}

uint64_t MLS.SwiftMLSPersister.readGroupState(_:)()
{
  v1 = (*(**(v0 + 56) + 96))();
  *(v0 + 72) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = MLS.Storage.ReadGroupKey.groupID.getter();
    *(v0 + 24) = v7;
    v8 = *(v5 + 24);
    *(v0 + 32) = *(v5 + 16);
    *(v0 + 40) = v8;
    v9 = *(v3 + 176);

    v14 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *v11 = v0;
    v11[1] = MLS.SwiftMLSPersister.readGroupState(_:);

    return v14(v0 + 16, v0 + 32, ObjectType, v3);
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t MLS.SwiftMLSPersister.readGroupState(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *v3;
  *(*v3 + 88) = v2;

  swift_unknownObjectRelease();
  if (v2)
  {
    v10 = v6[8];
    v11 = v6[5];

    outlined consume of Data._Representation(v6[2], v6[3]);

    return MEMORY[0x2822009F8](closure #1 in MLS.Client.update(groupDetails:forGroup:), v10, 0);
  }

  else
  {
    v12 = v6[5];

    outlined consume of Data._Representation(v6[2], v6[3]);
    v13 = *(v9 + 8);

    return v13(a1, a2);
  }
}

uint64_t MLS.SwiftMLSPersister.readEpochData(_:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for MLS.Storage.EpochKey();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v2[14] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readEpochData(_:), v6, 0);
}

uint64_t MLS.SwiftMLSPersister.readEpochData(_:)()
{
  v1 = (*(**(v0 + 72) + 96))();
  *(v0 + 120) = v1;
  if (v1)
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v23 = v2;
    ObjectType = swift_getObjectType();
    Epoch = MLS.Storage.ReadEpochKey.groupID.getter();
    v21 = v9;
    MLS.Storage.ReadEpochKey.key.getter();
    v10 = MLS.Storage.EpochKey.era.getter();
    v11 = *(v5 + 8);
    v11(v3, v6);
    MLS.Storage.ReadEpochKey.key.getter();
    v12 = MLS.Storage.EpochKey.epochID.getter();
    v11(v4, v6);
    *(v0 + 16) = Epoch;
    *(v0 + 24) = v21;
    *(v0 + 32) = v10;
    *(v0 + 40) = v12;
    v13 = *(v7 + 24);
    *(v0 + 48) = *(v7 + 16);
    *(v0 + 56) = v13;
    v14 = *(v23 + 184);

    v22 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = MLS.SwiftMLSPersister.readEpochData(_:);

    return v22(v0 + 16, v0 + 48, ObjectType, v23);
  }

  else
  {
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);

    v20 = *(v0 + 8);

    return v20(0, 0xF000000000000000);
  }
}

{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t MLS.SwiftMLSPersister.readEpochData(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 128);
  v7 = *(*v3 + 120);
  v8 = *v3;
  v8[17] = v2;

  swift_unknownObjectRelease();
  if (v2)
  {
    v9 = v8[14];
    v10 = v8[7];

    outlined consume of Data._Representation(v8[2], v8[3]);

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readEpochData(_:), v9, 0);
  }

  else
  {
    v11 = v8[7];

    outlined consume of Data._Representation(v8[2], v8[3]);
    v13 = v8[12];
    v12 = v8[13];

    v14 = v8[1];

    return v14(a1, a2);
  }
}

uint64_t MLS.SwiftMLSPersister.write(_:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for MLS.Storage.EpochKey();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for MLS.Storage.Record();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v2[22] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.write(_:), v9, 0);
}

uint64_t MLS.SwiftMLSPersister.write(_:)()
{
  v1 = *(v0 + 88);
  v83 = MLS.Storage.WriteGroupData.groupID.getter();
  v84 = v2;
  *(v0 + 184) = v83;
  *(v0 + 192) = v2;
  v81 = MLS.Storage.WriteGroupData.groupState.getter();
  v82 = v3;
  *(v0 + 200) = v81;
  *(v0 + 208) = v3;
  v4 = MLS.Storage.WriteGroupData.epochInserts.getter();
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 112);
    v104 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v9 = v104;
    v10 = *(v7 + 16);
    v7 += 16;
    v11 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v91 = *(v7 + 56);
    v92 = v10;
    v89 = (v8 + 8);
    v87 = (v7 - 8);
    do
    {
      v102 = v9;
      v12 = *(v0 + 176);
      v92(*(v0 + 168), v11, *(v0 + 144));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v13 = *(v0 + 176);
        swift_task_reportUnexpectedExecutor();
      }

      v14 = *(v0 + 168);
      v15 = *(v0 + 136);
      v97 = *(v0 + 144);
      v16 = *(v0 + 128);
      v17 = *(v0 + 104);
      MLS.Storage.Record.key.getter();
      v99 = MLS.Storage.EpochKey.era.getter();
      v18 = *v89;
      (*v89)(v15, v17);
      MLS.Storage.Record.key.getter();
      v19 = MLS.Storage.EpochKey.epochID.getter();
      v18(v16, v17);
      v20 = MLS.Storage.Record.data.getter();
      v22 = v21;
      (*v87)(v14, v97);
      v9 = v102;
      v24 = *(v102 + 16);
      v23 = *(v102 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v9 = v102;
      }

      *(v9 + 16) = v24 + 1;
      v25 = (v9 + 32 * v24);
      v25[4] = v99;
      v25[5] = v19;
      v25[6] = v20;
      v25[7] = v22;
      v11 += v91;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x277D84F90];
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v103 = v9;
  *(v0 + 216) = v9;
  v26 = *(v0 + 88);
  v27 = MLS.Storage.WriteGroupData.epochUpdates.getter();
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = *(v0 + 152);
    v30 = *(v0 + 112);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v31 = v6;
    v32 = *(v29 + 16);
    v29 += 16;
    v33 = v27 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v88 = *(v29 + 56);
    v90 = v32;
    v85 = (v29 - 8);
    v86 = (v30 + 8);
    do
    {
      v34 = *(v0 + 176);
      v90(*(v0 + 160), v33, *(v0 + 144));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v35 = *(v0 + 176);
        swift_task_reportUnexpectedExecutor();
      }

      v36 = *(v0 + 160);
      v37 = *(v0 + 136);
      v93 = *(v0 + 144);
      v38 = *(v0 + 128);
      v39 = *(v0 + 104);
      MLS.Storage.Record.key.getter();
      v98 = MLS.Storage.EpochKey.era.getter();
      v40 = *v86;
      (*v86)(v37, v39);
      MLS.Storage.Record.key.getter();
      v95 = MLS.Storage.EpochKey.epochID.getter();
      v40(v38, v39);
      v41 = MLS.Storage.Record.data.getter();
      v43 = v42;
      (*v85)(v36, v93);
      v45 = *(v31 + 16);
      v44 = *(v31 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
      }

      *(v31 + 16) = v45 + 1;
      v46 = (v31 + 32 * v45);
      v46[4] = v98;
      v46[5] = v95;
      v46[6] = v41;
      v46[7] = v43;
      v33 += v88;
      --v28;
    }

    while (v28);

    v6 = MEMORY[0x277D84F90];
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  *(v0 + 224) = v31;
  v47 = *(v0 + 88);
  v48 = MLS.Storage.WriteGroupData.epochDeletes.getter();
  v49 = *(v48 + 16);
  if (v49)
  {
    v100 = v31;
    v50 = *(v0 + 112);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v51 = v6;
    v52 = *(v50 + 16);
    v50 += 16;
    v53 = v48 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v94 = *(v50 + 56);
    v96 = v52;
    v54 = (v50 - 8);
    do
    {
      v55 = *(v0 + 176);
      v96(*(v0 + 120), v53, *(v0 + 104));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v56 = *(v0 + 176);
        swift_task_reportUnexpectedExecutor();
      }

      v57 = *(v0 + 120);
      v58 = *(v0 + 104);
      v59 = MLS.Storage.EpochKey.era.getter();
      v60 = MLS.Storage.EpochKey.epochID.getter();
      (*v54)(v57, v58);
      v62 = *(v51 + 16);
      v61 = *(v51 + 24);
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
      }

      *(v51 + 16) = v62 + 1;
      v63 = v51 + 16 * v62;
      *(v63 + 32) = v59;
      *(v63 + 40) = v60;
      v53 += v94;
      --v49;
    }

    while (v49);

    v31 = v100;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  *(v0 + 232) = v51;
  v65 = (*(**(v0 + 96) + 96))(v64);
  *(v0 + 240) = v65;
  if (v65)
  {
    v67 = v66;
    v68 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v83;
    *(v0 + 24) = v84;
    *(v0 + 32) = v81;
    *(v0 + 40) = v82;
    *(v0 + 48) = v103;
    *(v0 + 56) = v31;
    *(v0 + 64) = v51;
    v70 = *(v68 + 24);
    *(v0 + 72) = *(v68 + 16);
    *(v0 + 80) = v70;
    v71 = *(v67 + 192);

    v101 = (v71 + *v71);
    v72 = v71[1];
    v73 = swift_task_alloc();
    *(v0 + 248) = v73;
    *v73 = v0;
    v73[1] = MLS.SwiftMLSPersister.write(_:);

    return v101(v0 + 16, v0 + 72, ObjectType, v67);
  }

  else
  {
    outlined consume of Data._Representation(v83, v84);
    outlined consume of Data?(v81, v82);

    v76 = *(v0 + 160);
    v75 = *(v0 + 168);
    v78 = *(v0 + 128);
    v77 = *(v0 + 136);
    v79 = *(v0 + 120);

    v80 = *(v0 + 8);

    return v80();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *v1;
  v2[32] = v0;

  v6 = v2[10];

  swift_unknownObjectRelease();
  v7 = v2[22];
  if (v0)
  {
    v8 = MLS.SwiftMLSPersister.write(_:);
  }

  else
  {
    v8 = MLS.SwiftMLSPersister.write(_:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  outlined consume of Data._Representation(v0[23], v0[24]);
  outlined consume of Data?(v5, v4);

  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v13 = v0[15];
  outlined consume of Data._Representation(v0[23], v0[24]);
  outlined consume of Data?(v5, v4);

  v10 = v0[1];
  v11 = v0[32];

  return v10();
}

uint64_t MLS.SwiftMLSPersister.read(clientUUID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[4] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.read(clientUUID:), v3, 0);
}

uint64_t MLS.SwiftMLSPersister.read(clientUUID:)()
{
  v2 = (*(**(v0 + 24) + 96))();
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 200);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = MLS.SwiftMLSPersister.read(clientUUID:);
    v8 = *(v0 + 16);

    return v11(v8, ObjectType, v3);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[1];

  return v4(v2, v3);
}

{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t MLS.SwiftMLSPersister.read(clientUUID:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  v6[7] = v2;

  v9 = v6[4];
  if (v2)
  {
    v10 = MLS.SwiftMLSPersister.read(clientUUID:);
  }

  else
  {
    v6[8] = a2;
    v6[9] = a1;
    v10 = MLS.SwiftMLSPersister.read(clientUUID:);
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t MLS.SwiftMLSPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[6] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.write(clientUUID:clientState:), v5, 0);
}

uint64_t MLS.SwiftMLSPersister.write(clientUUID:clientState:)()
{
  v2 = (*(**(v0 + 40) + 96))();
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 208);
    v13 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = MLS.SwiftMLSPersister.write(clientUUID:clientState:);
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    return v13(v10, v8, v9, ObjectType, v3);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.write(clientUUID:clientState:), v4, 0);
  }

  else
  {
    v5 = v3[7];
    swift_unknownObjectRelease();
    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t MLS.SwiftMLSPersister.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of weak MLS.Persister?(v0 + 32);
  return v0;
}

uint64_t MLS.SwiftMLSPersister.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of weak MLS.Persister?(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister(uint64_t a1)
{
  v4 = *(**v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Storage.ClientStateStorage.write(clientUUID:clientState:) in conformance MLS.SwiftMLSPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2);
}

{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.readEpochData(groupID:epochID:) in conformance MLS.SwiftMLSPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.write(groupID:groupStateUpdate:) in conformance MLS.SwiftMLSPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.readGroupState(_:) in conformance MLS.SwiftMLSPersister(uint64_t a1)
{
  v4 = *(**v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.readEpochData(_:) in conformance MLS.SwiftMLSPersister(uint64_t a1)
{
  v4 = *(**v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.write(_:) in conformance MLS.SwiftMLSPersister(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t instantiation function for generic protocol witness table for MLS.SwiftMLSPersister(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister(&lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister);
  a1[2] = lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister(&lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister);
  result = lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister(&lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MLS.SwiftMLSPersister();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26503F538@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26503F584(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readGroupState(_:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readEpochData(_:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.write(_:)(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.read(clientUUID:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

void *MLS.OutgoingReplaceExpiredCertsState.init(keyPackageResult:targetMembers:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

__n128 MLS.OutgoingEventState.init(eventStorageIdentifier:eventSpecificState:eventIdentifier:clientContext:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v8 = a3[1].n128_u8[0];
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  result = *a3;
  a8[1] = *a3;
  a8[2].n128_u8[0] = v8;
  a8[2].n128_u64[1] = a4;
  a8[3].n128_u64[0] = a5;
  a8[3].n128_u64[1] = a6;
  a8[4].n128_u64[0] = a7;
  return result;
}

uint64_t MLS.OutgoingGroupNameChangeState.init(groupName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.OutgoingAddMemberState.init(otherKeyPackages:otherMembers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v28 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v27 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v4 << 6);
    v13 = *(v3 + 48) + 32 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    v18 = *(*(v3 + 56) + 8 * v12);
    outlined copy of MLS.AllMember();
    v19 = v18 == 0;

    if (!v18)
    {
      return v19;
    }

    v29 = v9;
    v20 = v3;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v16, v17);
    v23 = v22;
    outlined consume of MLS.AllMember();
    if ((v23 & 1) == 0)
    {

      return 0;
    }

    v24 = *(*(a2 + 56) + 8 * v21);

    v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO14KeyPackageInfoV_Tt1g5(v25, v18);

    v3 = v20;
    v7 = v29;
    v19 = 0;
    if ((v26 & 1) == 0)
    {
      return v19;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v27)
    {
      return 1;
    }

    v11 = *(v28 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15SecureMessaging15MetricCollectorV5EventVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v75 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v12 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v75 - v13;
  v85 = type metadata accessor for MetricCollector.Event();
  v92 = *(v85 - 8);
  v14 = *(v92 + 64);
  v15 = MEMORY[0x28223BE20](v85);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v90 = &v75 - v19;
  MEMORY[0x28223BE20](v18);
  v84 = &v75 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetSgMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = (&v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v23);
  v89 = (&v75 - v27);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v88 = v17;
  v28 = 0;
  v80 = a1;
  v31 = *(a1 + 64);
  v30 = a1 + 64;
  v29 = v31;
  v32 = 1 << *(v30 - 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v29;
  v75 = (v32 + 63) >> 6;
  v76 = v30;
  v82 = (v5 + 48);
  v83 = a2;
  v77 = (v5 + 32);
  v78 = (v5 + 8);
  v81 = v25;
  while (v34)
  {
    v91 = (v34 - 1) & v34;
    v35 = __clz(__rbit64(v34)) | (v28 << 6);
LABEL_16:
    v41 = (*(v80 + 48) + 16 * v35);
    v43 = *v41;
    v42 = v41[1];
    v44 = v84;
    outlined init with copy of MetricCollector.Event(*(v80 + 56) + *(v92 + 72) * v35, v84);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMR);
    v46 = *(v45 + 48);
    *v25 = v43;
    v25[1] = v42;
    outlined init with take of MetricCollector.Event(v44, v25 + v46);
    (*(*(v45 - 8) + 56))(v25, 0, 1, v45);

    v38 = v89;
LABEL_17:
    outlined init with take of (key: String, value: MetricCollector.Event)?(v25, v38);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMR);
    v48 = (*(*(v47 - 8) + 48))(v38, 1, v47);
    v49 = v48 == 1;
    if (v48 == 1)
    {
      return v49;
    }

    v50 = v11;
    v51 = *(v47 + 48);
    v52 = *v38;
    v53 = v38[1];
    v54 = v38 + v51;
    v55 = v90;
    outlined init with take of MetricCollector.Event(v54, v90);
    v56 = v52;
    v57 = v83;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v53);
    v60 = v59;

    if ((v60 & 1) == 0)
    {
      outlined destroy of MetricCollector.Event(v55);
      return 0;
    }

    v61 = v88;
    outlined init with copy of MetricCollector.Event(*(v57 + 56) + *(v92 + 72) * v58, v88);
    v62 = v55;
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of MetricCollector.Event(v61);
      outlined destroy of MetricCollector.Event(v55);
      return 0;
    }

    v63 = *(v85 + 20);
    v64 = *(v86 + 48);
    v65 = v61 + v63;
    v66 = v61;
    v67 = v87;
    outlined init with copy of Date?(v65, v87);
    outlined init with copy of Date?(v62 + v63, v67 + v64);
    v68 = *v82;
    if ((*v82)(v67, 1, v4) == 1)
    {
      outlined destroy of MetricCollector.Event(v66);
      outlined destroy of MetricCollector.Event(v62);
      if (v68(v67 + v64, 1, v4) != 1)
      {
        goto LABEL_31;
      }

      v11 = v50;
      result = outlined destroy of NSObject?(v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v25 = v81;
      v34 = v91;
    }

    else
    {
      v11 = v50;
      outlined init with copy of Date?(v67, v50);
      if (v68(v67 + v64, 1, v4) == 1)
      {
        outlined destroy of MetricCollector.Event(v88);
        outlined destroy of MetricCollector.Event(v90);
        (*v78)(v50, v4);
LABEL_31:
        outlined destroy of NSObject?(v67, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
        return 0;
      }

      v69 = v4;
      v70 = v79;
      (*v77)(v79, v67 + v64, v69);
      lazy protocol witness table accessor for type Date and conformance Date();
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = *v78;
      v73 = v70;
      v4 = v69;
      (*v78)(v73, v69);
      outlined destroy of MetricCollector.Event(v88);
      outlined destroy of MetricCollector.Event(v90);
      v72(v11, v69);
      result = outlined destroy of NSObject?(v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v25 = v81;
      v34 = v91;
      if ((v71 & 1) == 0)
      {
        return v49;
      }
    }
  }

  if (v75 <= v28 + 1)
  {
    v36 = v28 + 1;
  }

  else
  {
    v36 = v75;
  }

  v37 = v36 - 1;
  v38 = v89;
  while (1)
  {
    v39 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v39 >= v75)
    {
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMR);
      (*(*(v74 - 8) + 56))(v25, 1, 1, v74);
      v91 = 0;
      v28 = v37;
      goto LABEL_17;
    }

    v40 = *(v76 + 8 * v39);
    ++v28;
    if (v40)
    {
      v91 = (v40 - 1) & v40;
      v35 = __clz(__rbit64(v40)) | (v39 << 6);
      v28 = v39;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t MLS.OutgoingEventState.EventSpecificState.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x6E616843656D616ELL;
    if (a1 != 8)
    {
      v6 = 0x6574616572636572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x636E79736572;
    if (a1 != 5)
    {
      v7 = 0x646172676E776F64;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x657461657263;
    v2 = 0x626D654D6B63696BLL;
    v3 = 0x655365766F6D6572;
    if (a1 != 3)
    {
      v3 = 0x746164705579656BLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x65626D654D646461;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.OutgoingEventState.EventSpecificState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys(uint64_t a1)
{
  CodingKeys = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys();

  return MEMORY[0x2821FE718](a1, CodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys(uint64_t a1)
{
  CodingKeys = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys();

  return MEMORY[0x2821FE720](a1, CodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingEventState.EventSpecificState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O23RecreateGroupCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O23RecreateGroupCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20NameChangeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20NameChangeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v68 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O29ReplaceExpiredCertsCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O29ReplaceExpiredCertsCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v9);
  v65 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19DowngradeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19DowngradeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v12);
  v62 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16ResyncCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16ResyncCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v59 = &v47 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19KeyUpdateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19KeyUpdateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v57 = *(v58 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v47 - v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20RemoveSelfCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20RemoveSelfCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v54 = *(v55 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v47 - v21;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20KickMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20KickMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v51 = *(v52 - 8);
  v22 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v47 - v23;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19AddMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19AddMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v48 = *(v49 - 8);
  v24 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v26 = &v47 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16CreateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16CreateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v47 = *(v27 - 8);
  v28 = *(v47 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v47 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v32 = *(v31 - 8);
  v76 = v31;
  v77 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v47 - v34;
  v36 = *v1;
  v74 = v1[1];
  v75 = v36;
  v37 = *(v1 + 16);
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v37 > 4)
  {
    if (v37 <= 6)
    {
      if (v37 == 5)
      {
        LOBYTE(v78) = 5;
        lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys();
        v39 = v59;
        v40 = v76;
        v41 = v35;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState();
        v42 = v61;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v43 = v60;
      }

      else
      {
        LOBYTE(v78) = 6;
        lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys();
        v39 = v62;
        v40 = v76;
        v41 = v35;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState();
        v42 = v64;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v43 = v63;
      }
    }

    else if (v37 == 7)
    {
      LOBYTE(v78) = 7;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys();
      v39 = v65;
      v40 = v76;
      v41 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v78 = v75;
      v79 = v74;
      lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState();
      v42 = v67;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v66;
    }

    else if (v37 == 8)
    {
      LOBYTE(v78) = 8;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys();
      v39 = v68;
      v40 = v76;
      v41 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v78 = v75;
      v79 = v74;
      lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState();
      v42 = v70;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v69;
    }

    else
    {
      LOBYTE(v78) = 9;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys();
      v39 = v71;
      v40 = v76;
      v41 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v78 = v75;
      lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState();
      v42 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v72;
    }

    goto LABEL_20;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      LOBYTE(v78) = 2;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys();
      v39 = v50;
      v40 = v76;
      v41 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v78 = v75;
      lazy protocol witness table accessor for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState();
      v42 = v52;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v51;
    }

    else if (v37 == 3)
    {
      LOBYTE(v78) = 3;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys();
      v39 = v53;
      v40 = v76;
      v41 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState();
      v42 = v55;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v54;
    }

    else
    {
      LOBYTE(v78) = 4;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys();
      v39 = v56;
      v40 = v76;
      v41 = v35;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState();
      v42 = v58;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v43 = v57;
    }

LABEL_20:
    (*(v43 + 8))(v39, v42);
    return (*(v77 + 8))(v41, v40);
  }

  if (!v37)
  {
    LOBYTE(v78) = 0;
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys();
    v44 = v76;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v78 = v75;
    v79 = v74;
    lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v47 + 8))(v30, v27);
    return (*(v77 + 8))(v35, v44);
  }

  LOBYTE(v78) = 1;
  lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys();
  v40 = v76;
  v41 = v35;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v78 = v75;
  v79 = v74;
  lazy protocol witness table accessor for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState();
  v46 = v49;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v48 + 8))(v26, v46);
  return (*(v77 + 8))(v41, v40);
}

uint64_t MLS.OutgoingEventState.EventSpecificState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O23RecreateGroupCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O23RecreateGroupCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v95 = *(v92 - 8);
  v3 = *(v95 + 64);
  MEMORY[0x28223BE20](v92);
  v99 = &v73[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20NameChangeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20NameChangeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v5);
  v100 = &v73[-v7];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O29ReplaceExpiredCertsCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O29ReplaceExpiredCertsCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v97 = &v73[-v9];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19DowngradeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19DowngradeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v89 = *(v88 - 8);
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v103 = &v73[-v11];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16ResyncCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16ResyncCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v102 = &v73[-v13];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19KeyUpdateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19KeyUpdateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v84 = *(v85 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v96 = &v73[-v15];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20RemoveSelfCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20RemoveSelfCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v82 = *(v83 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v98 = &v73[-v17];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20KickMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20KickMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v80 = *(v81 - 8);
  v18 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v101 = &v73[-v19];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19AddMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19AddMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v78 = *(v79 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v22 = &v73[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16CreateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16CreateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v77 = *(v23 - 8);
  v24 = *(v77 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v73[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v73[-v30];
  v33 = a1[3];
  v32 = a1[4];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys();
  v34 = v112;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v34)
  {
    goto LABEL_12;
  }

  v35 = v26;
  v75 = v23;
  v36 = v22;
  v37 = v101;
  v38 = v102;
  v39 = v103;
  v76 = 0;
  v112 = v28;
  v40 = v104;
  v41 = KeyedDecodingContainer.allKeys.getter();
  v42 = (2 * *(v41 + 16)) | 1;
  v108 = v41;
  v109 = v41 + 32;
  v110 = 0;
  v111 = v42;
  v43 = specialized Collection<>.popFirst()();
  if (v43 == 10 || v110 != v111 >> 1)
  {
    v47 = type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v49 = &type metadata for MLS.OutgoingEventState.EventSpecificState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    goto LABEL_11;
  }

  v74 = v43;
  if (v43 <= 4u)
  {
    if (v43 > 1u)
    {
      v44 = v76;
      if (v43 != 2)
      {
        if (v43 == 3)
        {
          LOBYTE(v106) = 3;
          lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys();
          v45 = v98;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v44)
          {
            lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState();
            v46 = v83;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v82 + 8))(v45, v46);
LABEL_38:
            (*(v112 + 8))(v31, v27);
            swift_unknownObjectRelease();
            v70 = 0;
            v71 = 0;
LABEL_43:
            v51 = v105;
            *v40 = v70;
            *(v40 + 8) = v71;
            *(v40 + 16) = v74;
            return __swift_destroy_boxed_opaque_existential_1Tm(v51);
          }

          goto LABEL_11;
        }

        LOBYTE(v106) = 4;
        lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys();
        v39 = v96;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState();
          v59 = v85;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v60 = &v113;
          goto LABEL_37;
        }

        goto LABEL_11;
      }

      LOBYTE(v106) = 2;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys();
      v61 = v37;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v44)
      {
        goto LABEL_11;
      }

      lazy protocol witness table accessor for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState();
      v62 = v81;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v80 + 8))(v61, v62);
LABEL_40:
      (*(v112 + 8))(v31, v27);
      swift_unknownObjectRelease();
      v71 = 0;
      v70 = v106;
      goto LABEL_43;
    }

    v56 = v76;
    if (!v43)
    {
      LOBYTE(v106) = 0;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v56)
      {
        goto LABEL_11;
      }

      lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState();
      v57 = v75;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v77 + 8))(v35, v57);
      (*(v112 + 8))(v31, v27);
      swift_unknownObjectRelease();
LABEL_42:
      v70 = v106;
      v71 = v107;
      goto LABEL_43;
    }

    LOBYTE(v106) = 1;
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v56)
    {
      goto LABEL_11;
    }

    lazy protocol witness table accessor for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState();
    v67 = v79;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v68 = v112;
    (*(v78 + 8))(v36, v67);
    (*(v68 + 8))(v31, v27);
LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  if (v43 > 6u)
  {
    if (v43 == 7)
    {
      LOBYTE(v106) = 7;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys();
      v53 = v97;
      v63 = v76;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v63)
      {
        goto LABEL_11;
      }

      lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState();
      v55 = v91;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v72 = v90;
    }

    else
    {
      if (v43 != 8)
      {
        LOBYTE(v106) = 9;
        lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys();
        v64 = v99;
        v65 = v76;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v65)
        {
          goto LABEL_11;
        }

        lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState();
        v66 = v92;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v95 + 8))(v64, v66);
        goto LABEL_40;
      }

      LOBYTE(v106) = 8;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys();
      v53 = v100;
      v54 = v76;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v54)
      {
        goto LABEL_11;
      }

      lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState();
      v55 = v94;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v72 = v93;
    }

    (*(v72 + 8))(v53, v55);
    (*(v112 + 8))(v31, v27);
    goto LABEL_41;
  }

  if (v43 == 5)
  {
    LOBYTE(v106) = 5;
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys();
    v39 = v38;
    v58 = v76;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v58)
    {
      lazy protocol witness table accessor for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState();
      v59 = v87;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v60 = &v114;
LABEL_37:
      (*(*(v60 - 32) + 8))(v39, v59);
      goto LABEL_38;
    }
  }

  else
  {
    LOBYTE(v106) = 6;
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys();
    v69 = v76;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v69)
    {
      lazy protocol witness table accessor for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState();
      v59 = v88;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v60 = &v115;
      goto LABEL_37;
    }
  }

LABEL_11:
  (*(v112 + 8))(v31, v27);
  swift_unknownObjectRelease();
LABEL_12:
  v51 = v105;
  return __swift_destroy_boxed_opaque_existential_1Tm(v51);
}

uint64_t MLS.OutgoingEventState.eventStorageIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MLS.OutgoingEventState.eventSpecificState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return outlined copy of MLS.OutgoingEventState.EventSpecificState(v2, v3, v4);
}

uint64_t MLS.OutgoingEventState.eventIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MLS.OutgoingEventState.clientContext.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data?(v1, *(v0 + 64));
  return v1;
}

uint64_t MLS.OutgoingEventState.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  _StringGuts.grow(_:)(80);
  MEMORY[0x2667545A0](0xD00000000000001FLL, 0x80000002651E9CE0);
  MEMORY[0x2667545A0](v6, v7);
  MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E9D00);
  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E9D20);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingEventState.CodingKeys()
{
  v1 = 0x656449746E657665;
  if (*v0 != 2)
  {
    v1 = 0x6F43746E65696C63;
  }

  v2 = 0xD000000000000016;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingEventState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.OutgoingEventState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingEventState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v23 = v1[3];
  v24 = v10;
  v29 = *(v1 + 32);
  v11 = v1[5];
  v21 = v1[6];
  v22 = v11;
  v12 = v1[7];
  v19 = v1[8];
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys();
  v14 = v3;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = 0;
  v15 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v17 = v19;
    v16 = v20;
    v26 = v24;
    v27 = v23;
    v28 = v29;
    v30 = 1;
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v24, v23, v29);
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v26, v27, v28);
    LOBYTE(v26) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = v16;
    v27 = v17;
    v30 = 3;
    outlined copy of Data?(v16, v17);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v26, v27);
  }

  return (*(v4 + 8))(v7, v14);
}

uint64_t MLS.OutgoingEventState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v12;
  LOBYTE(v27) = 1;
  lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v32;
  v41 = v33;
  LOBYTE(v32) = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v13;
  v42 = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v14 = v40;
  v22 = v39;
  v15 = v26;
  *&v27 = v11;
  *(&v27 + 1) = v26;
  v16 = v25;
  v28 = v25;
  v17 = v41;
  LOBYTE(v29) = v41;
  *(&v29 + 1) = v23;
  *&v30 = v24;
  *(&v30 + 1) = v39;
  v31 = v40;
  *(a2 + 64) = v40;
  v18 = v28;
  *a2 = v27;
  *(a2 + 16) = v18;
  v19 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v19;
  outlined init with copy of MLS.OutgoingEventState(&v27, &v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v32 = v11;
  *(&v32 + 1) = v15;
  v33 = v16;
  v34 = v17;
  v35 = v23;
  v36 = v24;
  v37 = v22;
  v38 = v14;
  return outlined destroy of MLS.OutgoingEventState(&v32);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v8 = *(v3 - 3);
      v7 = *(v3 - 2);
      v28 = *(v3 - 1);
      v9 = *v3;
      v11 = *(v4 - 3);
      v10 = *(v4 - 2);
      v12 = *(v4 - 1);
      v13 = *v4;
      if (v9 < 0)
      {
        if ((v13 & 0x80000000) == 0)
        {
LABEL_29:
          v23 = *(v4 - 3);
          v24 = *(v4 - 2);
          v25 = *(v4 - 1);
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          return 0;
        }

        if (v8 == v11 && v7 == v10)
        {
          v20 = *(v3 - 1);
          v21 = *v3;
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          if (v9)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v18 = *(v4 - 3);
          v19 = *(v4 - 2);
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          if ((v27 & 1) == 0)
          {
            return 0;
          }

          if (v9)
          {
LABEL_22:
            if ((v13 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }

        result = 0;
        if ((v13 & 1) != 0 || v28 != v12)
        {
          return result;
        }
      }

      else
      {
        if (v13 < 0)
        {
          goto LABEL_29;
        }

        if (v8 == v11 && v7 == v10)
        {
          v5 = *(v4 - 1);
          v6 = *v4;
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
        }

        else
        {
          v15 = *(v4 - 3);
          v16 = *(v4 - 2);
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          if ((v26 & 1) == 0)
          {
            return 0;
          }
        }
      }

LABEL_6:
      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO14KeyPackageInfoV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            outlined copy of Data._Representation(v7, v6);
            outlined copy of Data._Representation(v9, v8);
            v22 = __DataStorage._bytes.getter();
            if (v22)
            {
              v23 = __DataStorage._offset.getter();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            MEMORY[0x2667538A0]();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            outlined copy of Data._Representation(v7, v6);
            outlined copy of Data._Representation(v9, v8);
            v27 = __DataStorage._bytes.getter();
            if (v27)
            {
              v28 = __DataStorage._offset.getter();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            MEMORY[0x2667538A0]();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            closure #1 in static Data.== infix(_:_:)(v24, v25, v26, v34);
            outlined consume of Data._Representation(v9, v8);
            outlined consume of Data._Representation(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
        }

        closure #1 in static Data.== infix(_:_:)(v34, v9, v8, &v33);
        outlined consume of Data._Representation(v9, v8);
        outlined consume of Data._Representation(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingCreateGroupState.CodingKeys(uint64_t a1)
{
  Group = lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys();

  return MEMORY[0x2821FE718](a1, Group);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingCreateGroupState.CodingKeys(uint64_t a1)
{
  Group = lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys();

  return MEMORY[0x2821FE720](a1, Group);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingRecreateGroupState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002651E9DA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingRecreateGroupState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingRecreateGroupState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingRecreateGroupState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26OutgoingRecreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26OutgoingRecreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.OutgoingRecreateGroupState.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO26OutgoingRecreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO26OutgoingRecreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t _s15SecureMessaging3MLSO24OutgoingCreateGroupStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOs0H3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0x6D654D726568746FLL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingCreateGroupState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002651E9D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D654D726568746FLL && a2 == 0xEC00000073726562)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingAddMemberState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingAddMemberState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingCreateGroupState.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = *v4;
  v15[0] = v4[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v11;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  v13 = v15[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v13)
  {
    v18 = v15[0];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v16 + 8))(v10, v7);
}

uint64_t MLS.OutgoingCreateGroupState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v20 = a5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13 = v8;
  v14 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v22 = 0;
  lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  v15 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  v22 = 1;
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v11, v15);
  v17 = v23;
  *v14 = v16;
  v14[1] = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingKickMemberState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingKickMemberState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingKickMemberState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingKickMemberState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO23OutgoingKickMemberStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO23OutgoingKickMemberStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.OutgoingKickMemberState.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO23OutgoingKickMemberStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO23OutgoingKickMemberStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingRemoveSelfState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingRemoveSelfState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingKeyUpdateState.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingKeyUpdateState.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingResyncState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingResyncState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingDowngradeState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingDowngradeState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingRemoveSelfState.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.OutgoingRemoveSelfState(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
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

uint64_t static MLS.OutgoingCreateGroupState.== infix(_:_:)(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a1[1];
  v4 = a2[1];
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v3, v4);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys()
{
  if (*v0)
  {
    result = 0x654D746567726174;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002651E9DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x654D746567726174 && a2 == 0xED0000737265626DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingReplaceExpiredCertsState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO32OutgoingReplaceExpiredCertsStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO32OutgoingReplaceExpiredCertsStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.OutgoingReplaceExpiredCertsState.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO32OutgoingReplaceExpiredCertsStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO32OutgoingReplaceExpiredCertsStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  v15 = 0;
  _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  v15 = 1;
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A], lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MLS.OutgoingCreateGroupState(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v5 = a1[1];
  v6 = a2[1];
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v5, v6);
}

uint64_t MLS.OutgoingGroupNameChangeState.groupName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MLS.OutgoingGroupNameChangeState.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingGroupNameChangeState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingGroupNameChangeState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingGroupNameChangeState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingGroupNameChangeState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.OutgoingGroupNameChangeState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.OutgoingGroupNameChangeState(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28OutgoingGroupNameChangeStateV10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

BOOL specialized static MLS.OutgoingEventState.EventSpecificState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) > 1u)
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          if (v7 == 3)
          {
            outlined consume of MLS.OutgoingEventState.EventSpecificState(*a1, v2, 3u);
            v8 = v6;
            v9 = v5;
            v10 = 3;
LABEL_45:
            outlined consume of MLS.OutgoingEventState.EventSpecificState(v8, v9, v10);
            return 1;
          }
        }

        else if (v7 == 4)
        {
          outlined consume of MLS.OutgoingEventState.EventSpecificState(*a1, v2, 4u);
          v8 = v6;
          v9 = v5;
          v10 = 4;
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      if (v7 == 2)
      {
        outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, *(a2 + 8), 2u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 2u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 2u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 2u);
        v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v3, v6);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 2u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 2u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 2u);
        v14 = v3;
        v15 = v2;
        v16 = 2;
LABEL_32:
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v14, v15, v16);
        return v13 & 1;
      }

LABEL_33:
      v19 = *a1;
      goto LABEL_39;
    }

    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, *(a2 + 8), 1u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
        outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
        if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO14KeyPackageInfoV_Tt1g5(v3, v6) & 1) == 0)
        {
          outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
          outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
          outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
          v22 = v3;
          v23 = v2;
          v24 = 1;
          goto LABEL_41;
        }

        v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v2, v5);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 1u);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 1u);
        result = 1;
        if (v20)
        {
          return result;
        }

        return 0;
      }
    }

    else if (!*(a2 + 16))
    {
      outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, *(a2 + 8), 0);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO14KeyPackageInfoV_Tt1g5(v3, v6) & 1) == 0)
      {
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
        outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
        v22 = v3;
        v23 = v2;
        v24 = 0;
        goto LABEL_41;
      }

      v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v2, v5);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 0);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 0);
      return (v12 & 1) != 0;
    }

LABEL_38:
    v21 = *a1;

    goto LABEL_39;
  }

  if (*(a1 + 16) <= 6u)
  {
    if (v4 == 5)
    {
      if (v7 == 5)
      {
        outlined consume of MLS.OutgoingEventState.EventSpecificState(*a1, v2, 5u);
        v8 = v6;
        v9 = v5;
        v10 = 5;
        goto LABEL_45;
      }
    }

    else if (v7 == 6)
    {
      outlined consume of MLS.OutgoingEventState.EventSpecificState(*a1, v2, 6u);
      v8 = v6;
      v9 = v5;
      v10 = 6;
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (v4 == 7)
  {
    if (v7 != 7)
    {
      goto LABEL_38;
    }

    outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, *(a2 + 8), 7u);
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
    if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt1g5(v3, v6) & 1) == 0)
    {
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
      v22 = v3;
      v23 = v2;
      v24 = 7;
      goto LABEL_41;
    }

    v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO9AllMemberO_Tt1g5(v2, v5);
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 7u);
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 7u);
    return (v17 & 1) != 0;
  }

  if (v4 != 8)
  {
    if (v7 == 9)
    {
      outlined copy of MLS.OutgoingEventState.EventSpecificState(*a2, *(a2 + 8), 9u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 9u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 9u);
      outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 9u);
      v13 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt1g5(v3, v6);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 9u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 9u);
      outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 9u);
      v14 = v3;
      v15 = v2;
      v16 = 9;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v11 = *(a1 + 8);
  if (v7 != 8)
  {
LABEL_39:

LABEL_40:
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, v7);
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, v4);
    v22 = v6;
    v23 = v5;
    v24 = v7;
LABEL_41:
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v22, v23, v24);
    return 0;
  }

  if (v3 == v6 && v2 == v5)
  {
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
    outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
    outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
    v8 = v3;
    v9 = v2;
    v10 = 8;
    goto LABEL_45;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
  outlined copy of MLS.OutgoingEventState.EventSpecificState(v6, v5, 8u);
  outlined consume of MLS.OutgoingEventState.EventSpecificState(v3, v2, 8u);
  outlined consume of MLS.OutgoingEventState.EventSpecificState(v6, v5, 8u);
  result = 0;
  if (v25)
  {
    return 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState);
  }

  return result;
}

uint64_t outlined copy of MLS.OutgoingEventState.EventSpecificState(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 6u)
  {
    if (a3 != 7)
    {
      if (a3 != 8 && a3 != 9)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_10:
}

BOOL specialized static MLS.OutgoingEventState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v2;
  v24 = v3;
  v25 = v4;
  v20 = v8;
  v21 = v7;
  v22 = v9;
  outlined copy of MLS.OutgoingEventState.EventSpecificState(v2, v3, v4);
  outlined copy of MLS.OutgoingEventState.EventSpecificState(v8, v7, v9);
  v12 = specialized static MLS.OutgoingEventState.EventSpecificState.== infix(_:_:)(&v23, &v20);
  outlined consume of MLS.OutgoingEventState.EventSpecificState(v20, v21, v22);
  outlined consume of MLS.OutgoingEventState.EventSpecificState(v23, v24, v25);
  if (!v12 || (v5 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v19 >> 60 == 15)
  {
    v13 = v17;
    if (v17 >> 60 == 15)
    {
      outlined copy of Data?(v18, v19);
      outlined copy of Data?(v16, v17);
      outlined consume of Data?(v18, v19);
      return 1;
    }

    goto LABEL_12;
  }

  v13 = v17;
  if (v17 >> 60 == 15)
  {
LABEL_12:
    outlined copy of Data?(v18, v19);
    outlined copy of Data?(v16, v13);
    outlined consume of Data?(v18, v19);
    outlined consume of Data?(v16, v13);
    return 0;
  }

  outlined copy of Data?(v18, v19);
  outlined copy of Data?(v16, v17);
  v15 = specialized static Data.== infix(_:_:)(v18, v19, v16, v17);
  outlined consume of Data?(v16, v17);
  outlined consume of Data?(v18, v19);
  return (v15 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.CodingKeys and conformance MLS.OutgoingEventState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingEventState.EventSpecificState and conformance MLS.OutgoingEventState.EventSpecificState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingCreateGroupState.CodingKeys and conformance MLS.OutgoingCreateGroupState.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRecreateGroupState.CodingKeys and conformance MLS.OutgoingRecreateGroupState.CodingKeys);
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGAEy_xGSEAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingAddMemberState.CodingKeys and conformance MLS.OutgoingAddMemberState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKickMemberState.CodingKeys and conformance MLS.OutgoingKickMemberState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingRemoveSelfState.CodingKeys and conformance MLS.OutgoingRemoveSelfState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingKeyUpdateState.CodingKeys and conformance MLS.OutgoingKeyUpdateState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingResyncState.CodingKeys and conformance MLS.OutgoingResyncState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingDowngradeState.CodingKeys and conformance MLS.OutgoingDowngradeState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingReplaceExpiredCertsState.CodingKeys and conformance MLS.OutgoingReplaceExpiredCertsState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingGroupNameChangeState.CodingKeys and conformance MLS.OutgoingGroupNameChangeState.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventState.EventSpecificState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventState.EventSpecificState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingCreateGroupState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingCreateGroupState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized MLS.OutgoingEventState.EventSpecificState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461657263 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65626D654D646461 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x626D654D6B63696BLL && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x655365766F6D6572 && a2 == 0xEA0000000000666CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746164705579656BLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E79736572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646172676E776F64 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E9910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E616843656D616ELL && a2 == 0xEA00000000006567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6574616572636572 && a2 == 0xED000070756F7247)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}