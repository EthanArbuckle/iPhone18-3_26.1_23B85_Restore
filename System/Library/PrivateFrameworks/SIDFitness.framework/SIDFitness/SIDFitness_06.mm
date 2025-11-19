uint64_t sub_2629FD884()
{
  v0 = sub_262A2A4D8();
  v4 = sub_2629FD904(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2629FD904(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_262A2A438();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_262A2A628();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_262A1D50C(v9, 0);
  v12 = sub_2629FDA5C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_262A2A438();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_262A2A728();
LABEL_4:

  return sub_262A2A438();
}

unint64_t sub_2629FDA5C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2629FDC7C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_262A2A4A8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_262A2A728();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2629FDC7C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_262A2A478();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2629FDC7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_262A2A4B8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26672ED20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2629FDD18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2629FDD88(uint64_t a1)
{
  v2 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v38 = *(v5 + 80);
  v11 = *(v5 + 72);
  v41 = (v38 + 32) & ~v38;
  v12 = a1 + v41;
  v37 = xmmword_262A2B290;
  v42 = v6;
  v39 = v2;
  v40 = v11;
  while (1)
  {
    sub_2629FEF84(v12, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v16 = v8[*(v2 + 64)];
    v18 = sub_2629CB1E4(v16);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_2629CFED8(v21, 1);
      v9 = v43;
      v23 = sub_2629CB1E4(v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {
      v25 = v9[7];
      sub_2629FF04C(v8, v42);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_2629A8FBC(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_2629A8FBC(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v2 = v39;
      v13 = v40;
      v26[2] = v29 + 1;
      v14 = v26 + v41 + v29 * v13;
      v15 = v13;
      sub_2629FF04C(v42, v14);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C040, &qword_262A30F70);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_2629FF04C(v8, v31 + v30);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      *(v9[6] + v18) = v16;
      *(v9[7] + 8 * v18) = v31;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v9[2] = v34;
      v15 = v40;
    }

    v12 += v15;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629FE088(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v31 = MEMORY[0x277D84F90];
    sub_2629CD900(0, v3, 0);
    v5 = v31;
    v6 = -1 << *(a1 + 32);
    v29 = a1 + 64;
    result = sub_262A2A648();
    v7 = result;
    v8 = 0;
    v30 = *(a1 + 36);
    v27 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v29 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v30 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v11 = *(*(a1 + 56) + 8 * v7);
      v12 = *(*(a1 + 48) + v7);

      v13 = a2(v12, v11);
      v15 = v14;

      v16 = v5;
      v32 = v5;
      v17 = *(v5 + 16);
      v18 = *(v16 + 24);
      if (v17 >= v18 >> 1)
      {
        result = sub_2629CD900((v18 > 1), v17 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v17 + 1;
      v19 = v16 + 16 * v17;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_25;
      }

      v20 = *(v29 + 8 * v10);
      if ((v20 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v5 = v16;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v7 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (a1 + 72 + 8 * v10);
        while (v23 < (v9 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_2629D40E8(v7, v30, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_2629D40E8(v7, v30, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v27)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_2629FE304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 56) + 8 * v15);
    v17 = *(*(a3 + 48) + v15);

    v18 = sub_2629EB278(v17, a4);

    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_2629FCF94(v21, a2, v22, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_2629FCF94(v21, a2, v22, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629FE458(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_2629FCE58(v13, v7, a1, a2);
      MEMORY[0x26672F820](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2629FE304(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2629FE618(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2629FDC7C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_262A2A498();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2629FDC7C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2629FDC7C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_262A2A498();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_2629FEA84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = (&v36 - v8);
  v10 = MEMORY[0x277D84F98];
  v45 = MEMORY[0x277D84F98];
  v41 = *(a1 + 16);
  if (!v41)
  {
    return v10;
  }

  v11 = 0;
  v40 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v12 = a1 + ((*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80));
  v39 = *(*(v40 - 8) + 72);
  v37 = xmmword_262A2B290;
  v38 = v2;
  while (1)
  {
    v13 = *(v2 + 48);
    *v9 = v11;
    sub_2629FEF84(v12, v9 + v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v14 = v44;
    sub_2629FEEF4(v9, v44);
    v15 = *(v14 + *(v2 + 48) + *(v40 + 28));
    v17 = sub_2629D41BC(v15);
    v18 = v10[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v10[3] < v20)
    {
      sub_2629D1F1C(v20, 1);
      v10 = v45;
      v22 = sub_2629D41BC(v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v10[7];
      sub_2629FEEF4(v44, v42);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2629A9804(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_2629A9804(v27 > 1, v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v25[2] = v28 + 1;
      sub_2629FEEF4(v42, v25 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v28);
      v2 = v38;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFE8, &unk_262A2B490);
      v29 = *(v43 + 72);
      v30 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_2629FEEF4(v44, v31 + v30);
      v10[(v17 >> 6) + 8] |= 1 << v17;
      *(v10[6] + v17) = v15;
      *(v10[7] + 8 * v17) = v31;
      v32 = v10[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v10[2] = v34;
    }

    ++v11;
    v12 += v39;
    if (v41 == v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629FEE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629FEEF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629FEF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2629FEFEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2629FF04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2629FF0B0()
{
  result = qword_27FF3CBC8;
  if (!qword_27FF3CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CBC8);
  }

  return result;
}

unint64_t sub_2629FF104()
{
  result = qword_27FF3CBD0;
  if (!qword_27FF3CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CBD0);
  }

  return result;
}

uint64_t sub_2629FF158(uint64_t a1, uint64_t a2)
{
  v5[2] = *(v2 + 16);
  sub_2629EB170(sub_2629FF1BC, 0.0, v5, a2);
  return a1;
}

BOOL sub_2629FF1D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(*a2 + 16);
  v5 = v3 + *(type metadata accessor for HeuristicsProcessor() + 24);
  return v4 >= *(v5 + *(type metadata accessor for PlanGenerationContext() + 60));
}

uint64_t sub_2629FF23C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBF0, &qword_262A30FD0);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(type metadata accessor for SIDArchivedSession() - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629FF360, 0, 0);
}

uint64_t sub_2629FF360()
{
  v1 = *(v0 + 48);
  v2 = v1 + *(type metadata accessor for SIDPersonalizedPlanRequest() + 20);
  v3 = type metadata accessor for SIDPersonalizedPlanDataProvider();
  v4 = v3;
  v5 = *(v2 + *(v3 + 28));
  *(v0 + 104) = v5;
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v32 = v3;
    v33 = v2;
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v34 = MEMORY[0x277D84F90];
    sub_2629CD800(0, v6, 0);
    v7 = v34;
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v8 + 72);
    do
    {
      v12 = *(v0 + 96);
      sub_262A02E7C(v10, v12, type metadata accessor for SIDArchivedSession);
      v13 = *v12;
      v14 = *(v9 + 8);

      sub_262A02FD8(v12, type metadata accessor for SIDArchivedSession);
      v16 = *(v34 + 16);
      v15 = *(v34 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2629CD800((v15 > 1), v16 + 1, 1);
      }

      *(v34 + 16) = v16 + 1;
      v17 = v34 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v10 += v11;
      --v6;
    }

    while (v6);
    v4 = v32;
    v2 = v33;
  }

  v18 = *(v0 + 56);
  v19 = sub_262A26BD8(v7);
  *(v0 + 112) = v19;

  v20 = type metadata accessor for RequestPreProcessor();
  *(v0 + 120) = v20;
  *(v0 + 152) = *(v20 + 20);
  sub_262A2A6F8();

  *(v0 + 32) = *(v19 + 16);
  v21 = sub_262A2A868();
  MEMORY[0x26672ECF0](v21);

  MEMORY[0x26672ECF0](0xD00000000000001DLL, 0x8000000262A334B0);
  sub_2629EA8C8(0x20676E6974746547, 0xE800000000000000);

  if (*(v19 + 16))
  {
    v22 = (v2 + *(v4 + 44));
    v24 = *v22;
    v23 = v22[1];
    v25 = swift_task_alloc();
    *(v0 + 128) = v25;
    *v25 = v0;
    v25[1] = sub_2629FF6A4;
    v26 = *(v0 + 56);

    return sub_262A15D7C(v24, v23, v19);
  }

  else
  {

    sub_2629EA8C8(0xD000000000000044, 0x8000000262A33540);
    v28 = *(v0 + 96);
    v29 = *(v0 + 80);

    v30 = *(v0 + 8);
    v31 = MEMORY[0x277D84F90];

    return v30(v31);
  }
}

uint64_t sub_2629FF6A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v7 = *(v3 + 112);

  if (v1)
  {
    v8 = sub_2629FFBB4;
  }

  else
  {
    v8 = sub_2629FF7E0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2629FF7E0()
{
  v38 = v0;
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v35 = v0[10];
    v4 = v0[8];
    v36 = MEMORY[0x277D84F90];
    sub_2629CD820(0, v2, 0);
    v5 = v36;
    v6 = *(type metadata accessor for SIDCatalogWorkoutReference() - 8);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      v9 = *(v34 + 80);
      v10 = (v9 + *(v4 + 48));
      sub_262A02E7C(v7, v10, type metadata accessor for SIDCatalogWorkoutReference);
      v11 = v10[1];
      *v9 = *v10;
      *(v35 + 8) = v11;
      v36 = v5;
      v13 = v5[2];
      v12 = v5[3];

      if (v13 >= v12 >> 1)
      {
        sub_2629CD820(v12 > 1, v13 + 1, 1);
        v5 = v36;
      }

      v14 = *(v34 + 80);
      v5[2] = v13 + 1;
      sub_262A02EE4(v14, v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      v7 += v8;
      --v2;
    }

    while (v2);
    v15 = *(v34 + 136);

    if (v5[2])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = v0[17];

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C790, &qword_262A2E760);
      v16 = sub_262A2A778();
      goto LABEL_10;
    }
  }

  v16 = MEMORY[0x277D84F98];
LABEL_10:
  v18 = *(v34 + 144);
  v36 = v16;

  sub_262A01244(v19, 1, &v36);
  if (v18)
  {

    return swift_unexpectedError();
  }

  else
  {
    v21 = *(v34 + 104);
    v22 = *(v34 + 56);

    v23 = v36;
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;
    v25 = sub_2629EBBF4(sub_262A02F54, v24, v21);

    v36 = v25;

    sub_262A017C0(&v36);
    v26 = *(v34 + 152);
    v27 = *(v34 + 56);

    v28 = v36;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_262A2A6F8();

    v36 = 0xD000000000000028;
    v37 = 0x8000000262A33510;
    v29 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
    v30 = MEMORY[0x26672EDD0](v28, v29);
    MEMORY[0x26672ECF0](v30);

    sub_2629EA8C8(v36, v37);

    v31 = *(v34 + 96);
    v32 = *(v34 + 80);

    v33 = *(v34 + 8);

    return v33(v28);
  }
}

uint64_t sub_2629FFBB4()
{
  v1 = *(*(v0 + 56) + *(*(v0 + 120) + 24));
  *(v0 + 156) = 1;
  v2 = *(v0 + 144);
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v4[5] = v0 + 156;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_2629B3A78;
  *(v5 + 24) = v4;

  os_unfair_lock_lock(v3 + 4);
  sub_2629B3A9C(v6);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 56);
  os_unfair_lock_unlock(v3 + 4);

  sub_262A2A6F8();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD000000000000039, 0x8000000262A334D0);
  *(v0 + 40) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 16), *(v0 + 24));

  MEMORY[0x26672F6A0](v7);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);

  v12 = *(v0 + 8);
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

void *sub_2629FFDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  v8 = sub_262A02A8C(a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
  result = sub_262A2A758();
  v10 = result;
  v11 = 0;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v8 + 64);
  v15 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_10:
      v20 = *(*(v8 + 48) + v17);
      v21 = *(*(*(v8 + 56) + 8 * v17) + 16);
      *(result + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(result[6] + v17) = v20;
      *(result[7] + 8 * v17) = v21;
      v22 = result[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      result[2] = v24;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v11 >= v15)
      {
        break;
      }

      v19 = *(v8 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_10;
      }
    }

    v25 = sub_262A00F00(v10);

    v26 = sub_262A0107C(v25 & 1, a1);
    v27 = a1 + *(type metadata accessor for SIDPersonalizedPlanRequest() + 20);
    sub_2629ADF8C(v27, a4, &unk_27FF3C0B0, &unk_262A30350);
    v28 = type metadata accessor for SIDPersonalizedPlanDataProvider();
    v29 = *(v27 + v28[5]);
    v30 = v28[8];
    v31 = type metadata accessor for FitnessPlanUser();
    sub_262A02E7C(v27 + v30, a4 + v31[6], type metadata accessor for SIDUserMetadata);
    sub_2629ADF8C(v27 + v28[10], a4 + v31[7], &qword_27FF3C948, &unk_262A30B40);
    *(a4 + v31[5]) = v29;
    *(a4 + v31[8]) = a3;
    *(a4 + v31[9]) = v26;
    *(a4 + v31[10]) = a2;
  }

  return result;
}

char sub_262A0003C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v162 = a4;
  v161 = a3;
  v6 = sub_262A2A168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_262A29FD8();
  v156 = *(v158 - 8);
  v11 = *(v156 + 64);
  v12 = MEMORY[0x28223BE20](v158);
  v155 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v142 - v14;
  v159 = type metadata accessor for SIDCatalogWorkoutReference();
  v16 = *(v159 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v159);
  v20 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v160 = &v142 - v21;
  v157 = a1;
  v23 = *a1;
  v22 = *(a1 + 8);
  if (!*(a2 + 16) || (v24 = sub_2629CB0BC(v23, v22), (v25 & 1) == 0))
  {
    v46 = v23;
    v47 = *(type metadata accessor for RequestPreProcessor() + 20);
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_262A2A6F8();

    v163 = 0xD00000000000002DLL;
    v164 = 0x8000000262A33590;
    MEMORY[0x26672ECF0](v46, v22);
    sub_2629EAAEC(v163, v164);

LABEL_12:
    v53 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
    LOBYTE(v54) = (*(*(v53 - 8) + 56))(v162, 1, 1, v53);
    return v54;
  }

  v152 = v23;
  v154 = v22;
  sub_262A02E7C(*(a2 + 56) + *(v16 + 72) * v24, v20, type metadata accessor for SIDCatalogWorkoutReference);
  sub_262A02F70(v20, v160, type metadata accessor for SIDCatalogWorkoutReference);
  v26 = type metadata accessor for SIDArchivedSession();
  v27 = *(v26 + 24);
  v153 = *(v26 + 28);
  v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v29 = sub_262A2A3E8();
  [v28 setDateFormat_];

  v30 = v157;
  v31 = sub_262A2A138();
  [v28 setTimeZone_];

  v32 = sub_262A29F88();
  v33 = [v28 stringFromDate_];

  v149 = sub_262A2A3F8();
  v35 = v34;

  v150 = *(v156 + 16);
  v151 = v27;
  v150(v15, &v30[v27], v158);
  (*(v7 + 16))(v10, &v30[v153], v6);
  v36 = v160;
  v37 = sub_2629E9F70(v15, v10);
  v38 = v159;
  v39 = *(v36 + v159[10]);
  v40 = sub_2629B4608(v39);
  v41 = (v36 + v38[12]);
  v42 = *v41;
  v43 = v41[1];

  v44 = _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0();
  if (v44 == 14)
  {

    v45 = *(type metadata accessor for RequestPreProcessor() + 20);
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A335E0);
    MEMORY[0x26672ECF0](v42, v43);
    MEMORY[0x26672ECF0](0xD000000000000015, 0x8000000262A33610);
    MEMORY[0x26672ECF0](v152, v154);
    sub_2629EAAEC(v163, v164);
LABEL_11:

    sub_262A02FD8(v36, type metadata accessor for SIDCatalogWorkoutReference);
    goto LABEL_12;
  }

  v48 = v44;
  v165 = v37;
  v153 = v35;
  if (SIDWorkoutModality.rawValue.getter(v44) == 0x3032383934393431 && v49 == 0xEA00000000003635)
  {
    goto LABEL_8;
  }

  v50 = sub_262A2A878();

  if (v50)
  {
    goto LABEL_10;
  }

  if (SIDWorkoutModality.rawValue.getter(v48) == 0x3332373831363531 && v55 == 0xEA00000000003639)
  {
LABEL_8:

LABEL_10:

    v51 = *(type metadata accessor for RequestPreProcessor() + 20);
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_262A2A6F8();

    v163 = 0x676E697070696B53;
    v164 = 0xEA0000000000203ALL;
    v166 = v48;
    v52 = sub_262A2A418();
    MEMORY[0x26672ECF0](v52);

    MEMORY[0x26672ECF0](0x74756F6B726F7720, 0xEA0000000000203ALL);
    MEMORY[0x26672ECF0](v152, v154);
    sub_2629EA8C8(v163, v164);
    goto LABEL_11;
  }

  v56 = sub_262A2A878();

  if (v56)
  {
    goto LABEL_10;
  }

  v145 = v40;
  v146 = v48;
  v57 = v36;
  v58 = 0;
  v59 = *(v57 + v159[13]);
  v60 = *(v59 + 16);
  v148 = MEMORY[0x277D84F90];
LABEL_17:
  v61 = (v59 + 40 + 16 * v58);
  while (v60 != v58)
  {
    if (v58 >= *(v59 + 16))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    ++v58;
    v62 = v61 + 2;
    v63 = *(v61 - 1);
    v64 = *v61;

    v65 = sub_262A2A788();

    v61 = v62;
    if (v65 < 9)
    {
      LOBYTE(v54) = swift_isUniquelyReferenced_nonNull_native();
      if ((v54 & 1) == 0)
      {
        v54 = sub_2629A9A24(0, *(v148 + 2) + 1, 1, v148);
        v148 = v54;
      }

      v66 = v148;
      v68 = *(v148 + 2);
      v67 = *(v148 + 3);
      if (v68 >= v67 >> 1)
      {
        v54 = sub_2629A9A24((v67 > 1), v68 + 1, 1, v148);
        v66 = v54;
      }

      *(v66 + 2) = v68 + 1;
      v148 = v66;
      v66[v68 + 32] = v65;
      goto LABEL_17;
    }
  }

  v69 = 0;
  v70 = *(v160 + v159[14]);
  v71 = *(v70 + 16);
  v161 = MEMORY[0x277D84F90];
LABEL_27:
  v72 = (v70 + 40 + 16 * v69);
  while (v71 != v69)
  {
    if (v69 >= *(v70 + 16))
    {
      goto LABEL_94;
    }

    ++v69;
    v73 = *(v72 - 1);
    v74 = *v72;

    v75 = sub_262A2A788();

    if (!v75)
    {
      v76 = 0;
      goto LABEL_34;
    }

    v72 += 2;
    if (v75 == 1)
    {
      v76 = 1;
LABEL_34:
      LOBYTE(v54) = swift_isUniquelyReferenced_nonNull_native();
      if ((v54 & 1) == 0)
      {
        v54 = sub_2629A9B60(0, *(v161 + 2) + 1, 1, v161);
        v161 = v54;
      }

      v78 = *(v161 + 2);
      v77 = *(v161 + 3);
      if (v78 >= v77 >> 1)
      {
        v54 = sub_2629A9B60((v77 > 1), v78 + 1, 1, v161);
        v161 = v54;
      }

      v79 = v161;
      *(v161 + 2) = v78 + 1;
      v79[v78 + 32] = v76;
      goto LABEL_27;
    }
  }

  v80 = 0;
  v81 = *(v160 + v159[15]);
  v82 = *(v81 + 16);
  v147 = MEMORY[0x277D84F90];
LABEL_40:
  v83 = (v81 + 40 + 16 * v80);
  while (v82 != v80)
  {
    if (v80 >= *(v81 + 16))
    {
      goto LABEL_95;
    }

    ++v80;
    v84 = v83 + 2;
    v85 = *(v83 - 1);
    v86 = *v83;

    v87 = sub_262A2A788();

    v83 = v84;
    if (v87 < 0xA)
    {
      LOBYTE(v54) = swift_isUniquelyReferenced_nonNull_native();
      if ((v54 & 1) == 0)
      {
        v54 = sub_2629A9A60(0, *(v147 + 2) + 1, 1, v147);
        v147 = v54;
      }

      v89 = *(v147 + 2);
      v88 = *(v147 + 3);
      if (v89 >= v88 >> 1)
      {
        v54 = sub_2629A9A60((v88 > 1), v89 + 1, 1, v147);
        v147 = v54;
      }

      v90 = v147;
      *(v147 + 2) = v89 + 1;
      v90[v89 + 32] = v87;
      goto LABEL_40;
    }
  }

  v91 = *(v160 + v159[16]);
  v92 = *(v91 + 16);
  if (v92)
  {
    v93 = 0;
    v94 = (v91 + 40);
    v143 = v92 - 1;
    v95 = MEMORY[0x277D84F90];
    v144 = (v91 + 40);
LABEL_51:
    v96 = &v94[16 * v93];
    v97 = v93;
    while (v97 < *(v91 + 16))
    {
      v93 = v97 + 1;
      v98 = *(v96 - 1);
      v99 = *v96;

      v100._countAndFlagsBits = v98;
      v100._object = v99;
      LOBYTE(v54) = SIDWorkoutTrainerIdentifier.init(rawValue:)(v100);
      v101 = v163;
      if (v163 != 31)
      {
        LOBYTE(v54) = swift_isUniquelyReferenced_nonNull_native();
        if ((v54 & 1) == 0)
        {
          v54 = sub_2629A9A10(0, *(v95 + 2) + 1, 1, v95);
          v95 = v54;
        }

        v103 = *(v95 + 2);
        v102 = *(v95 + 3);
        if (v103 >= v102 >> 1)
        {
          v54 = sub_2629A9A10((v102 > 1), v103 + 1, 1, v95);
          v95 = v54;
        }

        v94 = v144;
        *(v95 + 2) = v103 + 1;
        v95[v103 + 32] = v101;
        if (v143 != v97)
        {
          goto LABEL_51;
        }

        goto LABEL_63;
      }

      v96 += 2;
      ++v97;
      if (v92 == v93)
      {
        goto LABEL_63;
      }
    }

LABEL_98:
    __break(1u);
    return v54;
  }

  v95 = MEMORY[0x277D84F90];
LABEL_63:
  v144 = v95;
  v104 = *(v157 + 2);
  v150(v155, &v157[v151], v158);
  v105 = *(v160 + 16);
  v106 = *(v105 + 16);

  v107 = 0;
  v157 = MEMORY[0x277D84F90];
LABEL_64:
  v108 = (v105 + 40 + 16 * v107);
  while (v106 != v107)
  {
    if (v107 >= *(v105 + 16))
    {
      goto LABEL_96;
    }

    ++v107;
    v109 = v108 + 2;
    v110 = *(v108 - 1);
    v111 = *v108;

    v112 = sub_262A2A788();

    v108 = v109;
    if (v112 < 3)
    {
      LOBYTE(v54) = swift_isUniquelyReferenced_nonNull_native();
      if ((v54 & 1) == 0)
      {
        v54 = sub_2629A9A38(0, *(v157 + 2) + 1, 1, v157);
        v157 = v54;
      }

      v114 = *(v157 + 2);
      v113 = *(v157 + 3);
      if (v114 >= v113 >> 1)
      {
        v54 = sub_2629A9A38((v113 > 1), v114 + 1, 1, v157);
        v157 = v54;
      }

      v115 = v157;
      *(v157 + 2) = v114 + 1;
      v115[v114 + 32] = v112;
      goto LABEL_64;
    }
  }

  v116 = 0;
  LODWORD(v151) = *(v160 + 24);
  v117 = *(v160 + 40);
  v118 = *(v117 + 16);
  v119 = MEMORY[0x277D84F90];
LABEL_74:
  v120 = (v117 + 40 + 16 * v116);
  while (v118 != v116)
  {
    if (v116 >= *(v117 + 16))
    {
      goto LABEL_97;
    }

    ++v116;
    v121 = v120 + 2;
    v122 = *(v120 - 1);
    v123 = *v120;

    v124 = sub_262A2A788();

    v120 = v121;
    if (v124 < 8)
    {
      LOBYTE(v54) = swift_isUniquelyReferenced_nonNull_native();
      if ((v54 & 1) == 0)
      {
        v54 = sub_2629A9A4C(0, *(v119 + 2) + 1, 1, v119);
        v119 = v54;
      }

      v126 = *(v119 + 2);
      v125 = *(v119 + 3);
      if (v126 >= v125 >> 1)
      {
        v54 = sub_2629A9A4C((v125 > 1), v126 + 1, 1, v119);
        v119 = v54;
      }

      *(v119 + 2) = v126 + 1;
      v119[v126 + 32] = v124;
      goto LABEL_74;
    }
  }

  v127 = v159;
  v128 = v160;
  v129 = v160 + v159[9];
  v167 = DateComponents.convertToMillisecondsSince1970()();
  if (v167.is_nil)
  {
    value = 0;
  }

  else
  {
    value = v167.value;
  }

  if (*(v148 + 2))
  {
    v131 = v148[32];
  }

  else
  {
    v131 = 9;
  }

  v132 = v162;
  v133 = *(v128 + v127[11]);
  if (*(v144 + 2))
  {
    v134 = v144[32];
  }

  else
  {
    v134 = 31;
  }

  v135 = v144;
  v136 = *(v128 + v159[17]);

  sub_262A02FD8(v128, type metadata accessor for SIDCatalogWorkoutReference);
  v137 = v154;
  *v132 = v152;
  *(v132 + 1) = v137;
  *(v132 + 2) = v104;
  v138 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  (*(v156 + 32))(&v132[v138[6]], v155, v158);
  v132[v138[7]] = v165;
  v139 = &v132[v138[8]];
  v140 = v153;
  *v139 = v149;
  v139[1] = v140;
  *&v132[v138[9]] = v157;
  v132[v138[10]] = v151;
  *&v132[v138[11]] = v119;
  *&v132[v138[12]] = value;
  *&v132[v138[13]] = v39;
  v132[v138[14]] = v145;
  v132[v138[15]] = v133;
  v132[v138[16]] = v146;
  *&v132[v138[17]] = v148;
  v132[v138[18]] = v131;
  *&v132[v138[19]] = v161;
  *&v132[v138[20]] = v147;
  *&v132[v138[21]] = v135;
  v132[v138[22]] = v134;
  *&v132[v138[23]] = v136;
  LOBYTE(v54) = (*(*(v138 - 1) + 56))(v132, 0, 1, v138);
  return v54;
}

uint64_t sub_262A00F00(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(a1 + 56) + ((v8 << 9) | (8 * v10)));
      if (v11 >= 2)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_7;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629CD840(0, *(v9 + 16) + 1, 1);
    }

    v13 = *(v9 + 16);
    v14 = *(v9 + 24);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v17 = *(v9 + 16);
      v18 = v13 + 1;
      result = sub_2629CD840((v14 > 1), v13 + 1, 1);
      v13 = v17;
      v15 = v18;
    }

    *(v9 + 16) = v15;
    *(v9 + 8 * v13 + 32) = v11;
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      v16 = *(v9 + 16);

      return v16 != 0;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262A0107C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SIDUserOnboardingData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return 0;
  }

  v14 = a2 + *(type metadata accessor for SIDPersonalizedPlanRequest() + 20);
  v15 = type metadata accessor for SIDPersonalizedPlanDataProvider();
  sub_2629ADF8C(v14 + *(v15 + 40), v7, &qword_27FF3C948, &unk_262A30B40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_262A02DC8(v7);
  }

  else
  {
    sub_262A02F70(v7, v12, type metadata accessor for SIDUserOnboardingData);
    v16 = *(*&v12[*(v8 + 20)] + 16);
    sub_262A02FD8(v12, type metadata accessor for SIDUserOnboardingData);
    if (v16)
    {
      return 1;
    }
  }

  return 3;
}

uint64_t sub_262A01244(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for SIDCatalogWorkoutReference();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBF0, &qword_262A30FD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v65 = *(a1 + 16);
  if (!v65)
  {
  }

  v61 = v3;
  v62 = v8;
  v18 = a2;
  v19 = *(v14 + 48);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v64 = *(v15 + 72);
  v66 = a1;
  v60 = v20;
  sub_2629ADF8C(a1 + v20, &v59 - v16, &qword_27FF3CBF0, &qword_262A30FD0);
  v21 = v17[1];
  v69 = *v17;
  v22 = v69;
  v70 = v21;
  v63 = v19;
  sub_262A02F70(v17 + v19, v11, type metadata accessor for SIDCatalogWorkoutReference);
  v23 = *a3;
  v25 = sub_2629CB0BC(v22, v21);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v24;
  if (v23[3] >= v28)
  {
    if (v18)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_2629CDF3C();
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_2629CFB9C(v28, v18 & 1);
  v30 = *a3;
  v31 = sub_2629CB0BC(v22, v21);
  if ((v29 & 1) == (v32 & 1))
  {
    v25 = v31;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v36 = (v35[6] + 16 * v25);
      *v36 = v22;
      v36[1] = v21;
      v37 = v35[7];
      v62 = *(v62 + 72);
      sub_262A02F70(v11, v37 + v62 * v25, type metadata accessor for SIDCatalogWorkoutReference);
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        v35[2] = v40;
        v41 = v66;
        if (v65 != 1)
        {
          v42 = v66 + v64 + v60;
          v43 = 1;
          while (v43 < *(v41 + 16))
          {
            sub_2629ADF8C(v42, v17, &qword_27FF3CBF0, &qword_262A30FD0);
            v44 = v17[1];
            v69 = *v17;
            v45 = v69;
            v70 = v44;
            sub_262A02F70(v17 + v63, v11, type metadata accessor for SIDCatalogWorkoutReference);
            v46 = *a3;
            v47 = sub_2629CB0BC(v45, v44);
            v49 = v46[2];
            v50 = (v48 & 1) == 0;
            v39 = __OFADD__(v49, v50);
            v51 = v49 + v50;
            if (v39)
            {
              goto LABEL_24;
            }

            v52 = v48;
            if (v46[3] < v51)
            {
              sub_2629CFB9C(v51, 1);
              v53 = *a3;
              v47 = sub_2629CB0BC(v45, v44);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v52)
            {
              goto LABEL_10;
            }

            v55 = *a3;
            *(*a3 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v56 = (v55[6] + 16 * v47);
            *v56 = v45;
            v56[1] = v44;
            sub_262A02F70(v11, v55[7] + v62 * v47, type metadata accessor for SIDCatalogWorkoutReference);
            v57 = v55[2];
            v39 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v39)
            {
              goto LABEL_25;
            }

            ++v43;
            v55[2] = v58;
            v42 += v64;
            v41 = v66;
            if (v65 == v43)
            {
            }
          }

          goto LABEL_26;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v33 = swift_allocError();
    swift_willThrow();
    v71 = v33;
    MEMORY[0x26672F6B0](v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_262A02FD8(v11, type metadata accessor for SIDCatalogWorkoutReference);

      return MEMORY[0x26672F6A0](v71);
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_262A2A938();
  __break(1u);
LABEL_28:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001BLL, 0x8000000262A32480);
  sub_262A2A738();
  MEMORY[0x26672ECF0](39, 0xE100000000000000);
  result = sub_262A2A748();
  __break(1u);
  return result;
}

uint64_t sub_262A017C0(void **a1)
{
  v2 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_262A1F2B0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_262A01868(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_262A01868(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_262A2A858();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PreprocessedUserHistoryWithMetadata();
        v6 = sub_262A2A548();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_262A01BF8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_262A01994(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_262A01994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_262A02E7C(v24, v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      sub_262A02E7C(v21, v14, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v25 = *(v8 + 24);
      v26 = sub_262A29F98();
      sub_262A02FD8(v14, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      result = sub_262A02FD8(v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_262A02F70(v24, v37, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_262A02F70(v27, v21, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_262A01BF8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_262A0255C(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_262A1F22C(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_262A1F1A0(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_262A1F22C(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_262A02E7C(v114 + v25 * v24, v19, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_262A02E7C(v27, v120, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v30 = *(v9 + 24);
      LODWORD(v115) = sub_262A29F98();
      sub_262A02FD8(v29, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      result = sub_262A02FD8(v19, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_262A02E7C(v32, v19, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        v33 = v120;
        sub_262A02E7C(v5, v120, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        v34 = *(v121 + 24);
        v35 = sub_262A29F98() & 1;
        sub_262A02FD8(v33, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        result = sub_262A02FD8(v19, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_262A02F70(v42 + v41, v111, type metadata accessor for PreprocessedUserHistoryWithMetadata);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_262A02F70(v111, v42 + v36, type metadata accessor for PreprocessedUserHistoryWithMetadata);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_262A02E7C(v5, v19, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v96 = v120;
    sub_262A02E7C(v93, v120, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v97 = *(v9 + 24);
    a4 = sub_262A29F98();
    sub_262A02FD8(v96, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    result = sub_262A02FD8(v19, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_2629A8DAC(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_2629A8DAC((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_262A0255C(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_262A1F22C(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_262A1F1A0(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for PreprocessedUserHistoryWithMetadata;
    v98 = v119;
    sub_262A02F70(v5, v119, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_262A02F70(v98, v93, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_262A0255C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_262A02E7C(v33, v47, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          v35 = v48;
          sub_262A02E7C(v29, v48, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          v36 = *(v31 + 24);
          v37 = sub_262A29F98();
          sub_262A02FD8(v35, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          sub_262A02FD8(v34, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_262A02E7C(a2, v47, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        v22 = v48;
        sub_262A02E7C(a4, v48, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        v23 = *(v49 + 24);
        v24 = sub_262A29F98();
        sub_262A02FD8(v22, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        sub_262A02FD8(v21, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_262A1A524(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_262A02A8C(uint64_t a1)
{
  v2 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v38 = *(v5 + 80);
  v11 = *(v5 + 72);
  v41 = (v38 + 32) & ~v38;
  v12 = a1 + v41;
  v37 = xmmword_262A2B290;
  v42 = v6;
  v39 = v2;
  v40 = v11;
  while (1)
  {
    sub_262A02E7C(v12, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v16 = v8[*(v2 + 64)];
    v18 = sub_2629CB1E4(v16);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_2629CFED8(v21, 1);
      v9 = v43;
      v23 = sub_2629CB1E4(v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {
      v25 = v9[7];
      sub_262A02F70(v8, v42, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_2629A8FBC(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_2629A8FBC(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v2 = v39;
      v13 = v40;
      v26[2] = v29 + 1;
      v14 = v26 + v41 + v29 * v13;
      v15 = v13;
      sub_262A02F70(v42, v14, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C040, &qword_262A30F70);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_262A02F70(v8, v31 + v30, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      *(v9[6] + v18) = v16;
      *(v9[7] + 8 * v18) = v31;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v9[2] = v34;
      v15 = v40;
    }

    v12 += v15;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_262A02DC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RequestPreProcessor()
{
  result = qword_27FF3CBF8;
  if (!qword_27FF3CBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A02E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A02EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBF0, &qword_262A30FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A02F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A02FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A0304C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CatalogMetadataService();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PersistentLogger();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for PlanGenerationContext();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_262A031D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CatalogMetadataService();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for PersistentLogger();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for PlanGenerationContext();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_262A03348()
{
  type metadata accessor for CatalogMetadataService();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PersistentLogger();
    if (v1 <= 0x3F)
    {
      sub_2629B1BAC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PlanGenerationContext();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_262A03410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistentLogger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PlanGenerationContext();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_262A03548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersistentLogger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PlanGenerationContext();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ResultPostProcessor()
{
  result = qword_27FF3CC08;
  if (!qword_27FF3CC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A036B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v34 = MEMORY[0x277D84F90];
    v33 = *(a1 + 16);
    sub_2629CD800(0, v1, 0);
    v2 = v34;
    v4 = a1 + 56;
    v5 = -1 << *(a1 + 32);
    v6 = sub_262A2A648();
    v7 = v33;
    v8 = 0;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      v11 = 1 << v6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_37;
      }

      v12 = *(a1 + 36);
      ++v8;
      v13 = v6 & 0x3F;
      v14 = 0xEA00000000003638;
      v15 = 0x3932343038373431;
      switch(*(*(a1 + 48) + v6))
      {
        case 1:
          v14 = 0xEA00000000003937;
          goto LABEL_22;
        case 2:
          v14 = 0xEA00000000003438;
          goto LABEL_22;
        case 3:
          v14 = 0xEA00000000003238;
          goto LABEL_22;
        case 4:
          v14 = 0xEA00000000003633;
          v15 = 0x3532363037343631;
          break;
        case 5:
          v14 = 0xEA00000000003839;
          goto LABEL_18;
        case 6:
          v14 = 0xEA00000000003738;
          goto LABEL_22;
        case 7:
          v14 = 0xEA00000000003739;
          goto LABEL_18;
        case 8:
          v15 = 0x3932343038373431;
          v14 = 0xEA00000000003038;
          break;
        case 9:
          v14 = 0xEA00000000003639;
LABEL_18:
          v15 = 0x3332373831363531;
          break;
        case 0xA:
          v14 = 0xEA00000000003338;
          goto LABEL_22;
        case 0xB:
          v14 = 0xEA00000000003138;
          goto LABEL_22;
        case 0xC:
          v14 = 0xEA00000000003635;
          v15 = 0x3032383934393431;
          break;
        case 0xD:
          v14 = 0xEA00000000003538;
LABEL_22:
          v15 = 0x3932343038373431;
          break;
        default:
          break;
      }

      v17 = *(v34 + 16);
      v16 = *(v34 + 24);
      if (v17 >= v16 >> 1)
      {
        v31 = *(a1 + 36);
        v32 = v6;
        v29 = v6 & 0x3F;
        v30 = v8;
        sub_2629CD800((v16 > 1), v17 + 1, 1);
        v13 = v29;
        v8 = v30;
        v7 = v33;
        v12 = v31;
        v6 = v32;
      }

      *(v34 + 16) = v17 + 1;
      v18 = v34 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_38;
      }

      v19 = *(v4 + 8 * v10);
      if ((v19 & v11) == 0)
      {
        goto LABEL_39;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_40;
      }

      v20 = v19 & (-2 << v13);
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (a1 + 64 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            v26 = v8;
            sub_2629D40E8(v6, v12, 0);
            v8 = v26;
            v7 = v33;
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        v27 = v8;
        sub_2629D40E8(v6, v12, 0);
        v8 = v27;
        v7 = v33;
      }

LABEL_4:
      v6 = v9;
      if (v8 == v7)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    JUMPOUT(0x262A039FCLL);
  }

  return v2;
}

uint64_t sub_262A03A34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_2629CD960(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_262A2A648();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_24;
    }

    v12 = *(a1 + 36);
    if (*(*(a1 + 48) + 32 * result) >= 7uLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(*(a1 + 48) + 32 * result);
    }

    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_2629CD960((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + v15 + 32) = v13;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_25;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_26;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_2629D40E8(result, v12, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_2629D40E8(result, v12, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_262A03C5C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_262A15BAC(a3 + v16 + v17 * v14, v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v18 = a1(v13);
      if (v3)
      {
        sub_262A15C14(v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_262A15C74(v13, v25, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2629CD8E0(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2629CD8E0(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_262A15C74(v25, v15 + v16 + v21 * v17, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_262A15C14(v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

void sub_262A03EE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2629A900C(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v16 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_262A03FFC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2629A9244(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_262A040F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2629A9140(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_262A041DC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (v16 < result)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t (*sub_262A042E8(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_262A12810(v4, a2);
  return sub_262A15D74;
}

uint64_t (*sub_262A04360(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_262A128B4(v10, a2, a3, a4, a5);
  return sub_262A15D74;
}

uint64_t (*sub_262A04400(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_262A12A20(v6, a2, a3);
  return sub_262A15D74;
}

uint64_t (*sub_262A04488(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_262A12978(v4, a2);
  return sub_262A04500;
}

void sub_262A04504(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

int64_t sub_262A04550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_262A04604(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_262A04710(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_262A29F48();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262A29F58();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v53 - v11;
  v12 = sub_262A2A3D8();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = v69[8];
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v59 = sub_262A2A048();
  v57 = *(v59 - 8);
  v21 = *(v57 + 64);
  v22 = MEMORY[0x28223BE20](v59);
  v56 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v68 = &v53 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - v26;
  v28 = *a1;
  v29 = type metadata accessor for FitnessPlanUser();
  v30 = *(a2 + *(v29 + 36));
  v31 = a2 + *(v29 + 24);
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);
  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
  }

  v67 = v27;
  sub_262A2A028();
  v55 = v20;
  sub_262A2A3C8();
  v35 = v70;
  v53 = v69[2];
  v54 = v18;
  v36 = v18;
  v53(v18, v20, v70);
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = [objc_opt_self() bundleForClass_];
  v39 = v57;
  v40 = *(v57 + 16);
  v41 = v68;
  v42 = v59;
  v40(v68, v67, v59);
  v53(v58, v36, v35);
  v40(v56, v41, v42);
  v43 = [v38 bundleURL];
  v44 = v62;
  sub_262A29F78();

  (*(v63 + 104))(v44, *MEMORY[0x277CC9118], v64);
  v45 = v60;
  sub_262A29F68();
  v47 = v65;
  v46 = v66;
  (*(v65 + 16))(v61, v45, v66);
  v48 = sub_262A2A408();

  (*(v47 + 8))(v45, v46);
  v49 = *(v39 + 8);
  v49(v68, v42);
  v50 = v70;
  v51 = v69[1];
  v51(v54, v70);
  v51(v55, v50);
  v49(v67, v42);
  return v48;
}

void sub_262A04CC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_2629AC204(MEMORY[0x277D84F90]);
  v11 = sub_2629ACF00(v9);
  type metadata accessor for StretchPlanDurationFactory();
  v95 = type metadata accessor for ResultPostProcessor();
  v12 = *(&v6->_os_unfair_lock_opaque + *(v95 + 28));
  v98 = a2;
  sub_262A2746C(a2, v120);
  v97 = a1;
  v13 = *(a1 + 72);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;

  v100 = 0;
  v19 = 0;
  v102 = v18;
  v101 = v13 + 64;
  v105 = v13;
  v104 = v6;
  while (1)
  {
    v20 = v19;
LABEL_6:
    if (!v17)
    {
      break;
    }

    v112 = v10;
    v110 = v11;
    v19 = v20;
LABEL_12:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v19 << 6);
    v24 = (*(v13 + 48) + 32 * v23);
    v107 = *v24;
    v108 = v24[1];
    v109 = v24[2];
    v106 = v24[3];
    v25 = *(*(v13 + 56) + 8 * v23);

    sub_262A2A6F8();

    *&v117 = 0xD000000000000028;
    *(&v117 + 1) = 0x8000000262A33A10;
    v26 = MEMORY[0x26672EDD0](v25, &type metadata for SIDWorkoutPlanScheduledItem);
    MEMORY[0x26672ECF0](v26);

    sub_2629EA8C8(0xD000000000000028, 0x8000000262A33A10);

    v10 = v6;
    v28 = v121;
    v27 = v122;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v29 = v123;
    v30 = (*(v27 + 8))(v25, a3, v28, v27);
    v123 = v29;
    if (v29)
    {
      sub_262A2A6F8();

      *(&v117 + 1) = 0x8000000262A33A40;
      v31 = MEMORY[0x26672EDD0](v25, &type metadata for SIDWorkoutPlanScheduledItem);
      MEMORY[0x26672ECF0](v31);

      sub_2629EA8C8(0xD000000000000029, 0x8000000262A33A40);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v117 = v112;
      v10 = v107;
      sub_262A11A1C(v25, v107, v108, v109, v106, isUniquelyReferenced_nonNull_native);
      v33 = 0;
      v34 = *(v25 + 16) + 1;
      v35 = 32;
      do
      {
        if (!--v34)
        {

          v21 = swift_isUniquelyReferenced_nonNull_native();
          *&v117 = v110;
          sub_262A11CD0(v33, v107, v108, v109, v106, v21);
          MEMORY[0x26672F6A0](v123);
          v123 = 0;
          v11 = v110;
          v20 = v19;
          v6 = v104;
          v13 = v105;
          v18 = v102;
          v14 = v101;
          v10 = v112;
          goto LABEL_6;
        }

        v36 = *(v25 + v35);
        v35 += 32;
        v37 = __OFADD__(v33, v36);
        v33 += v36;
      }

      while (!v37);
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      os_unfair_lock_unlock(v10 + 4);
      __break(1u);
      return;
    }

    v38 = v30;

    sub_262A2A6F8();

    *(&v117 + 1) = 0x8000000262A33A70;
    v39 = MEMORY[0x26672EDD0](v38, &type metadata for SIDWorkoutPlanScheduledItem);
    MEMORY[0x26672ECF0](v39);

    sub_2629EA8C8(0xD000000000000026, 0x8000000262A33A70);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v117 = v112;
    sub_262A11A1C(v38, v107, v108, v109, v106, v40);
    v41 = 0;
    v42 = *(v38 + 16) + 1;
    v43 = 32;
    v6 = v10;
    while (--v42)
    {
      v44 = *(v38 + v43);
      v43 += 32;
      v37 = __OFADD__(v41, v44);
      v41 += v44;
      if (v37)
      {
        goto LABEL_55;
      }
    }

    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v117 = v110;
    sub_262A11CD0(v41, v107, v108, v109, v106, v45);
    v11 = v110;
    v100 = 1;
    v10 = v112;
    v13 = v105;
    v18 = v102;
    v14 = v101;
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_54;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v20;
    if (v17)
    {
      v112 = v10;
      v110 = v11;
      goto LABEL_12;
    }
  }

  if ((v100 & 1) == 0)
  {
    sub_2629EA8C8(0xD000000000000043, 0x8000000262A33AA0);
    v46 = *(v13 + 16);
    if (v46)
    {
      v113 = v10;
      v47 = sub_2629A9D7C(v46, 0);
      v48 = sub_262A13B90(&v117, v47 + 2, v46, v13);
      v10 = *(&v117 + 1);

      sub_2629ADE08();
      if (v48 != v46)
      {
        goto LABEL_58;
      }

      v6 = v104;
      v10 = v113;
    }

    else
    {
      v47 = MEMORY[0x277D84F90];
    }

    v49 = sub_262A058B8(v47);

    v50 = sub_262A05998(v49, a4);

    if (v50 == 7)
    {

      sub_2629EA8C8(0xD000000000000048, 0x8000000262A33AF0);
      v51 = *(&v6->_os_unfair_lock_opaque + *(v95 + 20));
      sub_2629B3A24();
      v52 = swift_allocError();
      *v53 = 0;
      LOBYTE(v117) = 8;
      v10 = *(v51 + 16);
      v93 = MEMORY[0x28223BE20](v52);
      MEMORY[0x28223BE20](v93);

      os_unfair_lock_lock(v10 + 4);
      v54 = v123;
      sub_2629B3C0C(v55);
      if (v54)
      {
        goto LABEL_59;
      }

      os_unfair_lock_unlock(v10 + 4);

      MEMORY[0x26672F6A0](v52);
      v56 = 0;
LABEL_53:
      swift_allocError();
      *v92 = v56;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v120);

      return;
    }

    sub_262A05CFC(v50, v105, &v117);
    v57 = v119;
    if (!v119)
    {

      sub_2629EA8C8(0xD00000000000002ALL, 0x8000000262A33B40);
      v87 = *(&v6->_os_unfair_lock_opaque + *(v95 + 20));
      sub_2629B3A24();
      v88 = swift_allocError();
      *v89 = 12;
      LOBYTE(v117) = 8;
      v10 = *(v87 + 16);
      v94 = MEMORY[0x28223BE20](v88);
      MEMORY[0x28223BE20](v94);

      os_unfair_lock_lock(v10 + 4);
      v90 = v123;
      sub_2629B3C0C(v91);
      if (v90)
      {
        goto LABEL_59;
      }

      os_unfair_lock_unlock(v10 + 4);

      MEMORY[0x26672F6A0](v88);
      v56 = 12;
      goto LABEL_53;
    }

    v111 = v118;
    v114 = v117;

    v58 = swift_isUniquelyReferenced_nonNull_native();
    *&v117 = v10;
    sub_262A11A1C(v57, v50, 0, 0, 0, v58);
    v59 = 0;
    v60 = v117;
    v61 = *(v57 + 16) + 1;
    v62 = 32;
    while (--v61)
    {
      v63 = *(v57 + v62);
      v62 += 32;
      v37 = __OFADD__(v59, v63);
      v59 += v63;
      if (v37)
      {
        __break(1u);
        break;
      }
    }

    v64 = swift_isUniquelyReferenced_nonNull_native();
    *&v117 = v11;
    sub_262A11CD0(v59, v50, 0, 0, 0, v64);
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    sub_262A2A6F8();
    v116 = v117;
    MEMORY[0x26672ECF0](0x656E206465646441, 0xEE00207961642077);
    LOBYTE(v117) = v50;
    sub_262A2A738();
    MEMORY[0x26672ECF0](0xD000000000000022, 0x8000000262A33B70);
    v118 = v111;
    v117 = v114;
    sub_262A2A738();
    sub_2629EA8C8(v116, *(&v116 + 1));

    v10 = v60;
  }

  v66 = sub_262A041DC(v65);
  v68 = v67;

  if (v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v66;
  }

  v71 = sub_262A04604(v70);
  v73 = v72;

  if (v73)
  {
    v74 = 0;
  }

  else
  {
    v74 = v71;
  }

  if (v74 < v69)
  {
    goto LABEL_56;
  }

  v75 = *&v10[4]._os_unfair_lock_opaque;
  v115 = v10;
  if (v75)
  {
    v76 = sub_2629A9D7C(v75, 0);
    v77 = sub_262A13B90(&v117, v76 + 2, v75, v10);
    v10 = *(&v117 + 1);

    sub_2629ADE08();
    if (v77 != v75)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v78 = sub_262A058B8(v76);

  v79 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v80 = a5 + *(v79 + 32);
  sub_262A2A008();
  v81 = *(v97 + 32);
  v82 = *(v97 + 48);
  LOBYTE(v117) = 2;

  v83 = sub_262A04710(&v117, v98);
  v85 = v84;
  v86 = a5 + *(v79 + 36);
  sub_262A2A008();
  *(a5 + 16) = v69;
  *(a5 + 24) = v74;
  *(a5 + 32) = v81;
  *(a5 + 40) = v74;
  *(a5 + 48) = v82;
  *(a5 + 56) = v78;
  *a5 = v83;
  *(a5 + 8) = v85;
  *(a5 + 64) = 2;
  *(a5 + 72) = v115;
  __swift_destroy_boxed_opaque_existential_1Tm(v120);
}

uint64_t sub_262A058B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2;
      v2 += 4;
      v4 = v5;
      if (v5 <= 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2629A9350(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_2629A9350((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        v3[v7 + 32] = v4;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = sub_262A272BC(v3);

  return v8;
}

uint64_t sub_262A05998(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    v6 = a1 + 56;
    while (1)
    {
      v7 = *(v5 + v4);
      if (!*(a1 + 16))
      {
        break;
      }

      v8 = *(a1 + 40);
      sub_262A2A998();
      MEMORY[0x26672F240](v7);
      v9 = sub_262A2A9D8();
      v10 = -1 << *(a1 + 32);
      v11 = v9 & ~v10;
      if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        break;
      }

      ++v4;
      v12 = ~v10;
      while (*(*(a1 + 48) + v11) != v7)
      {
        v11 = (v11 + 1) & v12;
        if (((*(v6 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          return v7;
        }
      }

      if (v4 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = 0;
    v14 = a1 + 56;
    do
    {
      v7 = byte_287533E38[v13 + 32];
      if (*(a1 + 16) && (v15 = *(a1 + 40), sub_262A2A998(), MEMORY[0x26672F240](v7), v16 = sub_262A2A9D8(), v17 = -1 << *(a1 + 32), v18 = v16 & ~v17, ((*(v14 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
      {
        v19 = ~v17;
        while (*(*(a1 + 48) + v18) != v7)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v14 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        if (!*(a1 + 16))
        {
          return v7;
        }

        v20 = *(a1 + 40);
        sub_262A2A998();
        MEMORY[0x26672F240]((v7 - 7 * ((9363 * v7 + 56178) >> 16) + 6));
        v21 = sub_262A2A9D8();
        v22 = -1 << *(a1 + 32);
        v23 = v21 & ~v22;
        if ((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (*(*(a1 + 48) + v23) != (v7 - 7 * ((9363 * v7 + 56178) >> 16) + 6))
          {
            v23 = (v23 + 1) & v24;
            if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          if (!*(a1 + 16))
          {
            return v7;
          }

          v25 = (v7 - 7 * ((9363 * v7 + 9363) >> 16) + 1);
          v26 = *(a1 + 40);
          sub_262A2A998();
          MEMORY[0x26672F240](v25);
          v27 = sub_262A2A9D8();
          v28 = -1 << *(a1 + 32);
          v29 = v27 & ~v28;
          if (((*(v14 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            return v7;
          }

          v30 = ~v28;
          while (v25 != *(*(a1 + 48) + v29))
          {
            v29 = (v29 + 1) & v30;
            if (((*(v14 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              return v7;
            }
          }
        }
      }

      ++v13;
    }

    while (v13 != 7);
    v32 = 0;
    do
    {
      v7 = byte_287533E38[v32 + 32];
      if (!*(a1 + 16))
      {
        break;
      }

      v33 = *(a1 + 40);
      sub_262A2A998();
      MEMORY[0x26672F240](v7);
      v34 = sub_262A2A9D8();
      v35 = -1 << *(a1 + 32);
      v36 = v34 & ~v35;
      if (((*(v14 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        break;
      }

      ++v32;
      v37 = ~v35;
      while (*(*(a1 + 48) + v36) != v7)
      {
        v36 = (v36 + 1) & v37;
        if (((*(v14 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          return v7;
        }
      }

      v7 = 7;
    }

    while (v32 != 7);
  }

  return v7;
}

uint64_t sub_262A05CFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v5 = a2 + 64;
    v6 = 1;
    v7 = 1 << *(a2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a2 + 64);
    v11 = (v7 + 63) >> 6;
    v27 = result;

    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (v10)
    {
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v14 << 6);
      v18 = (*(a2 + 48) + 32 * v17);
      v19 = *v18;
      if (*v18 < 7)
      {
        v20 = !v18[1] && v18[2] == 0;
        if (v20 && v18[3] == 0)
        {
          v22 = v19 - v27;
          if (v19 - v27 < 0)
          {
            v22 = v27 - v19;
          }

          if (v22 <= 3)
          {
            v23 = v22;
          }

          else
          {
            v23 = 7 - v22;
          }

          if (v8 < v23)
          {
            v26 = *(*(a2 + 56) + 8 * v17);

            v6 = 0;
            v8 = v23;
            v12 = v26;
            v13 = v19;
          }
        }
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v15 >= v11)
      {
        break;
      }

      v10 = *(v5 + 8 * v15);
      ++v14;
      if (v10)
      {
        v14 = v15;
        goto LABEL_11;
      }
    }

    v24 = v13;
    v25 = v12;

    if (v6)
    {

      goto LABEL_31;
    }

    if (v25)
    {
      *a3 = v24;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
      a3[4] = v25;
      return result;
    }
  }

LABEL_31:
  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_262A05E9C(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_262A2A998();
    SIDWorkoutModality.rawValue.getter(a1);
    sub_262A2A448();

    v5 = sub_262A2A9D8();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xEA00000000003638;
        v10 = 0x3932343038373431;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v9 = 0xEA00000000003937;
            goto LABEL_18;
          case 2:
            v9 = 0xEA00000000003438;
            goto LABEL_18;
          case 3:
            v9 = 0xEA00000000003238;
            goto LABEL_18;
          case 4:
            v9 = 0xEA00000000003633;
            v10 = 0x3532363037343631;
            break;
          case 5:
            v9 = 0xEA00000000003839;
            goto LABEL_14;
          case 6:
            v9 = 0xEA00000000003738;
            goto LABEL_18;
          case 7:
            v9 = 0xEA00000000003739;
            goto LABEL_14;
          case 8:
            v10 = 0x3932343038373431;
            v9 = 0xEA00000000003038;
            break;
          case 9:
            v9 = 0xEA00000000003639;
LABEL_14:
            v10 = 0x3332373831363531;
            break;
          case 0xA:
            v9 = 0xEA00000000003338;
            goto LABEL_18;
          case 0xB:
            v9 = 0xEA00000000003138;
            goto LABEL_18;
          case 0xC:
            v9 = 0xEA00000000003635;
            v10 = 0x3032383934393431;
            break;
          case 0xD:
            v9 = 0xEA00000000003538;
LABEL_18:
            v10 = 0x3932343038373431;
            break;
          default:
            break;
        }

        v11 = 0xEA00000000003638;
        switch(a1)
        {
          case 1:
            v11 = 0xEA00000000003937;
            goto LABEL_36;
          case 2:
            v11 = 0xEA00000000003438;
            goto LABEL_36;
          case 3:
            v11 = 0xEA00000000003238;
            goto LABEL_36;
          case 4:
            v11 = 0xEA00000000003633;
            if (v10 != 0x3532363037343631)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          case 5:
            v11 = 0xEA00000000003839;
            goto LABEL_31;
          case 6:
            v11 = 0xEA00000000003738;
            goto LABEL_36;
          case 7:
            v11 = 0xEA00000000003739;
            goto LABEL_31;
          case 8:
            v11 = 0xEA00000000003038;
            if (v10 != 0x3932343038373431)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          case 9:
            v11 = 0xEA00000000003639;
LABEL_31:
            if (v10 != 0x3332373831363531)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          case 10:
            v11 = 0xEA00000000003338;
            goto LABEL_36;
          case 11:
            v11 = 0xEA00000000003138;
            goto LABEL_36;
          case 12:
            v11 = 0xEA00000000003635;
            if (v10 != 0x3032383934393431)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          case 13:
            v11 = 0xEA00000000003538;
            goto LABEL_36;
          default:
LABEL_36:
            if (v10 != 0x3932343038373431)
            {
              goto LABEL_38;
            }

LABEL_37:
            if (v9 == v11)
            {

              v12 = 1;
              return v12 & 1;
            }

LABEL_38:
            v12 = sub_262A2A878();

            if (v12)
            {
              return v12 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v12 & 1;
            }

            break;
        }
      }
    }
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_262A06214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a3;
  v7 = sub_262A2A328();
  *(v5 + 136) = v7;
  v8 = *(v7 - 8);
  *(v5 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v10 = type metadata accessor for SIDWorkoutPlanScheduleResponse();
  *(v5 + 168) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v12 = type metadata accessor for SIDWorkoutPlanScheduleRequest();
  *(v5 + 192) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = *a2;
  *(v5 + 224) = *(a2 + 16);
  *(v5 + 232) = *(a2 + 24);
  *(v5 + 248) = *(a2 + 40);

  return MEMORY[0x2822009F8](sub_262A06374, 0, 0);
}

uint64_t sub_262A06374()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v27 = *(v0 + 232);
  v28 = *(v0 + 240);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 128);
  v29 = *(v0 + 160);
  v30 = *(v0 + 112);
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000035, 0x8000000262A336B0);
  *(v0 + 72) = *(v2 + 16);
  v8 = sub_262A2A868();
  MEMORY[0x26672ECF0](v8);

  MEMORY[0x26672ECF0](0x74696C61646F6D20, 0xEB00000000736569);
  sub_2629EA8C8(0, 0xE000000000000000);

  v9 = type metadata accessor for ResultPostProcessor();
  *(v0 + 256) = v9;
  v10 = *(v9 + 24);
  *(v0 + 312) = v10;
  v11 = v7 + v10;
  v12 = *(type metadata accessor for PlanGenerationContext() + 24);
  *(v0 + 316) = v12;
  v13 = sub_262A2A018();
  *(v0 + 264) = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  *(v0 + 272) = v15;
  *(v0 + 280) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v6, v11 + v12, v13);
  v16 = (v6 + *(v5 + 20));
  *v16 = v3;
  v16[1] = v4;
  v16[2] = v2;
  v16[3] = v27;
  v16[4] = v28;
  v16[5] = v1;
  *(v6 + *(v5 + 24)) = 0;

  sub_262A2A6F8();

  v17 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v17);

  sub_2629EA8C8(0xD000000000000026, 0x8000000262A336F0);

  type metadata accessor for FunctionTimer();
  inited = swift_initStackObject();
  *(v0 + 288) = inited;
  inited[3] = 0x8000000262A31BB0;
  inited[4] = 0;
  inited[2] = 0xD000000000000016;
  sub_262A2A318();
  v19 = v30 + *(type metadata accessor for SIDPersonalizedPlanRequest() + 20);
  v20 = (v19 + *(type metadata accessor for SIDPersonalizedPlanDataProvider() + 56));
  v21 = v20[1];
  v31 = (*v20 + **v20);
  v22 = (*v20)[1];
  v23 = swift_task_alloc();
  *(v0 + 296) = v23;
  *v23 = v0;
  v23[1] = sub_262A066E0;
  v24 = *(v0 + 200);
  v25 = *(v0 + 176);

  return v31(v25, v24);
}

uint64_t sub_262A066E0()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_262A07174;
  }

  else
  {
    v3 = sub_262A067F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_262A067F4()
{
  v97 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_262A2A318();
  v5 = sub_262A2A308();
  v6 = sub_262A2A308();
  v7 = *(v4 + 8);
  v7(v2, v3);
  result = (v7)(v1, v3);
  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 304);
    v10 = *(v0 + 256);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 128);
    v14 = (v5 - v6) / 1000000.0;
    *(*(v0 + 288) + 32) = v14;
    sub_262A15C74(v11, v12, type metadata accessor for SIDWorkoutPlanScheduleResponse);
    v15 = *(v13 + *(v10 + 20));
    *(v0 + 323) = 6;
    v16 = *(v15 + 16);
    v17 = swift_task_alloc();
    *(v17 + 16) = v15;
    *(v17 + 24) = v14;
    *(v17 + 32) = 0;
    *(v17 + 40) = v0 + 323;
    v18 = swift_task_alloc();
    *(v18 + 16) = sub_2629B3BF4;
    *(v18 + 24) = v17;

    os_unfair_lock_lock(v16 + 4);
    sub_2629B3C0C(v19);
    os_unfair_lock_unlock(v16 + 4);

    if (!v9)
    {
      v20 = *(v0 + 184);
      v21 = *(v0 + 128);

      v22 = *v20;

      sub_262A2A6F8();

      *&v93 = 0xD000000000000023;
      *(&v93 + 1) = 0x8000000262A33790;
      *&v87 = v22;
      v23 = SIDWorkoutPlanSchedule.description.getter();
      MEMORY[0x26672ECF0](v23);

      sub_2629EA8C8(0xD000000000000023, 0x8000000262A33790);

      if (*(v22 + 16))
      {
        v79 = *(v0 + 272);
        v80 = *(v0 + 280);
        v77 = *(v0 + 316);
        v78 = *(v0 + 264);
        v25 = *(v0 + 240);
        v24 = *(v0 + 248);
        v72 = *(v0 + 208);
        v73 = *(v0 + 224);
        v82 = *(v0 + 184);
        v83 = *(v0 + 200);
        v84 = *(v0 + 176);
        v81 = *(v0 + 168);
        v85 = *(v0 + 160);
        v86 = *(v0 + 152);
        v26 = *(v0 + 120);
        v27 = *(v0 + 104);
        v76 = *(v0 + 128) + *(v0 + 312);
        *&v93 = 0;
        *(&v93 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A337C0);
        *(v0 + 96) = *(v22 + 16);
        v28 = sub_262A2A868();
        MEMORY[0x26672ECF0](v28);

        MEMORY[0x26672ECF0](0xD000000000000015, 0x8000000262A337F0);
        sub_2629EA8C8(v93, *(&v93 + 1));

        LOBYTE(v93) = 0;
        v29 = sub_262A04710(&v93, v26);
        v74 = v30;
        v75 = v29;
        v92 = v22;
        v93 = v72;
        v94 = v73;
        v95 = v25;
        v96 = v24;
        sub_262A07588(&v92, &v93, &v87);
        v31 = v87;
        v32 = v88;
        v33 = v89;
        *&v73 = v88;
        v35 = v90;
        v34 = v91;
        *&v72 = v91;
        *&v93 = 0;
        *(&v93 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        v87 = v93;
        MEMORY[0x26672ECF0](0xD000000000000033, 0x8000000262A33810);
        v93 = v31;
        *&v94 = v32;
        *(&v94 + 1) = v33;
        v95 = v35;
        v96 = v34;
        v36 = SIDWorkoutPlanScaffold.description.getter();
        MEMORY[0x26672ECF0](v36);

        sub_2629EA8C8(v87, *(&v87 + 1));

        v37 = type metadata accessor for SIDPersonalizedWorkoutPlan();
        v79(v27 + *(v37 + 32), v76 + v77, v78);
        v38 = v27 + *(v37 + 36);
        sub_262A2A008();
        *(v27 + 16) = v31;
        *(v27 + 32) = v73;
        *(v27 + 40) = v33;
        *(v27 + 48) = v35;
        *(v27 + 56) = v72;
        *v27 = v75;
        *(v27 + 8) = v74;
        *(v27 + 64) = 0;
        *(v27 + 72) = v22;
        *&v93 = 0;
        *(&v93 + 1) = 0xE000000000000000;
        sub_262A2A6F8();

        *&v93 = 0xD000000000000027;
        *(&v93 + 1) = 0x8000000262A33850;
        v39 = SIDPersonalizedWorkoutPlan.description.getter();
        MEMORY[0x26672ECF0](v39);

        sub_2629EA8C8(v93, *(&v93 + 1));

        v40 = *(v81 + 20);
        v41 = type metadata accessor for ConsistentWorkoutPlanResult();
        sub_262A15BAC(v82 + v40, v27 + *(v41 + 20), type metadata accessor for SIDMetricCreatePlanScaffold);
        sub_262A15C14(v82, type metadata accessor for SIDWorkoutPlanScheduleResponse);
        sub_262A15C14(v83, type metadata accessor for SIDWorkoutPlanScheduleRequest);

        v42 = *(v0 + 8);
      }

      else
      {
        v43 = *(v0 + 184);
        v44 = *(v0 + 128);

        sub_2629EA8B0(0xD000000000000035, 0x8000000262A33880);
        sub_2629B3A24();
        v45 = swift_allocError();
        *v46 = 10;
        swift_willThrow();
        sub_262A15C14(v43, type metadata accessor for SIDWorkoutPlanScheduleResponse);
        *(v0 + 80) = v45;
        MEMORY[0x26672F6B0](v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
        v47 = swift_dynamicCast();
        v48 = *(v0 + 256);
        v49 = *(v0 + 128);
        if (v47 && *(v0 + 320) == 12)
        {
          MEMORY[0x26672F6A0](v45);
          v50 = *(v49 + *(v48 + 20));
          sub_262A1580C();
          v51 = swift_allocError();
          *v52 = 12;
          *(v0 + 322) = 6;
          v53 = *(v50 + 16);
          v54 = swift_task_alloc();
          *(v54 + 16) = v50;
          *(v54 + 24) = v14;
          *(v54 + 32) = v51;
          *(v54 + 40) = v0 + 322;
          v55 = swift_task_alloc();
          *(v55 + 16) = sub_2629B3BF4;
          *(v55 + 24) = v54;

          os_unfair_lock_lock(v53 + 4);
          sub_2629B3C0C(v56);
          os_unfair_lock_unlock(v53 + 4);
          v57 = *(v0 + 288);
          v58 = *(v0 + 128);
          MEMORY[0x26672F6A0](v51);

          sub_2629EA8B0(0xD00000000000003ELL, 0x8000000262A33750);
          swift_allocError();
          *v59 = 9;
          swift_willThrow();

          MEMORY[0x26672F6A0](*(v0 + 80));
        }

        else
        {
          MEMORY[0x26672F6A0](*(v0 + 80));
          v60 = *(v49 + *(v48 + 20));
          *(v0 + 321) = 6;
          v61 = *(v60 + 16);
          v62 = swift_task_alloc();
          *(v62 + 16) = v60;
          *(v62 + 24) = v14;
          *(v62 + 32) = v45;
          *(v62 + 40) = v0 + 321;
          v63 = swift_task_alloc();
          *(v63 + 16) = sub_2629B3A78;
          *(v63 + 24) = v62;
          MEMORY[0x26672F6B0](v45);

          os_unfair_lock_lock(v61 + 4);
          sub_2629B3A9C(v64);
          os_unfair_lock_unlock(v61 + 4);
          v65 = *(v0 + 288);
          v66 = *(v0 + 128);
          MEMORY[0x26672F6A0](v45);

          *&v93 = 0;
          *(&v93 + 1) = 0xE000000000000000;
          sub_262A2A6F8();
          *(v0 + 56) = 0;
          *(v0 + 64) = 0xE000000000000000;
          MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A33720);
          *(v0 + 88) = v45;
          sub_262A2A738();
          sub_2629EA8B0(*(v0 + 56), *(v0 + 64));

          swift_allocError();
          *v67 = 10;
          swift_willThrow();
          MEMORY[0x26672F6A0](v45);
        }

        v69 = *(v0 + 176);
        v68 = *(v0 + 184);
        v71 = *(v0 + 152);
        v70 = *(v0 + 160);
        sub_262A15C14(*(v0 + 200), type metadata accessor for SIDWorkoutPlanScheduleRequest);

        v42 = *(v0 + 8);
      }

      return v42();
    }
  }

  return result;
}

uint64_t sub_262A07174()
{
  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  v1 = *(v0 + 304);
  *(v0 + 80) = v1;
  MEMORY[0x26672F6B0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 256);
  v4 = *(v0 + 128);
  if (v2)
  {
    v5 = *(v0 + 320) == 12;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    MEMORY[0x26672F6A0](v1);
    v13 = *(v4 + *(v3 + 20));
    sub_262A1580C();
    v14 = swift_allocError();
    *v15 = 12;
    *(v0 + 322) = 6;
    v16 = *(v13 + 16);
    v17 = swift_task_alloc();
    v17[2] = v13;
    v17[3] = 0;
    v17[4] = v14;
    v17[5] = v0 + 322;
    v18 = swift_task_alloc();
    *(v18 + 16) = sub_2629B3BF4;
    *(v18 + 24) = v17;

    os_unfair_lock_lock(v16 + 4);
    sub_2629B3C0C(v19);
    os_unfair_lock_unlock(v16 + 4);
    v20 = *(v0 + 288);
    v21 = *(v0 + 128);
    MEMORY[0x26672F6A0](v14);

    sub_2629EA8B0(0xD00000000000003ELL, 0x8000000262A33750);
    sub_2629B3A24();
    swift_allocError();
    *v22 = 9;
    swift_willThrow();

    MEMORY[0x26672F6A0](*(v0 + 80));
  }

  else
  {
    MEMORY[0x26672F6A0](*(v0 + 80));
    v6 = *(v4 + *(v3 + 20));
    *(v0 + 321) = 6;
    v7 = *(v6 + 16);
    v8 = swift_task_alloc();
    v8[2] = v6;
    v8[3] = 0;
    v8[4] = v1;
    v8[5] = v0 + 321;
    v9 = swift_task_alloc();
    *(v9 + 16) = sub_2629B3A78;
    *(v9 + 24) = v8;
    MEMORY[0x26672F6B0](v1);

    os_unfair_lock_lock(v7 + 4);
    sub_2629B3A9C(v10);
    os_unfair_lock_unlock(v7 + 4);
    v29 = *(v0 + 288);
    v11 = *(v0 + 128);
    MEMORY[0x26672F6A0](v1);

    sub_262A2A6F8();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A33720);
    *(v0 + 88) = v1;
    sub_262A2A738();
    sub_2629EA8B0(*(v0 + 56), *(v0 + 64));

    sub_2629B3A24();
    swift_allocError();
    *v12 = 10;
    swift_willThrow();
    MEMORY[0x26672F6A0](v1);
  }

  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v26 = *(v0 + 152);
  v25 = *(v0 + 160);
  sub_262A15C14(*(v0 + 200), type metadata accessor for SIDWorkoutPlanScheduleRequest);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_262A07588@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, int8x8_t *a3@<X8>)
{
  v3 = *a1;
  v78 = a2[3];
  v79 = a2[2];
  v76 = a2[5];
  v77 = a2[4];
  v82 = sub_2629AC5CC(MEMORY[0x277D84F90]);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = *(*(v3 + 48) + 32 * v10);
    v12 = *(*(v3 + 56) + 8 * v10);
    v13 = v82;
    if (v82[2])
    {
      sub_2629CB210(v11);
      if (v14)
      {

        goto LABEL_25;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v13;
    v16 = sub_2629CB210(v11);
    v18 = v13[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_70;
    }

    v22 = v17;
    if (v13[3] < v21)
    {
      sub_2629CFF00(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_2629CB210(v11);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_74;
      }

LABEL_19:
      v24 = v81[0];
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v27 = v16;
    sub_2629CE16C();
    v16 = v27;
    v24 = v81[0];
    if ((v22 & 1) == 0)
    {
LABEL_22:
      v24[(v16 >> 6) + 8] |= 1 << v16;
      *(v24[6] + 8 * v16) = v11;
      *(v24[7] + 8 * v16) = MEMORY[0x277D84F90];
      v28 = v24[2];
      v20 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v20)
      {
        goto LABEL_71;
      }

      v24[2] = v29;
      goto LABEL_24;
    }

LABEL_20:
    v25 = v24[7];
    v26 = *(v25 + 8 * v16);
    *(v25 + 8 * v16) = MEMORY[0x277D84F90];

LABEL_24:
    v82 = v24;
LABEL_25:
    v6 &= v6 - 1;
    v30 = sub_262A042E8(v81, v11);
    if (*v31)
    {
      sub_262A03FFC(v12);
    }

    else
    {
    }

    (v30)(v81, 0);
    v8 = v9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v32 = v82;
      v33 = v82 + 8;
      v34 = 1 << *(v82 + 32);
      v35 = -1;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      v36 = v35 & v82[8];
      v37 = (v34 + 63) >> 6;

      v38 = 0;
      v39 = MEMORY[0x277D84F90];
      if (v36)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_69;
        }

        if (v40 >= v37)
        {
          break;
        }

        v36 = v33[v40];
        ++v38;
        if (v36)
        {
          v38 = v40;
          do
          {
LABEL_34:
            v41 = 0;
            v42 = __clz(__rbit64(v36));
            v36 &= v36 - 1;
            v43 = *(v32[7] + ((v38 << 9) | (8 * v42)));
            v44 = (v43 + 32);
            v45 = *(v43 + 16) + 1;
            while (--v45)
            {
              v46 = *v44;
              v44 += 4;
              v20 = __OFADD__(v41, v46);
              v41 += v46;
              if (v20)
              {
                __break(1u);
                goto LABEL_68;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_2629A9140(0, *(v39 + 2) + 1, 1, v39);
            }

            v48 = *(v39 + 2);
            v47 = *(v39 + 3);
            if (v48 >= v47 >> 1)
            {
              v39 = sub_2629A9140((v47 > 1), v48 + 1, 1, v39);
            }

            *(v39 + 2) = v48 + 1;
            *&v39[8 * v48 + 32] = v41;
          }

          while (v36);
        }
      }

      v49 = *(v39 + 2);
      if (!v49)
      {
        goto LABEL_73;
      }

      v50 = *(v39 + 4);
      v51 = v49 - 1;
      if (v49 == 1)
      {

        v52 = v50;
LABEL_67:

        *a3 = v52;
        a3[1] = v50;
        a3[2] = v79;
        a3[3] = v78;
        a3[4] = v77;
        a3[5] = v76;
        return result;
      }

      if (v49 > 4)
      {
        v54 = vdupq_n_s64(v50);
        v53 = v51 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v55 = (v39 + 56);
        v56 = v51 & 0xFFFFFFFFFFFFFFFCLL;
        v57 = v54;
        do
        {
          v54 = vbslq_s8(vcgtq_s64(v54, v55[-1]), v55[-1], v54);
          v57 = vbslq_s8(vcgtq_s64(v57, *v55), *v55, v57);
          v55 += 2;
          v56 -= 4;
        }

        while (v56);
        v58 = vbslq_s8(vcgtq_s64(v57, v54), v54, v57);
        v59 = vextq_s8(v58, v58, 8uLL).u64[0];
        v52 = vbsl_s8(vcgtd_s64(v59, v58.i64[0]), *v58.i8, v59);
        if (v51 != (v51 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v53 = 1;
        v52 = *(v39 + 32);
LABEL_53:
        v60 = v49 - v53;
        v61 = &v39[8 * v53 + 32];
        do
        {
          v63 = *v61;
          v61 += 8;
          v62 = v63;
          if (*&v63 < *&v52)
          {
            v52 = v62;
          }

          --v60;
        }

        while (v60);
      }

      if (v49 >= 5)
      {
        v64 = v51 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v65 = vdupq_n_s64(v50);
        v66 = (v39 + 56);
        v67 = v51 & 0xFFFFFFFFFFFFFFFCLL;
        v68 = v65;
        do
        {
          v65 = vbslq_s8(vcgtq_s64(v65, v66[-1]), v65, v66[-1]);
          v68 = vbslq_s8(vcgtq_s64(v68, *v66), v68, *v66);
          v66 += 2;
          v67 -= 4;
        }

        while (v67);
        v69 = vbslq_s8(vcgtq_s64(v65, v68), v65, v68);
        v70 = vextq_s8(v69, v69, 8uLL).u64[0];
        v50 = vbsl_s8(vcgtd_s64(v69.i64[0], v70), *v69.i8, v70);
        if (v51 != (v51 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_62;
        }
      }

      else
      {
        v64 = 1;
LABEL_62:
        v71 = v49 - v64;
        v72 = &v39[8 * v64 + 32];
        do
        {
          v74 = *v72++;
          v73 = v74;
          if (v50 <= v74)
          {
            v50 = v73;
          }

          --v71;
        }

        while (v71);
      }

      if (v50 < *&v52)
      {
        goto LABEL_72;
      }

      goto LABEL_67;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

void *sub_262A07AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v121 = a2;
  v122 = a3;
  v124 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC38, &unk_262A30C00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v119 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v112 = &v108 - v8;
  MEMORY[0x28223BE20](v7);
  v114 = &v108 - v9;
  v10 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v123 = *(v10 - 8);
  v11 = *(v123 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v117 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v108 - v15;
  MEMORY[0x28223BE20](v14);
  v110 = &v108 - v16;
  v17 = type metadata accessor for SIDWorkoutPlanType();
  v125 = *(v17 - 8);
  v18 = *(v125 + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v118 = &v108 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v108 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v111 = &v108 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v108 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v115 = &v108 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v108 = &v108 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v113 = &v108 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v116 = &v108 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v108 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v108 - v43;
  v45 = type metadata accessor for SIDActiveWorkoutPlan();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v49 = &v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629ADF8C(v122, v44, &unk_27FF3C0B0, &unk_262A30350);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_2629ADF2C(v44, &unk_27FF3C0B0, &unk_262A30350);
    sub_262A15BAC(v124, v25, type metadata accessor for SIDPersonalizedWorkoutPlan);
    v50 = v123;
    v51 = *(v123 + 56);
    v51(v25, 0, 1, v10);
    v52 = sub_2629A94D0(0, 1, 1, MEMORY[0x277D84F90]);
    v54 = v52[2];
    v53 = v52[3];
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v52 = sub_2629A94D0(v53 > 1, v54 + 1, 1, v52);
    }

    v56 = v125;
    v52[2] = v55;
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v58 = *(v56 + 72);
    sub_262A15C74(v25, v52 + v57 + v58 * v54, type metadata accessor for SIDWorkoutPlanType);
    v59 = v119;
    sub_2629ADF8C(v121, v119, &qword_27FF3CC38, &unk_262A30C00);
    if ((*(v50 + 48))(v59, 1, v10) == 1)
    {
      sub_2629ADF2C(v59, &qword_27FF3CC38, &unk_262A30C00);
      v60 = v120;
    }

    else
    {
      v73 = v117;
      sub_262A15C74(v59, v117, type metadata accessor for SIDPersonalizedWorkoutPlan);
      v74 = v118;
      sub_262A15BAC(v73, v118, type metadata accessor for SIDPersonalizedWorkoutPlan);
      v51(v74, 0, 1, v10);
      v75 = v52[3];
      v76 = v54 + 2;
      if ((v54 + 2) > (v75 >> 1))
      {
        v52 = sub_2629A94D0(v75 > 1, v54 + 2, 1, v52);
      }

      v60 = v120;
      sub_262A15C14(v73, type metadata accessor for SIDPersonalizedWorkoutPlan);
      v52[2] = v76;
      sub_262A15C74(v118, v52 + v57 + v58 * v55, type metadata accessor for SIDWorkoutPlanType);
    }

    v51(v60, 1, 1, v10);
    v78 = v52[2];
    v77 = v52[3];
    if (v78 >= v77 >> 1)
    {
      v52 = sub_2629A94D0(v77 > 1, v78 + 1, 1, v52);
    }

    v52[2] = v78 + 1;
    sub_262A15C74(v60, v52 + v57 + v78 * v58, type metadata accessor for SIDWorkoutPlanType);
    sub_2629EA8C8(0xD000000000000014, 0x8000000262A33960);
  }

  else
  {
    v62 = v123;
    v61 = v124;
    sub_262A15C74(v44, v49, type metadata accessor for SIDActiveWorkoutPlan);
    if (v49[*(v45 + 36)])
    {
      v63 = v10;
      if (v49[*(v45 + 36)] == 1)
      {
        v122 = v49;
        sub_262A15BAC(v61, v40, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v64 = *(v62 + 56);
        v64(v40, 0, 1, v10);
        v52 = sub_2629A94D0(0, 1, 1, MEMORY[0x277D84F90]);
        v66 = v52[2];
        v65 = v52[3];
        v67 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          v52 = sub_2629A94D0(v65 > 1, v66 + 1, 1, v52);
        }

        v68 = v125;
        v52[2] = v67;
        v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v70 = *(v68 + 72);
        sub_262A15C74(v40, v52 + v69 + v70 * v66, type metadata accessor for SIDWorkoutPlanType);
        v71 = v114;
        sub_2629ADF8C(v121, v114, &qword_27FF3CC38, &unk_262A30C00);
        if ((*(v62 + 48))(v71, 1, v63) == 1)
        {
          sub_2629ADF2C(v71, &qword_27FF3CC38, &unk_262A30C00);
          v72 = v113;
        }

        else
        {
          v94 = v110;
          sub_262A15C74(v71, v110, type metadata accessor for SIDPersonalizedWorkoutPlan);
          v95 = v116;
          sub_262A15BAC(v94, v116, type metadata accessor for SIDPersonalizedWorkoutPlan);
          v64(v95, 0, 1, v63);
          v96 = v52[3];
          v97 = v66 + 2;
          if (v97 > (v96 >> 1))
          {
            v52 = sub_2629A94D0(v96 > 1, v97, 1, v52);
          }

          v72 = v113;
          sub_262A15C14(v94, type metadata accessor for SIDPersonalizedWorkoutPlan);
          v52[2] = v97;
          sub_262A15C74(v116, v52 + v69 + v70 * v67, type metadata accessor for SIDWorkoutPlanType);
        }

        v64(v72, 1, 1, v63);
        v99 = v52[2];
        v98 = v52[3];
        if (v99 >= v98 >> 1)
        {
          v52 = sub_2629A94D0(v98 > 1, v99 + 1, 1, v52);
        }

        v49 = v122;
        v52[2] = v99 + 1;
        sub_262A15C74(v72, v52 + v69 + v99 * v70, type metadata accessor for SIDWorkoutPlanType);
        v92 = "lan is consistent plan";
        v93 = 0xD000000000000022;
      }

      else
      {
        sub_262A15BAC(v61, v30, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v84 = *(v62 + 56);
        v84(v30, 0, 1, v10);
        v52 = sub_2629A94D0(0, 1, 1, MEMORY[0x277D84F90]);
        v86 = v52[2];
        v85 = v52[3];
        v87 = v86 + 1;
        if (v86 >= v85 >> 1)
        {
          v52 = sub_2629A94D0(v85 > 1, v86 + 1, 1, v52);
        }

        v52[2] = v87;
        v88 = (*(v125 + 80) + 32) & ~*(v125 + 80);
        v89 = *(v125 + 72);
        sub_262A15C74(v30, v52 + v88 + v89 * v86, type metadata accessor for SIDWorkoutPlanType);
        v90 = v111;
        v84(v111, 1, 1, v63);
        v91 = v52[3];
        if ((v86 + 2) > (v91 >> 1))
        {
          v52 = sub_2629A94D0(v91 > 1, v86 + 2, 1, v52);
        }

        v52[2] = v86 + 2;
        sub_262A15C74(v90, v52 + v88 + v89 * v87, type metadata accessor for SIDWorkoutPlanType);
        v92 = "No active plan found";
        v93 = 0xD000000000000023;
      }
    }

    else
    {
      v79 = v112;
      sub_2629ADF8C(v121, v112, &qword_27FF3CC38, &unk_262A30C00);
      v80 = v62;
      v81 = v10;
      if ((*(v62 + 48))(v79, 1, v10) == 1)
      {
        sub_2629ADF2C(v79, &qword_27FF3CC38, &unk_262A30C00);
        v82 = *(v62 + 56);
        v52 = MEMORY[0x277D84F90];
        v83 = v125;
      }

      else
      {
        v100 = v109;
        sub_262A15C74(v79, v109, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v101 = v108;
        sub_262A15BAC(v100, v108, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v82 = *(v80 + 56);
        v82(v101, 0, 1, v10);
        v52 = sub_2629A94D0(0, 1, 1, MEMORY[0x277D84F90]);
        v103 = v52[2];
        v102 = v52[3];
        v83 = v125;
        if (v103 >= v102 >> 1)
        {
          v52 = sub_2629A94D0(v102 > 1, v103 + 1, 1, v52);
        }

        sub_262A15C14(v100, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v52[2] = v103 + 1;
        sub_262A15C74(v101, v52 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v103, type metadata accessor for SIDWorkoutPlanType);
      }

      v104 = v115;
      v82(v115, 1, 1, v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2629A94D0(0, v52[2] + 1, 1, v52);
      }

      v106 = v52[2];
      v105 = v52[3];
      if (v106 >= v105 >> 1)
      {
        v52 = sub_2629A94D0(v105 > 1, v106 + 1, 1, v52);
      }

      v52[2] = v106 + 1;
      sub_262A15C74(v104, v52 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v106, type metadata accessor for SIDWorkoutPlanType);
      v92 = "lan is stretch plan";
      v93 = 0xD000000000000026;
    }

    sub_2629EA8C8(v93, v92 | 0x8000000000000000);
    sub_262A15C14(v49, type metadata accessor for SIDActiveWorkoutPlan);
  }

  return v52;
}

uint64_t sub_262A088C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v236 = a3;
  v259 = *MEMORY[0x277D85DE8];
  v244 = sub_2629AC204(MEMORY[0x277D84F90]);
  v235 = a1;
  v5 = a1[9];
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v239 = (v7 + 63) >> 6;
  v238 = v5;

  v10 = v9;
  v11 = 0;
  v234 = 0;
  v246 = a2;
  for (i = v6; ; v6 = i)
  {
    if (!v10)
    {
      while (1)
      {
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v15 >= v239)
        {

          v218 = type metadata accessor for SIDPersonalizedWorkoutPlan();
          v219 = *(v218 + 32);
          v220 = sub_262A2A018();
          v221 = *(*(v220 - 8) + 16);
          v222 = v236;
          v223 = v235;
          v221(v236 + v219, v235 + v219, v220);
          v224 = v223[2];
          v254 = v223[3];
          v255 = v224;
          v225 = v223[4];
          v226 = v223[5];
          v227 = v223[6];
          v228 = v223[7];
          v229 = v223[1];
          v252 = *v223;
          v253 = v227;
          LODWORD(v251) = *(v223 + 64);
          v221(v222 + *(v218 + 36), v223 + *(v218 + 36), v220);
          v230 = v254;
          *(v222 + 16) = v255;
          *(v222 + 24) = v230;
          *(v222 + 32) = v225;
          *(v222 + 40) = v226;
          v231 = v252;
          *(v222 + 48) = v253;
          *(v222 + 56) = v228;
          *v222 = v231;
          *(v222 + 8) = v229;
          *(v222 + 64) = v251;
          *(v222 + 72) = v244;

          v233 = *MEMORY[0x277D85DE8];
          return result;
        }

        v10 = *(v6 + 8 * v15);
        ++v11;
        if (v10)
        {
          goto LABEL_12;
        }
      }

LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
    }

    v15 = v11;
LABEL_12:
    v241 = v10;
    v240 = v15;
    v16 = __clz(__rbit64(v10)) | (v15 << 6);
    v17 = *(v238 + 56);
    v18 = (*(v238 + 48) + 32 * v16);
    v19 = *v18;
    v242 = v18[1];
    v243 = v19;
    v252 = *(v17 + 8 * v16);
    v251 = *(v252 + 16);
    if (v251)
    {
      break;
    }

    v199 = MEMORY[0x277D84F90];
LABEL_257:
    v200 = v244;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v257 = v200;
    v202 = v243;
    v203 = v242;
    v204 = sub_2629CB134(v243, *(&v243 + 1), v242, *(&v242 + 1));
    v206 = v200[2];
    v207 = (v205 & 1) == 0;
    v56 = __OFADD__(v206, v207);
    v208 = v206 + v207;
    if (v56)
    {
      goto LABEL_275;
    }

    v209 = v205;
    if (v200[3] >= v208)
    {
      v211 = v241;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v217 = v204;
        sub_2629CE828();
        v211 = v241;
        v204 = v217;
      }
    }

    else
    {
      sub_2629D0B78(v208, isUniquelyReferenced_nonNull_native);
      v204 = sub_2629CB134(v202, *(&v202 + 1), v203, *(&v203 + 1));
      if ((v209 & 1) != (v210 & 1))
      {
        goto LABEL_285;
      }

      v211 = v241;
    }

    v10 = (v211 - 1) & v211;
    v244 = v257;
    if (v209)
    {
      v12 = v257[7];
      v13 = *(v12 + 8 * v204);
      *(v12 + 8 * v204) = v199;
      v14 = v10;

      v10 = v14;
    }

    else
    {
      v212 = v244;
      v257[(v204 >> 6) + 8] |= 1 << v204;
      v213 = (v212[6] + 32 * v204);
      v214 = v242;
      *v213 = v243;
      v213[1] = v214;
      *(v212[7] + 8 * v204) = v199;
      v215 = v212[2];
      v56 = __OFADD__(v215, 1);
      v216 = v215 + 1;
      if (v56)
      {
        goto LABEL_276;
      }

      v212[2] = v216;
    }

    v11 = v240;
  }

  v250 = v252 + 32;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v20 >= *(v252 + 16))
    {
      goto LABEL_271;
    }

    v25 = (v250 + 32 * v20);
    v27 = *v25;
    v26 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    swift_bridgeObjectRetain_n();
    v255 = v26;

    v253 = v28;
    v30 = sub_262A2A788();

    v254 = v27;
    if (v30 > 0xD || !*(a2 + 16) || (v31 = sub_2629CB1E4(v30), (v32 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2629A9244(0, *(v21 + 2) + 1, 1, v21);
      }

      v58 = *(v21 + 2);
      v57 = *(v21 + 3);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v21 = sub_2629A9244((v57 > 1), v58 + 1, 1, v21);
      }

      v22 = v255;
      goto LABEL_15;
    }

    v33 = (*(a2 + 56) + 32 * v31);
    v34 = *v33;
    v35 = v33[1];
    v37 = v33[2];
    v36 = v33[3];
    v38 = *(*v33 + 16);
    v248 = v37;
    v249 = v21;
    v247 = v36;
    if (!v38)
    {
      v22 = v255;

      if (!*(v35 + 16))
      {
        goto LABEL_65;
      }

      goto LABEL_84;
    }

    v245 = v35;
    v39 = *(v34 + 32);
    v40 = v255;
    v41 = *(v255 + 32);
    v42 = v41 & 0x3F;
    v43 = ((1 << v41) + 63) >> 6;
    v44 = 8 * v43;

    if (v42 <= 0xD)
    {

LABEL_23:
      MEMORY[0x28223BE20](v45);
      bzero(&v234 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0), v44);
      v46 = 0;
      v47 = 0;
      v48 = 1 << *(v40 + 32);
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v50 = v49 & *(v40 + 56);
      v51 = (v48 + 63) >> 6;
      while (v50)
      {
        v52 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v53 = v52 | (v47 << 6);
LABEL_34:
        if (*(*(v40 + 48) + 24 * v53 + 16))
        {
          *(&v234 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v53;
          v56 = __OFADD__(v46++, 1);
          if (v56)
          {
            goto LABEL_277;
          }
        }
      }

      v54 = v47;
      while (1)
      {
        v47 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v47 >= v51)
        {
          v22 = sub_262A26738((&v234 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0)), v43, v46, v40);
          goto LABEL_43;
        }

        v55 = *(v40 + 56 + 8 * v47);
        ++v54;
        if (v55)
        {
          v50 = (v55 - 1) & v55;
          v53 = __clz(__rbit64(v55)) | (v47 << 6);
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
      goto LABEL_272;
    }

    swift_bridgeObjectRetain_n();

    if (swift_stdlib_isStackAllocationSafe())
    {
      v45 = swift_bridgeObjectRelease_n();
      goto LABEL_23;
    }

    v148 = v39;
    v61 = swift_slowAlloc();

    v149 = v234;
    v150 = sub_262A1248C(v61, v43, v40, sub_262A09F90);
    v151 = &v258;
    v234 = v149;
    if (v149)
    {
      goto LABEL_282;
    }

    v22 = v150;
    swift_bridgeObjectRelease_n();
    MEMORY[0x26672F820](v61, -1, -1);
    v39 = v148;
LABEL_43:
    v60 = 12337;
    if (v39 != 1)
    {
      v60 = 12593;
    }

    if (v39)
    {
      v61 = v60;
    }

    else
    {
      v61 = 57;
    }

    if (v39)
    {
      v62 = 0xE200000000000000;
    }

    else
    {
      v62 = 0xE100000000000000;
    }

    v63 = *(v22 + 40);
    sub_262A2A998();
    MEMORY[0x26672F240](0);
    sub_262A2A448();
    v64 = sub_262A2A9D8();
    v65 = -1 << *(v22 + 32);
    v66 = v64 & ~v65;
    if ((*(v22 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
    {
      v67 = ~v65;
      v68 = *(v22 + 48);
      while (1)
      {
        v69 = v68 + 24 * v66;
        if (!*(v69 + 16))
        {
          v70 = *v69 == v61 && *(v69 + 8) == v62;
          if (v70 || (sub_262A2A878() & 1) != 0)
          {
            break;
          }
        }

        v66 = (v66 + 1) & v67;
        if (((*(v22 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      a2 = v246;
      goto LABEL_83;
    }

LABEL_61:
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v256 = v22;
    v72 = *(v22 + 16);
    if (*(v22 + 24) > v72)
    {
      a2 = v246;
      if ((v71 & 1) == 0)
      {
        sub_262A25520();
        v22 = v256;
      }

      goto LABEL_81;
    }

    a2 = v246;
    if (v71)
    {
      sub_262A23FD4(v72 + 1);
    }

    else
    {
      sub_262A26224(v72 + 1);
    }

    v22 = v256;
    v73 = *(v256 + 40);
    sub_262A2A998();
    MEMORY[0x26672F240](0);
    sub_262A2A448();
    v74 = sub_262A2A9D8();
    v75 = -1 << *(v22 + 32);
    v66 = v74 & ~v75;
    if ((*(v22 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
    {
      break;
    }

LABEL_81:
    *(v22 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v66;
    v80 = *(v22 + 48) + 24 * v66;
    *v80 = v61;
    *(v80 + 8) = v62;
    *(v80 + 16) = 0;
    v81 = *(v22 + 16);
    v56 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v56)
    {
      goto LABEL_273;
    }

    *(v22 + 16) = v82;
LABEL_83:
    v37 = v248;
    v21 = v249;
    v35 = v245;
    if (!*(v245 + 16))
    {
LABEL_65:

      if (!*(v37 + 16))
      {
        goto LABEL_66;
      }

      goto LABEL_152;
    }

LABEL_84:
    v83 = *(v35 + 32);

    v85 = *(v22 + 32);
    v86 = ((1 << v85) + 63) >> 6;
    if ((v85 & 0x3Fu) <= 0xD)
    {
      goto LABEL_85;
    }

    swift_bridgeObjectRetain_n();
    if (swift_stdlib_isStackAllocationSafe())
    {
      v84 = swift_bridgeObjectRelease_n();
LABEL_85:
      MEMORY[0x28223BE20](v84);
      v88 = &v234 - ((v87 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v88, v87);
      v89 = 0;
      v90 = 0;
      v91 = 1 << *(v22 + 32);
      if (v91 < 64)
      {
        v92 = ~(-1 << v91);
      }

      else
      {
        v92 = -1;
      }

      v93 = v92 & *(v22 + 56);
      v94 = (v91 + 63) >> 6;
      while (v93)
      {
        v95 = __clz(__rbit64(v93));
        v93 &= v93 - 1;
        v96 = v95 | (v90 << 6);
LABEL_96:
        if (*(*(v22 + 48) + 24 * v96 + 16) != 1)
        {
          *&v88[(v96 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v96;
          v56 = __OFADD__(v89++, 1);
          if (v56)
          {
            goto LABEL_278;
          }
        }
      }

      v97 = v90;
      while (1)
      {
        v90 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_268;
        }

        if (v90 >= v94)
        {
          break;
        }

        v98 = *(v22 + 56 + 8 * v90);
        ++v97;
        if (v98)
        {
          v93 = (v98 - 1) & v98;
          v96 = __clz(__rbit64(v98)) | (v90 << 6);
          goto LABEL_96;
        }
      }

      v22 = sub_262A26738(v88, v86, v89, v22);
      goto LABEL_101;
    }

    v61 = swift_slowAlloc();

    v152 = v234;
    v153 = sub_262A1248C(v61, v86, v22, sub_262A09FA0);
    v234 = v152;
    if (v152)
    {
      goto LABEL_283;
    }

    v154 = v153;
    swift_bridgeObjectRelease_n();
    MEMORY[0x26672F820](v61, -1, -1);
    v22 = v154;
LABEL_101:
    v99 = 0xEA00000000003739;
    v100 = 0xEA00000000003735;
    v101 = 0x3032383934393431;
    if (v83 != 6)
    {
      v101 = 0x3930393836383531;
      v100 = 0xEA00000000003638;
    }

    v102 = 0xEA00000000003836;
    if (v83 != 4)
    {
      v102 = 0xEA00000000003736;
    }

    if (v83 <= 5)
    {
      v101 = 0x3932343038373431;
      v100 = v102;
    }

    v103 = 0xEA00000000003636;
    if (v83 != 2)
    {
      v103 = 0xEA00000000003037;
    }

    v104 = 0x3931333738353531;
    if (v83)
    {
      v104 = 0x3932343038373431;
      v99 = 0xEA00000000003936;
    }

    if (v83 <= 1)
    {
      v105 = v104;
    }

    else
    {
      v105 = 0x3932343038373431;
    }

    if (v83 > 1)
    {
      v99 = v103;
    }

    v106 = v83 <= 3;
    if (v83 <= 3)
    {
      v107 = v105;
    }

    else
    {
      v107 = v101;
    }

    if (v106)
    {
      v108 = v99;
    }

    else
    {
      v108 = v100;
    }

    v109 = *(v22 + 40);
    sub_262A2A998();
    MEMORY[0x26672F240](1);
    sub_262A2A448();
    v110 = sub_262A2A9D8();
    v111 = -1 << *(v22 + 32);
    v61 = v110 & ~v111;
    if ((*(v22 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
    {
      v112 = ~v111;
      v113 = *(v22 + 48);
      while (1)
      {
        v114 = v113 + 24 * v61;
        if (*(v114 + 16) == 1)
        {
          v115 = *v114 == v107 && *(v114 + 8) == v108;
          if (v115 || (sub_262A2A878() & 1) != 0)
          {
            break;
          }
        }

        v61 = (v61 + 1) & v112;
        if (((*(v22 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
        {
          goto LABEL_132;
        }
      }

      a2 = v246;
    }

    else
    {
LABEL_132:
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v256 = v22;
      v117 = *(v22 + 16);
      if (*(v22 + 24) <= v117)
      {
        a2 = v246;
        if (v116)
        {
          sub_262A23FD4(v117 + 1);
        }

        else
        {
          sub_262A26224(v117 + 1);
        }

        v22 = v256;
        v118 = *(v256 + 40);
        sub_262A2A998();
        MEMORY[0x26672F240](1);
        sub_262A2A448();
        v119 = sub_262A2A9D8();
        v120 = -1 << *(v22 + 32);
        v61 = v119 & ~v120;
        if ((*(v22 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
        {
          v121 = ~v120;
          v122 = *(v22 + 48);
          do
          {
            v123 = v122 + 24 * v61;
            if (*(v123 + 16) == 1)
            {
              v124 = *v123 == v107 && *(v123 + 8) == v108;
              if (v124 || (sub_262A2A878() & 1) != 0)
              {
                goto LABEL_281;
              }
            }

            v61 = (v61 + 1) & v121;
          }

          while (((*(v22 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) != 0);
          a2 = v246;
        }
      }

      else
      {
        a2 = v246;
        if ((v116 & 1) == 0)
        {
          sub_262A25520();
          v22 = v256;
        }
      }

      *(v22 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v61;
      v125 = *(v22 + 48) + 24 * v61;
      *v125 = v107;
      *(v125 + 8) = v108;
      *(v125 + 16) = 1;
      v126 = *(v22 + 16);
      v56 = __OFADD__(v126, 1);
      v127 = v126 + 1;
      if (v56)
      {
        goto LABEL_274;
      }

      *(v22 + 16) = v127;
    }

    v37 = v248;
    v21 = v249;
    if (!*(v248 + 16))
    {
LABEL_66:

      goto LABEL_213;
    }

LABEL_152:
    v128 = *(v37 + 32);

    v130 = *(v22 + 32);
    v131 = ((1 << v130) + 63) >> 6;
    if ((v130 & 0x3Fu) <= 0xD)
    {
      goto LABEL_153;
    }

    swift_bridgeObjectRetain_n();
    if (swift_stdlib_isStackAllocationSafe())
    {
      v129 = swift_bridgeObjectRelease_n();
LABEL_153:
      MEMORY[0x28223BE20](v129);
      v133 = &v234 - ((v132 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v133, v132);
      v134 = 0;
      v135 = 0;
      v136 = 1 << *(v22 + 32);
      if (v136 < 64)
      {
        v137 = ~(-1 << v136);
      }

      else
      {
        v137 = -1;
      }

      v138 = v137 & *(v22 + 56);
      v139 = (v136 + 63) >> 6;
      while (v138)
      {
        v140 = __clz(__rbit64(v138));
        v138 &= v138 - 1;
        v141 = v140 | (v135 << 6);
LABEL_164:
        if (*(*(v22 + 48) + 24 * v141 + 16) != 3)
        {
          *&v133[(v141 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v141;
          v56 = __OFADD__(v134++, 1);
          if (v56)
          {
            goto LABEL_279;
          }
        }
      }

      v142 = v135;
      while (1)
      {
        v135 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          goto LABEL_269;
        }

        if (v135 >= v139)
        {
          break;
        }

        v143 = *(v22 + 56 + 8 * v135);
        ++v142;
        if (v143)
        {
          v138 = (v143 - 1) & v143;
          v141 = __clz(__rbit64(v143)) | (v135 << 6);
          goto LABEL_164;
        }
      }

      v22 = sub_262A26738(v133, v131, v134, v22);
      if (v128 > 4)
      {
        goto LABEL_188;
      }

      goto LABEL_169;
    }

    v61 = swift_slowAlloc();

    v155 = v234;
    v156 = sub_262A1248C(v61, v131, v22, sub_262A09FB0);
    v234 = v155;
    if (v155)
    {
      goto LABEL_283;
    }

    v157 = v156;
    swift_bridgeObjectRelease_n();
    MEMORY[0x26672F820](v61, -1, -1);
    v22 = v157;
    if (v128 > 4)
    {
LABEL_188:
      v144 = 12337;
      if (v128 != 8)
      {
        v144 = 12593;
      }

      v145 = 0xE200000000000000;
      if (v128 == 7)
      {
        v144 = 57;
        v145 = 0xE100000000000000;
      }

      v146 = 55;
      if (v128 != 5)
      {
        v146 = 56;
      }

      v147 = v128 <= 6;
      goto LABEL_195;
    }

LABEL_169:
    v144 = 53;
    if (v128 != 3)
    {
      v144 = 54;
    }

    v145 = 0xE100000000000000;
    if (v128 == 2)
    {
      v144 = 52;
      v145 = 0xE100000000000000;
    }

    v146 = 50;
    if (v128)
    {
      v146 = 51;
    }

    v147 = v128 <= 1;
LABEL_195:
    if (v147)
    {
      v158 = v146;
    }

    else
    {
      v158 = v144;
    }

    if (v147)
    {
      v159 = 0xE100000000000000;
    }

    else
    {
      v159 = v145;
    }

    v160 = *(v22 + 40);
    sub_262A2A998();
    MEMORY[0x26672F240](3);
    sub_262A2A448();
    v161 = sub_262A2A9D8();
    v162 = -1 << *(v22 + 32);
    v163 = v161 & ~v162;
    if ((*(v22 + 56 + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163))
    {
      v164 = ~v162;
      v165 = *(v22 + 48);
      while (1)
      {
        v166 = v165 + 24 * v163;
        if (*(v166 + 16) >= 3u)
        {
          v167 = *v166 == v158 && *(v166 + 8) == v159;
          if (v167 || (sub_262A2A878() & 1) != 0)
          {
            break;
          }
        }

        v163 = (v163 + 1) & v164;
        if (((*(v22 + 56 + ((v163 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v163) & 1) == 0)
        {
          goto LABEL_211;
        }
      }
    }

    else
    {
LABEL_211:
      v168 = swift_isUniquelyReferenced_nonNull_native();
      v257 = v22;
      sub_262A24DB8(v158, v159, 3u, v163, v168);
      v22 = v257;
    }

    a2 = v246;
    v21 = v249;
LABEL_213:
    if (*(v247 + 16))
    {
      v169 = *(v247 + 32);

      v171 = *(v22 + 32);
      v172 = ((1 << v171) + 63) >> 6;
      if ((v171 & 0x3Fu) > 0xD)
      {
        swift_bridgeObjectRetain_n();
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v61 = swift_slowAlloc();

          v196 = v234;
          v197 = sub_262A1248C(v61, v172, v22, sub_262A09FC0);
          v234 = v196;
          if (v196)
          {
LABEL_283:
            MEMORY[0x26672F6A0](v234);
            goto LABEL_284;
          }

          v198 = v197;
          swift_bridgeObjectRelease_n();
          MEMORY[0x26672F820](v61, -1, -1);
          v22 = v198;
          goto LABEL_231;
        }

        v170 = swift_bridgeObjectRelease_n();
      }

      MEMORY[0x28223BE20](v170);
      v174 = &v234 - ((v173 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v174, v173);
      v175 = 0;
      v176 = 0;
      v177 = 1 << *(v22 + 32);
      if (v177 < 64)
      {
        v178 = ~(-1 << v177);
      }

      else
      {
        v178 = -1;
      }

      v179 = v178 & *(v22 + 56);
      v180 = (v177 + 63) >> 6;
      while (v179)
      {
        v181 = __clz(__rbit64(v179));
        v179 &= v179 - 1;
        v182 = v181 | (v176 << 6);
LABEL_226:
        if (*(*(v22 + 48) + 24 * v182 + 16) != 2)
        {
          *&v174[(v182 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v182;
          v56 = __OFADD__(v175++, 1);
          if (v56)
          {
            goto LABEL_280;
          }
        }
      }

      v183 = v176;
      while (1)
      {
        v176 = v183 + 1;
        if (__OFADD__(v183, 1))
        {
          goto LABEL_270;
        }

        if (v176 >= v180)
        {
          break;
        }

        v184 = *(v22 + 56 + 8 * v176);
        ++v183;
        if (v184)
        {
          v179 = (v184 - 1) & v184;
          v182 = __clz(__rbit64(v184)) | (v176 << 6);
          goto LABEL_226;
        }
      }

      v22 = sub_262A26738(v174, v172, v175, v22);
LABEL_231:
      if (v169)
      {
        v185 = 52;
      }

      else
      {
        v185 = 53;
      }

      v186 = *(v22 + 40);
      sub_262A2A998();
      MEMORY[0x26672F240](2);
      sub_262A2A448();
      v187 = sub_262A2A9D8();
      v188 = -1 << *(v22 + 32);
      v189 = v187 & ~v188;
      if ((*(v22 + 56 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189))
      {
        v190 = ~v188;
        v191 = *(v22 + 48);
        while (1)
        {
          v192 = v191 + 24 * v189;
          if (*(v192 + 16) == 2)
          {
            v193 = *v192 == v185 && *(v192 + 8) == 0xE100000000000000;
            if (v193 || (sub_262A2A878() & 1) != 0)
            {
              break;
            }
          }

          v189 = (v189 + 1) & v190;
          if (((*(v22 + 56 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189) & 1) == 0)
          {
            goto LABEL_244;
          }
        }
      }

      else
      {
LABEL_244:
        v194 = swift_isUniquelyReferenced_nonNull_native();
        v257 = v22;
        sub_262A24DB8(v185, 0xE100000000000000, 2u, v189, v194);
        v22 = v257;
      }

      v21 = v249;
      goto LABEL_247;
    }

LABEL_247:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_2629A9244(0, *(v21 + 2) + 1, 1, v21);
    }

    v58 = *(v21 + 2);
    v195 = *(v21 + 3);
    v59 = v58 + 1;
    if (v58 >= v195 >> 1)
    {
      v21 = sub_2629A9244((v195 > 1), v58 + 1, 1, v21);
    }

LABEL_15:
    ++v20;
    *(v21 + 2) = v59;
    v23 = &v21[32 * v58];
    v24 = v253;
    *(v23 + 4) = v254;
    *(v23 + 5) = v22;
    *(v23 + 6) = v24;
    *(v23 + 7) = v29;
    if (v20 == v251)
    {
      v199 = v21;

      goto LABEL_257;
    }
  }

  v76 = ~v75;
  v77 = *(v22 + 48);
  while (1)
  {
    v78 = v77 + 24 * v66;
    if (!*(v78 + 16))
    {
      v79 = *v78 == v61 && *(v78 + 8) == v62;
      if (v79 || (sub_262A2A878() & 1) != 0)
      {
        break;
      }
    }

    v66 = (v66 + 1) & v76;
    if (((*(v22 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
    {
      a2 = v246;
      goto LABEL_81;
    }
  }

LABEL_281:
  sub_262A2A928();
  __break(1u);
LABEL_282:
  MEMORY[0x26672F6A0](*(v151 - 32));
LABEL_284:
  swift_bridgeObjectRelease_n();
  MEMORY[0x26672F820](v61, -1, -1);
  __break(1u);
LABEL_285:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

void sub_262A09FD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v276 = a5;
  v287 = a4;
  v280 = a2;
  v239 = sub_262A2A1F8();
  v238 = *(v239 - 8);
  v7 = *(v238 + 64);
  MEMORY[0x28223BE20](v239);
  v240 = &v233 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC18, &qword_262A30B98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v233 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v245 = &v233 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v244 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v243 = &v233 - v21;
  v288 = sub_262A2A018();
  v282 = *(v288 - 8);
  v22 = *(v282 + 64);
  v23 = MEMORY[0x28223BE20](v288);
  v270 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v269 = &v233 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v268 = &v233 - v28;
  MEMORY[0x28223BE20](v27);
  v265 = &v233 - v29;
  v267 = type metadata accessor for PlanDataSetEvent();
  v275 = *(v267 - 1);
  v30 = *(v275 + 64);
  v31 = MEMORY[0x28223BE20](v267);
  v266 = (&v233 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v262 = &v233 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v261 = (&v233 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v260 = &v233 - v38;
  MEMORY[0x28223BE20](v37);
  v259 = (&v233 - v39);
  v274 = type metadata accessor for SIDPersonalizedPlanRequest();
  v273 = *(v274 - 8);
  v40 = *(v273 + 64);
  MEMORY[0x28223BE20](v274);
  v272 = &v233 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC20, &qword_262A30BA0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v242 = &v233 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v241 = &v233 - v46;
  MEMORY[0x28223BE20](v45);
  v271 = &v233 - v47;
  v285 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v281 = *(v285 - 8);
  v48 = *(v281 + 64);
  MEMORY[0x28223BE20](v285);
  v286 = &v233 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SIDWorkoutPlanType();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v54 = &v233 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  v56 = *(*(PlanScaffold - 8) + 64);
  MEMORY[0x28223BE20](PlanScaffold);
  v58 = &v233 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for FitnessPlanUser();
  v284 = a3;
  if ((*(a3 + v283[6] + 8) & 1) == 0)
  {

    sub_2629EA8C8(0xD00000000000003DLL, 0x8000000262A33630);
    return;
  }

  v234 = v13;
  v235 = v10;
  v236 = v9;
  v237 = a1;
  v293 = 0;
  v294 = 0xE000000000000000;
  sub_262A2A6F8();

  v293 = 0xD00000000000001ELL;
  v294 = 0x8000000262A33670;
  v59 = v276;
  sub_262A15BAC(v276, v58, type metadata accessor for SIDMetricCreatePlanScaffold);
  v60 = sub_262A2A418();
  MEMORY[0x26672ECF0](v60);

  sub_2629EA8C8(v293, v294);

  v61 = *v287;
  v62 = *(*v287 + 16);
  v63 = MEMORY[0x277D84F90];
  if (!v62)
  {
LABEL_68:
    (*(v238 + 104))(v240, *MEMORY[0x277D4D3D0], v239);
    v189 = v63[2];
    if (v189)
    {
      v293 = MEMORY[0x277D84F90];

      sub_2629CD880(0, v189, 0);
      v190 = v293;
      v191 = (*(v275 + 80) + 32) & ~*(v275 + 80);
      v264 = v63;
      v192 = v63 + v191;
      v265 = *(v275 + 72);
      do
      {
        v281 = v189;
        v282 = v190;
        v193 = v266;
        sub_262A15BAC(v192, v266, type metadata accessor for PlanDataSetEvent);
        v194 = v267;
        v195 = v267[15];
        v273 = v267[14];
        v196 = *(v193 + v195);
        v197 = v193[1];
        v280 = *v193;
        v198 = v193[3];
        v279 = v193[2];
        v199 = v193[5];
        v278 = v193[4];
        v200 = v193[7];
        v277 = v193[6];
        v201 = v193[9];
        v276 = v193[8];
        v202 = v193[11];
        v275 = v193[10];
        v203 = v193[13];
        v274 = v193[12];
        v288 = v196;

        v287 = v197;

        v286 = v198;

        v285 = v199;

        v284 = v200;

        v283 = v201;
        v204 = v202;

        v273 = sub_262A29FE8();
        v272 = v205;
        v206 = v193[15];
        v271 = v193[14];
        v207 = v193[16];
        v208 = v194[13];

        v209 = sub_262A29FE8();
        v190 = v282;
        v270 = v209;
        v269 = v210;
        v211 = v194[17];
        v212 = (v193 + v194[16]);
        v213 = v212[1];
        v268 = *v212;
        v214 = *(v193 + v211);

        sub_262A15C14(v193, type metadata accessor for PlanDataSetEvent);
        v293 = v190;
        v216 = *(v190 + 16);
        v215 = *(v190 + 24);
        if (v216 >= v215 >> 1)
        {
          sub_2629CD880((v215 > 1), v216 + 1, 1);
          v190 = v293;
        }

        v217 = (v190 + 200 * v216);
        v218 = v280;
        v217[4] = v288;
        v217[5] = v218;
        v219 = v279;
        v217[6] = v287;
        v217[7] = v219;
        v220 = v278;
        v217[8] = v286;
        v217[9] = v220;
        v221 = v277;
        v217[10] = v285;
        v217[11] = v221;
        v222 = v276;
        v217[12] = v284;
        v217[13] = v222;
        v223 = v275;
        v217[14] = v283;
        v217[15] = v223;
        v224 = v274;
        v217[16] = v204;
        v217[17] = v224;
        v225 = v273;
        v217[18] = v203;
        v217[19] = v225;
        v226 = v271;
        v217[20] = v272;
        v217[21] = v226;
        v217[22] = v206;
        v217[23] = v207;
        v227 = v269;
        v217[24] = v270;
        v217[25] = v227;
        v217[26] = v268;
        v217[27] = v213;
        v217[28] = v214;
        *(v190 + 16) = v216 + 1;
        v192 += v265;
        v189 = v281 - 1;
      }

      while (v281 != 1);
      v63 = v264;
    }

    sub_262A100C8();
    v228 = v234;
    sub_262A2A258();
    v293 = 0;
    v294 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A33690);
    v229 = v236;
    sub_262A2A738();
    sub_2629EA8C8(v293, v294);

    sub_262A2A1E8();
    sub_262A2A1C8();
    sub_262A2A198();

    (*(v235 + 8))(v228, v229);
    v293 = 0;
    v294 = 0xE000000000000000;
    sub_262A2A6F8();

    v293 = 0x4574655361746164;
    v294 = 0xEF203A73746E6576;
    v230 = MEMORY[0x26672EDD0](v63, v267);
    v232 = v231;

    MEMORY[0x26672ECF0](v230, v232);

    sub_2629EA8C8(v293, v294);

    return;
  }

  v258 = PlanScaffold;
  v64 = v61 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v65 = *(v51 + 72);
  v66 = (v281 + 48);
  v287 = (v282 + 16);
  v257 = (v282 + 56);
  v256 = v40 + 7;
  v233 = 0x8000000262A31CA0;
  v252 = (v282 + 32);
  v68 = v285;
  v67 = v286;
  v255 = v54;
  v254 = v65;
  v253 = (v281 + 48);
  while (1)
  {
    sub_262A15BAC(v64, v54, type metadata accessor for SIDWorkoutPlanType);
    if ((*v66)(v54, 1, v68) == 1)
    {
      goto LABEL_5;
    }

    sub_262A15C74(v54, v67, type metadata accessor for SIDPersonalizedWorkoutPlan);
    if (!*(v67 + 64))
    {
      break;
    }

    if (*(v67 + 64) != 1)
    {
      v281 = v64;
      v282 = v62;
      v264 = v63;
      v277 = *(v67 + 40);
      v69 = v258;
      v278 = swift_allocBox();
      v71 = v70;
      v250 = sub_2629AC344(MEMORY[0x277D84F90]);
      v72 = *(v67 + 32);

      v249 = sub_262A26C70(v73);

      v251 = *(v68 + 32);
      v279 = *v287;
      v74 = v245;
      v75 = v288;
      (v279)(v245, v67 + v251, v288);
      v76 = *v257;
      (*v257)(v74, 0, 1, v75);
      v293 = *(v67 + 72);
      v77 = SIDWorkoutPlanSchedule.metricScaffold.getter();
      v248 = sub_2629E6220(v77);

      v78 = *(v67 + 56);
      v79 = v69[12];
      v76(v71 + v79, 1, 1, v75);
      v80 = v71 + v69[13];
      *v80 = 0;
      *(v80 + 8) = 1;
      v81 = v69[14];
      v76(v71 + v81, 1, 1, v75);
      *v71 = v250;
      *(v71 + 8) = 0;
      v82 = v249;
      *(v71 + 16) = 0;
      *(v71 + 24) = v82;

      sub_2629BEB44(v74, v71 + v79);
      *(v71 + 32) = 0;
      *(v71 + v69[15]) = v248;
      *(v71 + 40) = 0;
      *(v71 + 48) = 0;
      *(v71 + v69[16]) = v277;
      *(v71 + 49) = 2;
      *(v71 + 56) = v78;
      sub_2629ADF2C(v71 + v81, &unk_27FF3CD10, &qword_262A2D5B0);
      v76(v71 + v81, 1, 1, v75);
      sub_2629ADF2C(v74, &unk_27FF3CD10, &qword_262A2D5B0);
      *(v71 + v69[17]) = MEMORY[0x277D84F90];
      *v80 = 0;
      *(v80 + 8) = 1;
      v84 = v283;
      v83 = v284;
      v85 = *(v284 + v283[9]);
      v249 = v85;
      swift_beginAccess();
      v86 = v71 + v69[13];
      *v86 = v85;
      *(v86 + 8) = 0;
      v87 = v69[14];
      sub_2629ADF2C(v71 + v87, &unk_27FF3CD10, &qword_262A2D5B0);
      v250 = *(v285 + 36);
      (v279)(v71 + v87, &v286[v250], v75);
      v76(v71 + v87, 0, 1, v75);
      v88 = v263;
      v89 = *(v83 + v84[8]);
      v90 = v69[17];
      v91 = *(v71 + v90);
      *(v71 + v90) = v89;
      v277 = v89;

      v92 = sub_262A2A588();
      v93 = v242;
      (*(*(v92 - 8) + 56))(v242, 1, 1, v92);
      v94 = v280;
      v95 = v272;
      sub_262A15BAC(v280, v272, type metadata accessor for SIDPersonalizedPlanRequest);
      v96 = (*(v273 + 80) + 32) & ~*(v273 + 80);
      v97 = (v256 + v96) & 0xFFFFFFFFFFFFFFF8;
      v98 = swift_allocObject();
      *(v98 + 16) = 0;
      *(v98 + 24) = 0;
      sub_262A15C74(v95, v98 + v96, type metadata accessor for SIDPersonalizedPlanRequest);
      *(v98 + v97) = v278;

      sub_262A0C2E8(0, 0, v93, &unk_262A30BB0, v98);

      v99 = v274;
      v100 = v94 + *(v274 + 20);
      v101 = (v100 + *(type metadata accessor for SIDPersonalizedPlanDataProvider() + 24));
      v102 = v101[1];
      v248 = *v101;
      v293 = v249;

      v249 = sub_262A2A868();
      v247 = v103;
      v104 = v88 + *(type metadata accessor for ResultPostProcessor() + 24);
      v67 = v286;
      v105 = *(v104 + 16);
      v246 = *(v104 + 8);
      v106 = v288;
      v107 = v279;
      (v279)(v269, &v286[v251], v288);
      v107(v270, v67 + v250, v106);
      v108 = *(v94 + *(v99 + 32));
      if (v108 <= 1)
      {
        v109 = v244;
        if (!v108)
        {
          v279 = 0xD000000000000011;
          v139 = v233;
          goto LABEL_49;
        }

        v251 = 0xE700000000000000;
        v139 = 0x6E65704F707061;
        v172 = &v296;
      }

      else
      {
        v109 = v244;
        if (v108 != 2)
        {
          v63 = v264;
          v54 = v255;
          if (v108 == 3)
          {
            v279 = 0x44676F6C61746163;
            v173 = 0xEE00646574656C65;
          }

          else
          {
            v279 = 0x616470556E616C70;
            v173 = 0xEB00000000646574;
          }

          v251 = v173;
LABEL_53:
          sub_2629ADF8C(v284 + v283[7], v109, &qword_27FF3C948, &unk_262A30B40);
          v174 = type metadata accessor for SIDUserOnboardingData();
          if ((*(*(v174 - 8) + 48))(v109, 1, v174) == 1)
          {

            sub_2629ADF2C(v109, &qword_27FF3C948, &unk_262A30B40);
            v175 = MEMORY[0x277D84FA0];
            v176 = *(MEMORY[0x277D84FA0] + 16);
            if (v176)
            {
LABEL_55:
              v177 = sub_2629A9C54(v176, 0);
              v178 = sub_262A13538(&v293, v177 + 4, v176, v175);
              sub_2629ADE08();
              if (v178 != v176)
              {
                goto LABEL_75;
              }

LABEL_59:
              v179 = v261;
              *v261 = v248;
              v179[1] = v102;
              v180 = v247;
              v179[2] = v249;
              v179[3] = v180;
              v179[4] = v246;
              v179[5] = v105;
              v179[6] = 1819047278;
              v179[7] = 0xE400000000000000;
              v179[8] = 1819047278;
              v179[9] = 0xE400000000000000;
              v179[10] = 1851878512;
              v179[11] = 0xE400000000000000;
              v179[12] = 0x74655361746164;
              v179[13] = 0xE700000000000000;
              v179[14] = 1868785010;
              v179[15] = 0xE400000000000000;
              v179[16] = &unk_287533810;
              v181 = v267;
              v182 = *v252;
              v183 = v288;
              (*v252)(v179 + v267[13], v269, v288);
              v182(v179 + v181[14], v270, v183);
              *(v179 + v181[15]) = v277;
              v184 = (v179 + v181[16]);
              v185 = v251;
              *v184 = v279;
              v184[1] = v185;
              *(v179 + v181[17]) = v177;
              sub_262A15BAC(v179, v262, type metadata accessor for PlanDataSetEvent);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v59 = v276;
              v68 = v285;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v63 = sub_2629A8FE4(0, v63[2] + 1, 1, v63);
              }

              v62 = v282;
              v65 = v254;
              v188 = v63[2];
              v187 = v63[3];
              if (v188 >= v187 >> 1)
              {
                v63 = sub_2629A8FE4(v187 > 1, v188 + 1, 1, v63);
              }

              sub_262A15C14(v261, type metadata accessor for PlanDataSetEvent);
              v63[2] = v188 + 1;
              sub_262A15C74(v262, v63 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v188, type metadata accessor for PlanDataSetEvent);
              sub_262A15C14(v67, type metadata accessor for SIDPersonalizedWorkoutPlan);
LABEL_64:

              v64 = v281;
              v66 = v253;
              goto LABEL_5;
            }
          }

          else
          {
            v175 = *(v109 + *(v174 + 20));

            sub_262A15C14(v109, type metadata accessor for SIDUserOnboardingData);
            v176 = *(v175 + 16);
            if (v176)
            {
              goto LABEL_55;
            }
          }

          v177 = MEMORY[0x277D84F90];
          goto LABEL_59;
        }

        v279 = 0x6F54736472617761;
        v139 = 0xEB00000000747361;
LABEL_49:
        v172 = &v283;
      }

      *(v172 - 32) = v139;
      v63 = v264;
      v54 = v255;
      goto LABEL_53;
    }

    sub_262A15C14(v67, type metadata accessor for SIDPersonalizedWorkoutPlan);
LABEL_5:
    v64 += v65;
    if (!--v62)
    {
      goto LABEL_68;
    }
  }

  v264 = v63;
  v281 = v64;
  v282 = v62;
  v110 = v258;
  v111 = swift_allocBox();
  v113 = v112;
  sub_262A15BAC(v59, v112, type metadata accessor for SIDMetricCreatePlanScaffold);
  v115 = v283;
  v114 = v284;
  v116 = *(v284 + v283[9]);
  swift_beginAccess();
  v117 = v113 + v110[13];
  v277 = v116;
  *v117 = v116;
  *(v117 + 8) = 0;
  v118 = v110[14];
  sub_2629ADF2C(v113 + v118, &unk_27FF3CD10, &qword_262A2D5B0);
  v119 = *(v68 + 36);
  v120 = *v287;
  v278 = v119;
  v121 = v288;
  v120(v113 + v118, v67 + v119, v288);
  (*v257)(v113 + v118, 0, 1, v121);
  v122 = *(v114 + v115[8]);
  v123 = v110[17];
  v124 = *(v113 + v123);
  *(v113 + v123) = v122;
  v279 = v122;

  v125 = sub_262A2A588();
  v126 = *(v125 - 8);
  v127 = v271;
  (*(v126 + 56))(v271, 1, 1, v125);
  v128 = v272;
  sub_262A15BAC(v280, v272, type metadata accessor for SIDPersonalizedPlanRequest);
  v129 = (*(v273 + 80) + 32) & ~*(v273 + 80);
  v130 = (v256 + v129) & 0xFFFFFFFFFFFFFFF8;
  v131 = swift_allocObject();
  *(v131 + 16) = 0;
  *(v131 + 24) = 0;
  sub_262A15C74(v128, v131 + v129, type metadata accessor for SIDPersonalizedPlanRequest);
  *(v131 + v130) = v111;
  v132 = v241;
  sub_2629ADF8C(v127, v241, &qword_27FF3CC20, &qword_262A30BA0);
  LODWORD(v129) = (*(v126 + 48))(v132, 1, v125);
  v247 = v111;

  if (v129 == 1)
  {
    sub_2629ADF2C(v132, &qword_27FF3CC20, &qword_262A30BA0);
  }

  else
  {
    sub_262A2A578();
    (*(v126 + 8))(v132, v125);
  }

  v133 = v243;
  v134 = *(v131 + 16);
  v135 = *(v131 + 24);
  swift_unknownObjectRetain();

  v63 = v264;
  if (v134)
  {
    swift_getObjectType();
    v136 = sub_262A2A568();
    v138 = v137;
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0;
    v138 = 0;
  }

  sub_2629ADF2C(v271, &qword_27FF3CC20, &qword_262A30BA0);
  v140 = swift_allocObject();
  *(v140 + 16) = &unk_262A30BC0;
  *(v140 + 24) = v131;
  if (v138 | v136)
  {
    v289 = 0;
    v290 = 0;
    v291 = v136;
    v292 = v138;
  }

  swift_task_create();

  v141 = v274;
  v142 = v280;
  v143 = v280 + *(v274 + 20);
  v144 = (v143 + *(type metadata accessor for SIDPersonalizedPlanDataProvider() + 24));
  v145 = v144[1];
  v251 = *v144;
  v293 = v277;

  v277 = sub_262A2A868();
  v250 = v146;
  v147 = v263 + *(type metadata accessor for ResultPostProcessor() + 24);
  v148 = *(v147 + 16);
  v249 = *(v147 + 8);
  v149 = v286;
  v150 = v288;
  v120(v265, &v286[*(v285 + 32)], v288);
  v120(v268, &v149[v278], v150);
  v151 = *(v142 + *(v141 + 32));
  if (v151 <= 1)
  {
    v54 = v255;
    if (!*(v142 + *(v141 + 32)))
    {
      v278 = 0xD000000000000011;
      v152 = v233;
      goto LABEL_33;
    }

    v248 = 0xE700000000000000;
    v152 = 0x6E65704F707061;
    v154 = &v295;
  }

  else
  {
    v54 = v255;
    if (v151 == 2)
    {
      v278 = 0x6F54736472617761;
      v153 = 7631713;
    }

    else
    {
      if (v151 == 3)
      {
        v278 = 0x44676F6C61746163;
        v152 = 0xEE00646574656C65;
        goto LABEL_33;
      }

      v278 = 0x616470556E616C70;
      v153 = 6579572;
    }

    v152 = v153 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_33:
    v154 = &v280;
  }

  *(v154 - 32) = v152;
  sub_2629ADF8C(v284 + v283[7], v133, &qword_27FF3C948, &unk_262A30B40);
  v155 = type metadata accessor for SIDUserOnboardingData();
  if ((*(*(v155 - 8) + 48))(v133, 1, v155) == 1)
  {

    sub_2629ADF2C(v133, &qword_27FF3C948, &unk_262A30B40);
    v156 = MEMORY[0x277D84FA0];
    v157 = *(MEMORY[0x277D84FA0] + 16);
    if (v157)
    {
      goto LABEL_36;
    }

LABEL_41:

    v158 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v156 = *(v133 + *(v155 + 20));

  sub_262A15C14(v133, type metadata accessor for SIDUserOnboardingData);
  v157 = *(v156 + 16);
  if (!v157)
  {
    goto LABEL_41;
  }

LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BED8, &qword_262A2B380);
  v158 = swift_allocObject();
  v159 = _swift_stdlib_malloc_size(v158);
  v160 = v159 - 32;
  if (v159 < 32)
  {
    v160 = v159 - 17;
  }

  v158[2] = v157;
  v158[3] = 2 * (v160 >> 4);
  v161 = sub_262A13538(&v293, v158 + 4, v157, v156);
  sub_2629ADE08();
  if (v161 == v157)
  {
LABEL_42:
    v162 = v259;
    *v259 = v251;
    v162[1] = v145;
    v163 = v250;
    v162[2] = v277;
    v162[3] = v163;
    v162[4] = v249;
    v162[5] = v148;
    v162[6] = 1819047278;
    v162[7] = 0xE400000000000000;
    v162[8] = 1819047278;
    v162[9] = 0xE400000000000000;
    v162[10] = 1851878512;
    v162[11] = 0xE400000000000000;
    v162[12] = 0x74655361746164;
    v162[13] = 0xE700000000000000;
    v162[14] = 1868785010;
    v162[15] = 0xE400000000000000;
    v162[16] = &unk_2875337D0;
    v164 = v267;
    v165 = *v252;
    v166 = v288;
    (*v252)(v162 + v267[13], v265, v288);
    v165(v162 + v164[14], v268, v166);
    *(v162 + v164[15]) = v279;
    v167 = (v162 + v164[16]);
    v168 = v248;
    *v167 = v278;
    v167[1] = v168;
    *(v162 + v164[17]) = v158;
    sub_262A15BAC(v162, v260, type metadata accessor for PlanDataSetEvent);
    v169 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v276;
    v68 = v285;
    if ((v169 & 1) == 0)
    {
      v63 = sub_2629A8FE4(0, v63[2] + 1, 1, v63);
    }

    v67 = v286;
    v62 = v282;
    v65 = v254;
    v171 = v63[2];
    v170 = v63[3];
    if (v171 >= v170 >> 1)
    {
      v63 = sub_2629A8FE4(v170 > 1, v171 + 1, 1, v63);
    }

    sub_262A15C14(v259, type metadata accessor for PlanDataSetEvent);
    v63[2] = v171 + 1;
    sub_262A15C74(v260, v63 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v171, type metadata accessor for PlanDataSetEvent);
    sub_262A15C14(v67, type metadata accessor for SIDPersonalizedWorkoutPlan);
    goto LABEL_64;
  }

  __break(1u);
LABEL_75:
  __break(1u);
}

uint64_t sub_262A0C0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(type metadata accessor for SIDMetricCreatePlanScaffold() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_262A0C190, 0, 0);
}

uint64_t sub_262A0C190()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v3 + *(type metadata accessor for SIDPersonalizedPlanRequest() + 20);
  v5 = (v4 + *(type metadata accessor for SIDPersonalizedPlanDataProvider() + 64));
  v7 = *v5;
  v6 = v5[1];
  swift_beginAccess();
  sub_262A15BAC(v2, v1, type metadata accessor for SIDMetricCreatePlanScaffold);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_262A15D70;
  v10 = v0[6];

  return v12(v10);
}

uint64_t sub_262A0C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC20, &qword_262A30BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2629ADF8C(a3, v27 - v11, &qword_27FF3CC20, &qword_262A30BA0);
  v13 = sub_262A2A588();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2629ADF2C(v12, &qword_27FF3CC20, &qword_262A30BA0);
  }

  else
  {
    sub_262A2A578();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_262A2A568();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_262A2A428() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2629ADF2C(a3, &qword_27FF3CC20, &qword_262A30BA0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2629ADF2C(a3, &qword_27FF3CC20, &qword_262A30BA0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_262A0C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(type metadata accessor for SIDMetricCreatePlanScaffold() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_262A0C688, 0, 0);
}

uint64_t sub_262A0C688()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v3 + *(type metadata accessor for SIDPersonalizedPlanRequest() + 20);
  v5 = (v4 + *(type metadata accessor for SIDPersonalizedPlanDataProvider() + 64));
  v7 = *v5;
  v6 = v5[1];
  swift_beginAccess();
  sub_262A15BAC(v2, v1, type metadata accessor for SIDMetricCreatePlanScaffold);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_262A0C7E0;
  v10 = v0[6];

  return v12(v10);
}

uint64_t sub_262A0C7E0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v5 = *v0;

  sub_262A15C14(v2, type metadata accessor for SIDMetricCreatePlanScaffold);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_262A0C90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v99 = a2;
  v97 = a3;
  v108 = sub_262A29F38();
  *&v104 = *(v108 - 8);
  v4 = *(v104 + 64);
  MEMORY[0x28223BE20](v108);
  v112 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_262A2A108();
  v109 = *(v117 - 8);
  v6 = *(v109 + 64);
  MEMORY[0x28223BE20](v117);
  v120 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v118 = &v94 - v10;
  v111 = sub_262A29FD8();
  v94 = *(v111 - 8);
  v11 = *(v94 + 64);
  v12 = MEMORY[0x28223BE20](v111);
  v119 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v94 - v14;
  v15 = sub_262A2A168();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v116 = (&v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v115 = &v94 - v20;
  v21 = sub_262A2A058();
  v113 = *(v21 - 8);
  v114 = v21;
  v22 = *(v113 + 64);
  MEMORY[0x28223BE20](v21);
  v107 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_262A2A128();
  v95 = *(v96 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v122 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v33 = &v94 - v32;
  v34 = *(a1 + 16);
  if (v34)
  {
    v35 = *(v31 + 72);
    v121 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = a1 + v121;
    v37 = MEMORY[0x277D84F90];
    do
    {
      sub_262A15BAC(v36, v33, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v33[*(v26 + 56)] == 7)
      {
        sub_262A15C14(v33, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      }

      else
      {
        sub_262A15C74(v33, v30, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2629CD8E0(0, v37[2] + 1, 1);
          v37 = v124;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          sub_2629CD8E0(v39 > 1, v40 + 1, 1);
          v37 = v124;
        }

        v37[2] = v40 + 1;
        sub_262A15C74(v30, v37 + v121 + v40 * v35, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      }

      v36 += v35;
      --v34;
    }

    while (v34);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v124 = 0;
  v125 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000019, 0x8000000262A33CB0);
  v123 = v37[2];
  v41 = sub_262A2A868();
  MEMORY[0x26672ECF0](v41);

  MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A33CD0);
  v42 = sub_262A036B8(v99);
  v102 = 0;
  v123 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v43 = sub_262A2A398();
  v45 = v44;

  MEMORY[0x26672ECF0](v43, v45);

  v46 = v101;
  sub_2629EA8C8(v124, v125);

  v48 = v113;
  v47 = v114;
  v49 = v107;
  (*(v113 + 104))(v107, *MEMORY[0x277CC9830], v114);
  sub_262A2A068();
  (*(v48 + 8))(v49, v47);
  sub_262A2A088();
  v50 = v115;
  sub_262A2A038();
  v51 = sub_262A2A048();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_262A2A0D8();
  sub_262A2A148();
  sub_262A2A0F8();
  v52 = v46 + *(type metadata accessor for ResultPostProcessor() + 24);
  result = type metadata accessor for PlanGenerationContext();
  v54 = *(v52 + *(result + 44));
  if ((v54 & 0x8000000000000000) == 0)
  {
    v100 = v37;
    v56 = v110;
    v55 = v111;
    v98 = v54;
    if (!v54)
    {
LABEL_26:
      v124 = 0;
      v125 = 0xE000000000000000;
      sub_262A2A6F8();
      MEMORY[0x26672ECF0](0xD00000000000002DLL, 0x8000000262A33D00);
      v123 = v98;
      v87 = sub_262A2A868();
      MEMORY[0x26672ECF0](v87);

      MEMORY[0x26672ECF0](0xD00000000000001ELL, 0x8000000262A33D30);
      sub_2629EA8C8(v124, v125);

      v88 = v122;
      sub_262A0D6DC(v100, v122, v97);

      return (*(v95 + 8))(v88, v96);
    }

    v57 = 0;
    v58 = *MEMORY[0x277CC9940];
    v115 = (v109 + 104);
    v59 = (v109 + 8);
    v114 = (v94 + 48);
    v106 = (v94 + 32);
    v105 = *MEMORY[0x277CC9960];
    v107 = (v104 + 8);
    v116 = (v94 + 8);
    v113 = -v98;
    v104 = xmmword_262A2EA00;
    LODWORD(v121) = v58;
    v103 = (v109 + 8);
    v60 = (v109 + 104);
    while (1)
    {
      sub_262A29FC8();
      v61 = *v60;
      v62 = v120;
      v63 = v117;
      (*v60)(v120, v58, v117);
      v64 = v118;
      sub_262A2A0C8();
      (*v59)(v62, v63);
      if ((*v114)(v64, 1, v55) == 1)
      {
        (*v116)(v56, v55);
        sub_2629ADF2C(v64, &qword_27FF3C9A8, &qword_262A30A50);
      }

      else
      {
        (*v106)(v119, v64, v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
        v65 = *(v109 + 72);
        v66 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v67 = swift_allocObject();
        *(v67 + 16) = v104;
        v68 = v67 + v66;
        v61(v68, v121, v63);
        v69 = v122;
        v61((v68 + v65), v105, v63);
        sub_262A15860(v67);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v70 = v112;
        sub_262A2A0A8();

        v71 = sub_262A29ED8();
        if (v72 & 1) != 0 || (v73 = v71, v74 = sub_262A29EB8(), (v75))
        {
          (*v107)(v70, v108);
        }

        else
        {
          v78 = MEMORY[0x28223BE20](v74);
          *(&v94 - 4) = v69;
          *(&v94 - 3) = v73;
          *(&v94 - 2) = v78;
          v79 = v100;

          v80 = v102;
          v81 = sub_262A03C5C(sub_262A15CDC, (&v94 - 6), v79);
          v82 = *(v81 + 16);
          v102 = v80;
          if (v82)
          {
            v83 = sub_262A0DA1C(v81, v99);

            v84 = v83;
            v85 = *(v83 + 16);
            v86 = v112;
            if (v85)
            {
              v89 = v84;

              sub_262A0DC40(v89, &v124);

              (*v107)(v86, v108);
              v90 = *v116;
              v91 = v111;
              (*v116)(v119, v111);
              v90(v110, v91);
              v92 = v124;
              v124 = 0;
              v125 = 0xE000000000000000;
              sub_262A2A6F8();
              MEMORY[0x26672ECF0](0xD000000000000031, 0x8000000262A33D50);
              v123 = -v57;
              v93 = sub_262A2A868();
              MEMORY[0x26672ECF0](v93);

              sub_2629EA8C8(v124, v125);

              result = (*(v95 + 8))(v122, v96);
              *v97 = v92;
              return result;
            }

            (*v107)(v86, v108);
          }

          else
          {

            (*v107)(v112, v108);
          }
        }

        v76 = *v116;
        v55 = v111;
        (*v116)(v119, v111);
        v77 = v110;
        v76(v110, v55);
        v56 = v77;
        v59 = v103;
      }

      --v57;
      v58 = v121;
      if (v113 == v57)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_262A0D6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v7 = sub_262A29F38();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v33 = v10;
    v34 = v9;
    v35 = a3;
    v31 = v3;
    v13 = (type metadata accessor for PreprocessedUserHistoryWithMetadata() - 8);
    v32 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
    v14 = sub_262A2A108();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_262A2EA00;
    v19 = v18 + v17;
    v20 = *(v15 + 104);
    v20(v19, *MEMORY[0x277CC9940], v14);
    v20(v19 + v16, *MEMORY[0x277CC9960], v14);
    sub_262A15860(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v21 = a1 + v13[8] + v32;
    sub_262A2A0A8();

    v22 = sub_262A29ED8();
    if (v23 & 1) != 0 || (v24 = v22, v25 = sub_262A29EB8(), (v26))
    {
      v27 = sub_2629AC204(MEMORY[0x277D84F90]);
      result = (*(v33 + 8))(v12, v34);
      *v35 = v27;
    }

    else
    {
      v29 = MEMORY[0x28223BE20](v25);
      *(&v31 - 4) = a2;
      *(&v31 - 3) = v24;
      *(&v31 - 2) = v29;

      v30 = sub_262A03C5C(sub_262A15D54, (&v31 - 6), a1);
      sub_262A0DC40(v30, v35);

      return (*(v33 + 8))(v12, v34);
    }
  }

  else
  {
    result = sub_2629AC204(MEMORY[0x277D84F90]);
    *a3 = result;
  }

  return result;
}

uint64_t sub_262A0DA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v9 + 72);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v20;
  v15 = MEMORY[0x277D84F90];
  do
  {
    sub_262A15BAC(v14, v11, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    if (sub_262A05E9C(v11[*(v4 + 64)], a2))
    {
      sub_262A15C74(v11, v8, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2629CD8E0(0, *(v15 + 16) + 1, 1);
        v15 = v21;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2629CD8E0(v17 > 1, v18 + 1, 1);
        v15 = v21;
      }

      *(v15 + 16) = v18 + 1;
      sub_262A15C74(v8, v15 + v20 + v18 * v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    }

    else
    {
      sub_262A15C14(v11, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    }

    v14 += v13;
    --v12;
  }

  while (v12);
  return v15;
}

uint64_t sub_262A0DC40@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v75 = (&v73 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC50, &qword_262A30C28);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v73 - v12);
  v14 = type metadata accessor for PreprocessedUserHistoryWithMetadata();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = MEMORY[0x277D84F90];
  v79 = v11;
  v80 = v3;
  v78 = v13;
  v85 = v14;
  v74 = v15;
  v81 = v19;
  v76 = a1;
  if (v19)
  {
    v84 = v4;
    v86[0] = MEMORY[0x277D84F90];
    sub_2629CD920(0, v19, 0);
    v14 = v85;
    v21 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v22 = *(v15 + 72);
    v23 = v86[0];
    do
    {
      sub_262A15BAC(v21, v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v24 = v18[v14[14]];
      if (v24 == 7)
      {
        goto LABEL_61;
      }

      v25 = 0xEA00000000003638;
      v26 = 0x3932343038373431;
      switch(v18[v14[16]])
      {
        case 1:
          v25 = 0xEA00000000003937;
          break;
        case 2:
          v25 = 0xEA00000000003438;
          break;
        case 3:
          v25 = 0xEA00000000003238;
          break;
        case 4:
          v25 = 0xEA00000000003633;
          v26 = 0x3532363037343631;
          break;
        case 5:
          v25 = 0xEA00000000003839;
          goto LABEL_14;
        case 6:
          v25 = 0xEA00000000003738;
          break;
        case 7:
          v25 = 0xEA00000000003739;
          goto LABEL_14;
        case 8:
          v25 = 0xEA00000000003038;
          break;
        case 9:
          v25 = 0xEA00000000003639;
LABEL_14:
          v26 = 0x3332373831363531;
          break;
        case 10:
          v25 = 0xEA00000000003338;
          break;
        case 11:
          v25 = 0xEA00000000003138;
          break;
        case 12:
          v25 = 0xEA00000000003635;
          v26 = 0x3032383934393431;
          break;
        case 13:
          v25 = 0xEA00000000003538;
          break;
        default:
          break;
      }

      v27 = qword_262A30C58[v24];
      sub_262A15C14(v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v86[0] = v23;
      v29 = v23[2];
      v28 = v23[3];
      v30 = v23;
      if (v29 >= v28 >> 1)
      {
        sub_2629CD920((v28 > 1), v29 + 1, 1);
        v14 = v85;
        v30 = v86[0];
      }

      v30[2] = v29 + 1;
      v31 = &v30[4 * v29];
      v31[4] = v27;
      v31[5] = MEMORY[0x277D84FA0];
      v31[6] = v26;
      v31[7] = v25;
      v21 += v22;
      --v19;
      v23 = v30;
    }

    while (v19);
    v11 = v79;
    v3 = v80;
    v13 = v78;
    v19 = v81;
    v20 = MEMORY[0x277D84F90];
    v4 = v84;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v32 = 0;
  v87 = sub_2629AC204(v20);
  v82 = (v4 + 6);
  v83 = (v4 + 7);
  v77 = v23 + 4;
  v84 = v23;
  v33 = v19 == 0;
  if (!v19)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v33)
  {
    goto LABEL_58;
  }

  if (__OFADD__(v32, 1))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    sub_262A2A938();
    __break(1u);
    JUMPOUT(0x262A0E3F8);
  }

  v34 = v75;
  v35 = v76 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v32;
  v36 = *(v3 + 48);
  *v75 = v32;
  sub_262A15BAC(v35, v34 + v36, type metadata accessor for PreprocessedUserHistoryWithMetadata);
  sub_2629E2E14(v34, v11, &qword_27FF3BFF0, &qword_262A30C20);
  v37 = 0;
  ++v32;
  v14 = v85;
  while (1)
  {
    (*v83)(v11, v37, 1, v3);
    sub_2629E2E14(v11, v13, &qword_27FF3CC50, &qword_262A30C28);
    if ((*v82)(v13, 1, v3) == 1)
    {
      break;
    }

    v38 = *v13;
    v39 = v13 + *(v3 + 48);
    v40 = *(v39 + v14[7]);
    sub_262A15C14(v39, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v41 = v87;
    if (!v87[2] || (sub_2629CB134(v40, 0, 0, 0), (v42 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v41;
      v44 = sub_2629CB134(v40, 0, 0, 0);
      v46 = v41[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v50 = v45;
      if (v41[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = v44;
          sub_2629CE828();
          v44 = v71;
        }
      }

      else
      {
        sub_2629D0B78(v49, isUniquelyReferenced_nonNull_native);
        v44 = sub_2629CB134(v40, 0, 0, 0);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_62;
        }
      }

      v23 = v84;
      v52 = v86[0];
      if (v50)
      {
        v53 = v86[0][7];
        v54 = *(v53 + 8 * v44);
        *(v53 + 8 * v44) = MEMORY[0x277D84F90];
      }

      else
      {
        v86[0][(v44 >> 6) + 8] |= 1 << v44;
        v55 = (v52[6] + 32 * v44);
        *v55 = v40;
        v55[1] = 0;
        v55[2] = 0;
        v55[3] = 0;
        *(v52[7] + 8 * v44) = MEMORY[0x277D84F90];
        v56 = v52[2];
        v48 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v48)
        {
          goto LABEL_60;
        }

        v52[2] = v57;
      }

      v87 = v52;
    }

    v59 = sub_262A04360(v86, v40, 0, 0, 0);
    v60 = *v58;
    if (*v58)
    {
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v38 >= v23[2])
      {
        goto LABEL_57;
      }

      v61 = v58;
      v62 = &v77[4 * v38];
      v63 = *v62;
      v64 = v62[1];
      v65 = v62[2];
      v66 = v62[3];

      v67 = swift_isUniquelyReferenced_nonNull_native();
      *v61 = v60;
      if ((v67 & 1) == 0)
      {
        v60 = sub_2629A9244(0, *(v60 + 2) + 1, 1, v60);
        *v61 = v60;
      }

      v69 = *(v60 + 2);
      v68 = *(v60 + 3);
      if (v69 >= v68 >> 1)
      {
        v60 = sub_2629A9244((v68 > 1), v69 + 1, 1, v60);
        *v61 = v60;
      }

      *(v60 + 2) = v69 + 1;
      v70 = &v60[32 * v69];
      *(v70 + 4) = v63;
      *(v70 + 5) = v64;
      *(v70 + 6) = v65;
      *(v70 + 7) = v66;
      (v59)(v86, 0);
      v11 = v79;
      v3 = v80;
      v13 = v78;
      v23 = v84;
      v14 = v85;
    }

    else
    {
      (v59)(v86, 0);
      v14 = v85;
    }

    v19 = v81;
    v33 = v32 >= v81;
    if (v32 != v81)
    {
      goto LABEL_25;
    }

LABEL_28:
    v37 = 1;
    v32 = v19;
  }

  *v73 = v87;
  return result;
}

BOOL sub_262A0E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v4 = sub_262A29F38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
  v9 = sub_262A2A108();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_262A2EA00;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277CC9940], v9);
  v15(v14 + v11, *MEMORY[0x277CC9960], v9);
  sub_262A15860(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v16 = v25 + *(type metadata accessor for PreprocessedUserHistoryWithMetadata() + 24);
  sub_262A2A0A8();

  v17 = sub_262A29ED8();
  if ((v18 & 1) != 0 || v17 != v24)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v19 = sub_262A29EB8();
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    if ((v21 & 1) == 0)
    {
      return v19 == v23;
    }
  }

  return 0;
}

uint64_t sub_262A0E6A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = sub_262A03A34(*a1);
  v169 = sub_262A272BC(v3);

  v4 = MEMORY[0x277D84F90];
  v172 = sub_2629ACBA8(MEMORY[0x277D84F90]);
  v197 = sub_2629ACCD8(v4);
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v194 = v2;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
LABEL_4:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      v13 = *(*(v194 + 48) + 32 * v12);
      if (v13 < 7)
      {
        v15 = 0;
        v16 = *(*(v194 + 56) + 8 * v12);
        v181 = *(v16 + 16);
        v17 = v181 + 1;
        v18 = 32;
        while (--v17)
        {
          v19 = *(v16 + v18);
          v18 += 32;
          v20 = __OFADD__(v15, v19);
          v15 += v19;
          if (v20)
          {
            goto LABEL_153;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v195 = v172;
        sub_262A11BAC(v15, v13, isUniquelyReferenced_nonNull_native);
        v172 = v195;
        if (v181)
        {
          v22 = 0;
          v23 = (v16 + 56);
          v179 = v16;
          while (v22 < *(v16 + 16))
          {
            v187 = *(v23 - 3);
            v189 = v22;
            v26 = *(v23 - 1);
            v25 = *v23;
            v27 = v197;
            v28 = *(v197 + 16);
            v191 = *(v23 - 2);

            if (!v28 || (sub_2629CB0BC(v26, v25), (v29 & 1) == 0))
            {
              v30 = swift_isUniquelyReferenced_nonNull_native();
              v31 = v26;
              v32 = v30;
              v195 = v27;
              v33 = v31;
              v34 = sub_2629CB0BC(v31, v25);
              v36 = v27[2];
              v37 = (v35 & 1) == 0;
              v20 = __OFADD__(v36, v37);
              v38 = v36 + v37;
              if (v20)
              {
                goto LABEL_155;
              }

              v39 = v35;
              if (v27[3] >= v38)
              {
                if ((v32 & 1) == 0)
                {
                  v55 = v34;
                  sub_2629CE990();
                  v34 = v55;
                }

                v26 = v33;
              }

              else
              {
                sub_2629D0E40(v38, v32);
                v26 = v33;
                v34 = sub_2629CB0BC(v33, v25);
                if ((v39 & 1) != (v40 & 1))
                {
                  goto LABEL_161;
                }
              }

              v41 = v195;
              if (v39)
              {
                v42 = v195[7];
                v43 = *(v42 + 8 * v34);
                *(v42 + 8 * v34) = MEMORY[0x277D84F90];
              }

              else
              {
                v195[(v34 >> 6) + 8] |= 1 << v34;
                v44 = (v41[6] + 16 * v34);
                *v44 = v26;
                v44[1] = v25;
                *(v41[7] + 8 * v34) = MEMORY[0x277D84F90];
                v45 = v41[2];
                v20 = __OFADD__(v45, 1);
                v46 = v45 + 1;
                if (v20)
                {
                  goto LABEL_159;
                }

                v41[2] = v46;
              }

              v197 = v41;
            }

            v185 = v26;
            v47 = sub_262A04400(&v195, v26, v25);
            v49 = *v48;
            if (*v48)
            {
              v50 = v48;
              v183 = v47;

              v51 = swift_isUniquelyReferenced_nonNull_native();
              *v50 = v49;
              if ((v51 & 1) == 0)
              {
                v49 = sub_2629A9244(0, *(v49 + 2) + 1, 1, v49);
                *v50 = v49;
              }

              v53 = *(v49 + 2);
              v52 = *(v49 + 3);
              if (v53 >= v52 >> 1)
              {
                v49 = sub_2629A9244((v52 > 1), v53 + 1, 1, v49);
                *v50 = v49;
              }

              v16 = v179;
              *(v49 + 2) = v53 + 1;
              v54 = &v49[32 * v53];
              *(v54 + 4) = v187;
              *(v54 + 5) = v191;
              *(v54 + 6) = v185;
              *(v54 + 7) = v25;
              (v183)(&v195, 0);
              v24 = v189;
            }

            else
            {
              (v47)(&v195, 0);
              v16 = v179;
              v24 = v189;
            }

            v22 = v24 + 1;
            swift_bridgeObjectRelease_n();

            v23 += 4;
            if (v181 == v22)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_154;
        }

LABEL_40:
      }

      goto LABEL_5;
    }
  }

  v57 = sub_262A041DC(v56);
  v59 = v58;

  if (v59)
  {
    v60 = 0;
  }

  else
  {
    v60 = v57;
  }

  v62 = sub_262A04604(v61);
  v64 = v63;

  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v62;
  }

  v168 = v60;
  if (v65 >= v60)
  {
    v167 = v65;
    v175 = v197 + 64;
    v66 = 1 << *(v197 + 32);
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v68 = v67 & *(v197 + 64);
    v173 = v197;
    v174 = (v66 + 63) >> 6;

    v69 = 0;
    v70 = MEMORY[0x277D84F98];
    v182 = MEMORY[0x277D84F90];
    v72 = v174;
    v71 = v175;
    if (!v68)
    {
      goto LABEL_52;
    }

    while (1)
    {
LABEL_56:
      v178 = v68;
      v180 = v69;
      v74 = __clz(__rbit64(v68)) | (v69 << 6);
      v75 = (*(v173 + 48) + 16 * v74);
      v176 = v75[1];
      v177 = *v75;
      v76 = *(*(v173 + 56) + 8 * v74);
      v196 = v70;
      v190 = *(v76 + 16);
      if (v190)
      {
        v188 = v76 + 32;

        v77 = 0;
        v78 = v194;
        v184 = v76;
        while (2)
        {
          if (v77 >= *(v76 + 16))
          {
            goto LABEL_147;
          }

          v79 = 0;
          v80 = (v188 + 32 * v77);
          v81 = *v80;
          v186 = v80[1];
          v82 = 1 << *(v78 + 32);
          if (v82 < 64)
          {
            v83 = ~(-1 << v82);
          }

          else
          {
            v83 = -1;
          }

          v84 = v83 & *(v78 + 64);
          v85 = v80[2];
          v86 = v80[3];
          v192 = v77 + 1;
          v87 = (v82 + 63) >> 6;
          while (1)
          {
LABEL_64:
            if (!v84)
            {
              while (1)
              {
                v88 = v79 + 1;
                if (__OFADD__(v79, 1))
                {
                  break;
                }

                if (v88 >= v87)
                {
                  v76 = v184;
                  v77 = v192;
                  goto LABEL_83;
                }

                v84 = *(v5 + 8 * v88);
                ++v79;
                if (v84)
                {
                  v79 = v88;
                  goto LABEL_69;
                }
              }

              __break(1u);
              goto LABEL_146;
            }

LABEL_69:
            v89 = __clz(__rbit64(v84));
            v84 &= v84 - 1;
            v90 = v89 | (v79 << 6);
            v91 = *(*(v78 + 56) + 8 * v90);
            v92 = *(v91 + 16);
            if (v92)
            {
              v93 = *(*(v78 + 48) + 32 * v90);
              v94 = (v91 + 56);
              while (1)
              {
                if (*(v94 - 3) == v81)
                {
                  v95 = *(v94 - 1) == v85 && *v94 == v86;
                  if (v95 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }
                }

                v94 += 4;
                if (!--v92)
                {
                  v78 = v194;
                  goto LABEL_64;
                }
              }

              v78 = v194;
              if (v93 <= 6)
              {
                break;
              }
            }
          }

          v96 = v196;
          if (v196[2] && (sub_2629D41BC(v93), (v97 & 1) != 0))
          {

            v98 = v186;
          }

          else
          {

            v98 = v186;

            v99 = swift_isUniquelyReferenced_nonNull_native();
            v195 = v96;
            sub_262A11FA4(MEMORY[0x277D84F90], v93, v99, sub_2629D41BC, sub_2629CDF00, sub_2629CF7DC);
            v196 = v195;
          }

          v76 = v184;
          v77 = v192;
          v101 = sub_262A04488(&v195, v93);
          v102 = *v100;
          if (*v100)
          {
            v103 = v100;
            v104 = *v100;
            v105 = swift_isUniquelyReferenced_nonNull_native();
            *v103 = v102;
            if ((v105 & 1) == 0)
            {
              v102 = sub_2629A9244(0, *(v102 + 2) + 1, 1, v102);
              *v103 = v102;
            }

            v107 = *(v102 + 2);
            v106 = *(v102 + 3);
            v108 = v107 + 1;
            if (v107 >= v106 >> 1)
            {
              v110 = sub_2629A9244((v106 > 1), v107 + 1, 1, v102);
              v108 = v107 + 1;
              v102 = v110;
              *v103 = v110;
            }

            *(v102 + 2) = v108;
            v109 = &v102[32 * v107];
            *(v109 + 4) = v81;
            *(v109 + 5) = v98;
            *(v109 + 6) = v85;
            *(v109 + 7) = v86;
            (v101)(&v195, 0);
            v77 = v192;
          }

          else
          {

            (v101)(&v195, 0);
          }

          v78 = v194;
LABEL_83:
          if (v77 != v190)
          {
            continue;
          }

          break;
        }

        v70 = v196;
        v111 = v196[2];
        if (!v111)
        {
          goto LABEL_108;
        }
      }

      else
      {

        v111 = *(v70 + 16);
        if (!v111)
        {
LABEL_108:
          v193 = MEMORY[0x277D84F90];
          v115 = *(v76 + 16);
          if (!v115)
          {
            goto LABEL_109;
          }

          goto LABEL_97;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF40, &qword_262A30C10);
      v112 = swift_allocObject();
      v113 = _swift_stdlib_malloc_size(v112);
      *(v112 + 16) = v111;
      *(v112 + 24) = 2 * v113 - 64;
      v193 = v112;
      v114 = sub_262A13A94(&v195, (v112 + 32), v111, v70);

      sub_2629ADE08();
      if (v114 != v111)
      {
        goto LABEL_156;
      }

      v115 = *(v76 + 16);
      if (!v115)
      {
LABEL_109:

        v116 = MEMORY[0x277D84F90];
        v121 = *(MEMORY[0x277D84F90] + 16);
        if (v121)
        {
          goto LABEL_102;
        }

        goto LABEL_110;
      }

LABEL_97:
      v195 = MEMORY[0x277D84F90];
      sub_2629CD840(0, v115, 0);
      v116 = v195;
      v117 = v195[2];
      v118 = 32;
      do
      {
        v119 = *(v76 + v118);
        v195 = v116;
        v120 = v116[3];
        if (v117 >= v120 >> 1)
        {
          sub_2629CD840((v120 > 1), v117 + 1, 1);
          v116 = v195;
        }

        v116[2] = v117 + 1;
        v116[v117 + 4] = v119;
        v118 += 32;
        ++v117;
        --v115;
      }

      while (v115);

      v121 = v116[2];
      if (v121)
      {
LABEL_102:
        v195 = MEMORY[0x277D84F90];
        sub_2629CD940(0, v121, 0);
        v122 = v195;
        v123 = v195[2];
        v124 = 2 * v123;
        v125 = 4;
        do
        {
          v126 = v116[v125];
          v195 = v122;
          v127 = v122[3];
          v128 = v123 + 1;
          if (v123 >= v127 >> 1)
          {
            sub_2629CD940((v127 > 1), v123 + 1, 1);
            v122 = v195;
          }

          v122[2] = v128;
          v129 = &v122[v124];
          v129[4] = v126;
          v129[5] = 1;
          v124 += 2;
          ++v125;
          v123 = v128;
          --v121;
        }

        while (v121);

        goto LABEL_111;
      }

LABEL_110:

      v122 = MEMORY[0x277D84F90];
LABEL_111:
      if (v122[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C028, &unk_262A2B4D0);
        v130 = sub_262A2A778();
        v131 = v122[2];
        v195 = v130;
        if (v131)
        {
          v132 = v131;
          v133 = 0;
          v134 = v122 + 5;
          do
          {
            v138 = v133 + 1;
            if (__OFADD__(v133, 1))
            {
              goto LABEL_148;
            }

            v140 = *(v134 - 1);
            v139 = *v134;
            v141 = sub_2629CB210(v140);
            v143 = v130[2];
            v144 = (v142 & 1) == 0;
            v20 = __OFADD__(v143, v144);
            v145 = v143 + v144;
            if (v20)
            {
              goto LABEL_149;
            }

            v146 = v142;
            if (v130[3] < v145)
            {
              sub_2629D0674(v145, 1);
              v141 = sub_2629CB210(v140);
              if ((v146 & 1) != (v147 & 1))
              {
                goto LABEL_160;
              }
            }

            v130 = v195;
            if (v146)
            {
              v135 = (v195[7] + 8 * v141);
              v137 = *v135 + v139;
              if (__OFADD__(*v135, v139))
              {
                goto LABEL_152;
              }
            }

            else
            {
              v195[(v141 >> 6) + 8] |= 1 << v141;
              *(v130[6] + 8 * v141) = v140;
              *(v130[7] + 8 * v141) = v139;
              v135 = v130 + 2;
              v136 = v130[2];
              v20 = __OFADD__(v136, 1);
              v137 = v136 + 1;
              if (v20)
              {
                goto LABEL_151;
              }
            }

            v134 += 2;
            *v135 = v137;
            ++v133;
          }

          while (v138 != v132);
        }
      }

      else
      {
        v130 = MEMORY[0x277D84F98];
        v195 = MEMORY[0x277D84F98];
      }

      v148 = v130[2];
      if (v148)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC40, &qword_262A30F60);
        v149 = swift_allocObject();
        v150 = _swift_stdlib_malloc_size(v149);
        v151 = v150 - 32;
        if (v150 < 32)
        {
          v151 = v150 - 17;
        }

        v149[2] = v148;
        v149[3] = 2 * (v151 >> 4);
        v152 = sub_262A13990(&v195, v149 + 4, v148, v130);

        sub_2629ADE08();
        if (v152 != v148)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v149 = MEMORY[0x277D84F90];
      }

      v195 = v149;
      sub_262A1011C(&v195);

      v153 = v195;
      v154 = v195[2];
      if (v154)
      {
        v195 = MEMORY[0x277D84F90];
        sub_2629CD840(0, v154, 0);
        v155 = v195;
        v156 = v195[2];
        v157 = 4;
        do
        {
          v158 = v153[v157];
          v195 = v155;
          v159 = v155[3];
          if (v156 >= v159 >> 1)
          {
            sub_2629CD840((v159 > 1), v156 + 1, 1);
            v155 = v195;
          }

          v155[2] = v156 + 1;
          v155[v156 + 4] = v158;
          v157 += 2;
          ++v156;
          --v154;
        }

        while (v154);
      }

      else
      {

        v155 = MEMORY[0x277D84F90];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v182 = sub_2629A9020(0, *(v182 + 2) + 1, 1, v182);
      }

      v161 = *(v182 + 2);
      v160 = *(v182 + 3);
      if (v161 >= v160 >> 1)
      {
        v182 = sub_2629A9020((v160 > 1), v161 + 1, 1, v182);
      }

      *(v182 + 2) = v161 + 1;
      v68 = (v178 - 1) & v178;
      v162 = &v182[48 * v161];
      *(v162 + 4) = v177;
      *(v162 + 5) = v176;
      *(v162 + 6) = v155;
      v163 = MEMORY[0x277D84F90];
      *(v162 + 7) = MEMORY[0x277D84F90];
      *(v162 + 8) = v163;
      *(v162 + 9) = v193;

      v69 = v180;
      v70 = MEMORY[0x277D84F98];
      v72 = v174;
      v71 = v175;
      if (!v68)
      {
LABEL_52:
        while (1)
        {
          v73 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_150;
          }

          if (v73 >= v72)
          {

            v164 = v170 + *(type metadata accessor for ResultPostProcessor() + 24);
            result = type metadata accessor for PlanGenerationContext();
            v166 = *(v164 + *(result + 116));
            *a2 = v168;
            a2[1] = v167;
            a2[2] = v182;
            a2[3] = v167;
            a2[4] = v166;
            a2[5] = v169;
            return result;
          }

          v68 = *(v71 + 8 * v73);
          ++v69;
          if (v68)
          {
            v69 = v73;
            goto LABEL_56;
          }
        }
      }
    }
  }

LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  sub_262A2A938();
  __break(1u);
  MEMORY[0x26672F6A0](0);

  __break(1u);
LABEL_161:
  result = sub_262A2A938();
  __break(1u);
  return result;
}