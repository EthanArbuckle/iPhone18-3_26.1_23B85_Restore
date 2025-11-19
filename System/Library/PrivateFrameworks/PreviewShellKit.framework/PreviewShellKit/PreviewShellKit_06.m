char *sub_25F1603F0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_25F1606B4(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F16075C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_25F160A14(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_25F160D88(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F160E4C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  if (v9 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = a3[5];
  v15 = *(v14 - 8);
  v16 = *(v8 + 80);
  v17 = *(*(a3[3] - 8) + 64);
  v18 = *(v10 + 80);
  v19 = *(v10 + 64);
  v20 = *(v15 + 80);
  if (*(v15 + 84) <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(*(a3[2] - 8) + 64) + v16;
  v23 = a2 - v21;
  if (a2 <= v21)
  {
    goto LABEL_34;
  }

  v24 = ((v19 + v20 + ((v17 + v18 + (v22 & ~v16)) & ~v18)) & ~v20) + *(*(v14 - 8) + 64);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v27 = ((v23 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v27 < 2)
    {
LABEL_33:
      if (v21)
      {
LABEL_34:
        if (v6 == v21)
        {
          v31 = *(v5 + 48);

          return v31();
        }

        else
        {
          v33 = (a1 + v22) & ~v16;
          if (v9 == v21)
          {
            v34 = *(v8 + 48);
            v35 = *(v8 + 84);
            v36 = a3[3];
          }

          else
          {
            v33 = (v33 + v17 + v18) & ~v18;
            if (v12 == v21)
            {
              v34 = *(*(v7 - 8) + 48);
              v35 = v12;
              v36 = a3[4];
            }

            else
            {
              v37 = ~v20;
              v38 = v33 + v19 + v20;
              v34 = *(v15 + 48);
              v33 = v38 & v37;
              v35 = *(v15 + 84);
              v36 = a3[5];
            }
          }

          return v34(v33, v35, v36);
        }
      }

      return 0;
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_33;
  }

LABEL_20:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v29 = ((v19 + v20 + ((v17 + v18 + (v22 & ~v16)) & ~v18)) & ~v20) + *(*(v14 - 8) + 64);
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v21 + (v30 | v28) + 1;
}

char *sub_25F1611F4(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[4];
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64);
  v20 = *(v14 + 80);
  if (*(v14 + 84) <= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = *(v14 + 84);
  }

  v22 = v15 + v16;
  v23 = ((v19 + v20 + ((v17 + v18 + ((v15 + v16) & ~v16)) & ~v18)) & ~v20) + *(v14 + 64);
  v24 = a3 >= v21;
  v25 = a3 - v21;
  if (v25 != 0 && v24)
  {
    if (v23 <= 3)
    {
      v30 = ((v25 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v30))
      {
        v26 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v26 = v31;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v21 < a2)
  {
    v27 = ~v21 + a2;
    if (v23 < 4)
    {
      v29 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v32 = v27 & ~(-1 << (8 * v23));
        v33 = result;
        bzero(result, v23);
        result = v33;
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *v33 = v32;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&result[v23] = v29;
              }

              else
              {
                *&result[v23] = v29;
              }

              return result;
            }
          }

          else
          {
            *v33 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v33 = v32;
        v33[2] = BYTE2(v32);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v28 = result;
      bzero(result, v23);
      result = v28;
      *v28 = v27;
      v29 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      result[v23] = v29;
    }

    return result;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&result[v23] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *&result[v23] = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    goto LABEL_36;
  }

  result[v23] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v6 == v21)
  {
    v34 = *(v5 + 56);

    return v34();
  }

  else
  {
    v35 = &result[v22] & ~v16;
    if (v9 == v21)
    {
      v36 = *(v8 + 56);
    }

    else
    {
      v35 = (v35 + v17 + v18) & ~v18;
      if (v12 == v21)
      {
        v36 = *(v11 + 56);
      }

      else
      {
        v37 = v35 + v19 + v20;
        v36 = *(v14 + 56);
        v35 = v37 & ~v20;
      }
    }

    return v36(v35);
  }
}

uint64_t sub_25F161648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = *(type metadata accessor for CanvasControl() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for CanvasControl() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for CanvasControl() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for CanvasControl() - 8);
  return sub_25F15A574(a1, v2 + v8, v2 + v11, v2 + v14, v2 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)), a2);
}

uint64_t sub_25F161810(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for CanvasControl() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for CanvasControl() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for CanvasControl() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for CanvasControl() - 8);
  return sub_25F15A888(a1, v1 + v8, v1 + v11, v1 + v14, v1 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)));
}

uint64_t objectdestroyTm_1()
{
  v1 = v0;
  v2 = *(v0 + 2);
  v57 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = (type metadata accessor for CanvasControl() - 8);
  v64 = *(*v5 + 80);
  v6 = (v64 + 48) & ~v64;
  v7 = *(*v5 + 64);
  v8 = type metadata accessor for CanvasControl();
  v63 = *(*(v8 - 1) + 80);
  v9 = (v6 + v7 + v63) & ~v63;
  v10 = *(*(v8 - 1) + 64);
  v58 = type metadata accessor for CanvasControl();
  v62 = *(*(v58 - 1) + 80);
  v56 = (v9 + v10 + v62) & ~v62;
  v11 = *(*(v58 - 1) + 64);
  v59 = type metadata accessor for CanvasControl();
  v61 = *(*(v59 - 1) + 80);
  v12 = v11 + v61;
  v60 = *(*(v59 - 1) + 64);
  v13 = &v0[v6];
  v14 = sub_25F177B1C();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  v16 = *&v13[v5[9] + 8];

  v17 = *&v13[v5[10] + 8];

  v18 = *&v13[v5[11] + 8];

  v19 = &v13[v5[12]];
  v20 = type metadata accessor for ThumbnailHostFactory();
  v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
  v22 = v56;
  if (!v21)
  {
    v23 = sub_25F1777BC();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v19, 1, v23))
    {
      (*(v24 + 8))(v19, v23);
    }

    v25 = *&v19[*(v20 + 28) + 8];

    v22 = v56;
    v12 = v11 + v61;
  }

  v26 = v22 + v12;
  v27 = v22;
  v15(&v1[v9], v14);
  v28 = *&v1[v9 + 8 + v8[7]];

  v29 = *&v1[v9 + 8 + v8[8]];

  v30 = *&v1[v9 + 8 + v8[9]];

  v31 = &v1[v9 + v8[10]];
  v32 = type metadata accessor for ThumbnailHostFactory();
  v33 = v27;
  v34 = v15;
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    v35 = sub_25F1777BC();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v31, 1, v35))
    {
      (*(v36 + 8))(v31, v35);
    }

    v37 = *&v31[*(v32 + 28) + 8];
  }

  v38 = v26 & ~v61;
  v34(&v1[v33], v14);
  v39 = *&v1[v33 + 8 + v58[7]];

  v40 = *&v1[v33 + 8 + v58[8]];

  v41 = *&v1[v33 + 8 + v58[9]];

  v42 = &v1[v33 + v58[10]];
  v43 = type metadata accessor for ThumbnailHostFactory();
  if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
  {
    v44 = sub_25F1777BC();
    v45 = *(v44 - 8);
    if (!(*(v45 + 48))(v42, 1, v44))
    {
      (*(v45 + 8))(v42, v44);
    }

    v46 = *&v42[*(v43 + 28) + 8];
  }

  v34(&v1[v38], v14);
  v47 = *&v1[v38 + 8 + v59[7]];

  v48 = *&v1[v38 + 8 + v59[8]];

  v49 = *&v1[v38 + 8 + v59[9]];

  v50 = &v1[v38 + v59[10]];
  v51 = type metadata accessor for ThumbnailHostFactory();
  if (!(*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    v52 = sub_25F1777BC();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v50, 1, v52))
    {
      (*(v53 + 8))(v50, v52);
    }

    v54 = *&v50[*(v51 + 28) + 8];
  }

  return MEMORY[0x2821FE8E8](v1, v38 + v60, v64 | v63 | v62 | v61 | 7);
}

uint64_t sub_25F162120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v8 = v4[4];
  v7 = v4[5];
  v9 = *(type metadata accessor for CanvasControl() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for CanvasControl() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(type metadata accessor for CanvasControl() - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(type metadata accessor for CanvasControl() - 8);
  return sub_25F15AA68(a1, a2, a3, a4, v4 + v10, v4 + v13, v4 + v16, v4 + ((v16 + v17 + *(v18 + 80)) & ~*(v18 + 80)), v5, v6, v8, v7);
}

uint64_t sub_25F162304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for CanvasControl() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for CanvasControl() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for CanvasControl() - 8);
  return sub_25F159594(a1, v2 + v9, v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a2);
}

uint64_t sub_25F162470(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for CanvasControl() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for CanvasControl() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for CanvasControl() - 8);
  v13 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_25F1597F4(a1, v1 + v7, v1 + v10, v13);
}

uint64_t objectdestroy_48Tm()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 32);
  v5 = (type metadata accessor for CanvasControl() - 8);
  v49 = *(*v5 + 80);
  v6 = (v49 + 40) & ~v49;
  v7 = *(*v5 + 64);
  v8 = type metadata accessor for CanvasControl();
  v48 = *(*(v8 - 1) + 80);
  v9 = (v6 + v7 + v48) & ~v48;
  v10 = *(*(v8 - 1) + 64);
  v11 = type metadata accessor for CanvasControl();
  v45 = *(*(v11 - 8) + 80);
  v46 = v11;
  v12 = v9 + v10 + v45;
  v47 = *(*(v11 - 8) + 64);
  v13 = v1 + v6;
  v14 = sub_25F177B1C();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  v16 = *(v13 + v5[9] + 8);

  v17 = *(v13 + v5[10] + 8);

  v18 = *(v13 + v5[11] + 8);

  v19 = v13 + v5[12];
  v20 = type metadata accessor for ThumbnailHostFactory();
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v44 = v1;
    v21 = sub_25F1777BC();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v19, 1, v21))
    {
      (*(v22 + 8))(v19, v21);
    }

    v23 = *(v19 + *(v20 + 28) + 8);

    v1 = v44;
  }

  v24 = v45;
  v25 = v12 & ~v45;
  v15(v1 + v9, v14);
  v26 = *(v1 + v9 + v8[7] + 8);

  v27 = *(v1 + v9 + v8[8] + 8);

  v28 = *(v1 + v9 + v8[9] + 8);

  v29 = v1 + v9 + v8[10];
  v30 = type metadata accessor for ThumbnailHostFactory();
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    v31 = sub_25F1777BC();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v29, 1, v31))
    {
      (*(v32 + 8))(v29, v31);
    }

    v33 = *(v29 + *(v30 + 28) + 8);

    v24 = v45;
  }

  v15(v1 + v25, v14);
  v34 = *(v1 + v25 + v46[7] + 8);

  v35 = *(v1 + v25 + v46[8] + 8);

  v36 = *(v1 + v25 + v46[9] + 8);

  v37 = v1 + v25 + v46[10];
  v38 = type metadata accessor for ThumbnailHostFactory();
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v39 = v25;
    v40 = sub_25F1777BC();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(v37, 1, v40))
    {
      (*(v41 + 8))(v37, v40);
    }

    v42 = *(v37 + *(v38 + 28) + 8);

    v25 = v39;
  }

  return MEMORY[0x2821FE8E8](v1, v25 + v47, v49 | v48 | v24 | 7);
}

uint64_t sub_25F162B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = *(type metadata accessor for CanvasControl() - 8);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for CanvasControl() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(*(type metadata accessor for CanvasControl() - 8) + 80);
  return sub_25F159994(a1, a2, a3, a4, v4 + v11, v4 + v14);
}

uint64_t sub_25F162CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CanvasControl() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for CanvasControl() - 8);
  return sub_25F158958(a1, v2 + v8, v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2);
}

uint64_t sub_25F162DE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for CanvasControl() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CanvasControl() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_25F158B20(a1, v1 + v6, v9);
}

uint64_t objectdestroy_57Tm_0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for CanvasControl() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for CanvasControl();
  v32 = *(*(v7 - 1) + 80);
  v8 = (v5 + v6 + v32) & ~v32;
  v31 = *(*(v7 - 1) + 64);
  v9 = sub_25F177B1C();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v5, v9);
  v11 = *(v0 + v5 + v3[9] + 8);

  v12 = *(v0 + v5 + v3[10] + 8);

  v13 = *(v0 + v5 + v3[11] + 8);

  v14 = v0 + v5 + v3[12];
  v15 = v4;
  v16 = type metadata accessor for ThumbnailHostFactory();
  if (!(*(*(v16 - 8) + 48))(v14, 1, v16))
  {
    v17 = v10;
    v30 = v15;
    v18 = sub_25F1777BC();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v14, 1, v18))
    {
      (*(v19 + 8))(v14, v18);
    }

    v20 = *(v14 + *(v16 + 28) + 8);

    v15 = v30;
    v10 = v17;
  }

  v10(v0 + v8, v9);
  v21 = *(v0 + v8 + v7[7] + 8);

  v22 = *(v0 + v8 + v7[8] + 8);

  v23 = *(v0 + v8 + v7[9] + 8);

  v24 = v0 + v8 + v7[10];
  v25 = type metadata accessor for ThumbnailHostFactory();
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v26 = sub_25F1777BC();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v24, 1, v26))
    {
      (*(v27 + 8))(v24, v26);
    }

    v28 = *(v24 + *(v25 + 28) + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v31, v15 | v32 | 7);
}

uint64_t sub_25F1632A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for CanvasControl() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for CanvasControl() - 8);
  return sub_25F158C68(a1, a2, a3, a4, v4 + v12, v4 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)));
}

uint64_t sub_25F1633BC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for CanvasControl() - 8);
  return sub_25F15811C(a1, v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
}

uint64_t sub_25F163444(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for CanvasControl() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_25F15821C(a1, v5);
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for CanvasControl() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_25F177B1C();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  v7 = *(v0 + v4 + v2[9] + 8);

  v8 = *(v0 + v4 + v2[10] + 8);

  v9 = *(v0 + v4 + v2[11] + 8);

  v10 = v0 + v4 + v2[12];
  v11 = type metadata accessor for ThumbnailHostFactory();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_25F1777BC();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v10, 1, v12))
    {
      (*(v13 + 8))(v10, v12);
    }

    v14 = *(v10 + *(v11 + 28) + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F1636CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(*(type metadata accessor for CanvasControl() - 8) + 80);
  return sub_25F15830C(a1, a2, a3, a4);
}

unint64_t sub_25F16376C()
{
  result = qword_27FD49260[0];
  if (!qword_27FD49260[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD49258, &unk_25F1836B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD49260);
  }

  return result;
}

uint64_t sub_25F163800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_25F1683C4(v3, &v15 - v10);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  (*(v6 + 32))(v13 + v12, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_25F17960C();
  return sub_25F163E74(v11, &unk_25F183950, v13, a2);
}

uint64_t sub_25F1639A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = (a1 + *(type metadata accessor for ThumbnailHostFactory() + 28));
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v7;
  *a4 = &unk_25F183928;
  a4[1] = v9;
}

uint64_t sub_25F163A34(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0BF3E4;

  return v10(a1, v5, v6);
}

uint64_t sub_25F163B40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = (a2 + *(type metadata accessor for ThumbnailHostFactory() + 28));
  v10 = v9[1];

  *v9 = &unk_25F183918;
  v9[1] = v8;
  return result;
}

uint64_t sub_25F163BD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_25F163CE4;

  return (v9)(a1, v4 + 2);
}

uint64_t sub_25F163CE4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ThumbnailHostFactory.makeHost.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ThumbnailHostFactory.makeHost.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*ThumbnailHostFactory.makeHost.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_25F163E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F1777BC();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  sub_25F1692E8(a1, a4);
  result = type metadata accessor for ThumbnailHostFactory();
  v10 = (a4 + *(result + 28));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_25F163F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  sub_25F17930C();
  v5[12] = sub_25F1792FC();
  v7 = sub_25F1792CC();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_25F163FB8, v7, v6);
}

uint64_t sub_25F163FB8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = (v2 + *(type metadata accessor for ThumbnailHostFactory() + 28));
  v4 = v3[1];
  v10 = (*v3 + **v3);
  v5 = (*v3)[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_25F1640C0;
  v7 = v0[8];
  v8 = v0[9];

  return (v10)(v0 + 2, v7, v8);
}

uint64_t sub_25F1640C0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_25F16429C;
  }

  else
  {
    v7 = sub_25F1641FC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25F1641FC()
{
  v1 = v0[12];
  v2 = v0[7];

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  sub_25F164300(v3, v4, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_25F16429C()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_25F164300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = a1;
  v11 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  swift_getAssociatedTypeWitness();
  a3[3] = type metadata accessor for OptionalStateWrapper();
  a3[4] = swift_getWitnessTable();
  v7 = swift_allocObject();
  *a3 = v7;
  return sub_25F0C0C84(&v9, v7 + 16);
}

uint64_t static ThumbnailHostFactory.localHostFactory(expectedGeometry:makeViewController:displayThumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a4;
  v15[4] = a5;

  static ThumbnailHostFactory.localHostFactory<A>(expectedGeometry:context:makeViewController:displayThumbnail:)(a1, sub_25F164528, v14, &unk_25F183738, v15, a6, MEMORY[0x277D84F78] + 8, a7);
}

uint64_t sub_25F1644F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F164528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a2, a3);
}

uint64_t sub_25F164558(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_25F17930C();
  v4[3] = sub_25F1792FC();
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_25F164684;

  return v11(a1, a3);
}

uint64_t sub_25F164684(double a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  *(v5 + 40) = v1;

  v8 = *(v5 + 24);
  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_25F1792CC();
    v12 = v11;
    v13 = sub_25F134370;
  }

  else
  {
    *(v5 + 48) = a1;
    v10 = sub_25F1792CC();
    v12 = v14;
    v13 = sub_25F164804;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_25F164804()
{
  v1 = v0[3];

  v2 = v0[1];
  v3.n128_u64[0] = v0[6];

  return v2(v3);
}

uint64_t sub_25F16486C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F1648A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25F169AA0;

  return sub_25F164558(a1, a2, a3, v9);
}

uint64_t static ThumbnailHostFactory.localHostFactory<A>(expectedGeometry:context:makeViewController:displayThumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v27 = a2;
  v28 = a4;
  v29 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = swift_allocObject();
  sub_25F167EA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v20 = sub_25F17925C();
  v21 = sub_25F1680D8(v20, v19, TupleTypeMetadata2, MEMORY[0x277D837E0]);

  *(v17 + 16) = v21;
  sub_25F1683C4(a1, v16);
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a7;
  v24 = v27;
  v23 = v28;
  v22[4] = v17;
  v22[5] = v24;
  v22[6] = a3;
  v22[7] = v23;
  v22[8] = a5;

  return sub_25F163E74(v16, &unk_25F183750, v22, v29);
}

uint64_t sub_25F164B1C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F164B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v16;
  v8[16] = v17;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  sub_25F167EA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[17] = TupleTypeMetadata2;
  v10 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v11 = *(v17 - 8);
  v8[19] = v11;
  v8[20] = *(v11 + 64);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_25F17930C();
  v8[23] = sub_25F1792FC();
  v13 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F164CB0, v13, v12);
}

uint64_t sub_25F164CB0()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v27 = *(v0 + 88);
  v28 = *(v0 + 120);

  ObjectType = swift_getObjectType();
  *(v0 + 40) = (*(*(v5 + 8) + 16))(ObjectType);
  *(v0 + 48) = v8;
  v9 = swift_task_alloc();
  *(v9 + 16) = v28;
  *(v9 + 32) = v27;
  *(v9 + 48) = v6;
  *(v9 + 56) = v5;
  swift_beginAccess();
  sub_25F178FFC();
  swift_getWitnessTable();
  sub_25F177ECC();
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v22 = *(v0 + 168);
  v23 = *(v0 + 160);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = *(v0 + 128);
  v26 = *(v0 + 112);
  v24 = *(v0 + 120);
  v25 = *(v0 + 104);
  v15 = *(v0 + 56);
  swift_endAccess();

  *&v27 = *(v13 + *(v12 + 48));
  v21 = *(v11 + 32);
  v21(v10, v13, v14);
  (*(v11 + 16))(v22, v10, v14);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v24;
  *(v17 + 3) = v14;
  *(v17 + 4) = v25;
  *(v17 + 5) = v26;
  v21(&v17[v16], v22, v14);
  v15[3] = type metadata accessor for ThumbnailHostFactory.LocalThumbnailHost();
  v15[4] = swift_getWitnessTable();
  *v15 = v27;
  v15[1] = &unk_25F183940;
  v15[2] = v17;
  v18 = *(v11 + 8);

  v18(v10, v14);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_25F164FC4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_25F17930C();
  v5[3] = sub_25F1792FC();
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  v5[4] = v11;
  *v11 = v5;
  v11[1] = sub_25F1650FC;

  return v13(a1, a5, a2);
}

uint64_t sub_25F1650FC(double a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  *(v5 + 40) = v1;

  v8 = *(v5 + 24);
  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_25F1792CC();
    v12 = v11;
    v13 = sub_25F169AA8;
  }

  else
  {
    *(v5 + 48) = a1;
    v10 = sub_25F1792CC();
    v12 = v14;
    v13 = sub_25F169AA4;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_25F16527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[2] = a2;
  v5[3] = a3;
  v8 = *(*(sub_25F17712C() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v9 = sub_25F177DCC();
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  v11 = *(v10 + 64) + 15;
  v5[7] = swift_task_alloc();
  v12 = sub_25F17713C();
  v5[8] = v12;
  v13 = *(v12 - 8);
  v5[9] = v13;
  v14 = *(v13 + 64) + 15;
  v5[10] = swift_task_alloc();
  v15 = swift_task_alloc();
  v5[11] = v15;
  v5[12] = sub_25F17930C();
  v5[13] = sub_25F1792FC();
  v19 = (a5 + *a5);
  v16 = a5[1];
  v17 = swift_task_alloc();
  v5[14] = v17;
  *v17 = v5;
  v17[1] = sub_25F16549C;

  return v19(v15, a1);
}

uint64_t sub_25F16549C(double a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 112);
  v7 = *v2;
  *(v5 + 120) = v1;

  v8 = *(v5 + 104);
  v9 = *(v5 + 96);
  if (v3)
  {
    v10 = sub_25F1792CC();
    v12 = v11;
    v13 = sub_25F165788;
  }

  else
  {
    *(v5 + 128) = a1;
    v10 = sub_25F1792CC();
    v12 = v14;
    v13 = sub_25F16561C;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_25F16561C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v16 = v0[5];
  v14 = v0[4];
  v8 = v0[2];
  v9 = v0[3];

  v10 = v9[3];
  v15 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 16))(v2, v3, v4);
  sub_25F177D6C();
  sub_25F177DBC();
  (*(v15 + 16))(v7, v10);
  (*(v6 + 8))(v7, v16);
  (*(v5 + 8))(v3, v4);

  v11 = v0[1];
  v12.n128_u64[0] = v0[16];

  return v11(v12);
}

uint64_t sub_25F165788()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];
  v7 = v0[15];

  return v6();
}

uint64_t sub_25F165820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = v4[1];
  v12 = v4[2];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  v14 = *(a4 + 16);
  *v13 = v5;
  v13[1] = sub_25F169AAC;

  return sub_25F16527C(a1, a2, a3, v10, v11);
}

uint64_t static ThumbnailHostFactory.remoteHostFactory(expectedGeometry:previewAgentConnector:makeUpdate:validateReply:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a5;
  v28 = a8;
  v14 = type metadata accessor for PreviewAgentConnector();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v27 - v19;
  sub_25F1683C4(a1, &v27 - v19);
  sub_25F102560(a2, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  sub_25F10274C(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
  v24 = (v23 + v22);
  *v24 = a3;
  v24[1] = a4;
  v25 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = v27;
  v25[1] = a6;

  return sub_25F163E74(v20, &unk_25F183760, v23, v28);
}

uint64_t sub_25F165C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[9] = a1;
  sub_25F17930C();
  v8[18] = sub_25F1792FC();
  v10 = sub_25F1792CC();
  v8[19] = v10;
  v8[20] = v9;

  return MEMORY[0x2822009F8](sub_25F165CCC, v10, v9);
}

uint64_t sub_25F165CCC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(ObjectType, v1);

  return MEMORY[0x2822009F8](sub_25F165D54, 0, 0);
}

uint64_t sub_25F165D54()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  *(v0 + 208) = *v1;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = *(MEMORY[0x277D40510] + 4);
  v7 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_25F165E54;

  return v7(v0 + 56, v0 + 208, &unk_25F183930, v3);
}

uint64_t sub_25F165E54()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_25F1660DC;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_25F165F70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F165F70()
{
  sub_25F169250(v0 + 16);
  *(v0 + 192) = *(v0 + 56);
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_25F165FDC, v1, v2);
}

uint64_t sub_25F165FDC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  v9 = vextq_s8(*(v0 + 192), *(v0 + 192), 8uLL);
  v10 = *(v0 + 112);

  v5[3] = type metadata accessor for ThumbnailHostFactory.RemoteThumbnailHost();
  v5[4] = swift_getWitnessTable();
  v6 = swift_allocObject();
  *v5 = v6;
  *(v6 + 16) = v9;
  *(v6 + 32) = v4;
  *(v6 + 40) = v10;
  *(v6 + 56) = v3;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25F1660DC()
{
  v1 = v0[21];
  sub_25F169250((v0 + 2));

  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2822009F8](sub_25F16614C, v2, v3);
}

uint64_t sub_25F16614C()
{
  v1 = v0[18];

  v2 = v0[1];
  v3 = v0[23];

  return v2();
}

uint64_t ThumbnailSceneCache.sceneAgent(for:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  return MEMORY[0x2822009F8](sub_25F1661E0, 0, 0);
}

uint64_t sub_25F1661E0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *(v0 + 104) = *v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = *(MEMORY[0x277D40510] + 4);
  v7 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_25F1662E0;

  return v7(v0 + 56, v0 + 104, &unk_25F183778, v3);
}

uint64_t sub_25F1662E0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_25F166418;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_25F1663FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F166418()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_25F16647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_25F177F8C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_25F177D3C();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  sub_25F17930C();
  v4[12] = sub_25F1792FC();
  v12 = sub_25F1792CC();
  v4[13] = v12;
  v4[14] = v11;

  return MEMORY[0x2822009F8](sub_25F1665D0, v12, v11);
}

uint64_t sub_25F1665D0()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = *(v2 + 24);
  (*(v2 + 16))(v0[2]);
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = *(v0[5] + 8);
  v8 = sub_25F0BAD3C(v4, v0[3], v0[4]);
  v0[15] = v8;
  (*(v5 + 8))(v4, v6);
  v9 = *(MEMORY[0x277D857C8] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v10 = v0;
  v10[1] = sub_25F166754;
  v12 = v0[8];
  v13 = v0[6];
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v12, v8, v13, v11, v14);
}

uint64_t sub_25F166754()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_25F166970;
  }

  else
  {
    v7 = v2[5];
    v2[18] = *(v7 + 32);
    v2[19] = *(v7 + 40);
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_25F16687C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25F16687C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = v0[2];

  v10 = v2(v6, v9);
  (*(v7 + 8))(v6, v8);

  v11 = v0[11];
  v12 = v0[8];

  v14 = v0[1];
  if (!v3)
  {
    v13.n128_f64[0] = v10;
  }

  return v14(v13);
}

uint64_t sub_25F166970()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[17];
  v4 = v0[11];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F1669F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB8, &qword_25F183B60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  v5 = *(v0 + 8);
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v6 = *(v5 + 48);
  v10[15] = 0;
  v7 = sub_25F178F7C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_25F1770CC();
  sub_25F169A30(v4);
  return v8;
}

uint64_t sub_25F166B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v8;
  *(v4 + 48) = v3[2];
  v9 = swift_task_alloc();
  *(v4 + 64) = v9;
  *v9 = v4;
  v9[1] = sub_25F166C00;

  return sub_25F16647C(a1, a2, a3);
}

uint64_t sub_25F166C00(double a1)
{
  v4 = *(*v2 + 64);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5.n128_f64[0] = a1;
  }

  return v6(v5);
}

uint64_t sub_25F166D00()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F1669F4();
}

uint64_t sub_25F166D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F168FF4();

  return MEMORY[0x2821A09D0](a1, a2, a3, v6);
}

uint64_t ThumbnailSceneCache.init(in:makeHostingViewController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD492F0, qword_25F183780);
  result = sub_25F17857C();
  a5[3] = a4;
  a5[4] = result;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t sub_25F166DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_25F177E8C();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F166EBC, 0, 0);
}

uint64_t sub_25F166EBC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = *v3;
  v0[14] = *v3;
  v6 = v3[1];
  v7 = [objc_opt_self() previewSceneSpecification];
  v0[15] = v7;
  sub_25F1796DC();
  ObjectType = swift_getObjectType();
  v9 = (*(v6 + 16))(ObjectType, v6);
  v11 = v10;

  MEMORY[0x25F8D50D0](0x776569766572502DLL, 0xEE002D656E656353);
  sub_25F177E7C();
  sub_25F1691F8();
  v12 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v12);

  (*(v2 + 8))(v1, v4);
  v0[16] = v11;
  v0[17] = sub_25F17930C();
  swift_unknownObjectRetain();
  v0[18] = sub_25F1792FC();
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v9;
  v0[5] = v11;
  v0[6] = v7;
  v0[7] = 0;
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_25F1670B4;
  v14 = v0[9];

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)((v0 + 2), v0 + 7);
}

uint64_t sub_25F1670B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v15 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[17];
    v6 = v3[18];
    v7 = sub_25F1792CC();
    v9 = v8;
    v10 = sub_25F1673C8;
  }

  else
  {
    v11 = v3[17];
    v12 = v3[18];
    v7 = sub_25F1792CC();
    v9 = v13;
    v10 = sub_25F1671F8;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_25F1671F8()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_25F167284, 0, 0);
}

uint64_t sub_25F167284()
{
  v1 = v0[17];
  v2 = v0[10];
  v0[22] = *(v2 + 16);
  v0[23] = *(v2 + 24);
  v0[24] = sub_25F1792FC();
  v4 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F167324, v4, v3);
}

uint64_t sub_25F167324()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];

  v0[25] = v4(v5);
  v0[26] = v3;
  if (v3)
  {
    v6 = sub_25F16752C;
  }

  else
  {
    v6 = sub_25F1674B8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F1673C8()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_25F167454, 0, 0);
}

uint64_t sub_25F167454()
{
  v1 = v0[21];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F1674B8()
{
  v1 = v0[25];
  v2 = v0[13];
  v3 = v0[8];
  *v3 = v0[20];
  v3[1] = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F16752C()
{
  v1 = v0[20];

  v2 = v0[26];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F167598()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_25F1675E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *(a4 + 16);
  v5[6] = v6;
  v7 = sub_25F17960C();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(v6 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  sub_25F17930C();
  v5[12] = sub_25F1792FC();
  v13 = sub_25F1792CC();
  v5[13] = v13;
  v5[14] = v12;

  return MEMORY[0x2822009F8](sub_25F167738, v13, v12);
}

uint64_t sub_25F167738()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  (*(v0[8] + 16))(v1, v0[2], v0[7]);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[12];
    v6 = v0[8];
    v5 = v0[9];
    v8 = v0[6];
    v7 = v0[7];

    (*(v6 + 8))(v5, v7);
    type metadata accessor for OptionalStateWrapper.NilState();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v9 = v0[11];
    v10 = v0[9];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[5];
    (*(v0[10] + 32))(v0[11], v0[9], v0[6]);
    v14 = v13[3];
    v15 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v16 = *(v15 + 24);
    v22 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_25F167994;
    v19 = v0[11];
    v20 = v0[3];
    v21 = v0[4];

    return v22(v19, v20, v21, v14, v15);
  }
}

uint64_t sub_25F167994(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v10 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v6 = *(v4 + 104);
    v7 = *(v4 + 112);
    v8 = sub_25F167B58;
  }

  else
  {
    *(v4 + 136) = a1;
    v6 = *(v4 + 104);
    v7 = *(v4 + 112);
    v8 = sub_25F167AB8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_25F167AB8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];

  (*(v4 + 8))(v2, v5);

  v6 = v0[1];
  v7.n128_u64[0] = v0[17];

  return v6(v7);
}

uint64_t sub_25F167B58()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[6];

  (*(v3 + 8))(v2, v4);
  v5 = v0[16];
  v6 = v0[11];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F167BF8()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 16))(v2);
}

uint64_t sub_25F167C44()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 24))(v2);
}

uint64_t sub_25F167C90()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 32))(v2);
}

uint64_t sub_25F167CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F167D98;

  return sub_25F1675E4(a1, a2, a3, a4);
}

uint64_t sub_25F167D98(double a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5.n128_f64[0] = a1;
  }

  return v6(v5);
}

unint64_t sub_25F167EA8()
{
  result = qword_27FD492E8;
  if (!qword_27FD492E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD492E8);
  }

  return result;
}

unint64_t sub_25F167EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_25F17901C();

  return sub_25F167F50(a1, v9, a2, a3);
}

unint64_t sub_25F167F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_25F17904C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_25F1680D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25F17929C())
  {
    sub_25F1797CC();
    v13 = sub_25F1797BC();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25F17929C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25F17927C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25F1796FC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25F167EF4(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_25F1683C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F168434()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25F16847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v13 = v3[8];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_25F0C10CC;

  return sub_25F164B54(a1, a2, a3, v9, v10, v11, v12, v13);
}

uint64_t sub_25F168570()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v4;
  v8 = *(v1 + 20);
  v9 = sub_25F17767C();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = (v7 + *(v2 + 32));
  v11 = *v10;

  v12 = v10[1];

  v13 = v10[2];

  v14 = v10[3];

  v15 = v10[4];

  v16 = v10[5];

  v17 = v10[6];

  v18 = v10[7];

  v19 = v10[8];

  v20 = v10[9];

  v21 = v10[10];

  v22 = v10[11];

  v23 = v10[12];

  v24 = v10[13];

  v25 = v10[14];

  v26 = v10[15];

  v27 = *(v7 + *(v2 + 36) + 8);

  v28 = *(v0 + v5 + 8);

  v29 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_25F16871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v8 = *(v3 + 16);
  v9 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v3 + v11);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v3 + v12);
  v17 = *(v3 + v12 + 8);
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = sub_25F0C10CC;

  return sub_25F165C1C(a1, a2, a3, v3 + v10, v14, v15, v16, v17);
}

uint64_t sub_25F168880(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0C10CC;

  return sub_25F166DF8(a1, v5, v4);
}

void sub_25F16894C()
{
  sub_25F168B9C();
  if (v0 <= 0x3F)
  {
    sub_25F105150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25F1689E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F168AC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_25F168B9C()
{
  if (!qword_27FD49378)
  {
    sub_25F1777BC();
    v0 = sub_25F17960C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD49378);
    }
  }
}

uint64_t dispatch thunk of ThumbnailHost.displayThumbnailAndPerformHandshake(for:context:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25F168D44;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_25F168D44(double a1)
{
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = *(v7 + 8);
  v5.n128_f64[0] = a1;

  return v4(v5);
}

uint64_t dispatch thunk of ThumbnailFactory.generateThumbnail<A>(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_25F0C10CC;

  return v17(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_25F168FA0()
{
  result = qword_27FD49380;
  if (!qword_27FD49380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD49380);
  }

  return result;
}

unint64_t sub_25F168FF4()
{
  result = qword_27FD49388[0];
  if (!qword_27FD49388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD49388);
  }

  return result;
}

uint64_t sub_25F169048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25F0C10CC;

  return sub_25F163BD8(a1, a2, a3, v9);
}

uint64_t sub_25F169128(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25F0BF3E4;

  return sub_25F163A34(a1, a2, v7);
}

unint64_t sub_25F1691F8()
{
  result = qword_27FD481A0;
  if (!qword_27FD481A0)
  {
    sub_25F177E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD481A0);
  }

  return result;
}

uint64_t sub_25F169298()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F1692E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD482C8, &qword_25F183740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F169358@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  sub_25F167EA8();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  result = v4(a1, v6, *(v7 + 8));
  *(a1 + v8) = result;
  return result;
}

uint64_t sub_25F1693E4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F1694A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = (*(*(v2[3] - 8) + 80) + 48) & ~*(*(v2[3] - 8) + 80);
  v8 = v2[4];
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F169AA0;

  return sub_25F164FC4(a1, a2, v8, v9, v2 + v7);
}

uint64_t sub_25F1695BC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ThumbnailHostFactory();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = sub_25F1777BC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  v8 = *(v0 + v4 + *(v2 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F1696F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(type metadata accessor for ThumbnailHostFactory() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25F0C10CC;

  return sub_25F163F18(a1, a2, a3, v3 + v10, v8);
}

uint64_t sub_25F169808()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F169840()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F16987C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1698C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F16990C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F169948()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F169984(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F1699CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F169A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB8, &qword_25F183B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F169AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_25F16E914(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_25F177E8C();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_25F0C8B7C(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_25F16FEA0();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_25F177E8C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_25F16D560(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_25F177E8C();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_25F169CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47EA8, &qword_25F17DC68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for JITManager.Storage.Record();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_25F0B7E94(a1, &qword_27FD47EA8, &qword_25F17DC68);
    sub_25F16AC80(a2, a3, v10);

    return sub_25F0B7E94(v10, &qword_27FD47EA8, &qword_25F17DC68);
  }

  else
  {
    sub_25F171364(a1, v14, type metadata accessor for JITManager.Storage.Record);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_25F16EAE0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_25F169E80(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480D8, &qword_25F17F030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  updated = type metadata accessor for UpdateRegistry.Update();
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_25F0B7E94(a1, &qword_27FD480D8, &qword_25F17F030);
    sub_25F16ADEC(a2, v8);
    v14 = sub_25F17776C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_25F0B7E94(v8, &qword_27FD480D8, &qword_25F17F030);
  }

  else
  {
    sub_25F171364(a1, v12, type metadata accessor for UpdateRegistry.Update);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25F16EC4C(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_25F17776C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_25F16A0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48770, &qword_25F180740);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_25F178B1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_25F0B7E94(a1, &qword_27FD48770, &qword_25F180740);
    sub_25F16AFB4(a2, a3, MEMORY[0x277D7E940], MEMORY[0x277D7E940], &qword_27FD47990, &qword_25F17CBF8, v10);

    return sub_25F0B7E94(v10, &qword_27FD48770, &qword_25F180740);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_25F16EE20(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_25F16A2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48858, &qword_25F180790);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_25F17892C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25F0B7E94(a1, &qword_27FD48858, &qword_25F180790);
    v15 = *v3;
    v16 = sub_25F0C8DC0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25F170954();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_25F16DFA4(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_25F0B7E94(v9, &qword_27FD48858, &qword_25F180790);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_25F16EFE8(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_25F16A4F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_25F16F2D8(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_25F17776C();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_25F0C8E04(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_25F170D34();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_25F17776C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_25F16E150(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_25F17776C();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_25F16A6B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25F0C0C84(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_25F16F4A4(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_25F17722C();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_25F0B7E94(a1, &qword_27FD49590, &qword_25F183C00);
    sub_25F16B154(a2, v10);
    v8 = sub_25F17722C();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_25F0B7E94(v10, &qword_27FD49590, &qword_25F183C00);
  }

  return result;
}

unint64_t PreviewAgentLauncherRegistry.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F0ECE14(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t PreviewAgentLauncherRegistry.registerLauncher(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25F17888C();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F17722C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = *v2;
  if (*(*v2 + 16) && (v18 = *v2, v19 = sub_25F0C8C50(a2), (v20 & 1) != 0))
  {
    sub_25F0BEC1C(*(v17 + 56) + 40 * v19, v32);
    sub_25F0B7E94(v32, &qword_27FD49590, &qword_25F183C00);
    sub_25F17884C();
    (*(v10 + 16))(v14, a2, v9);
    v21 = sub_25F17887C();
    v22 = sub_25F17954C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v32[0] = v24;
      *v23 = 136446210;
      v25 = sub_25F17721C();
      v27 = v26;
      (*(v10 + 8))(v14, v9);
      v28 = sub_25F0BECF0(v25, v27, v32);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_25F0B3000, v21, v22, "Skipping duplicate preview agent launcher for %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x25F8D6230](v24, -1, -1);
      MEMORY[0x25F8D6230](v23, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    return (*(v30 + 8))(v8, v31);
  }

  else
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_25F0B7E94(v32, &qword_27FD49590, &qword_25F183C00);
    (*(v10 + 16))(v16, a2, v9);
    sub_25F0BEC1C(a1, v32);
    return sub_25F16A6B0(v32, v16);
  }
}

double PreviewAgentLauncherRegistry.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_25F0C8C50(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 40 * v5;

    sub_25F0BEC1C(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25F16ABB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_25F0C8B7C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25F16FEA0();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_25F177E8C();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_25F16D560(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_25F16AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25F0C8D24(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F170120();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for JITManager.Storage.Record();
    v22 = *(v15 - 8);
    sub_25F171364(v14 + *(v22 + 72) * v9, a3, type metadata accessor for JITManager.Storage.Record);
    sub_25F16D880(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for JITManager.Storage.Record();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_25F16ADEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25F0C8E04(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F170380();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_25F17776C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    updated = type metadata accessor for UpdateRegistry.Update();
    v22 = *(updated - 8);
    sub_25F171364(v14 + *(v22 + 72) * v8, a2, type metadata accessor for UpdateRegistry.Update);
    sub_25F16DA6C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = updated;
  }

  else
  {
    v20 = type metadata accessor for UpdateRegistry.Update();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_25F16AFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_25F0C8D24(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F1706CC(a4, a5, a6);
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    (*(v30 + 32))(a7, v22 + *(v30 + 72) * v17, v23);
    sub_25F16DDB0(v17, v20, a4);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

double sub_25F16B154@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25F0C8C50(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F170FB4();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_25F17722C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_25F0C0C84((*(v11 + 56) + 40 * v8), a2);
    sub_25F16E470(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25F16B238(uint64_t a1, int a2)
{
  v3 = v2;
  v61 = sub_25F1776BC();
  v6 = *(v61 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v61);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  v13 = type metadata accessor for ContentKey();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v13);
  v63 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v17 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479C0, &unk_25F183CA0);
  v62 = a2;
  result = sub_25F1797AC();
  v19 = result;
  if (*(v16 + 16))
  {
    v53 = v3;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v58 = (v6 + 48);
    v55 = (v6 + 32);
    v54 = (v6 + 8);
    v26 = result + 64;
    v27 = v63;
    while (v24)
    {
      v30 = __clz(__rbit64(v24));
      v31 = (v24 - 1) & v24;
LABEL_17:
      v34 = v30 | (v20 << 6);
      v35 = *(v16 + 48);
      v65 = *(v59 + 72);
      v66 = v31;
      v36 = v35 + v65 * v34;
      if (v62)
      {
        sub_25F171364(v36, v27, type metadata accessor for ContentKey);
      }

      else
      {
        sub_25F1712B4(v36, v27, type metadata accessor for ContentKey);
      }

      v37 = *(*(v16 + 56) + 16 * v34);
      v38 = *(*(v16 + 56) + 16 * v34 + 8);
      v64 = v37;
      v39 = *(v19 + 40);
      sub_25F1798CC();
      sub_25F1776AC();
      sub_25F17131C(&qword_27FD47128, MEMORY[0x277D408E0]);
      sub_25F17902C();
      sub_25F0C6F18(v27 + *(v60 + 20), v12);
      v40 = v61;
      if ((*v58)(v12, 1, v61) == 1)
      {
        sub_25F1798EC();
      }

      else
      {
        v41 = *v55;
        v57 = v38;
        v42 = v16;
        v43 = v56;
        v41(v56, v12, v40);
        sub_25F1798EC();
        sub_25F17131C(&qword_27FD47130, MEMORY[0x277D40908]);
        sub_25F17902C();
        v44 = v43;
        v16 = v42;
        v38 = v57;
        (*v54)(v44, v40);
      }

      result = sub_25F17990C();
      v45 = -1 << *(v19 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      v27 = v63;
      if (((-1 << v46) & ~*(v26 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v26 + 8 * v47);
          if (v51 != -1)
          {
            v28 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v46) & ~*(v26 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = sub_25F171364(v27, *(v19 + 48) + v65 * v28, type metadata accessor for ContentKey);
      v29 = (*(v19 + 56) + 16 * v28);
      *v29 = v64;
      v29[1] = v38;
      ++*(v19 + 16);
      v24 = v66;
    }

    v32 = v20;
    while (1)
    {
      v20 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v20 >= v25)
      {
        break;
      }

      v33 = v21[v20];
      ++v32;
      if (v33)
      {
        v30 = __clz(__rbit64(v33));
        v31 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_39;
    }

    v52 = 1 << *(v16 + 32);
    v3 = v53;
    if (v52 >= 64)
    {
      bzero(v21, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v52;
    }

    *(v16 + 16) = 0;
  }

LABEL_39:
  *v3 = v19;
  return result;
}

uint64_t sub_25F16B7F4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25F177E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479F8, &unk_25F183C90);
  v43 = a2;
  result = sub_25F1797AC();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25F17131C(&qword_27FD47200, MEMORY[0x277D403A8]);
      result = sub_25F17901C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25F16BBD0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for JITManager.Storage.Record();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479A0, &unk_25F183C80);
  v44 = a2;
  result = sub_25F1797AC();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_25F171364(v31, v45, type metadata accessor for JITManager.Storage.Record);
      }

      else
      {
        sub_25F1712B4(v31, v45, type metadata accessor for JITManager.Storage.Record);
      }

      v32 = *(v12 + 40);
      sub_25F1798CC();
      sub_25F17911C();
      result = sub_25F17990C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_25F171364(v45, *(v12 + 56) + v30 * v20, type metadata accessor for JITManager.Storage.Record);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_25F16BF48(uint64_t a1, int a2)
{
  v3 = v2;
  updated = type metadata accessor for UpdateRegistry.Update();
  v47 = *(updated - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F17776C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49598, "҂");
  v48 = a2;
  result = sub_25F1797AC();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_25F171364(v31 + v32 * v28, v52, type metadata accessor for UpdateRegistry.Update);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_25F1712B4(v33 + v32 * v28, v52, type metadata accessor for UpdateRegistry.Update);
      }

      v34 = *(v16 + 40);
      sub_25F17131C(&qword_27FD471E0, MEMORY[0x277D40A08]);
      result = sub_25F17901C();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_25F171364(v52, *(v16 + 56) + v32 * v24, type metadata accessor for UpdateRegistry.Update);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_25F16C410(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_25F1797AC();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      sub_25F1798CC();
      sub_25F17911C();
      result = sub_25F17990C();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

uint64_t sub_25F16C794(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_25F17892C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47980, &qword_25F17CBE8);
  v41 = a2;
  result = sub_25F1797AC();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_25F1798BC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_25F16CAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47970, &qword_25F17CBD8);
  v40 = a2;
  result = sub_25F1797AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25F1798CC();
      sub_25F17911C();
      result = sub_25F17990C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F16CDA0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25F17776C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47968, &qword_25F17CBD0);
  v43 = a2;
  result = sub_25F1797AC();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25F17131C(&qword_27FD471E0, MEMORY[0x277D40A08]);
      result = sub_25F17901C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25F16D17C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25F17722C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479B0, &unk_25F183C70);
  v42 = a2;
  result = sub_25F1797AC();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_25F0C0C84((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_25F0BEC1C(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_25F17131C(&qword_27FD471F0, MEMORY[0x277D406E8]);
      result = sub_25F17901C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_25F0C0C84(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_25F16D560(int64_t a1, uint64_t a2)
{
  v43 = sub_25F177E8C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25F17968C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25F17131C(&qword_27FD47200, MEMORY[0x277D403A8]);
      v26 = sub_25F17901C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_25F16D880(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F17968C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25F1798CC();

      sub_25F17911C();
      v13 = sub_25F17990C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for JITManager.Storage.Record() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F16DA6C(int64_t a1, uint64_t a2)
{
  v4 = sub_25F17776C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_25F17968C();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_25F17131C(&qword_27FD471E0, MEMORY[0x277D40A08]);
      v24 = sub_25F17901C();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for UpdateRegistry.Update() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F16DDB0(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_25F17968C() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_25F1798CC();

      sub_25F17911C();
      v15 = sub_25F17990C();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F16DFA4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F17968C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_25F1798BC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_25F17892C() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F16E150(int64_t a1, uint64_t a2)
{
  v43 = sub_25F17776C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25F17968C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25F17131C(&qword_27FD471E0, MEMORY[0x277D40A08]);
      v26 = sub_25F17901C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_25F16E470(int64_t a1, uint64_t a2)
{
  v45 = sub_25F17722C();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_25F17968C();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25F17131C(&qword_27FD471F0, MEMORY[0x277D406E8]);
      v26 = sub_25F17901C();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_25F16E794(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for ContentKey();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_25F0C8848(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= result && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *v5;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 16 * v16);
      *v23 = a1;
      v23[1] = a2;
      return result;
    }

    goto LABEL_11;
  }

  if (v21 >= result && (a4 & 1) == 0)
  {
    result = sub_25F16FC68();
    goto LABEL_7;
  }

  sub_25F16B238(result, a4 & 1);
  v24 = *v5;
  result = sub_25F0C8848(a3);
  if ((v20 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

  v16 = result;
  v22 = *v5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_25F1712B4(a3, v13, type metadata accessor for ContentKey);
  return sub_25F16F680(v16, v13, a1, a2, v22);
}

uint64_t sub_25F16E914(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F177E8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25F0C8B7C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25F16FEA0();
      goto LABEL_7;
    }

    sub_25F16B7F4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25F0C8B7C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25F16F73C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_25F16EAE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25F0C8D24(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for JITManager.Storage.Record();
      return sub_25F17124C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for JITManager.Storage.Record);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_25F170120();
    goto LABEL_7;
  }

  sub_25F16BBD0(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_25F0C8D24(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_25F16F7F4(v12, a2, a3, a1, v18);
}

uint64_t sub_25F16EC4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F17776C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25F0C8E04(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      updated = type metadata accessor for UpdateRegistry.Update();
      return sub_25F17124C(a1, v22 + *(*(updated - 8) + 72) * v15, type metadata accessor for UpdateRegistry.Update);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_25F170380();
    goto LABEL_7;
  }

  sub_25F16BF48(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_25F0C8E04(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_25F16F8A0(v15, v12, a1, v21);
}

uint64_t sub_25F16EE20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25F0C8D24(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25F1706CC(MEMORY[0x277D7E940], &qword_27FD47990, &qword_25F17CBF8);
      goto LABEL_7;
    }

    sub_25F16C410(v15, a4 & 1, MEMORY[0x277D7E940], &qword_27FD47990, &qword_25F17CBF8);
    v26 = *v5;
    v27 = sub_25F0C8D24(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_25F178B1C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_25F16F990(v12, a2, a3, a1, v18);
}

uint64_t sub_25F16EFE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25F0C8DC0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25F170954();
      goto LABEL_7;
    }

    sub_25F16C794(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_25F0C8DC0(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_25F17892C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_25F16FA40(v10, a2, a1, v16);
}

uint64_t sub_25F16F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25F0C8D24(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25F16CAE0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25F0C8D24(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_25F17985C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25F170BBC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_25F16F2D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F17776C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25F0C8E04(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25F170D34();
      goto LABEL_7;
    }

    sub_25F16CDA0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25F0C8E04(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25F16FAEC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_25F16F4A4(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25F17722C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25F0C8C50(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25F170FB4();
      goto LABEL_7;
    }

    sub_25F16D17C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_25F0C8C50(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25F16FBA4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25F17985C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  return sub_25F0C0C84(a1, v22);
}

uint64_t sub_25F16F680(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for ContentKey();
  result = sub_25F171364(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ContentKey);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_25F16F73C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F177E8C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25F16F7F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for JITManager.Storage.Record();
  result = sub_25F171364(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for JITManager.Storage.Record);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_25F16F8A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F17776C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  updated = type metadata accessor for UpdateRegistry.Update();
  result = sub_25F171364(a3, v10 + *(*(updated - 8) + 72) * a1, type metadata accessor for UpdateRegistry.Update);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25F16F990(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_25F178B1C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_25F16FA40(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_25F17892C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_25F16FAEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F17776C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25F16FBA4(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25F17722C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_25F0C0C84(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_25F16FC68()
{
  v1 = v0;
  v2 = type metadata accessor for ContentKey();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479C0, &unk_25F183CA0);
  v6 = *v0;
  v7 = sub_25F17979C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_25F1712B4(*(v6 + 48) + v22, v5, type metadata accessor for ContentKey);
        v21 *= 16;
        v23 = *(v8 + 48);
        v26 = *(*(v6 + 56) + v21);
        result = sub_25F171364(v5, v23 + v22, type metadata accessor for ContentKey);
        *(*(v8 + 56) + v21) = v26;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_25F16FEA0()
{
  v1 = v0;
  v34 = sub_25F177E8C();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479F8, &unk_25F183C90);
  v4 = *v0;
  v5 = sub_25F17979C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25F170120()
{
  v1 = v0;
  v2 = type metadata accessor for JITManager.Storage.Record();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479A0, &unk_25F183C80);
  v5 = *v0;
  v6 = sub_25F17979C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_25F1712B4(v22 + v28, v33, type metadata accessor for JITManager.Storage.Record);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_25F171364(v27, *(v29 + 56) + v28, type metadata accessor for JITManager.Storage.Record);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_25F170380()
{
  v1 = v0;
  updated = type metadata accessor for UpdateRegistry.Update();
  v40 = *(updated - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25F17776C();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49598, "҂");
  v7 = *v0;
  v8 = sub_25F17979C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_25F1712B4(v28 + v30, v39, type metadata accessor for UpdateRegistry.Update);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_25F171364(v31, *(v20 + 56) + v30, type metadata accessor for UpdateRegistry.Update);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_25F1706CC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_25F17979C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_25F170954()
{
  v1 = v0;
  v30 = sub_25F17892C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47980, &qword_25F17CBE8);
  v4 = *v0;
  v5 = sub_25F17979C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25F170BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47970, &qword_25F17CBD8);
  v2 = *v0;
  v3 = sub_25F17979C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_25F170D34()
{
  v1 = v0;
  v34 = sub_25F17776C();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47968, &qword_25F17CBD0);
  v4 = *v0;
  v5 = sub_25F17979C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25F170FB4()
{
  v1 = v0;
  v30 = sub_25F17722C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479B0, &unk_25F183C70);
  v4 = *v0;
  v5 = sub_25F17979C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_25F0BEC1C(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_25F0C0C84(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_25F17124C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1712B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F17131C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F171364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static PreviewShellPlugin.previewShellSceneBinder.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PreviewAgentConnector.nonUIAgentProxy.getter(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_25F171474, 0, 0);
}

uint64_t sub_25F171474()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for PreviewAgentConnector() + 24);
  v3 = *(v2 + 7);
  v0[2] = *(v2 + 6);
  v0[3] = v3;
  v4 = *v1;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_25F171550;
  v6 = v0[4];

  return SharedAgentServer<>.requestPreviewNonUIAgent(for:)(v6, v4);
}

uint64_t sub_25F171550()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  v4 = v3[2];
  v5 = v3[3];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F171698, 0, 0);
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t type metadata accessor for PreviewAgentConnector()
{
  result = qword_27FD495B0;
  if (!qword_27FD495B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 PreviewAgentConnector.init(pid:agentBundle:serverFarm:sceneInjector:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for PreviewAgentConnector();
  v10 = v9[5];
  v11 = sub_25F17767C();
  v18 = *a4;
  (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v12 = &a5[v9[6]];
  v13 = a3[5];
  *(v12 + 4) = a3[4];
  *(v12 + 5) = v13;
  v14 = a3[7];
  *(v12 + 6) = a3[6];
  *(v12 + 7) = v14;
  v15 = a3[1];
  *v12 = *a3;
  *(v12 + 1) = v15;
  v16 = a3[3];
  *(v12 + 2) = a3[2];
  *(v12 + 3) = v16;
  result = v18;
  *&a5[v9[7]] = v18;
  return result;
}

id static AgentSceneConfiguration.previewSceneConfiguration(in:specification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v22 = a3;
  v7 = sub_25F177E8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_25F1796DC();
  ObjectType = swift_getObjectType();
  v13 = (*(a2 + 16))(ObjectType, a2);
  v15 = v14;

  v23 = v13;
  v24 = v15;
  MEMORY[0x25F8D50D0](0x776569766572502DLL, 0xEE002D656E656353);
  sub_25F177E7C();
  sub_25F1749A8(&qword_27FD481A0, MEMORY[0x277D403A8]);
  v16 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v16);

  (*(v8 + 8))(v11, v7);
  v17 = v23;
  v18 = v24;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v17;
  a4[3] = v18;
  a4[4] = v22;
  swift_unknownObjectRetain();
  v19 = v22;

  return v19;
}

uint64_t PreviewAgentConnector.injectScene(configuration:)(__int128 *a1)
{
  v3 = *(a1 + 2);
  *(v1 + 64) = sub_25F17930C();
  v6 = *a1;
  v7 = *(a1 + 24);
  *(v1 + 72) = sub_25F1792FC();
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v7;
  *(v1 + 56) = 0;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_25F171AA4;

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(v1 + 16, (v1 + 56));
}

uint64_t sub_25F171AA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v16 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v6 = v4[8];
    v7 = v4[9];
    v8 = sub_25F1792CC();
    v10 = v9;
    v11 = sub_25F171C60;
  }

  else
  {
    v12 = v4[8];
    v13 = v4[9];
    v4[12] = a1;
    v8 = sub_25F1792CC();
    v10 = v14;
    v11 = sub_25F171BF8;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_25F171BF8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

uint64_t sub_25F171C60()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t SceneInjector.init(injectScene:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PreviewAgentConnector.connectNonUIAgent()()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD495A0, &qword_25F183D10);
  v8 = sub_25F17932C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_25F102560(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_25F1749F0(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PreviewAgentConnector);
  return sub_25F17870C();
}

uint64_t sub_25F171EDC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = *(*(type metadata accessor for PreviewNonUIAgentProxy() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F171F6C, 0, 0);
}

uint64_t sub_25F171F6C()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for PreviewAgentConnector() + 24);
  v3 = *(v2 + 7);
  v0[2] = *(v2 + 6);
  v0[3] = v3;
  v4 = *v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_25F172048;
  v6 = v0[6];

  return SharedAgentServer<>.requestPreviewNonUIAgent(for:)(v6, v4);
}

uint64_t sub_25F172048()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  v2[8] = v0;

  v4 = v2[2];
  v5 = v2[3];

  if (v0)
  {
    v6 = sub_25F172268;
  }

  else
  {
    v6 = sub_25F172170;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F172170()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_25F1782AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *v2 = sub_25F17829C();
  v6 = type metadata accessor for PreviewNonUIAgent();
  sub_25F1749F0(v1, v2 + *(v6 + 20), type metadata accessor for PreviewNonUIAgentProxy);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F172268()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_25F1722CC()
{
  type metadata accessor for PreviewNonUIAgent();
  sub_25F1749A8(&qword_27FD495C8, type metadata accessor for PreviewNonUIAgent);
  return sub_25F17800C();
}

uint64_t _s15PreviewShellKit0A14AgentConnectorV11agentBundle19PreviewsMessagingOS0D10DescriptorV0G0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviewAgentConnector() + 20);
  v4 = sub_25F17767C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(uint64_t a1, void *a2)
{
  *(v3 + 24) = v2;
  *(v3 + 32) = *a1;
  *(v3 + 48) = *(a1 + 16);
  *(v3 + 56) = *(a1 + 24);
  *(v3 + 72) = *a2;
  *(v3 + 80) = sub_25F17930C();
  *(v3 + 88) = sub_25F1792FC();
  v5 = sub_25F1792CC();
  *(v3 + 96) = v5;
  *(v3 + 104) = v4;

  return MEMORY[0x2822009F8](sub_25F1724A8, v5, v4);
}

uint64_t sub_25F1724A8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 56);
  sub_25F1792FC();
  sub_25F1792DC();

  v5 = type metadata accessor for PreviewAgentConnector();
  v6 = v4 + *(v5 + 28);
  v7 = *v6;
  v8 = *(v6 + 1);
  *(v0 + 176) = *v4;
  *(v0 + 112) = v7();
  v9 = *(v0 + 24);
  v10 = *(v5 + 24);
  *(v0 + 180) = v10;
  *(v0 + 120) = *(v9 + v10 + 64);

  return MEMORY[0x2822009F8](sub_25F17262C, 0, 0);
}

uint64_t sub_25F17262C()
{
  v1 = *(v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_25F1726E8;
  v3 = *(v0 + 120);
  v4 = *(v0 + 176);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_25F10CD80(v4, v5, v6);
}

uint64_t sub_25F1726E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v8 = *(v3 + 104);
  v9 = *(v3 + 96);
  if (v1)
  {
    v10 = sub_25F172AAC;
  }

  else
  {
    v10 = sub_25F172848;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_25F172848()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 24) + *(v0 + 180);
  sub_25F176F1C();
  v7 = *(v5 + 112);
  v6 = *(v5 + 120);
  *(v0 + 16) = v3;
  v8 = type metadata accessor for PreviewSceneAgentProxy(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = v2;
  swift_unknownObjectRetain();

  v12 = v3;
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  *v13 = v0;
  v13[1] = sub_25F172984;
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);

  return sub_25F0B838C(v14, v15, v16, v17, v7, v6, (v0 + 16));
}

uint64_t sub_25F172984(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = v4[12];
    v8 = v4[13];
    v9 = sub_25F172BAC;
  }

  else
  {
    v4[21] = a1;
    v7 = v4[12];
    v8 = v4[13];
    v9 = sub_25F172B30;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_25F172AAC()
{
  v1 = v0[11];

  v2 = v0[18];
  v3 = v0[14];
  sub_25F0E6754(v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F172B30()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[21];

  return v4(v5);
}

uint64_t sub_25F172BAC()
{
  v1 = v0[17];
  v2 = v0[11];

  v3 = v0[20];
  v4 = v0[14];
  sub_25F0E6754(v4);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t PreviewAgentConnector.connectSceneAgent(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PreviewAgentConnector();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19[-v9 - 8];
  v11 = a1[1];
  v20 = *a1;
  v21 = v11;
  v22 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD495A8, &qword_25F183D28);
  v12 = sub_25F17932C();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_25F102560(v2, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_25F1749F0(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v14 + v13, type metadata accessor for PreviewAgentConnector);
  v15 = v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = v21;
  *v15 = v20;
  *(v15 + 16) = v16;
  *(v15 + 32) = v22;
  sub_25F1743DC(&v20, v19);
  return sub_25F17870C();
}

uint64_t sub_25F172E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_25F172EA8, 0, 0);
}

uint64_t sub_25F172EA8()
{
  v1 = *(v0 + 80);
  *(v0 + 88) = sub_25F17930C();
  *(v0 + 96) = sub_25F1792FC();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_25F172F78;
  v5 = *(v0 + 72);

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(v0 + 16, (v0 + 56));
}

uint64_t sub_25F172F78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v16 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = v4[11];
    v7 = v4[12];
    v8 = sub_25F1792CC();
    v10 = v9;
    v11 = sub_25F1731F8;
  }

  else
  {
    v12 = v4[11];
    v13 = v4[12];
    v4[15] = a1;
    v8 = sub_25F1792CC();
    v10 = v14;
    v11 = sub_25F1730CC;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_25F1730CC()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_25F173134, 0, 0);
}

uint64_t sub_25F173134()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = sub_25F1782AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *v2 = sub_25F17829C();
  v2[1] = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_25F1731F8()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t PreviewAgentConnector.connectSceneAgent(configuration:settingsPolicy:)(__int128 *a1, void **a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreviewAgentConnector();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25[-v12 - 8];
  v14 = a1[1];
  v26 = *a1;
  v27 = v14;
  v28 = *(a1 + 4);
  v15 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD495A8, &qword_25F183D28);
  v16 = sub_25F17932C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_25F102560(v3, v9);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_25F1749F0(v9, v19 + v17, type metadata accessor for PreviewAgentConnector);
  v20 = v19 + v18;
  v21 = v27;
  *v20 = v26;
  *(v20 + 16) = v21;
  *(v20 + 32) = v28;
  *(v19 + ((v18 + 47) & 0xFFFFFFFFFFFFFFF8)) = v15;
  sub_25F1743DC(&v26, v25);
  v22 = v15;
  return sub_25F17870C();
}

uint64_t sub_25F1734D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 56) = a4;
  v6 = swift_task_alloc();
  *(v4 + 72) = v6;
  *v6 = v4;
  v6[1] = sub_25F173590;

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(v4 + 16, (v4 + 56));
}

uint64_t sub_25F173590(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_25F17377C;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_25F1736B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F1736B8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = sub_25F1782AC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *v2 = sub_25F17829C();
  v2[1] = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_25F1737A8(__int128 *a1)
{
  v2 = *a1;
  sub_25F174954();
  return sub_25F17800C();
}

uint64_t PreviewAgentConnector.connectSceneAgent(configuration:settingsPolicy:)(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  *(v3 + 64) = a1;
  v5 = *(a2 + 2);
  v6 = *a3;
  *(v3 + 72) = sub_25F17930C();
  v9 = *a2;
  v10 = *(a2 + 24);
  *(v3 + 80) = sub_25F1792FC();
  *(v3 + 16) = v9;
  *(v3 + 32) = v5;
  *(v3 + 40) = v10;
  *(v3 + 56) = v6;
  v7 = swift_task_alloc();
  *(v3 + 88) = v7;
  *v7 = v3;
  v7[1] = sub_25F17392C;

  return PreviewAgentConnector.injectScene(configuration:settingsPolicy:)(v3 + 16, (v3 + 56));
}

uint64_t sub_25F17392C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v16 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v6 = v4[9];
    v7 = v4[10];
    v8 = sub_25F1792CC();
    v10 = v9;
    v11 = sub_25F173B4C;
  }

  else
  {
    v12 = v4[9];
    v13 = v4[10];
    v4[13] = a1;
    v8 = sub_25F1792CC();
    v10 = v14;
    v11 = sub_25F173A80;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_25F173A80()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];

  v4 = sub_25F1782AC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *v3 = sub_25F17829C();
  v3[1] = v1;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25F173B4C()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t AgentSceneConfiguration.previewShellScene.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t AgentSceneConfiguration.previewShellScene.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = swift_unknownObjectRelease();
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AgentSceneConfiguration.sceneIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AgentSceneConfiguration.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AgentSceneConfiguration.init(previewShellScene:sceneIdentifier:sceneSpecification:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_25F173D1C()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = sub_25F17767C();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = (v0 + v4 + *(v2 + 32));
  v9 = *v8;

  v10 = v8[1];

  v11 = v8[2];

  v12 = v8[3];

  v13 = v8[4];

  v14 = v8[5];

  v15 = v8[6];

  v16 = v8[7];

  v17 = v8[8];

  v18 = v8[9];

  v19 = v8[10];

  v20 = v8[11];

  v21 = v8[12];

  v22 = v8[13];

  v23 = v8[14];

  v24 = v8[15];

  v25 = *(v0 + v4 + *(v2 + 36) + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F173E9C(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0C10CC;

  return sub_25F171EDC(a1, v1 + v5);
}

uint64_t static AgentSceneConfiguration.mainSceneConfiguration(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25F177E8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v18 = (*(a2 + 16))(ObjectType, a2);
  v19 = v12;
  MEMORY[0x25F8D50D0](0x6563536E69614D2DLL, 0xEB000000002D656ELL);
  sub_25F177E7C();
  sub_25F1749A8(&qword_27FD481A0, MEMORY[0x277D403A8]);
  v13 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v13);

  (*(v7 + 8))(v10, v6);
  v14 = v18;
  v15 = v19;
  v16 = [objc_opt_self() mainSceneSpecification];
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v14;
  a3[3] = v15;
  a3[4] = v16;
  return swift_unknownObjectRetain();
}

uint64_t sub_25F174134()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v1 + 20);
  v8 = sub_25F17767C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = (v6 + *(v2 + 32));
  v10 = *v9;

  v11 = v9[1];

  v12 = v9[2];

  v13 = v9[3];

  v14 = v9[4];

  v15 = v9[5];

  v16 = v9[6];

  v17 = v9[7];

  v18 = v9[8];

  v19 = v9[9];

  v20 = v9[10];

  v21 = v9[11];

  v22 = v9[12];

  v23 = v9[13];

  v24 = v9[14];

  v25 = v9[15];

  v26 = *(v6 + *(v2 + 36) + 8);

  v27 = *(v0 + v5);
  swift_unknownObjectRelease();
  v28 = *(v0 + v5 + 24);

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_25F1742D4(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F172E84(a1, v1 + v5, v1 + v6);
}

uint64_t sub_25F174414()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v4;
  v8 = *(v1 + 20);
  v9 = sub_25F17767C();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = (v7 + *(v2 + 32));
  v11 = *v10;

  v12 = v10[1];

  v13 = v10[2];

  v14 = v10[3];

  v15 = v10[4];

  v16 = v10[5];

  v17 = v10[6];

  v18 = v10[7];

  v19 = v10[8];

  v20 = v10[9];

  v21 = v10[10];

  v22 = v10[11];

  v23 = v10[12];

  v24 = v10[13];

  v25 = v10[14];

  v26 = v10[15];

  v27 = *(v7 + *(v2 + 36) + 8);

  v28 = *(v0 + v5);
  swift_unknownObjectRelease();
  v29 = *(v0 + v5 + 24);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_25F1745CC(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0BF3E4;

  return sub_25F1734D8(a1, v1 + v5, v1 + v6, v7);
}

uint64_t sub_25F174710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F17767C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F1747E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F17767C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F1748A0()
{
  result = sub_25F17767C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25F174954()
{
  result = qword_27FD495C0;
  if (!qword_27FD495C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD495C0);
  }

  return result;
}

uint64_t sub_25F1749A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F1749F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for PreviewNonUIAgent()
{
  result = qword_27FD495D0;
  if (!qword_27FD495D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreviewNonUIAgent.onDisconnect(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PreviewNonUIAgentProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = *(type metadata accessor for PreviewNonUIAgent() + 20);
  v13 = sub_25F17932C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_25F17536C(v2 + v12, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewNonUIAgentProxy);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_25F175594(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PreviewNonUIAgentProxy);
  v16 = (v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;

  sub_25F0BC520(0, 0, v11, &unk_25F183E70, v15);
}

uint64_t sub_25F174CCC()
{
  v1 = (type metadata accessor for PreviewNonUIAgentProxy() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  v7 = *v6;

  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v9 - 8) + 8))(&v6[v8], v9);
  v10 = &v6[v1[9]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *&v6[v1[10]];

  v14 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_25F174E04(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewNonUIAgentProxy() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F0C10CC;

  return sub_25F11A5EC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t PreviewNonUIAgent.perform<A>(update:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v26[0] = a3;
  v27 = sub_25F177D3C();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = type metadata accessor for PreviewNonUIAgent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v26 - v13;
  v26[1] = v26 - v13;
  v29 = sub_25F17873C();
  v15 = sub_25F17932C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_25F17536C(v28, v10, type metadata accessor for PreviewNonUIAgent);
  v16 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = v27;
  (*(v5 + 16))(v16, v17, v27);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = (v9 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  v22 = v26[0];
  v23 = v30;
  *(v21 + 16) = v26[0];
  *(v21 + 24) = v23;
  sub_25F175594(v10, v21 + v19, type metadata accessor for PreviewNonUIAgent);
  (*(v5 + 32))(v21 + v20, v16, v18);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  return sub_25F17870C();
}

uint64_t sub_25F17525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F175284, 0, 0);
}

uint64_t sub_25F175284()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(type metadata accessor for PreviewNonUIAgent() + 20);
  v6 = nullsub_1(v2, v1);
  v0[7] = PreviewNonUIAgentProxy.perform<A>(update:expecting:)(v4, v6, v2, v1);
  v7 = *(MEMORY[0x277D40550] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_25F11ABE0;
  v9 = v0[2];

  return MEMORY[0x2821A0BA0](v9);
}

uint64_t sub_25F17536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1753D4()
{
  v1 = (type metadata accessor for PreviewNonUIAgent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25F177D3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = v11 + v1[7];
  v14 = *v13;

  v15 = type metadata accessor for PreviewNonUIAgentProxy();
  v16 = v15[6];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  (*(*(v17 - 8) + 8))(&v13[v16], v17);
  v18 = &v13[v15[7]];
  v19 = *v18;

  v20 = *(v18 + 1);

  v21 = *&v13[v15[8]];

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F175594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1755FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(type metadata accessor for PreviewNonUIAgent() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_25F177D3C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0BF3E4;

  return sub_25F17525C(a1, v1 + v8, v1 + v11, v5, v6);
}

uint64_t PreviewNonUIAgent.addMessageStream(for:)(uint64_t a1)
{
  v3 = sub_25F17776C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  v10 = v1 + *(type metadata accessor for PreviewNonUIAgent() + 20);
  v11 = (v10 + *(type metadata accessor for PreviewNonUIAgentProxy() + 28));
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v10 + 8);
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BE0, &unk_25F180240);
  v15 = sub_25F17932C();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  (*(v4 + 16))(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v16 = (*(v4 + 80) + 36) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14;
  (*(v4 + 32))(v17 + v16, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  return sub_25F17870C();
}

uint64_t sub_25F1759C0()
{
  v1 = sub_25F17776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 36) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t PreviewNonUIAgent.sendEndpoint(_:context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F17764C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F177DFC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3 + *(type metadata accessor for PreviewNonUIAgent() + 20);
  v16 = *(type metadata accessor for PreviewNonUIAgentProxy() + 24);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BF0, &qword_25F180250) + 48);
  v18 = sub_25F17776C();
  (*(*(v18 - 8) + 16))(v14, a3, v18);
  v19 = sub_25F177F8C();
  (*(*(v19 - 8) + 16))(&v14[v17], a2, v19);
  sub_25F17763C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  sub_25F176C60(&qword_27FD48600, MEMORY[0x277D40ED8]);
  sub_25F17701C();
  (*(v7 + 8))(v10, v6);
  return sub_25F1769F4(v14, MEMORY[0x277D40ED8]);
}

uint64_t PreviewSceneAgent.onDisconnect(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  sub_25F17930C();
  sub_25F1792FC();
  sub_25F1792DC();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25F176798;
  *(v7 + 24) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B60, &qword_25F17AF10);
  sub_25F177F4C();
}

uint64_t PreviewSceneAgent.perform<A>(update:with:delegate:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - v14;
  v16 = *(v6 + 8);
  v17 = PreviewSceneAgentProxy.perform<A>(update:with:delegate:expecting:)(a1, a2, a3, a5, a5, a6);
  sub_25F17873C();
  v18 = sub_25F17932C();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  return sub_25F17870C();
}

uint64_t sub_25F175FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D857C8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v8 = v3;
  v8[1] = sub_25F0C10CC;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, a3, v9, v10);
}

uint64_t PreviewSceneAgent.generateStaticOutput<A>(for:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = *(v4 + 8);
  v13 = PreviewSceneAgentProxy.generateStaticOutput<A>(for:expecting:)(a1, a3, a3);
  sub_25F17873C();
  v14 = sub_25F17932C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  return sub_25F17870C();
}

uint64_t PreviewSceneAgent.addMessageStream(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = *(v1 + 8);
  PreviewSceneAgentProxy.addMessageStream(for:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BE0, &unk_25F180240);
  v8 = sub_25F17932C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  return sub_25F17870C();
}

uint64_t sub_25F176398(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_25F1774BC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v6 = v2;
  v6[1] = sub_25F0BF3E4;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v7, v8, v9);
}

uint64_t sub_25F176474()
{
  sub_25F1774BC();
  sub_25F176C60(&qword_27FD480D0, MEMORY[0x277D40750]);
  return sub_25F17800C();
}

uint64_t PreviewSceneAgent.sendEndpoint(_:context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F17764C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F177E2C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 8);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BF0, &qword_25F180250) + 48);
  v17 = sub_25F17776C();
  (*(*(v17 - 8) + 16))(v14, a3, v17);
  v18 = sub_25F177F8C();
  (*(*(v18 - 8) + 16))(&v14[v16], a2, v18);
  sub_25F17763C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46B88, &qword_25F17AF28);
  sub_25F176C60(&qword_27FD46BF8, MEMORY[0x277D40F08]);
  sub_25F17701C();
  (*(v7 + 8))(v10, v6);
  return sub_25F1769F4(v14, MEMORY[0x277D40F08]);
}

uint64_t sub_25F176760()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F1767A8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F1767E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F175FE0(a1, v6, v4);
}

uint64_t sub_25F1768A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F175FE0(a1, v6, v4);
}

uint64_t sub_25F176958(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F176398(a1, v1);
}

uint64_t sub_25F1769F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F176A68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PreviewNonUIAgentProxy();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25F176B28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PreviewNonUIAgentProxy();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F176BCC()
{
  result = sub_25F1782AC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PreviewNonUIAgentProxy();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F176C60(unint64_t *a1, void (*a2)(uint64_t))
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