unsigned __int8 *sub_26809D10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2680B41AC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26809D710();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2680B434C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
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

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26809D6A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249148, &qword_2680B5380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26809D710()
{
  v0 = sub_26809D77C();
  v4 = sub_26809D7B0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26809D7B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2680B40FC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2680B42BC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26809D910(v9, 0);
  v12 = sub_26809D980(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2680B40FC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2680B434C();
LABEL_4:

  return sub_2680B40FC();
}

void *sub_26809D910(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249168, &qword_2680B53A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_26809D980(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_26809DB90(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2680B415C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2680B434C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_26809DB90(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2680B413C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26809DB90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2680B419C();
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
    v5 = MEMORY[0x26D60FCE0](15, a1 >> 16);
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

unint64_t sub_26809DC0C()
{
  result = qword_280249178;
  if (!qword_280249178)
  {
    sub_268087C68(255, &unk_281318F50, 0x277CCAC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249178);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35()
{
  result = *(v0 - 256);
  v3 = *(v1 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_41()
{
  v2 = *(v0 - 520);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_44()
{
  v2 = *(v0 - 184);
}

__n128 OUTLINED_FUNCTION_47(__n128 *a1)
{
  result = *(v1 - 256);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58()
{
  v2 = *(v0 - 264);
}

void OUTLINED_FUNCTION_59()
{
  v2 = *(v0 - 288);
}

uint64_t sub_26809DDA4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_268093DAC(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26809DE54@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    v9 = *(*(v8 - 8) + 80);
    OUTLINED_FUNCTION_33();
    sub_26808CDD4(a1 + v10, a4, a3);
  }

  OUTLINED_FUNCTION_23_0();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_26809DF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  if (v4)
  {
    v6 = *(*(v5 - 8) + 80);
    OUTLINED_FUNCTION_33();
    sub_26809F7D4(a1 + v7, a2);
  }

  OUTLINED_FUNCTION_23_0();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_26809DFD8(uint64_t a1)
{
  v2 = sub_2680B2FCC();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = __OFSUB__(a1, 1);
  v12 = a1 - 1;
  if (v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = *(sub_2680B31DC() + 16);

    if (v12 < v13)
    {
      if (v12 < *(sub_2680B31DC() + 16))
      {
        v14 = *(v5 + 80);
        OUTLINED_FUNCTION_33();
        (*(v5 + 16))(v10, v15 + v16 + *(v5 + 72) * v12, v2);

        sub_2680B2FAC();
        (*(v5 + 8))(v10, v2);
        return;
      }

      goto LABEL_8;
    }
  }
}

uint64_t static MatchingSpanUtils.utf16CodeUnitsToCodePointsMapping(_:)()
{

  v0 = 0;
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  while (1)
  {
    sub_2680B412C();
    if (!v3)
    {

      return v2;
    }

    v4 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v5 = OUTLINED_FUNCTION_30_0();
    if (__OFADD__(v2[2], (v6 & 1) == 0))
    {
      break;
    }

    v7 = v5;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491A0, &qword_2680B53E0);
    if (sub_2680B43AC())
    {
      v9 = sub_268093DAC(v1);
      if ((v8 & 1) != (v10 & 1))
      {
        goto LABEL_41;
      }

      v7 = v9;
    }

    v2 = v26;
    if (v8)
    {
      *(v26[7] + 8 * v7) = v0;
    }

    else
    {
      OUTLINED_FUNCTION_22_0(&v26[v7 >> 6]);
      *(v26[6] + 8 * v7) = v1;
      *(v26[7] + 8 * v7) = v0;
      v11 = v26[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_40;
      }

      v26[2] = v13;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v14 = sub_2680B416C();
    }

    else
    {
      v14 = sub_2680B417C();
    }

    v15 = v14;

    v16 = v15 - 1;
    if (v15 < 1)
    {
      goto LABEL_37;
    }

    if (v15 != 1)
    {
      while (v16)
      {
        if (v1 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_33;
        }

        ++v1;
        swift_isUniquelyReferenced_nonNull_native();
        v17 = OUTLINED_FUNCTION_30_0();
        v19 = v18;
        if (__OFADD__(v2[2], (v18 & 1) == 0))
        {
          goto LABEL_34;
        }

        v20 = v17;
        if (sub_2680B43AC())
        {
          v21 = sub_268093DAC(v1);
          if ((v19 & 1) != (v22 & 1))
          {
            goto LABEL_41;
          }

          v20 = v21;
        }

        v2 = v26;
        if (v19)
        {
          *(v26[7] + 8 * v20) = v0;
        }

        else
        {
          OUTLINED_FUNCTION_22_0(&v26[v20 >> 6]);
          *(v26[6] + 8 * v20) = v1;
          *(v26[7] + 8 * v20) = v0;
          v23 = v26[2];
          v12 = __OFADD__(v23, 1);
          v24 = v23 + 1;
          if (v12)
          {
            goto LABEL_35;
          }

          v26[2] = v24;
        }

        if (!--v16)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

LABEL_26:
    v12 = __OFADD__(v0++, 1);
    if (v12)
    {
      goto LABEL_38;
    }

    v12 = __OFADD__(v1++, 1);
    if (v12)
    {
      goto LABEL_39;
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
LABEL_41:
  result = sub_2680B44AC();
  __break(1u);
  return result;
}

uint64_t static MatchingSpanUtils.getUnicodeScalarIndexes(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2680B2FCC();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  v13 = sub_2680B332C();
  v14 = *(sub_2680B31DC() + 16);

  if (v14 <= v13)
  {
    return 0;
  }

  result = sub_2680B31DC();
  if (*(result + 16) <= v13)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v7 + 80);
    OUTLINED_FUNCTION_33();
    (*(v7 + 16))(v12, v17 + v18 + *(v7 + 72) * v13, v4);

    v19 = sub_2680B2FBC();
    (*(v7 + 8))(v12, v4);
    if (v19 == -1)
    {
      return 0;
    }

    v20 = sub_2680B32FC();
    sub_26809DFD8(v20);
    if (v21 == -1)
    {
      return 0;
    }

    v22 = v21;
    v23 = sub_26809DDA4(v19, a3);
    if (v24)
    {
      return 0;
    }

    v25 = v23;
    result = sub_26809DDA4(v22 - 1, a3);
    if (v26)
    {
      return 0;
    }

    if (!__OFADD__(result, 1))
    {
      return v25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26809E574(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 < 0 || a2 < 0 || a2 < a1)
  {
    return v2;
  }

  sub_2680B31BC();
  sub_2680B31BC();

  sub_2680B31BC();

  OUTLINED_FUNCTION_19_0();
  v3 = sub_2680B418C();
  v5 = v4;

  if (v5)
  {
    return 0;
  }

  sub_2680B31BC();
  sub_2680B31BC();

  sub_2680B31BC();

  OUTLINED_FUNCTION_19_0();
  v6 = sub_2680B418C();
  v8 = v7;

  if (v8)
  {
    return 0;
  }

  result = sub_2680B31BC();
  if (v6 >> 14 >= v3 >> 14)
  {
    v10 = sub_2680B41BC();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v2 = MEMORY[0x26D60FC80](v10, v12, v14, v16);

    return v2;
  }

  __break(1u);
  return result;
}

void static MatchingSpanUtils.trailingAdjacent(_:_:usingTokens:)()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_11_0();
  v0 = sub_2680B2FCC();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v9 = sub_2680B31DC();
  v10 = sub_2680B32FC();
  if (v10 != sub_2680B332C())
  {
    v11 = sub_2680B32FC();
    if (sub_2680B332C() >= v11)
    {
      v12 = sub_2680B32FC();
      v13 = *(v9 + 16);
      if (v13 != v12)
      {
        if (v13 < sub_2680B32FC() || v13 <= sub_2680B332C())
        {

          sub_2680B425C();
          if (qword_2813194A0 != -1)
          {
LABEL_16:
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249100, &qword_2680B4FF0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_2680B5360;
          v19 = sub_2680B31BC();
          v21 = v20;
          *(v18 + 56) = MEMORY[0x277D837D0];
          *(v18 + 64) = sub_26808C1E4();
          *(v18 + 32) = v19;
          *(v18 + 40) = v21;
          v22 = sub_2680B32FC();
          v23 = MEMORY[0x277D84CC0];
          v24 = MEMORY[0x277D84D30];
          *(v18 + 96) = MEMORY[0x277D84CC0];
          *(v18 + 104) = v24;
          *(v18 + 72) = v22;
          v25 = sub_2680B332C();
          *(v18 + 136) = v23;
          *(v18 + 144) = v24;
          *(v18 + 112) = v25;
          sub_2680B406C();
        }

        else
        {
          v14 = sub_2680B32FC();
          while (v14 < sub_2680B332C())
          {
            if (v14 >= *(v9 + 16))
            {
              __break(1u);
              goto LABEL_16;
            }

            v15 = *(v3 + 80);
            OUTLINED_FUNCTION_33();
            (*(v3 + 16))(v8, v9 + v16 + *(v3 + 72) * v14, v0);
            v17 = sub_2680B2F9C();
            (*(v3 + 8))(v8, v0);
            ++v14;
            if (v17)
            {
              break;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_53();
}

char *sub_26809E9D0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_26809EA84()
{
  OUTLINED_FUNCTION_26_1();
  if (v3 && (v4 = OUTLINED_FUNCTION_24(), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), result = OUTLINED_FUNCTION_9(v6), v1 + *(v8 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_6_2();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_24();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_6_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

unint64_t sub_26809EB44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2680B452C();
  sub_2680B410C();
  v6 = sub_2680B454C();

  return sub_26809EC04(a1, a2, v6);
}

unint64_t sub_26809EBBC(unsigned int a1)
{
  v3 = MEMORY[0x26D6100A0](*(v1 + 40), a1, 4);

  return sub_26809ECB8(a1, v3);
}

unint64_t sub_26809EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2680B447C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26809ECB8(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_26809ED18()
{
  OUTLINED_FUNCTION_28_0();
  if (v3)
  {
    OUTLINED_FUNCTION_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491B8, &qword_2680B5410);
    v9 = OUTLINED_FUNCTION_32_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_26809EDEC()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_280249198, &unk_2680B53D0);
  OUTLINED_FUNCTION_11_0();
  v9 = sub_2680B33EC();
  OUTLINED_FUNCTION_13_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_1_2(v12);
    sub_26808B38C(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809EEC8()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491D0, &qword_2680B5428);
  OUTLINED_FUNCTION_11_0();
  v9 = sub_2680B3D1C();
  OUTLINED_FUNCTION_13_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_1_2(v12);
    sub_26808B38C(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809EFA4()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491D8, &qword_2680B5430);
  OUTLINED_FUNCTION_11_0();
  v9 = sub_2680B307C();
  OUTLINED_FUNCTION_13_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_1_2(v12);
    sub_26808B38C(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809F080()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491E0, &qword_2680B5438);
  OUTLINED_FUNCTION_11_0();
  v9 = sub_2680B35EC();
  OUTLINED_FUNCTION_13_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_1_2(v12);
    sub_26808B38C(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809F15C()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_2802491C8, &qword_2680B5420);
  v9 = OUTLINED_FUNCTION_11_0();
  matched = type metadata accessor for OverrideMatchResultAndParse(v9);
  OUTLINED_FUNCTION_13_0(matched);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_1_2(v13);
    sub_26808B38C(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809F238()
{
  OUTLINED_FUNCTION_28_0();
  if (v3)
  {
    OUTLINED_FUNCTION_17();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_26809F474(*(v0 + 16), v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  OUTLINED_FUNCTION_13_0(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    OUTLINED_FUNCTION_1_2(v10);
    sub_26809EA84();
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void sub_26809F308()
{
  OUTLINED_FUNCTION_3_3();
  if (v4)
  {
    OUTLINED_FUNCTION_2_3();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_16_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_2();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_21_0(v2, v5, &qword_280249210, &qword_2680B5468);
  OUTLINED_FUNCTION_11_0();
  v9 = sub_2680B30CC();
  OUTLINED_FUNCTION_13_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_1_2(v12);
    sub_26808B38C(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }
}

void *sub_26809F3E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491C0, &qword_2680B5418);
  v4 = OUTLINED_FUNCTION_32_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_14_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_26809F474(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249208, &qword_2680B5460);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MatchingSpanUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MatchingSpanUtils(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_26809F688(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = result - a2;
  if (__OFSUB__(0, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v5;
  if (__OFADD__(v4, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2680ACB64(result, 1);
  v7 = *v2;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0) - 8);
  v9 = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  result = swift_arrayDestroy();
  if (!v5)
  {
LABEL_10:
    *v2 = v7;
    return result;
  }

  if (__OFSUB__(*(v7 + 16), a2))
  {
    goto LABEL_16;
  }

  result = sub_26809EA84();
  v11 = *(v7 + 16);
  v12 = __OFADD__(v11, v6);
  v13 = v11 - v5;
  if (!v12)
  {
    *(v7 + 16) = v13;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26809F7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_268093DAC(v0);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_allocObject();
}

void *sub_26809F89C()
{
  sub_26809F900();
  result = sub_2680B429C();
  off_2813194A8 = result;
  return result;
}

unint64_t sub_26809F900()
{
  result = qword_281319308;
  if (!qword_281319308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281319308);
  }

  return result;
}

id static ParseOverride.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2680B40BC();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_26809F9BC()
{
  result = qword_280249240;
  if (!qword_280249240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280249248, &qword_2680B5498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249240);
  }

  return result;
}

uint64_t sub_26809FA38@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 creation];
  if (v3)
  {
    v4 = v3;
    sub_2680B2E7C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2680B2E9C();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_26809FAB8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_26809FDFC(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_2680B2E9C();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_2680B2E5C();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setCreation_];
}

void sub_26809FBBC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_2(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2680B40CC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_26809FC1C(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_1_3(a1, a2);
  if (v5)
  {
    v6 = *v4;
    v7 = sub_2680B40BC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v3 *v2];
}

void sub_26809FC80(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_2(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2680B2E4C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *v1 = v6;
  v1[1] = v8;
}

void sub_26809FCE0(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_1_3(a1, a2);
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = *v4;
    v6 = sub_2680B2E2C();
  }

  v8 = v6;
  [v3 *v2];
}

uint64_t sub_26809FD4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26809FE6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26809FDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26809FE6C(void *a1)
{
  v1 = [a1 id];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2680B40CC();

  return v3;
}

uint64_t Array<A>.previousTurns.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0;
  }

  v2 = sub_2680A01E0(1uLL, v1, a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((v7 & 1) == 0)
  {
LABEL_3:
    sub_2680A0100(v2, v4, v6, v8);
    v10 = v9;
LABEL_11:
    swift_unknownObjectRelease();
    return v10;
  }

  sub_2680B448C();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 != (v8 >> 1) - v6)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  return v10;
}

uint64_t Array<A>.currentTurnLocale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = *(sub_2680B3E1C() - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.locale.getter(a2);
  }

  else
  {
    v7 = sub_2680B2F5C();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  }
}

uint64_t Array<A>.currentTurnUtterance.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = *(sub_2680B3E1C() - 8);
  v3 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  return sub_2680B3E0C();
}

void sub_2680A0100(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_26809F44C((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(sub_2680B3E1C() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

unint64_t sub_2680A01E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_2680B3E1C() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

BOOL sub_2680A0288()
{
  v0 = sub_2680B324C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2680B313C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2680B3DCC();
  sub_2680B312C();
  (*(v6 + 8))(v9, v5);
  sub_2680B3DFC();
  sub_268094024();
  v11 = v10;

  (*(v1 + 8))(v4, v0);
  return (v11 & 1) == 0;
}

uint64_t sub_2680A0460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249258, &qword_2680B54E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2680A04C8(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_2680B432C();
    v2 = "rride is unspecified.";
    v3 = 0xD000000000000015;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_2680B432C();
    v2 = "de is unspecified.";
    v3 = 0xD000000000000012;
LABEL_5:
    MEMORY[0x26D60FCB0](v3, v2 | 0x8000000000000000);
    v4 = sub_2680B445C();
    MEMORY[0x26D60FCB0](v4);

    MEMORY[0x26D60FCB0](0xD000000000000033, 0x80000002680B66E0);
    return 0;
  }

  if (a1)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD000000000000025;
  }
}

unint64_t sub_2680A060C(uint64_t a1, char a2)
{
  result = 0xD00000000000005DLL;
  if (a2 && (a2 == 1 || a1))
  {
    return 0xD000000000000057;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ParseOverride.validateForInsert()()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_2680A0CEC(&selRef_validateForInsert_);
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2680A06D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249278, &qword_2680B54F8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = sub_2680B3B8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  [v0 namespace];
  sub_2680B3B6C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26808C12C(v4, &qword_280249278, &qword_2680B54F8);
    v13 = [v0 namespace];
    sub_2680A0E58();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    (*(v6 + 104))(v10, *MEMORY[0x277D5DCC8], v5);
    sub_2680A0EAC(qword_2813192B8, MEMORY[0x277D5DCD8]);
    sub_2680B41CC();
    sub_2680B41CC();
    v16 = *(v6 + 8);
    v16(v10, v5);
    if (v18[1] == v18[0])
    {
      sub_2680A0E58();
      swift_allocError();
      *v17 = 0;
      *(v17 + 8) = 2;
      swift_willThrow();
    }

    return (v16)(v12, v5);
  }
}

uint64_t sub_2680A09A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249260, &qword_2680B54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = sub_2680B3B5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  [v0 source];
  sub_2680B3B3C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26808C12C(v4, &qword_280249260, &qword_2680B54F0);
    v13 = [v0 source];
    sub_2680A0E58();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    (*(v6 + 104))(v10, *MEMORY[0x277D5DCB0], v5);
    sub_2680A0EAC(&qword_280249270, MEMORY[0x277D5DCB8]);
    sub_2680B41CC();
    sub_2680B41CC();
    v16 = *(v6 + 8);
    v16(v10, v5);
    if (v18[3] == v18[1])
    {
      sub_2680A0E58();
      swift_allocError();
      *v17 = 1;
      *(v17 + 8) = 2;
      swift_willThrow();
    }

    return (v16)(v12, v5);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ParseOverride.validateForUpdate()()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_2680A0CEC(&selRef_validateForUpdate_);
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2680A0CEC(SEL *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ParseOverride();
  if (objc_msgSendSuper2(&v8, *a1, v9))
  {
    v4 = v9[0];
    result = sub_2680A06D4();
    if (!v2)
    {
      result = sub_2680A09A0();
    }
  }

  else
  {
    v6 = v9[0];
    sub_2680B2E1C();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2680A0DD4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

unint64_t sub_2680A0E58()
{
  result = qword_280249268;
  if (!qword_280249268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249268);
  }

  return result;
}

uint64_t sub_2680A0EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s15ValidationErrorOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s15ValidationErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2680A0F8C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2680A0FA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

BOOL sub_2680A0FD0(uint64_t a1)
{
  v2 = sub_2680B32EC();
  v5[2] = a1;
  v3 = sub_268098390(sub_2680A10B0, v5, v2);

  return v3;
}

uint64_t sub_2680A1050()
{
  sub_2680B32DC();
  sub_2680913A4();
  return sub_2680B40AC() & 1;
}

uint64_t sub_2680A1120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2680B452C();
  sub_2680B410C();
  MEMORY[0x26D6100D0](a3);
  return sub_2680B454C();
}

uint64_t sub_2680A11A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2680A11E0(uint64_t result, int a2, int a3)
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

unint64_t sub_2680A1234()
{
  result = qword_281319338;
  if (!qword_281319338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281319338);
  }

  return result;
}

uint64_t sub_2680A129C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249140, &qword_2680B52C8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281319250 = result;
  return result;
}

uint64_t static SiriNLOverridePrimaryStore.getWeakSharedTrieStore()(uint64_t a1)
{
  if (qword_281319248 != -1)
  {
    a1 = OUTLINED_FUNCTION_9_2();
  }

  v1 = qword_281319250;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_17_1();
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_2680A1540(v3, &v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_2680A13A8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281319230 != -1)
  {
    swift_once();
  }

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t SiriNLOverridePrimaryStore.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SiriNLOverridePrimaryStore.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void *sub_2680A1514@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_26809A11C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2680A155C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26808A6DC(a1, a2);
  }

  return a1;
}

uint64_t UtteranceRuleMatchResult.init(matched:comparisonType:allUdaSpanNodes:textCheckingResult:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  matched = type metadata accessor for UtteranceRuleMatchResult(0);
  v11 = matched[6];
  *a5 = a1;
  *&a5[v11] = a3;
  v12 = matched[5];
  v13 = sub_2680B37CC();
  OUTLINED_FUNCTION_9(v13);
  result = (*(v14 + 32))(&a5[v12], a2);
  *&a5[matched[7]] = a4;
  return result;
}

uint64_t TurnInputRuleMatchResult.init(matched:utteranceRuleMatchResult:userDialogActs:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  matched = type metadata accessor for TurnInputRuleMatchResult(0);
  v9 = *(matched + 24);
  *a4 = a1;
  result = sub_2680A16FC(a2, &a4[*(matched + 20)]);
  *&a4[v9] = a3;
  return result;
}

uint64_t sub_2680A16FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680A1778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriNLOverride();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OverrideMatchResult.turnInputMatchResults.getter()
{
  v1 = *(v0 + *(type metadata accessor for OverrideMatchResult(0) + 24));
}

uint64_t OverrideMatchResult.userDialogActs.getter()
{
  v1 = *(v0 + *(type metadata accessor for OverrideMatchResult(0) + 28));
}

uint64_t OverrideMatchResult.userDialogActs.setter()
{
  v2 = OUTLINED_FUNCTION_10_1();
  v3 = *(type metadata accessor for OverrideMatchResult(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*OverrideMatchResult.userDialogActs.modify())()
{
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = *(type metadata accessor for OverrideMatchResult(v0) + 28);
  return nullsub_1;
}

uint64_t OverrideMatchResult.getPatchedUserParse(turnInputAndPreprocessing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a1;
  v189 = a2;
  v164 = sub_2680B31FC();
  v3 = OUTLINED_FUNCTION_4(v164);
  v163 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6();
  v161 = v8 - v7;
  OUTLINED_FUNCTION_21();
  v167 = sub_2680B37CC();
  v9 = OUTLINED_FUNCTION_4(v167);
  v166 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6();
  v165 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v182 = &v155 - v19;
  v20 = OUTLINED_FUNCTION_21();
  matched = type metadata accessor for UtteranceRuleMatchResult(v20);
  v21 = OUTLINED_FUNCTION_9(matched);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  v186 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492D0, &qword_2680B5718);
  v27 = OUTLINED_FUNCTION_7(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v181 = &v155 - v30;
  v31 = OUTLINED_FUNCTION_21();
  v180 = type metadata accessor for TurnInputRuleMatchResult(v31);
  v32 = OUTLINED_FUNCTION_9(v180);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6();
  v185 = v36 - v35;
  OUTLINED_FUNCTION_21();
  v179 = sub_2680B2EBC();
  v37 = OUTLINED_FUNCTION_4(v179);
  v177 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6();
  v175 = v42 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492D8, &unk_2680B5720);
  v44 = OUTLINED_FUNCTION_7(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v176 = &v155 - v47;
  OUTLINED_FUNCTION_21();
  v178 = sub_2680B2F8C();
  v48 = OUTLINED_FUNCTION_4(v178);
  v170 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_20();
  v169 = v52 - v53;
  MEMORY[0x28223BE20](v54);
  v168 = &v155 - v55;
  OUTLINED_FUNCTION_21();
  v173 = sub_2680B2FDC();
  v56 = OUTLINED_FUNCTION_4(v173);
  v172 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6();
  v62 = v61 - v60;
  v63 = sub_2680B2FEC();
  v64 = OUTLINED_FUNCTION_4(v63);
  v171 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6();
  v70 = v69 - v68;
  v187 = sub_2680B302C();
  v71 = OUTLINED_FUNCTION_4(v187);
  v174 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_20();
  v77 = v75 - v76;
  MEMORY[0x28223BE20](v78);
  v80 = &v155 - v79;
  v81 = sub_2680B403C();
  v82 = OUTLINED_FUNCTION_7(v81);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6();
  v85 = sub_2680B31AC();
  v86 = OUTLINED_FUNCTION_4(v85);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_20();
  v160 = v91 - v92;
  v94 = MEMORY[0x28223BE20](v93);
  MEMORY[0x28223BE20](v94);
  v188 = &v155 - v95;
  OUTLINED_FUNCTION_21();
  v96 = *(type metadata accessor for SiriNLOverride() + 48);
  v183 = v2;
  v97 = (v2 + v96);
  v98 = v97[1];
  if (v98 >> 60 != 15)
  {
    v157 = v88;
    v101 = *v97;
    v192 = 0;
    v190 = 0u;
    v191 = 0u;
    sub_2680A155C(v101, v98);
    sub_26808A6DC(v101, v98);
    sub_2680B402C();
    sub_2680A278C();
    v158 = v101;
    v159 = v98;
    sub_2680B404C();
    v156 = *(v157 + 32);
    v156();
    v104 = *(sub_2680B30DC() + 16);

    if (v104)
    {
      sub_2680B301C();
      (*(v171 + 104))(v70, *MEMORY[0x277D5DAB0], v63);
      sub_2680B300C();
      (*(v172 + 104))(v62, *MEMORY[0x277D5DA80], v173);
      sub_2680B2FFC();
      v105 = v174;
      v106 = v187;
      (*(v174 + 16))(v77, v80, v187);
      sub_2680B319C();
      v107 = v175;
      sub_2680B2EAC();
      v108 = v176;
      sub_2680B3EAC();
      (*(v177 + 8))(v107, v179);
      v109 = v178;
      if (__swift_getEnumTagSinglePayload(v108, 1, v178) == 1)
      {
        (*(v105 + 8))(v80, v106);
        sub_26808C18C(v108, &qword_2802492D8, &unk_2680B5720);
      }

      else
      {
        v112 = v170;
        v113 = v85;
        v114 = v105;
        v115 = v168;
        (*(v170 + 32))(v168, v108, v109);
        (*(v112 + 16))(v169, v115, v109);
        sub_2680B318C();
        (*(v112 + 8))(v115, v109);
        (*(v114 + 8))(v80, v187);
        v85 = v113;
      }

      v116 = v186;
      v117 = matched;
      v119 = v181;
      v118 = v182;
      v120 = v180;
      v121 = type metadata accessor for OverrideMatchResult(0);
      sub_26809DDFC(*(v183 + *(v121 + 24)), v119);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v119, 1, v120);
      v123 = v185;
      if (EnumTagSinglePayload == 1)
      {
        v124 = &qword_2802492D0;
        v125 = &qword_2680B5718;
        v126 = v119;
LABEL_22:
        sub_26808C18C(v126, v124, v125);
        sub_2680B425C();
        v127 = v189;
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        sub_2680B406C();
        OUTLINED_FUNCTION_6_4();
        v128 = OUTLINED_FUNCTION_7_4();
        v129(v128);
        v102 = v127;
        goto LABEL_9;
      }

      sub_2680A2854(v119, v185, type metadata accessor for TurnInputRuleMatchResult);
      sub_2680A27E4(v123 + *(v120 + 20), v118);
      if (__swift_getEnumTagSinglePayload(v118, 1, v117) == 1)
      {
        OUTLINED_FUNCTION_0_4();
        v124 = &qword_2802492C8;
        v125 = &qword_2680B5710;
        v126 = v118;
        goto LABEL_22;
      }

      sub_2680A2854(v118, v116, type metadata accessor for UtteranceRuleMatchResult);
      v130 = v166;
      v131 = v165;
      v132 = v167;
      (*(v166 + 16))(v165, v116 + *(v117 + 20), v167);
      v133 = (*(v130 + 88))(v131, v132);
      if (v133 == *MEMORY[0x277D5DBA0])
      {
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_1_5();
        v134 = v188;
        v135 = v189;
        v136 = v189;
LABEL_27:
        (v156)(v136, v134, v85);
        v102 = v135;
        v103 = 0;
        return __swift_storeEnumTagSinglePayload(v102, v103, 1, v85);
      }

      v137 = v188;
      if (v133 != *MEMORY[0x277D5DBA8])
      {
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_0_4();
        v151 = OUTLINED_FUNCTION_7_4();
        v152(v151);
        OUTLINED_FUNCTION_1_5();
        __swift_storeEnumTagSinglePayload(v189, 1, 1, v85);
        return (*(v166 + 8))(v165, v167);
      }

      v138 = *(v116 + *(v117 + 24));
      if (v138)
      {
        v139 = sub_2680B3E0C();
        v140 = v137;
        v142 = v141;
        v143 = v161;
        sub_2680B3DDC();
        sub_26809B764(v139, v142, v138, v143, v140, v144, v145, v146, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
        v148 = v147;

        (*(v163 + 8))(v143, v164);
        if (v148)
        {
          v149 = v157;
          v150 = v160;
          (*(v157 + 16))(v160, v140, v85);
          sub_2680B317C();
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_0_4();
          (*(v149 + 8))(v140, v85);
          OUTLINED_FUNCTION_1_5();
          v135 = v189;
          v136 = v189;
          v134 = v150;
        }

        else
        {
          OUTLINED_FUNCTION_0_4();
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_1_5();
          v135 = v189;
          v136 = v189;
          v134 = v140;
        }

        goto LABEL_27;
      }

      sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_2680B406C();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_0_4();
      v153 = OUTLINED_FUNCTION_7_4();
      v154(v153);
      OUTLINED_FUNCTION_1_5();
    }

    else
    {
      sub_2680B425C();
      if (qword_2813194A0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      sub_2680B406C();
      OUTLINED_FUNCTION_6_4();
      v110 = OUTLINED_FUNCTION_7_4();
      v111(v110);
    }

    v102 = v189;
LABEL_9:
    v103 = 1;
    return __swift_storeEnumTagSinglePayload(v102, v103, 1, v85);
  }

  v99 = v189;
  sub_2680B425C();
  if (qword_2813194A0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_2680B406C();

  return __swift_storeEnumTagSinglePayload(v99, 1, 1, v85);
}

unint64_t sub_2680A278C()
{
  result = qword_2813192E8;
  if (!qword_2813192E8)
  {
    sub_2680B31AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813192E8);
  }

  return result;
}

uint64_t sub_2680A27E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492C8, &qword_2680B5710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680A2854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_9(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2680A28B4()
{
  v1 = OUTLINED_FUNCTION_10_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t TurnInputRuleMatchResult.utteranceRuleMatchResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TurnInputRuleMatchResult(0) + 20);

  return sub_2680A27E4(v3, a1);
}

uint64_t (*TurnInputRuleMatchResult.userDialogActs.modify())()
{
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = *(type metadata accessor for TurnInputRuleMatchResult(v0) + 24);
  return nullsub_1;
}

uint64_t UtteranceRuleMatchResult.comparisonType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UtteranceRuleMatchResult(0) + 20);
  v4 = sub_2680B37CC();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_2680A2A7C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));
}

uint64_t sub_2680A2AD0()
{
  v2 = OUTLINED_FUNCTION_10_1();
  v4 = *(v3(v2) + 24);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t (*UtteranceRuleMatchResult.allUdaSpanNodes.modify())()
{
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = *(type metadata accessor for UtteranceRuleMatchResult(v0) + 24);
  return nullsub_1;
}

void *UtteranceRuleMatchResult.textCheckingResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for UtteranceRuleMatchResult(0) + 28));
  v2 = v1;
  return v1;
}

void sub_2680A2B88()
{
  type metadata accessor for SiriNLOverride();
  if (v0 <= 0x3F)
  {
    sub_2680A2D78(319, &qword_281318F80, type metadata accessor for TurnInputRuleMatchResult, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2680A2ED0(319, &unk_281318F68, &qword_2802492E0, &qword_2680B5798);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2680A2C9C()
{
  sub_2680A2D78(319, &qword_2813193B0, type metadata accessor for UtteranceRuleMatchResult, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2680A2ED0(319, &unk_281318F68, &qword_2802492E0, &qword_2680B5798);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2680A2D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2680A2DDC()
{
  sub_2680B37CC();
  if (v0 <= 0x3F)
  {
    sub_2680A2ED0(319, &qword_281318F98, &qword_2802492E8, qword_2680B57E0);
    if (v1 <= 0x3F)
    {
      sub_2680A2D78(319, &qword_281318F48, sub_2680A2F24, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2680A2ED0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2680B42AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2680A2F24()
{
  result = qword_281319310;
  if (!qword_281319310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281319310);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_2680A28B4();
}

id ParseOverride.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ParseOverride.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ParseOverride();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ParseOverride.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParseOverride();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2680A3140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492F8, &unk_2680B5848);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_2680B31AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OverrideMatchResult.getPatchedUserParse(turnInputAndPreprocessing:)(a2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_26808C18C(v9, &qword_2802492F8, &unk_2680B5848);
    matched = type metadata accessor for OverrideMatchResultAndParse(0);
    v16 = a3;
    v17 = 1;
  }

  else
  {
    v18 = *(v11 + 32);
    v18(v14, v9, v10);
    sub_2680A5EF0(a1, a3);
    v19 = type metadata accessor for OverrideMatchResultAndParse(0);
    v18((a3 + *(v19 + 20)), v14, v10);
    v16 = a3;
    v17 = 0;
    matched = v19;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, matched);
}

uint64_t OverrideResult.init(replaceMatchFromMatches:turnInputAndPreprocessing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492F8, &unk_2680B5848);
  OUTLINED_FUNCTION_7(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_2680B31AC();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  v20 = (v19 - v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802492B8, &qword_2680B56A0);
  OUTLINED_FUNCTION_7(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  matched = type metadata accessor for OverrideMatchResult(0);
  v28 = OUTLINED_FUNCTION_9(matched);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  v33 = v32 - v31;
  Array<A>.oldestOverride.getter(a1);

  if (__swift_getEnumTagSinglePayload(v26, 1, matched) == 1)
  {
    v34 = sub_2680B3E1C();
    OUTLINED_FUNCTION_9(v34);
    (*(v35 + 8))(a2);
    v36 = &qword_2802492B8;
    v37 = &qword_2680B56A0;
    v38 = v26;
  }

  else
  {
    sub_26808AC2C(v26, v33);
    OverrideMatchResult.getPatchedUserParse(turnInputAndPreprocessing:)(a2, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      v41 = *(v15 + 32);
      v41(v20, v11, v12);
      sub_2680B314C();
      v42 = sub_2680B3E1C();
      OUTLINED_FUNCTION_9(v42);
      (*(v43 + 8))(a2);
      OUTLINED_FUNCTION_8_2();
      v41(a3, v20, v12);
      goto LABEL_7;
    }

    v39 = sub_2680B3E1C();
    OUTLINED_FUNCTION_9(v39);
    (*(v40 + 8))(a2);
    OUTLINED_FUNCTION_8_2();
    v36 = &qword_2802492F8;
    v37 = &unk_2680B5848;
    v38 = v11;
  }

  sub_26808C18C(v38, v36, v37);
LABEL_7:
  type metadata accessor for OverrideResult(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2680A367C(uint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t))
{
  v6 = a1;

  a2(&v6);
  a3(v6);
}

void sub_2680A370C()
{
  OUTLINED_FUNCTION_27_1();
  v33 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_33_0();
  v13 = sub_2680B2E9C();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = v32 - v23;
  v25 = type metadata accessor for SiriNLOverride();
  sub_26809FDFC(v4 + *(v25 + 36), v1);
  OUTLINED_FUNCTION_16_1(v1, 1);
  if (v29)
  {
    sub_26808C18C(v1, &qword_280249250, &qword_2680B54D8);
  }

  else
  {
    v32[1] = v0;
    v26 = *(v16 + 32);
    v26(v24, v1, v13);
    sub_26809FDFC(v33 + *(v25 + 36), v11);
    v27 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_16_1(v27, v28);
    if (v29)
    {
      (*(v16 + 8))(v24, v13);
      sub_26808C18C(v11, &qword_280249250, &qword_2680B54D8);
    }

    else
    {
      v26(v21, v11, v13);
      sub_2680B2E8C();
      v30 = *(v16 + 8);
      v31 = OUTLINED_FUNCTION_23_2();
      v30(v31);
      (v30)(v24, v13);
    }
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_2680A3A04(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_25_0();
      if (v8)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249208, &qword_2680B5460);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  OUTLINED_FUNCTION_19_2(v12);
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_22_2();
  v16 = _swift_stdlib_malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_22;
  }

  v15[2] = v10;
  v15[3] = 2 * ((v16 - v4) / v14);
LABEL_17:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  OUTLINED_FUNCTION_13_0(v18);
  v20 = *(v19 + 80);
  OUTLINED_FUNCTION_33();
  if (a1)
  {
    sub_26809EA5C();
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
  }
}

void sub_2680A3B84(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_17();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_25_0();
      if (v8)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_15();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249318, &qword_2680B58D8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249218, &qword_2680B5470);
  OUTLINED_FUNCTION_19_2(v12);
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_22_2();
  v16 = _swift_stdlib_malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_22;
  }

  v15[2] = v10;
  v15[3] = 2 * ((v16 - v4) / v14);
LABEL_17:
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249218, &qword_2680B5470);
  OUTLINED_FUNCTION_13_0(v18);
  v20 = *(v19 + 80);
  OUTLINED_FUNCTION_33();
  if (a1)
  {
    sub_26809EA70();
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
  }
}

uint64_t sub_2680A3D04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_2680A3D5C(uint64_t *a1)
{
  v2 = *(type metadata accessor for OverrideMatchResultAndParse(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2680A5E30(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_2680A40AC(v6, type metadata accessor for OverrideMatchResultAndParse);
  *a1 = v3;
}

void sub_2680A3E44(uint64_t *a1)
{
  v2 = *(type metadata accessor for OverrideMatchResult(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2680A5E90(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_2680A40AC(v6, type metadata accessor for OverrideMatchResult);
  *a1 = v3;
}

void sub_2680A3F34()
{
  sub_2680B31AC();
  if (v0 <= 0x3F)
  {
    sub_2680A3FA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2680A3FA8()
{
  if (!qword_281318F88)
  {
    sub_2680B31AC();
    v0 = sub_2680B420C();
    if (!v1)
    {
      atomic_store(v0, &qword_281318F88);
    }
  }
}

uint64_t sub_2680A4028()
{
  result = type metadata accessor for OverrideMatchResult(319);
  if (v1 <= 0x3F)
  {
    result = sub_2680B31AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2680A40AC(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 8);
  if (sub_2680B444C() < v3)
  {
    if (v3 >= -1)
    {
      v4 = v3 / 2;
      if (v3 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v5 = sub_2680B41FC();
        *(v5 + 16) = v4;
      }

      v6 = (a2)(0);
      OUTLINED_FUNCTION_7(v6);
      v8 = *(v7 + 80);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_32_1();
      sub_2680A4658();
      *(v5 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_32_1();
    sub_2680A4200();
  }
}

void sub_2680A4200()
{
  OUTLINED_FUNCTION_27_1();
  v76 = v0;
  v85 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v80 = v16;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_0();
  v82 = v18;
  OUTLINED_FUNCTION_21();
  v81 = sub_2680B2E9C();
  v19 = OUTLINED_FUNCTION_4(v81);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v77 = v24;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v25);
  v27 = &v65[-v26];
  v28 = v3(0);
  v29 = v27;
  v75 = v28;
  v30 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v74 = &v65[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v65[-v34];
  MEMORY[0x28223BE20](v33);
  v84 = &v65[-v37];
  v67 = v9;
  if (v7 != v9)
  {
    v38 = *v5;
    v39 = *(v36 + 72);
    v78 = (v21 + 8);
    v79 = (v21 + 32);
    v40 = v38 + v39 * (v7 - 1);
    v72 = -v39;
    v73 = v38;
    v41 = v11 - v7;
    v66 = v39;
    v42 = v38 + v39 * v7;
    while (2)
    {
      v70 = v40;
      v71 = v7;
      v68 = v42;
      v69 = v41;
      v43 = v41;
      while (1)
      {
        v44 = v84;
        sub_2680A5EF0(v42, v84);
        sub_2680A5EF0(v40, v35);
        v45 = type metadata accessor for SiriNLOverride();
        v46 = v82;
        sub_26809FDFC(&v44[*(v45 + 36)], v82);
        v47 = OUTLINED_FUNCTION_18_1();
        v48 = v81;
        OUTLINED_FUNCTION_16_1(v47, v49);
        if (v50)
        {
          v64 = v46;
          goto LABEL_13;
        }

        v83 = v43;
        v51 = v46;
        v52 = *v79;
        (*v79)(v29, v51, v48);
        v53 = &v35[*(v45 + 36)];
        v54 = v80;
        sub_26809FDFC(v53, v80);
        OUTLINED_FUNCTION_16_1(v54, 1);
        if (v50)
        {
          break;
        }

        v55 = v35;
        v56 = v29;
        v57 = v77;
        v52(v77, v54, v48);
        v58 = sub_2680B2E8C();
        v59 = *v78;
        v60 = v57;
        v29 = v56;
        v35 = v55;
        (*v78)(v60, v48);
        v59(v29, v48);
        sub_2680A3D04(v55, v85);
        sub_2680A3D04(v84, v85);
        v61 = v83;
        if (v58 == -1)
        {
          if (!v73)
          {
            __break(1u);
            return;
          }

          v62 = v74;
          sub_26808AC2C(v42, v74);
          swift_arrayInitWithTakeFrontToBack();
          sub_26808AC2C(v62, v40);
          v40 += v72;
          v42 += v72;
          v63 = __CFADD__(v61, 1);
          v43 = v61 + 1;
          v35 = v55;
          if (!v63)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      (*v78)(v29, v48);
      v64 = v54;
LABEL_13:
      sub_26808C18C(v64, &qword_280249250, &qword_2680B54D8);
      sub_2680A3D04(v35, v85);
      sub_2680A3D04(v84, v85);
LABEL_14:
      v7 = v71 + 1;
      v40 = v70 + v66;
      v41 = v69 - 1;
      v42 = v68 + v66;
      if (v71 + 1 != v67)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_2680A4658()
{
  OUTLINED_FUNCTION_27_1();
  v200 = v2;
  v215 = v3;
  v5 = v4;
  v7 = v6;
  v205 = v0;
  v9 = v8;
  v11 = v10;
  v187 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v212 = v17;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_51();
  v214 = v19;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_51();
  v193 = v21;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26_0();
  v197 = v23;
  OUTLINED_FUNCTION_21();
  v24 = sub_2680B2E9C();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v210 = v30;
  OUTLINED_FUNCTION_5_4();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v184 - v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_51();
  v188 = v35;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_33_0();
  v211 = v7(v37);
  v38 = OUTLINED_FUNCTION_4(v211);
  v201 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v194 = v42;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_51();
  v209 = v44;
  OUTLINED_FUNCTION_5_4();
  v46 = MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_51();
  v220 = v47;
  OUTLINED_FUNCTION_5_4();
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v184 - v50;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_51();
  v204 = v52;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v53);
  v55 = MEMORY[0x28223BE20](&v184 - v54);
  v202 = v11;
  v58 = v11[1];
  if (v58 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_115:
    v221 = *v187;
    if (!*v187)
    {
      goto LABEL_157;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_151:
      i = sub_2680A5C2C(i);
    }

    v174 = i;
    v175 = (i + 16);
    for (i = *(i + 16); i >= 2; *v175 = i)
    {
      if (!*v202)
      {
        goto LABEL_154;
      }

      v176 = (v174 + 16 * i);
      v177 = *v176;
      v178 = &v175[2 * i];
      v179 = v178[1];
      v180 = v205;
      sub_2680A5418(*v202 + *(v201 + 72) * *v176, *v202 + *(v201 + 72) * *v178, *v202 + *(v201 + 72) * v179, v221, v5, v200, v5, v173, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
      v205 = v180;
      if (v180)
      {
        break;
      }

      if (v179 < v177)
      {
        goto LABEL_142;
      }

      if (i - 2 >= *v175)
      {
        goto LABEL_143;
      }

      *v176 = v177;
      v176[1] = v179;
      v181 = *v175 - i;
      if (*v175 < i)
      {
        goto LABEL_144;
      }

      i = *v175 - 1;
      memmove(v178, v178 + 2, 16 * v181);
    }

LABEL_125:

    OUTLINED_FUNCTION_26_2();
    return;
  }

  v59 = 0;
  v217 = (v27 + 8);
  i = MEMORY[0x277D84F90];
  v189 = v9;
  v221 = v34;
  v196 = v1;
  v185 = (&v184 - v56);
  v219 = v24;
  v216 = v57;
  v203 = v51;
  v184 = v55;
  v218 = (v27 + 32);
  while (1)
  {
    v61 = v59 + 1;
    v190 = v59;
    if (v59 + 1 >= v58)
    {
      goto LABEL_39;
    }

    v62 = v59;
    v199 = v58;
    v63 = *v202;
    v64 = *(v201 + 72);
    v206 = v59 + 1;
    v65 = v63 + v64 * v61;
    OUTLINED_FUNCTION_37_0(v65);
    v27 = v184;
    sub_2680A5EF0(v63 + v64 * v62, v184);
    v66 = v205;
    sub_2680A370C();
    LODWORD(v207) = v67;
    v205 = v66;
    if (v66)
    {
      sub_2680A3D04(v27, v5);
      v182 = OUTLINED_FUNCTION_23_2();
      sub_2680A3D04(v182, v183);
      goto LABEL_125;
    }

    v186 = i;
    sub_2680A3D04(v27, v5);
    v68 = OUTLINED_FUNCTION_23_2();
    sub_2680A3D04(v68, v69);
    v70 = v62 + 2;
    i = v63 + v64 * (v62 + 2);
    v61 = v206;
    v24 = v219;
    v198 = v64;
    v71 = v199;
    while (1)
    {
      v72 = v70;
      if (v61 + 1 >= v71)
      {
        break;
      }

      v208 = v70;
      v206 = v61;
      v73 = v204;
      OUTLINED_FUNCTION_37_0(i);
      v74 = v203;
      sub_2680A5EF0(v65, v203);
      v75 = type metadata accessor for SiriNLOverride();
      OUTLINED_FUNCTION_29_0(v75);
      v77 = v73 + v76;
      v78 = v197;
      sub_26809FDFC(v77, v197);
      OUTLINED_FUNCTION_17_3(v78, 1, v24);
      if (v85)
      {
        sub_26808C18C(v78, &qword_280249250, &qword_2680B54D8);
        v27 = 0;
      }

      else
      {
        v79 = v78;
        v80 = v196;
        v195 = *v218;
        (v195)(v196, v79, v24);
        v81 = v74 + *(v27 + 36);
        v82 = v193;
        sub_26809FDFC(v81, v193);
        v83 = OUTLINED_FUNCTION_18_1();
        OUTLINED_FUNCTION_17_3(v83, v84, v24);
        if (v85)
        {
          (*v217)(v80, v24);
          sub_26808C18C(v82, &qword_280249250, &qword_2680B54D8);
          v27 = 0;
        }

        else
        {
          v86 = v188;
          (v195)(v188, v82, v24);
          v87 = sub_2680B2E8C();
          v88 = *v217;
          (*v217)(v86, v24);
          v88(v196, v24);
          v27 = v87 == -1;
        }

        v64 = v198;
      }

      v72 = v208;
      sub_2680A3D04(v203, v5);
      sub_2680A3D04(v204, v5);
      i += v64;
      v65 += v64;
      v61 = v206 + 1;
      v70 = v72 + 1;
      v71 = v199;
      if ((v207 & 1) != v27)
      {
        goto LABEL_17;
      }
    }

    v61 = v71;
LABEL_17:
    if ((v207 & 1) == 0)
    {
      v9 = v189;
LABEL_38:
      i = v186;
      goto LABEL_39;
    }

    v9 = v189;
    if (v61 < v190)
    {
      goto LABEL_150;
    }

    if (v190 >= v61)
    {
      goto LABEL_38;
    }

    v89 = v71 >= v72 ? v72 : v71;
    v90 = v64;
    v91 = v64 * (v89 - 1);
    v92 = v90 * v89;
    v93 = v190 * v90;
    v94 = v61;
    v95 = v190;
    do
    {
      if (v95 != --v94)
      {
        v96 = *v202;
        if (!*v202)
        {
          goto LABEL_155;
        }

        v97 = v61;
        v27 = v96 + v93;
        sub_26808AC2C(v96 + v93, v194);
        v98 = v93 < v91 || v27 >= v96 + v92;
        if (v98)
        {
          OUTLINED_FUNCTION_31_0();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v93 != v91)
        {
          OUTLINED_FUNCTION_31_0();
          swift_arrayInitWithTakeBackToFront();
        }

        sub_26808AC2C(v194, v96 + v91);
        v9 = v189;
        v61 = v97;
        v24 = v219;
      }

      ++v95;
      v91 -= v198;
      v92 -= v198;
      v93 += v198;
    }

    while (v95 < v94);
    i = v186;
    v34 = v221;
LABEL_39:
    v99 = v202[1];
    v100 = v214;
    if (v61 >= v99)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v61, v190))
    {
      goto LABEL_147;
    }

    if (v61 - v190 >= v9)
    {
LABEL_62:
      v101 = v190;
      goto LABEL_63;
    }

    v101 = v190;
    v102 = v190 + v9;
    if (__OFADD__(v190, v9))
    {
      goto LABEL_148;
    }

    if (v102 >= v99)
    {
      v102 = v202[1];
    }

    if (v102 < v190)
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v61 != v102)
    {
      break;
    }

LABEL_63:
    if (v61 < v101)
    {
      goto LABEL_146;
    }

    v206 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = *(i + 16);
      OUTLINED_FUNCTION_18();
      sub_26809ED18();
      i = v171;
    }

    v124 = *(i + 16);
    v125 = v124 + 1;
    v126 = v206;
    if (v124 >= *(i + 24) >> 1)
    {
      sub_26809ED18();
      v126 = v206;
      i = v172;
    }

    *(i + 16) = v125;
    v127 = i + 32;
    v128 = (i + 32 + 16 * v124);
    *v128 = v190;
    v128[1] = v126;
    v208 = *v187;
    if (!v208)
    {
      goto LABEL_156;
    }

    v129 = v24;
    if (v124)
    {
      while (1)
      {
        v130 = v125 - 1;
        v131 = (v127 + 16 * (v125 - 1));
        v132 = (i + 16 * v125);
        if (v125 >= 4)
        {
          break;
        }

        if (v125 == 3)
        {
          v133 = *(i + 32);
          v134 = *(i + 40);
          v143 = __OFSUB__(v134, v133);
          v135 = v134 - v133;
          v136 = v143;
LABEL_83:
          if (v136)
          {
            goto LABEL_133;
          }

          v148 = *v132;
          v147 = v132[1];
          v149 = __OFSUB__(v147, v148);
          v150 = v147 - v148;
          v151 = v149;
          if (v149)
          {
            goto LABEL_136;
          }

          v152 = v131[1];
          v153 = v152 - *v131;
          if (__OFSUB__(v152, *v131))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v150, v153))
          {
            goto LABEL_141;
          }

          if (v150 + v153 >= v135)
          {
            if (v135 < v153)
            {
              v130 = v125 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v125 < 2)
        {
          goto LABEL_135;
        }

        v155 = *v132;
        v154 = v132[1];
        v143 = __OFSUB__(v154, v155);
        v150 = v154 - v155;
        v151 = v143;
LABEL_98:
        if (v151)
        {
          goto LABEL_138;
        }

        v157 = *v131;
        v156 = v131[1];
        v143 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v143)
        {
          goto LABEL_140;
        }

        if (v158 < v150)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v130 - 1 >= v125)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v202)
        {
          goto LABEL_153;
        }

        v162 = i;
        v163 = (v127 + 16 * (v130 - 1));
        v164 = *v163;
        v165 = v127;
        v166 = v130;
        i = v127 + 16 * v130;
        v167 = *(i + 8);
        v168 = v205;
        sub_2680A5418(*v202 + *(v201 + 72) * *v163, *v202 + *(v201 + 72) * *i, *v202 + *(v201 + 72) * v167, v208, v5, v200, v5, v123, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195);
        v205 = v168;
        if (v168)
        {
          goto LABEL_125;
        }

        if (v167 < v164)
        {
          goto LABEL_128;
        }

        v27 = *(v162 + 16);
        if (v166 > v27)
        {
          goto LABEL_129;
        }

        *v163 = v164;
        v163[1] = v167;
        if (v166 >= v27)
        {
          goto LABEL_130;
        }

        v169 = v166;
        v125 = v27 - 1;
        memmove(i, (i + 16), 16 * (v27 - 1 - v169));
        i = v162;
        *(v162 + 16) = v27 - 1;
        v129 = v219;
        v34 = v221;
        v127 = v165;
        if (v27 <= 2)
        {
          goto LABEL_112;
        }
      }

      v137 = v127 + 16 * v125;
      v138 = *(v137 - 64);
      v139 = *(v137 - 56);
      v143 = __OFSUB__(v139, v138);
      v140 = v139 - v138;
      if (v143)
      {
        goto LABEL_131;
      }

      v142 = *(v137 - 48);
      v141 = *(v137 - 40);
      v143 = __OFSUB__(v141, v142);
      v135 = v141 - v142;
      v136 = v143;
      if (v143)
      {
        goto LABEL_132;
      }

      v144 = v132[1];
      v145 = v144 - *v132;
      if (__OFSUB__(v144, *v132))
      {
        goto LABEL_134;
      }

      v143 = __OFADD__(v135, v145);
      v146 = v135 + v145;
      if (v143)
      {
        goto LABEL_137;
      }

      if (v146 >= v140)
      {
        v160 = *v131;
        v159 = v131[1];
        v143 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v143)
        {
          goto LABEL_145;
        }

        if (v135 < v161)
        {
          v130 = v125 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v58 = v202[1];
    v59 = v206;
    v9 = v189;
    v24 = v129;
    if (v206 >= v58)
    {
      goto LABEL_115;
    }
  }

  v186 = i;
  v103 = *v202;
  v104 = *(v201 + 72);
  v105 = *v202 + v104 * (v61 - 1);
  v207 = -v104;
  v208 = v103;
  v106 = v190 - v61;
  v191 = v104;
  v107 = (v103 + v61 * v104);
  v213 = v5;
  v192 = v102;
LABEL_48:
  v206 = v61;
  v195 = v107;
  v198 = v106;
  v199 = v105;
  while (1)
  {
    v108 = v220;
    OUTLINED_FUNCTION_37_0(v107);
    v109 = v216;
    sub_2680A5EF0(v105, v216);
    v110 = type metadata accessor for SiriNLOverride();
    OUTLINED_FUNCTION_29_0(v110);
    sub_26809FDFC(v108 + v111, v100);
    v112 = v219;
    OUTLINED_FUNCTION_17_3(v100, 1, v219);
    if (v85)
    {
      v122 = v100;
LABEL_58:
      sub_26808C18C(v122, &qword_280249250, &qword_2680B54D8);
      v5 = v213;
      sub_2680A3D04(v216, v213);
      sub_2680A3D04(v220, v5);
      goto LABEL_60;
    }

    v113 = v100;
    v114 = *v218;
    (*v218)(v34, v113, v112);
    v115 = v109 + *(v27 + 36);
    v27 = v212;
    sub_26809FDFC(v115, v212);
    v116 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_3(v116, v117, v112);
    if (v85)
    {
      (*v217)(v34, v112);
      v122 = v27;
      v100 = v214;
      goto LABEL_58;
    }

    v118 = v210;
    v114(v210, v27, v112);
    v27 = sub_2680B2E8C();
    v119 = *v217;
    v120 = v118;
    v34 = v221;
    (*v217)(v120, v112);
    v119(v221, v112);
    v121 = v109;
    v5 = v213;
    sub_2680A3D04(v121, v213);
    sub_2680A3D04(v220, v5);
    if (v27 != -1)
    {
      v100 = v214;
LABEL_60:
      v61 = v206 + 1;
      v105 = v199 + v191;
      v106 = v198 - 1;
      v107 = &v195[v191];
      if (v206 + 1 == v192)
      {
        v61 = v192;
        i = v186;
        v24 = v219;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v208)
    {
      break;
    }

    v27 = v209;
    sub_26808AC2C(v107, v209);
    swift_arrayInitWithTakeFrontToBack();
    sub_26808AC2C(v27, v105);
    v105 += v207;
    v107 += v207;
    v98 = __CFADD__(v106++, 1);
    v100 = v214;
    if (v98)
    {
      goto LABEL_60;
    }
  }

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
}

void sub_2680A5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void, void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v157 = v26;
  v158 = v25;
  v28 = v27;
  v141 = v20;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249250, &qword_2680B54D8);
  v36 = OUTLINED_FUNCTION_7(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_51();
  v150 = v43;
  OUTLINED_FUNCTION_5_4();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v140 - v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_26_0();
  v156 = v48;
  OUTLINED_FUNCTION_21();
  v49 = sub_2680B2E9C();
  v50 = OUTLINED_FUNCTION_4(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  v142 = v55;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_51();
  v144 = v57;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_51();
  v145 = v59;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_26_0();
  v154 = v61;
  v62 = OUTLINED_FUNCTION_21();
  v155 = v28(v62);
  v63 = *(*(v155 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v155);
  v65 = MEMORY[0x28223BE20](v64);
  v153 = &v140 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v69 = &v140 - v68;
  MEMORY[0x28223BE20](v67);
  v72 = &v140 - v71;
  v74 = *(v73 + 72);
  if (!v74)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v75 = v32 - v34 == 0x8000000000000000 && v74 == -1;
  if (v75)
  {
    goto LABEL_73;
  }

  v76 = v30 - v32;
  if (v30 - v32 == 0x8000000000000000 && v74 == -1)
  {
    goto LABEL_74;
  }

  v143 = v41;
  a10 = v34;
  v160 = v158;
  v149 = (v52 + 32);
  v147 = v47;
  v148 = (v52 + 8);
  v78 = v76 / v74;
  v152 = v24;
  v79 = v74;
  if ((v32 - v34) / v74 < v76 / v74)
  {
    v150 = v69;
    v80 = (v32 - v34) / v74;
    v81 = v158;
    (v157)(v34, v80, v158);
    v153 = v81 + v80 * v79;
    v159 = v153;
    v146 = v30;
    v151 = v79;
    while (1)
    {
      if (v158 >= v153 || v32 >= v30)
      {
        goto LABEL_71;
      }

      sub_2680A5EF0(v32, v72);
      v83 = v150;
      OUTLINED_FUNCTION_37_0(v158);
      v84 = type metadata accessor for SiriNLOverride();
      OUTLINED_FUNCTION_29_0(v84);
      v86 = v156;
      sub_26809FDFC(&v72[v85], v156);
      OUTLINED_FUNCTION_17_3(v86, 1, v49);
      if (v75)
      {
        goto LABEL_20;
      }

      v157 = v32;
      v87 = *v149;
      v88 = v154;
      (*v149)(v154, v156, v49);
      v89 = v83 + *(v81 + 36);
      v90 = v147;
      sub_26809FDFC(v89, v147);
      v91 = OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_3(v91, v92, v49);
      if (v75)
      {
        break;
      }

      v97 = v34;
      v98 = v145;
      v87(v145, v90, v49);
      v99 = sub_2680B2E8C();
      v100 = *v148;
      v101 = v98;
      v34 = v97;
      (*v148)(v101, v49);
      v100(v154, v49);
      v24 = v152;
      sub_2680A3D04(v83, v152);
      sub_2680A3D04(v72, v24);
      v32 = v157;
      v30 = v146;
      if (v99 == -1)
      {
        v95 = v151;
        v81 = &v157[v151];
        if (v34 < v157 || v34 >= v81)
        {
          OUTLINED_FUNCTION_14_3();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v34 != v157)
        {
          OUTLINED_FUNCTION_14_3();
          swift_arrayInitWithTakeBackToFront();
        }

        v32 += v95;
        goto LABEL_30;
      }

LABEL_21:
      v95 = v151;
      v81 = v158 + v151;
      if (v34 < v158 || v34 >= v81)
      {
        OUTLINED_FUNCTION_14_3();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v34 != v158)
      {
        OUTLINED_FUNCTION_14_3();
        swift_arrayInitWithTakeBackToFront();
      }

      v160 = v81;
      v158 = v81;
LABEL_30:
      v34 += v95;
      a10 = v34;
    }

    (*v148)(v88, v49);
    v86 = v90;
    v32 = v157;
    v24 = v152;
    v30 = v146;
LABEL_20:
    sub_26808C18C(v86, &qword_280249250, &qword_2680B54D8);
    v93 = OUTLINED_FUNCTION_23_2();
    sub_2680A3D04(v93, v94);
    sub_2680A3D04(v72, v24);
    goto LABEL_21;
  }

  v156 = v70;
  v147 = v49;
  v103 = v158;
  (v157)(v32, v76 / v74, v158);
  v104 = v103 + v78 * v79;
  v105 = -v79;
  v106 = v104;
  v145 = -v79;
LABEL_42:
  v157 = v32;
  v107 = v32 + v105;
  v108 = v30;
  v140 = v106;
  v109 = v106;
  v110 = v144;
  v151 = v107;
  while (1)
  {
    if (v104 <= v158)
    {
      a10 = v157;
      v159 = v109;
      goto LABEL_71;
    }

    if (v157 <= v34)
    {
      break;
    }

    v111 = v110;
    v154 = v108;
    v146 = v109;
    v112 = v104 + v105;
    v113 = v104 + v105;
    v114 = v153;
    sub_2680A5EF0(v113, v153);
    v115 = v156;
    sub_2680A5EF0(v107, v156);
    v116 = type metadata accessor for SiriNLOverride();
    OUTLINED_FUNCTION_29_0(v116);
    v118 = v150;
    sub_26809FDFC(v114 + v117, v150);
    v119 = v147;
    OUTLINED_FUNCTION_16_1(v118, 1);
    if (v75)
    {
      v120 = v118;
    }

    else
    {
      v121 = *v149;
      (*v149)(v111, v118, v119);
      v122 = v115 + *(v107 + 36);
      v123 = v143;
      sub_26809FDFC(v122, v143);
      v124 = OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_16_1(v124, v125);
      if (!v126)
      {
        v130 = v142;
        v121(v142, v123, v119);
        v131 = sub_2680B2E8C();
        v132 = *v148;
        v133 = v130;
        v110 = v144;
        (*v148)(v133, v119);
        v132(v110, v119);
        v134 = v131 == -1;
        goto LABEL_52;
      }

      v127 = *v148;
      v128 = OUTLINED_FUNCTION_23_2();
      v129(v128);
      v120 = v123;
    }

    sub_26808C18C(v120, &qword_280249250, &qword_2680B54D8);
    v134 = 0;
    v110 = v111;
LABEL_52:
    v105 = v145;
    v135 = v154;
    v30 = &v154[v145];
    v24 = v152;
    sub_2680A3D04(v156, v152);
    sub_2680A3D04(v153, v24);
    if (v134)
    {
      if (v135 < v157 || v30 >= v157)
      {
        v32 = v151;
        OUTLINED_FUNCTION_14_3();
        swift_arrayInitWithTakeFrontToBack();
        v106 = v146;
      }

      else
      {
        v138 = v146;
        v106 = v146;
        v139 = v151;
        v32 = v151;
        if (v135 != v157)
        {
          OUTLINED_FUNCTION_10_2();
          swift_arrayInitWithTakeBackToFront();
          v32 = v139;
          v106 = v138;
        }
      }

      goto LABEL_42;
    }

    if (v135 < v104 || v30 >= v104)
    {
      OUTLINED_FUNCTION_10_2();
      swift_arrayInitWithTakeFrontToBack();
      v108 = &v135[v105];
      v104 = v112;
      v109 = v112;
      v107 = v151;
    }

    else
    {
      v109 = v112;
      v75 = v104 == v135;
      v108 = &v135[v105];
      v104 = v112;
      v107 = v151;
      if (!v75)
      {
        OUTLINED_FUNCTION_10_2();
        swift_arrayInitWithTakeBackToFront();
        v108 = &v135[v105];
        v104 = v112;
        v109 = v112;
      }
    }
  }

  a10 = v157;
  v159 = v140;
LABEL_71:
  sub_2680A5C40(&a10, &v160, &v159, v24);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_2680A5C40(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2680A5D1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802491B8, &qword_2680B5410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2680A5EF0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_52();
  v6 = v5(v4);
  OUTLINED_FUNCTION_9(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_2680A5FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2680956CC();
  *a2 = result;
  return result;
}

uint64_t sub_2680A6018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26808DCA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2680A6044()
{
  if (qword_2813194B8 != -1)
  {
    swift_once();
  }

  if (qword_2813194D0 != -1)
  {
    swift_once();
  }

  v0 = dword_2813194C8;
  swift_beginAccess();
  v1 = off_2813194C0;
  if (*(off_2813194C0 + 2) && (v2 = sub_26809EBBC(v0), (v3 & 1) != 0))
  {
    v4 = *(v1[7] + v2);
    result = swift_endAccess();
  }

  else
  {
    result = swift_endAccess();
    v4 = 8;
  }

  byte_281319958 = v4;
  return result;
}

void sub_2680A612C()
{
  v0 = sub_2680B40BC();
  v1 = MGGetSInt32Answer();

  dword_2813194C8 = v1;
}

void *sub_2680A6180()
{
  result = sub_2680B407C();
  off_2813194C0 = result;
  return result;
}

uint64_t sub_2680A61E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249320, &qword_2680B58E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileGestalt.DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2680A649C()
{
  result = qword_280249328;
  if (!qword_280249328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249328);
  }

  return result;
}

void sub_2680A64F0()
{
  OUTLINED_FUNCTION_54();
  v2 = sub_2680B3AEC();
  v3 = OUTLINED_FUNCTION_4(v2);
  v60 = v4;
  v61 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_45_0();
  v7 = sub_2680B3DBC();
  v8 = OUTLINED_FUNCTION_4(v7);
  v58 = v9;
  v59 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v57 = v13 - v12;
  OUTLINED_FUNCTION_21();
  v14 = sub_2680B3D8C();
  v15 = OUTLINED_FUNCTION_4(v14);
  v63 = v16;
  v64 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v62 = v20 - v19;
  OUTLINED_FUNCTION_21();
  v21 = sub_2680B38CC();
  v22 = OUTLINED_FUNCTION_4(v21);
  v66 = v23;
  v67 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v65 = v27 - v26;
  OUTLINED_FUNCTION_21();
  v28 = sub_2680B341C();
  v29 = OUTLINED_FUNCTION_4(v28);
  v68 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6();
  v35 = v34 - v33;
  v36 = sub_2680B3BAC();
  v37 = OUTLINED_FUNCTION_4(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6();
  v44 = v43 - v42;
  v45 = sub_2680B38FC();
  v46 = OUTLINED_FUNCTION_4(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6();
  v53 = v52 - v51;
  if (sub_2680B3A5C())
  {
    sub_2680B3ADC();
    sub_2680A8270();
    OUTLINED_FUNCTION_27_2();
    (*(v48 + 8))(v53, v45);
  }

  else if (sub_2680B3A6C())
  {
    sub_2680B3A3C();
    sub_2680A83C4();
    OUTLINED_FUNCTION_27_2();
    (*(v39 + 8))(v44, v36);
  }

  else if (sub_2680B3A2C())
  {
    sub_2680B3ABC();
    sub_2680A87F8();
    OUTLINED_FUNCTION_27_2();
    (*(v68 + 8))(v35, v28);
  }

  else
  {
    if (sub_2680B3A4C())
    {
      v54 = v65;
      sub_2680B3ACC();
      sub_2680A894C();
      OUTLINED_FUNCTION_27_2();
      v56 = v66;
      v55 = v67;
    }

    else if (sub_2680B3A9C())
    {
      v54 = v62;
      sub_2680B3A7C();
      sub_2680A8CFC();
      OUTLINED_FUNCTION_27_2();
      v56 = v63;
      v55 = v64;
    }

    else
    {
      if ((sub_2680B3AAC() & 1) == 0)
      {
        (*(v60 + 16))(v1, v0, v61);
        OUTLINED_FUNCTION_26();
        sub_2680B40DC();
        OUTLINED_FUNCTION_27_2();
        goto LABEL_14;
      }

      v54 = v57;
      sub_2680B3A8C();
      sub_2680A8E50();
      OUTLINED_FUNCTION_27_2();
      v56 = v58;
      v55 = v59;
    }

    (*(v56 + 8))(v54, v55);
  }

LABEL_14:
  OUTLINED_FUNCTION_53();
}

uint64_t sub_2680A692C(unsigned __int8 a1, char a2)
{
  v2 = 0x454E4F4850;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x454E4F4850;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 4473168;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x4E414D4553524F48;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1398097242;
      break;
    case 4:
      v5 = 0x4F454D4143;
      break;
    case 5:
      v5 = 0x4843544157;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v5 = 5390659;
      break;
    case 7:
      v5 = 0x544952414752414DLL;
      v3 = 0xE900000000000041;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 4473168;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x4E414D4553524F48;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1398097242;
      break;
    case 4:
      v2 = 0x4F454D4143;
      break;
    case 5:
      v2 = 0x4843544157;
      break;
    case 6:
      v6 = 0xE300000000000000;
      v2 = 5390659;
      break;
    case 7:
      v2 = 0x544952414752414DLL;
      v6 = 0xE900000000000041;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    v8 = sub_2680B447C();
  }

  return v8 & 1;
}

uint64_t sub_2680A6B18(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v4 = 0x7865547475706E69;
      v3 = 0xE900000000000074;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v4 = 0x656C61636F6CLL;
      break;
    case 3:
      v4 = 0x63617073656D616ELL;
      goto LABEL_11;
    case 4:
      v3 = 0xE600000000000000;
      v4 = 0x656372756F73;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v4 = 0x6E6F697461657263;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v4 = 0x64656C62616E65;
      break;
    case 7:
      v4 = 0x656469727265766FLL;
      v3 = 0xEA00000000006449;
      break;
    case 8:
      v4 = 0x7372615072657375;
LABEL_11:
      v3 = 0xE900000000000065;
      break;
    case 9:
      v4 = 0xD000000000000017;
      v3 = 0x80000002680B5E00;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v6 = 0x7865547475706E69;
      v5 = 0xE900000000000074;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x656C61636F6CLL;
      break;
    case 3:
      v6 = 0x63617073656D616ELL;
      goto LABEL_22;
    case 4:
      v5 = 0xE600000000000000;
      v6 = 0x656372756F73;
      break;
    case 5:
      v5 = 0xE800000000000000;
      v6 = 0x6E6F697461657263;
      break;
    case 6:
      v5 = 0xE700000000000000;
      v6 = 0x64656C62616E65;
      break;
    case 7:
      v6 = 0x656469727265766FLL;
      v5 = 0xEA00000000006449;
      break;
    case 8:
      v6 = 0x7372615072657375;
LABEL_22:
      v5 = 0xE900000000000065;
      break;
    case 9:
      v6 = 0xD000000000000017;
      v5 = 0x80000002680B5E00;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    v8 = sub_2680B447C();
  }

  return v8 & 1;
}

uint64_t sub_2680A6D80(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26808AE98(result, 1, sub_26809F238);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2680A6EA0()
{
  v0 = sub_2680B3AEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2680B311C();
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v46 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v48 = &v44[-v10];
  v11 = sub_2680B3A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v47 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v44[-v20];
  MEMORY[0x28223BE20](v19);
  v23 = &v44[-v22];
  if (sub_2680B320C())
  {
    sub_2680B323C();
    v45 = sub_2680B39AC();
    v24 = *(v12 + 8);
    v24(v23, v11);
    if (v45 & 1) != 0 || (sub_2680B323C(), v25 = sub_2680B39BC(), v24(v21, v11), (v25))
    {
      sub_2680B323C();
      v26 = sub_2680B39AC();
      v24(v18, v11);
      if (v26)
      {
        sub_2680B323C();
        v45 = sub_2680B398C();
        v24(v21, v11);
      }

      else
      {
        v45 = 0;
      }

      v29 = v24;
      v30 = v47;
      sub_2680B323C();
      v31 = sub_2680B39BC();
      v29(v30, v11);
      if (v31)
      {
        sub_2680B323C();
        v32 = sub_2680B399C();
        v29(v21, v11);
        v28 = v50;
        if ((v45 & 1) == 0)
        {
          v27 = v32;
          goto LABEL_16;
        }
      }

      else
      {
        v28 = v50;
        if ((v45 & 1) == 0)
        {
          v27 = 0;
          goto LABEL_16;
        }
      }

      v27 = 1;
      goto LABEL_16;
    }

    v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  v28 = v50;
LABEL_16:
  if ((sub_2680B322C() & 1) != 0 && (v33 = v48, sub_2680B321C(), v34 = sub_2680B310C(), v35 = *(v28 + 8), v35(v33, v49), v36 = *(v34 + 16), , v36))
  {
    v37 = v27;
    v38 = v46;
    sub_2680B321C();
    v39 = sub_2680B310C();
    result = v35(v38, v49);
    v41 = 0;
    v42 = *(v39 + 16);
    while (v42 != v41)
    {
      if (v41 >= *(v39 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v4, v39 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v41++, v0);
      v43 = sub_2680B3A5C();
      result = (*(v1 + 8))(v4, v0);
      if (v43)
      {

        return 1;
      }
    }

    if (v37)
    {
      return 1;
    }
  }

  else if (v27)
  {
    return 1;
  }

  return 0;
}

void sub_2680A7394()
{
  sub_2680B3EBC();
  v0 = MEMORY[0x26D60FA70]();
  v1 = sub_2680913FC(v0);
  if (!v1)
  {
LABEL_10:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
    sub_268099CC4();
    sub_2680B409C();

    return;
  }

  v2 = v1;
  v13 = MEMORY[0x277D84F90];
  sub_26808D0A8(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D60FED0](v3, v0);
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v11 = sub_2680B3F9C();
      v12 = v5;
      MEMORY[0x26D60FCB0](14906, 0xE200000000000000);
      v6 = sub_2680B3FAC();
      MEMORY[0x26D60FCB0](v6);

      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = OUTLINED_FUNCTION_27(v7);
        sub_26808D0A8(v10, v8 + 1, 1);
      }

      ++v3;
      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
    }

    while (v2 != v3);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2680A7590()
{
  v1 = sub_2680B35EC();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v1);
  v46 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2680B3BEC();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2680B3CCC();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2680B3B2C();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2680B345C();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v55 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2680B32CC();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  MEMORY[0x28223BE20](v16);
  v58 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2680B328C();
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2680B3D5C();
  v63 = *(v23 - 8);
  v24 = *(v63 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2680B30CC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2680B393C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v43 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B346C())
  {
    sub_2680B34FC();
    sub_2680B392C();
    (*(v33 + 8))(v36, v32);
LABEL_5:
    sub_2680A7394();
    v38 = v37;
    (*(v28 + 8))(v31, v27);
    return v38;
  }

  if (sub_2680B357C())
  {
    sub_2680B354C();
    sub_2680B3D4C();
    (*(v63 + 8))(v26, v23);
    goto LABEL_5;
  }

  if (sub_2680B347C())
  {
    sub_2680B359C();
    sub_2680B327C();
    v40 = v61;
    v39 = v62;
  }

  else if (sub_2680B348C())
  {
    v22 = v58;
    sub_2680B35BC();
    sub_2680B32BC();
    v40 = v59;
    v39 = v60;
  }

  else if (sub_2680B34BC())
  {
    v22 = v55;
    sub_2680B35DC();
    sub_2680B344C();
    v40 = v56;
    v39 = v57;
  }

  else if (sub_2680B352C())
  {
    v22 = v52;
    sub_2680B34AC();
    sub_2680B3B1C();
    v40 = v53;
    v39 = v54;
  }

  else if (sub_2680B356C())
  {
    v22 = v49;
    sub_2680B351C();
    sub_2680B3CBC();
    v40 = v50;
    v39 = v51;
  }

  else
  {
    if ((sub_2680B355C() & 1) == 0)
    {
      (*(v47 + 16))(v46, v0, v48);
      return sub_2680B40DC();
    }

    v22 = v43;
    sub_2680B34DC();
    sub_2680B3BDC();
    v40 = v44;
    v39 = v45;
  }

  (*(v40 + 8))(v22, v39);
  sub_2680A7394();
  v38 = v41;
  (*(v28 + 8))(v31, v27);
  return v38;
}

uint64_t sub_2680A7C7C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_2680B3BEC();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2680B3CCC();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2680B3B2C();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2680B345C();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2680B32CC();
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2680B328C();
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2680B3D5C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2680B393C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B346C())
  {
    sub_2680B34FC();
    v31 = v54;
    sub_2680B392C();
    (*(v27 + 8))(v30, v26);
    v32 = sub_2680B30CC();
    v33 = v31;
    return __swift_storeEnumTagSinglePayload(v33, 0, 1, v32);
  }

  v34 = v54;
  if (sub_2680B357C())
  {
    sub_2680B354C();
    sub_2680B3D4C();
    (*(v22 + 8))(v25, v21);
LABEL_18:
    v32 = sub_2680B30CC();
    v33 = v34;
    return __swift_storeEnumTagSinglePayload(v33, 0, 1, v32);
  }

  if (sub_2680B347C())
  {
    sub_2680B359C();
    sub_2680B327C();
    (*(v53 + 8))(v20, v17);
    goto LABEL_18;
  }

  if (sub_2680B348C())
  {
    sub_2680B35BC();
    sub_2680B32BC();
    v36 = v51;
    v35 = v52;
LABEL_17:
    (*(v36 + 8))(v16, v35);
    goto LABEL_18;
  }

  if (sub_2680B34BC())
  {
    v16 = v48;
    sub_2680B35DC();
    sub_2680B344C();
    v36 = v49;
    v35 = v50;
    goto LABEL_17;
  }

  if (sub_2680B352C())
  {
    v16 = v45;
    sub_2680B34AC();
    sub_2680B3B1C();
    v36 = v46;
    v35 = v47;
    goto LABEL_17;
  }

  if (sub_2680B356C())
  {
    v16 = v42;
    sub_2680B351C();
    sub_2680B3CBC();
    v36 = v43;
    v35 = v44;
    goto LABEL_17;
  }

  if (sub_2680B355C())
  {
    v16 = v39;
    sub_2680B34DC();
    sub_2680B3BDC();
    v36 = v40;
    v35 = v41;
    goto LABEL_17;
  }

  v38 = sub_2680B30CC();

  return __swift_storeEnumTagSinglePayload(v34, 1, 1, v38);
}

unint64_t sub_2680A8270()
{
  v0 = sub_2680B30CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B38EC())
  {
    sub_2680B38DC();
    sub_2680A7394();
    v6 = v5;
    v8 = v7;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v8 = 0xE500000000000000;
    v6 = 0x296C696E28;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2680B432C();

  v10 = 0xD000000000000016;
  v11 = 0x80000002680B72A0;
  MEMORY[0x26D60FCB0](v6, v8);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v10;
}

unint64_t sub_2680A83C4()
{
  v28 = sub_2680B35EC();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2680B30DC();
  v5 = *(v4 + 16);
  if (v5)
  {
    v29 = MEMORY[0x277D84F90];
    sub_26808D0A8(0, v5, 0);
    v6 = v29;
    v8 = *(v0 + 16);
    v7 = v0 + 16;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v26 = *(v7 + 56);
    v27 = v8;
    v24[1] = v4;
    v25 = (v7 - 8);
    do
    {
      v10 = v28;
      v11 = v7;
      v27(v3, v9, v28);
      v12 = sub_2680A7590();
      v14 = v13;
      (*v25)(v3, v10);
      v29 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26808D0A8(v15 > 1, v16 + 1, 1);
        v6 = v29;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v9 += v26;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v18 = sub_2680A8654(v6);
  v19 = sub_2680A8714(v18);

  v29 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
  sub_268099CC4();
  v20 = sub_2680B409C();
  v22 = v21;

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_2680B432C();

  v29 = 0xD00000000000001ALL;
  v30 = 0x80000002680B5F60;
  MEMORY[0x26D60FCB0](v20, v22);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v29;
}

uint64_t sub_2680A8654(uint64_t a1)
{
  result = MEMORY[0x26D60FDB0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2680AD57C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_2680A8714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_26809F3E4(*(a1 + 16), 0);
  v4 = sub_2680ADE18(&v6, v3 + 4, v1, a1);

  sub_2680AE0BC();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_2680ACB7C(&v6);
  return v6;
}

unint64_t sub_2680A87F8()
{
  v0 = sub_2680B35EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B33FC())
  {
    sub_2680B340C();
    v5 = sub_2680A7590();
    v7 = v6;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x296C696E28;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_2680B432C();

  v9 = 0xD000000000000016;
  v10 = 0x80000002680B5F40;
  MEMORY[0x26D60FCB0](v5, v7);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v9;
}

uint64_t sub_2680A894C()
{
  v27 = sub_2680B30CC();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2680B30DC();
  v5 = *(v4 + 16);
  if (v5)
  {
    v33 = MEMORY[0x277D84F90];
    sub_26808D0A8(0, v5, 0);
    v6 = v33;
    v7 = *(v0 + 16);
    v31 = v0 + 16;
    v32 = v7;
    v8 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v26 = v4;
    v9 = v4 + v8;
    v10 = *(v0 + 72);
    v28 = 0x80000002680B5FC0;
    v29 = (v0 + 8);
    v30 = v10;
    v11 = v27;
    while (1)
    {
      v32(v3, v9, v11);
      sub_2680B3EBC();

      v13 = MEMORY[0x26D60FA70](v12);

      if (v13 >> 62)
      {
        result = sub_2680B43CC();
        if (result)
        {
LABEL_5:
          if ((v13 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26D60FED0](0, v13);
          }

          else
          {
            if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v15 = *(v13 + 32);
          }

          v16 = sub_2680B3FAC();
          v18 = v17;

          goto LABEL_12;
        }
      }

      else
      {
        result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_5;
        }
      }

      if (!sub_2680B3EFC())
      {

        v16 = 0x69746E65206F6E5BLL;
        v18 = 0xEB000000005D7974;
        goto LABEL_13;
      }

      v16 = sub_2680B3F9C();
      v18 = v19;

LABEL_12:

LABEL_13:
      v11 = v27;
      (*v29)(v3, v27);
      v33 = v6;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26808D0A8(v20 > 1, v21 + 1, 1);
        v11 = v27;
        v6 = v33;
      }

      *(v6 + 16) = v21 + 1;
      v22 = v6 + 16 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v18;
      v9 += v30;
      if (!--v5)
      {

        goto LABEL_20;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_20:
  v33 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280249120, &qword_2680B5840);
  sub_268099CC4();
  v23 = sub_2680B409C();
  v25 = v24;

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2680B432C();

  v33 = 0xD000000000000018;
  v34 = 0x80000002680B5F20;
  MEMORY[0x26D60FCB0](v23, v25);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v33;
}

unint64_t sub_2680A8CFC()
{
  v0 = sub_2680B30CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B3D7C())
  {
    sub_2680B3D6C();
    sub_2680A7394();
    v6 = v5;
    v8 = v7;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v8 = 0xE500000000000000;
    v6 = 0x296C696E28;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2680B432C();

  v10 = 0xD00000000000001BLL;
  v11 = 0x80000002680B5F00;
  MEMORY[0x26D60FCB0](v6, v8);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v10;
}

unint64_t sub_2680A8E50()
{
  v0 = sub_2680B30CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B3DAC())
  {
    sub_2680B3D9C();
    sub_2680A7394();
    v6 = v5;
    v8 = v7;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v8 = 0xE500000000000000;
    v6 = 0x296C696E28;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2680B432C();

  v10 = 0xD00000000000001BLL;
  v11 = 0x80000002680B5EE0;
  MEMORY[0x26D60FCB0](v6, v8);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v10;
}

void sub_2680A8FA4()
{
  OUTLINED_FUNCTION_54();
  v180 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249338, &qword_2680B59C0);
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_0();
  v160 = v6;
  OUTLINED_FUNCTION_21();
  v186 = sub_2680B3F7C();
  v7 = OUTLINED_FUNCTION_4(v186);
  v176 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v177 = v11;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v185 = v13;
  OUTLINED_FUNCTION_21();
  v170 = sub_2680B3F4C();
  v14 = OUTLINED_FUNCTION_4(v170);
  v174 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_0();
  v173 = v19;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249340, &qword_2680B59C8);
  v20 = *(*(v169 - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v21);
  v188 = &v159 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249348, &qword_2680B59D0);
  v24 = OUTLINED_FUNCTION_7(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_51();
  v181 = v28;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26_0();
  v184 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249350, &qword_2680B59D8);
  v32 = OUTLINED_FUNCTION_7(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_51();
  v187 = v39;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26_0();
  v189 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249358, &qword_2680B59E0);
  v43 = OUTLINED_FUNCTION_7(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_26_0();
  v172 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  v190 = v48;
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_3();
  v179 = v51;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_51();
  v182 = v53;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v54);
  v56 = &v159 - v55;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249208, &qword_2680B5460);
  v57 = *(v49 + 72);
  v58 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v59 = swift_allocObject();
  v175 = xmmword_2680B4FE0;
  *(v59 + 16) = xmmword_2680B4FE0;
  v60 = *(v48 + 48);
  v61 = sub_2680B3F2C();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
  sub_2680B3F8C();
  v192 = v59;
  v65 = swift_allocObject();
  *(v65 + 16) = v175;
  v66 = *(v190 + 48);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v61);
  sub_2680B3F8C();
  v191 = v65;
  v70 = v182;
  v178 = (v176 + 8);
  *&v175 = v61;
  v180 = v61 - 8;
  v159 = (v174 + 4);
  ++v174;
  v162 = (v176 + 32);
  v183 = v56;
  while (1)
  {
    if (!*(v59 + 16))
    {

      v154 = *(v191 + 16);

LABEL_46:
      OUTLINED_FUNCTION_53();
      return;
    }

    v71 = v191;
    if (!*(v191 + 16))
    {

LABEL_45:

      goto LABEL_46;
    }

    v72 = v172;
    sub_26809DF30(v59, v172);
    v73 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_3(v73, v74, v190);
    if (v103)
    {
      goto LABEL_50;
    }

    sub_2680ADF74(v72, v56, &qword_280249200, &qword_2680B58D0);
    if (!*(v59 + 16))
    {
      break;
    }

    sub_26809F688(0, 1);
    if (!*(v71 + 16))
    {
      goto LABEL_48;
    }

    v75 = v171;
    sub_26809DF30(v71, v171);
    v76 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_3(v76, v77, v190);
    if (v103)
    {
      goto LABEL_51;
    }

    sub_2680ADF74(v75, v70, &qword_280249200, &qword_2680B58D0);
    if (!*(v71 + 16))
    {
      goto LABEL_49;
    }

    sub_26809F688(0, 1);
    v78 = v179;
    sub_2680ADFC0(v56, v179, &qword_280249200, &qword_2680B58D0);
    v79 = v70;
    v80 = v190;
    v81 = *(v190 + 48);
    sub_2680ADF74(v78, v189, &qword_280249350, &qword_2680B59D8);
    v82 = *v178;
    v83 = v186;
    (*v178)(v78 + v81, v186);
    sub_2680ADFC0(v79, v78, &qword_280249200, &qword_2680B58D0);
    v84 = *(v80 + 48);
    v85 = v187;
    sub_2680ADF74(v78, v187, &qword_280249350, &qword_2680B59D8);
    v176 = v82;
    (v82)(v78 + v84, v83);
    v86 = v166;
    sub_2680ADFC0(v189, v166, &qword_280249350, &qword_2680B59D8);
    v87 = OUTLINED_FUNCTION_18_1();
    v88 = v175;
    OUTLINED_FUNCTION_17_3(v87, v89, v175);
    if (v103)
    {
      sub_26808C12C(v86, &qword_280249350, &qword_2680B59D8);
      v91 = 1;
      v92 = v181;
      v90 = v184;
    }

    else
    {
      v90 = v184;
      sub_2680B3F1C();
      (*(*(v88 - 8) + 8))(v86, v88);
      v91 = 0;
      v92 = v181;
    }

    v93 = v170;
    __swift_storeEnumTagSinglePayload(v90, v91, 1, v170);
    v94 = v167;
    sub_2680ADFC0(v85, v167, &qword_280249350, &qword_2680B59D8);
    OUTLINED_FUNCTION_17_3(v94, 1, v88);
    if (v103)
    {
      sub_26808C12C(v94, &qword_280249350, &qword_2680B59D8);
      v95 = 1;
    }

    else
    {
      sub_2680B3F1C();
      v92 = v181;
      (*(*(v88 - 8) + 8))(v94, v88);
      v95 = 0;
    }

    v96 = v168;
    __swift_storeEnumTagSinglePayload(v92, v95, 1, v93);
    v97 = *(v169 + 48);
    v98 = v188;
    sub_2680ADFC0(v184, v188, &qword_280249348, &qword_2680B59D0);
    sub_2680ADFC0(v92, v98 + v97, &qword_280249348, &qword_2680B59D0);
    OUTLINED_FUNCTION_17_3(v98, 1, v93);
    if (v103)
    {
      sub_26808C12C(v92, &qword_280249348, &qword_2680B59D0);
      v99 = OUTLINED_FUNCTION_28_1();
      sub_26808C12C(v99, v100, &qword_2680B59D0);
      OUTLINED_FUNCTION_17_3(v188 + v97, 1, v93);
      v101 = v187;
      if (!v103)
      {
        goto LABEL_42;
      }

      sub_26808C12C(v188, &qword_280249348, &qword_2680B59D0);
    }

    else
    {
      v102 = v188;
      sub_2680ADFC0(v188, v96, &qword_280249348, &qword_2680B59D0);
      OUTLINED_FUNCTION_17_3(v102 + v97, 1, v93);
      v101 = v187;
      if (v103)
      {
        OUTLINED_FUNCTION_31_1(v181);
        OUTLINED_FUNCTION_31_1(v184);
        (*v174)(v96, v93);
LABEL_42:
        sub_26808C12C(v188, &qword_280249340, &qword_2680B59C8);
        v110 = v183;
LABEL_43:
        OUTLINED_FUNCTION_31_1(v101);
        OUTLINED_FUNCTION_31_1(v189);
        OUTLINED_FUNCTION_31_1(v182);
        v158 = v110;
        goto LABEL_44;
      }

      v104 = v173;
      (*v159)(v173, v188 + v97, v93);
      OUTLINED_FUNCTION_14_4();
      sub_2680AE00C(&qword_280249360, v105);
      OUTLINED_FUNCTION_43_0();
      v106 = sub_2680B40AC();
      v107 = *v174;
      (*v174)(v104, v93);
      sub_26808C12C(v181, &qword_280249348, &qword_2680B59D0);
      sub_26808C12C(v184, &qword_280249348, &qword_2680B59D0);
      v107(v96, v93);
      v108 = OUTLINED_FUNCTION_24_1();
      v88 = v175;
      sub_26808C12C(v108, v109, &qword_2680B59D0);
      v110 = v183;
      if ((v106 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v111 = v164;
    sub_2680ADFC0(v189, v164, &qword_280249350, &qword_2680B59D8);
    v112 = OUTLINED_FUNCTION_18_1();
    v114 = v88;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112, v113, v88);
    if (EnumTagSinglePayload == 1)
    {
      sub_26808C12C(v111, &qword_280249350, &qword_2680B59D8);
      v116 = 0;
    }

    else
    {
      v116 = sub_2680B3F0C();
      (*(*(v114 - 8) + 8))(v111, v114);
    }

    v117 = v165;
    sub_2680ADFC0(v101, v165, &qword_280249350, &qword_2680B59D8);
    v118 = OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_3(v118, v119, v114);
    if (v103)
    {
      sub_26808C12C(v117, &qword_280249350, &qword_2680B59D8);
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v120 = sub_2680B3F0C();
      (*(*(v114 - 8) + 8))(v117, v114);
      if (EnumTagSinglePayload == 1 || v116 != v120)
      {
LABEL_38:
        v155 = v101;
LABEL_40:
        OUTLINED_FUNCTION_31_1(v155);
        OUTLINED_FUNCTION_31_1(v189);
        OUTLINED_FUNCTION_31_1(v182);
        v158 = v183;
LABEL_44:
        OUTLINED_FUNCTION_31_1(v158);

        goto LABEL_45;
      }
    }

    v122 = v179;
    sub_2680ADFC0(v183, v179, &qword_280249200, &qword_2680B58D0);
    v123 = v190;
    v124 = *v162;
    v125 = v186;
    (*v162)(v185, v122 + *(v190 + 48), v186);
    sub_26808C12C(v122, &qword_280249350, &qword_2680B59D8);
    sub_2680ADFC0(v182, v122, &qword_280249200, &qword_2680B58D0);
    v124(v177, v122 + *(v123 + 48), v125);
    sub_26808C12C(v122, &qword_280249350, &qword_2680B59D8);
    v126 = v173;
    sub_2680B3F6C();
    v127 = v163;
    sub_2680B3F6C();
    OUTLINED_FUNCTION_14_4();
    sub_2680AE00C(&qword_280249360, v128);
    LOBYTE(v124) = sub_2680B40AC();
    v129 = *v174;
    (*v174)(v127, v93);
    v129(v126, v93);
    if ((v124 & 1) == 0)
    {
      v156 = v186;
      v157 = v176;
      (v176)(v177, v186);
      v157(v185, v156);
      v155 = v187;
      goto LABEL_40;
    }

    v130 = sub_2680B3F3C();
    v131 = v160;
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v130);
    v135 = v177;
    v136 = v161;
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v130);
    OUTLINED_FUNCTION_42_0();
    sub_2680B3F5C();
    sub_26808C12C(v136, &qword_280249338, &qword_2680B59C0);
    sub_26808C12C(v131, &qword_280249338, &qword_2680B59C0);
    v140 = sub_2680B3ECC();

    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v141, v142, v143, v130);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v130);
    OUTLINED_FUNCTION_42_0();
    sub_2680B3F5C();
    v147 = v136;
    v148 = v186;
    sub_26808C12C(v147, &qword_280249338, &qword_2680B59C0);
    v149 = v131;
    v56 = v183;
    sub_26808C12C(v149, &qword_280249338, &qword_2680B59C0);
    v150 = sub_2680B3ECC();

    v151 = sub_2680A9F70(v140);

    sub_2680A6D80(v151);
    v152 = sub_2680A9F70(v150);

    sub_2680A6D80(v152);
    v153 = v176;
    (v176)(v135, v148);
    v153(v185, v148);
    sub_26808C12C(v187, &qword_280249350, &qword_2680B59D8);
    sub_26808C12C(v189, &qword_280249350, &qword_2680B59D8);
    v70 = v182;
    sub_26808C12C(v182, &qword_280249200, &qword_2680B58D0);
    sub_26808C12C(v56, &qword_280249200, &qword_2680B58D0);
    v59 = v192;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_2680A9F70(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249368, &qword_2680B59E8);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249200, &qword_2680B58D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2680A14D4(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_2680ADFC0(v13, v5, &qword_280249368, &qword_2680B59E8);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2680A14D4(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_2680ADF74(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_280249200, &qword_2680B58D0);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_2680AA1A8()
{
  if (sub_2680B3A5C())
  {

    sub_2680AA30C();
  }

  else if (sub_2680B3A6C())
  {

    sub_2680AA5D4();
  }

  else if (sub_2680B3A2C())
  {

    sub_2680AB3A0();
  }

  else if (sub_2680B3A4C())
  {

    sub_2680AB964();
  }

  else if (sub_2680B3A9C())
  {

    sub_2680ABFBC();
  }

  else if (sub_2680B3AAC())
  {

    sub_2680AC284();
  }

  else if ((sub_2680B3A5C() & 1) == 0 && (sub_2680B3A6C() & 1) == 0 && (sub_2680B3A2C() & 1) == 0 && (sub_2680B3A4C() & 1) == 0 && (sub_2680B3A9C() & 1) == 0)
  {
    sub_2680B3AAC();
  }
}

void sub_2680AA30C()
{
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4(v2);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  v10 = sub_2680B38FC();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_2();
  if (sub_2680B3A5C())
  {
    OUTLINED_FUNCTION_16_2();
    sub_2680B3ADC();
    sub_2680B38EC();
    v16 = OUTLINED_FUNCTION_18_2();
    v6(v16);
    OUTLINED_FUNCTION_34_0();
    sub_2680B3ADC();
    v17 = sub_2680B38EC();
    v18 = OUTLINED_FUNCTION_24_1();
    v6(v18);
    if (v3 & 1) != 0 && (v17)
    {
      sub_2680B3ADC();
      sub_2680B38DC();
      (v6)(v1, v10);
      OUTLINED_FUNCTION_33_1();
      if (v0)
      {
        v19 = OUTLINED_FUNCTION_37_1();
        v20(v19);
        sub_2680B423C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        sub_2680B406C();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_8_3();
        v22(v21);
        OUTLINED_FUNCTION_36_1();
        sub_2680B3ADC();
        OUTLINED_FUNCTION_35_0();
        sub_2680B38DC();
        v23 = OUTLINED_FUNCTION_28_1();
        v6(v23);
        sub_2680B3EBC();
        v24 = OUTLINED_FUNCTION_10_3();
        v25(v24);
        sub_2680A8FA4();
      }
    }
  }

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_53();
}

void sub_2680AA5D4()
{
  OUTLINED_FUNCTION_54();
  v175 = v0;
  v3 = v2;
  v4 = sub_2680B30CC();
  v172 = OUTLINED_FUNCTION_4(v4);
  v173 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_20();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_51();
  v164 = v12;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_51();
  v170 = v14;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48_0();
  v174 = sub_2680B35EC();
  v16 = OUTLINED_FUNCTION_4(v174);
  v161 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249218, &qword_2680B5470);
  v176 = *(v23 - 8);
  v24 = *(v176 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_20();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_51();
  v160 = v29;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_51();
  v169 = v31;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_51();
  v168 = v33;
  OUTLINED_FUNCTION_5_4();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v154 - v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26_0();
  v167 = v38;
  OUTLINED_FUNCTION_21();
  v39 = sub_2680B3BAC();
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v154 - v49;
  if ((sub_2680B3A6C() & 1) == 0)
  {
    goto LABEL_86;
  }

  v157 = v3;
  v162 = v10;
  sub_2680B3A3C();
  v51 = sub_2680B30DC();
  v52 = *(v42 + 8);
  v156 = v39;
  v155 = v52;
  v52(v50, v39);
  v53 = *(v51 + 16);
  v171 = v27;
  v163 = v1;
  v158 = v47;
  v159 = v42 + 8;
  if (v53)
  {
    OUTLINED_FUNCTION_44_0(MEMORY[0x277D84F90]);
    sub_2680A14F4(0, v53, 0);
    v54 = v177;
    v175 = *(v161 + 16);
    v55 = v51 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v56 = *(v161 + 72);
    v165 = v51;
    v166 = v56;
    v57 = (v161 + 8);
    do
    {
      v58 = v174;
      (v175)(v22, v55, v174);
      sub_2680A7C7C(v37);
      (*v57)(v22, v58);
      v177 = v54;
      v60 = *(v54 + 16);
      v59 = *(v54 + 24);
      if (v60 >= v59 >> 1)
      {
        v63 = OUTLINED_FUNCTION_27(v59);
        sub_2680A14F4(v63, v60 + 1, 1);
        v54 = v177;
      }

      *(v54 + 16) = v60 + 1;
      OUTLINED_FUNCTION_6_5();
      sub_2680ADF74(v37, v54 + v61 + *(v62 + 72) * v60, &qword_280249218, &qword_2680B5470);
      v55 += v166;
      --v53;
    }

    while (v53);

    v27 = v171;
    v64 = v163;
    v47 = v158;
  }

  else
  {
    v64 = v1;

    v54 = MEMORY[0x277D84F90];
  }

  v65 = *(v54 + 16);
  v66 = v172;
  if (v65)
  {
    v67 = v64;
    OUTLINED_FUNCTION_6_5();
    v69 = v54 + v68;
    v71 = *(v70 + 72);
    v165 = (v173 + 32);
    v166 = v71;
    v175 = MEMORY[0x277D84F90];
    do
    {
      v72 = v167;
      sub_2680ADFC0(v69, v167, &qword_280249218, &qword_2680B5470);
      v73 = v72;
      v74 = v168;
      sub_2680ADF74(v73, v168, &qword_280249218, &qword_2680B5470);
      OUTLINED_FUNCTION_17_3(v74, 1, v66);
      if (v75)
      {
        sub_26808C12C(v74, &qword_280249218, &qword_2680B5470);
      }

      else
      {
        v76 = *v165;
        (*v165)(v67, v74, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v78 = v175;
        }

        else
        {
          v84 = *(v175 + 16);
          sub_26809F308();
          v78 = v85;
        }

        v80 = *(v78 + 16);
        v79 = *(v78 + 24);
        if (v80 >= v79 >> 1)
        {
          OUTLINED_FUNCTION_27(v79);
          sub_26809F308();
          v78 = v86;
        }

        *(v78 + 16) = v80 + 1;
        v66 = v172;
        OUTLINED_FUNCTION_6_5();
        v175 = v81;
        v67 = v163;
        v76(v81 + v82 + *(v83 + 72) * v80);
        v27 = v171;
      }

      v69 += v166;
      --v65;
    }

    while (v65);

    v47 = v158;
  }

  else
  {

    v175 = MEMORY[0x277D84F90];
  }

  sub_2680B3A3C();
  v87 = sub_2680B30DC();
  v155(v47, v156);
  v88 = *(v87 + 16);
  if (v88)
  {
    OUTLINED_FUNCTION_44_0(MEMORY[0x277D84F90]);
    sub_2680A14F4(0, v88, 0);
    v89 = v177;
    v90 = v160;
    v91 = *(v161 + 16);
    v92 = *(v161 + 80);
    v166 = v87;
    v93 = v87 + ((v92 + 32) & ~v92);
    v167 = *(v161 + 72);
    v168 = v91;
    v94 = (v161 + 8);
    do
    {
      v95 = v174;
      v168(v22, v93, v174);
      sub_2680A7C7C(v90);
      (*v94)(v22, v95);
      v177 = v89;
      v97 = *(v89 + 16);
      v96 = *(v89 + 24);
      if (v97 >= v96 >> 1)
      {
        v100 = OUTLINED_FUNCTION_27(v96);
        sub_2680A14F4(v100, v97 + 1, 1);
        v89 = v177;
      }

      *(v89 + 16) = v97 + 1;
      OUTLINED_FUNCTION_6_5();
      sub_2680ADF74(v90, v89 + v98 + *(v99 + 72) * v97, &qword_280249218, &qword_2680B5470);
      v93 += v167;
      --v88;
    }

    while (v88);

    v27 = v171;
    v66 = v172;
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
  }

  v101 = *(v89 + 16);
  if (v101)
  {
    OUTLINED_FUNCTION_6_5();
    v103 = v89 + v102;
    v176 = *(v104 + 72);
    v105 = (v173 + 32);
    v106 = MEMORY[0x277D84F90];
    do
    {
      v107 = v169;
      sub_2680ADFC0(v103, v169, &qword_280249218, &qword_2680B5470);
      sub_2680ADF74(v107, v27, &qword_280249218, &qword_2680B5470);
      OUTLINED_FUNCTION_17_3(v27, 1, v66);
      if (v75)
      {
        sub_26808C12C(v27, &qword_280249218, &qword_2680B5470);
      }

      else
      {
        v108 = *v105;
        (*v105)(v170, v27, v66);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        if ((v109 & 1) == 0)
        {
          v114 = *(v106 + 16);
          sub_26809F308();
          v106 = v115;
        }

        v111 = *(v106 + 16);
        v110 = *(v106 + 24);
        if (v111 >= v110 >> 1)
        {
          OUTLINED_FUNCTION_27(v110);
          sub_26809F308();
          v106 = v116;
        }

        *(v106 + 16) = v111 + 1;
        v66 = v172;
        OUTLINED_FUNCTION_6_5();
        v108(v106 + v112 + *(v113 + 72) * v111, v170, v66);
        v27 = v171;
      }

      v103 += v176;
      --v101;
    }

    while (v101);
  }

  else
  {

    v106 = MEMORY[0x277D84F90];
  }

  v117 = *(v175 + 16);
  if (v117)
  {
    OUTLINED_FUNCTION_44_0(MEMORY[0x277D84F90]);
    sub_2680B437C();
    v118 = 0;
    OUTLINED_FUNCTION_6_5();
    v176 = v119 + v120;
    v122 = (v121 + 8);
    while (v118 < *(v119 + 16))
    {
      v123 = v164;
      (*(v173 + 16))(v164, v176 + *(v173 + 72) * v118, v66);
      sub_2680B3EBC();
      ++v118;
      (*v122)(v123, v66);
      sub_2680B435C();
      v124 = *(v177 + 16);
      sub_2680B438C();
      sub_2680B439C();
      sub_2680B436C();
      v119 = v175;
      if (v117 == v118)
      {

        v175 = v177;
        v125 = v162;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v126 = *(v106 + 16);

  v125 = v162;
  if (!v126)
  {
LABEL_88:

LABEL_86:
    OUTLINED_FUNCTION_53();
    return;
  }

  v175 = MEMORY[0x277D84F90];
  v66 = v172;
LABEL_50:
  if (*(v106 + 16))
  {
    OUTLINED_FUNCTION_44_0(MEMORY[0x277D84F90]);
    v176 = v127;
    sub_2680B437C();
    v128 = 0;
    OUTLINED_FUNCTION_6_5();
    v130 = v106 + v129;
    v132 = (v131 + 8);
    while (v128 < *(v106 + 16))
    {
      (*(v173 + 16))(v125, v130 + *(v173 + 72) * v128, v66);
      sub_2680B3EBC();
      ++v128;
      (*v132)(v125, v66);
      sub_2680B435C();
      v133 = *(v177 + 16);
      sub_2680B438C();
      v125 = v162;
      sub_2680B439C();
      sub_2680B436C();
      if (v176 == v128)
      {

        v134 = v177;
        goto LABEL_56;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    OUTLINED_FUNCTION_0();
    sub_2680B406C();

    goto LABEL_86;
  }

  v134 = MEMORY[0x277D84F90];
LABEL_56:
  v135 = v175;
  v136 = sub_2680913FC(v175);
  v137 = 0;
  v138 = v135 & 0xC000000000000001;
  v139 = v135 + 32;
  v140 = v134 & 0xC000000000000001;
  v174 = v134 + 32;
  while (2)
  {
    if (v137 == v136)
    {

      goto LABEL_88;
    }

    sub_268091880(v137, v138 == 0, v135);
    if (v138)
    {
      v176 = MEMORY[0x26D60FED0](v137, v135);
    }

    else
    {
      v176 = *(v139 + 8 * v137);
    }

    v171 = v139;
    v172 = v137 + 1;
    if (__OFADD__(v137, 1))
    {
      __break(1u);
    }

    else
    {
      v141 = sub_2680913FC(v134);
      v142 = 0;
      do
      {
        if (v141 == v142)
        {

          goto LABEL_86;
        }

        sub_268091880(v142, v140 == 0, v134);
        if (v140)
        {
          MEMORY[0x26D60FED0](v142, v134);
        }

        else
        {
          v143 = *(v134 + 8 * v142 + 32);
        }

        if (__OFADD__(v142, 1))
        {
          goto LABEL_90;
        }

        sub_2680A8FA4();
        v145 = v144;

        ++v142;
      }

      while ((v145 & 1) == 0);
      v146 = 0;
LABEL_69:
      if (v146 == v141)
      {

        v139 = v171;
        v137 = v172;
        continue;
      }

      v147 = v136;
      sub_268091880(v146, v140 == 0, v134);
      if (v140)
      {
        MEMORY[0x26D60FED0](v146, v134);
      }

      else
      {
        v148 = *(v174 + 8 * v146);
      }

      v173 = v146 + 1;
      if (!__OFADD__(v146, 1))
      {
        v149 = 0;
        while (v147 != v149)
        {
          sub_268091880(v149, v138 == 0, v135);
          if (v138)
          {
            v150 = OUTLINED_FUNCTION_24_1();
            MEMORY[0x26D60FED0](v150);
          }

          else
          {
            v151 = *(v135 + 8 * v149 + 32);
          }

          if (__OFADD__(v149, 1))
          {
            goto LABEL_92;
          }

          sub_2680A8FA4();
          v153 = v152;

          ++v149;
          v135 = v175;
          if (v153)
          {

            v136 = v147;
            v146 = v173;
            goto LABEL_69;
          }
        }

        goto LABEL_86;
      }
    }

    break;
  }

  __break(1u);
}

void sub_2680AB3A0()
{
  OUTLINED_FUNCTION_54();
  v1 = sub_2680B30CC();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v57 = v7;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_0();
  v59 = v9;
  OUTLINED_FUNCTION_21();
  v10 = sub_2680B35EC();
  v60 = OUTLINED_FUNCTION_4(v10);
  v61 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249218, &qword_2680B5470);
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v58 = v21;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_51();
  v64 = v24;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26_0();
  v63 = v26;
  OUTLINED_FUNCTION_21();
  v27 = sub_2680B341C();
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_45_0();
  if (sub_2680B3A2C())
  {
    v55 = v4;
    v56 = v1;
    sub_2680B3ABC();
    v33 = sub_2680B33FC();
    v34 = *(v30 + 8);
    v35 = OUTLINED_FUNCTION_26();
    v34(v35);
    sub_2680B3ABC();
    v36 = sub_2680B33FC();
    v37 = OUTLINED_FUNCTION_26();
    v34(v37);
    if (v33 & 1) != 0 && (v36)
    {
      sub_2680B3ABC();
      sub_2680B340C();
      v38 = OUTLINED_FUNCTION_26();
      v34(v38);
      sub_2680A7C7C(v63);
      v62 = *(v61 + 8);
      v62(v16, v60);
      sub_2680B3ABC();
      sub_2680B340C();
      v39 = OUTLINED_FUNCTION_26();
      v34(v39);
      sub_2680A7C7C(v64);
      v62(v16, v60);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v56);
      v41 = __swift_getEnumTagSinglePayload(v64, 1, v56);
      if (EnumTagSinglePayload != 1 && v41 != 1)
      {
        v42 = v0;
        sub_2680ADFC0(v63, v0, &qword_280249218, &qword_2680B5470);
        OUTLINED_FUNCTION_17_3(v0, 1, v56);
        if (!v43)
        {
          v44 = *(v55 + 32);
          v44(v59, v0, v56);
          v42 = v58;
          sub_2680ADFC0(v64, v58, &qword_280249218, &qword_2680B5470);
          OUTLINED_FUNCTION_17_3(v58, 1, v56);
          if (!v43)
          {
            v50 = OUTLINED_FUNCTION_42_0();
            (v44)(v50);
            OUTLINED_FUNCTION_33_1();
            if (!v58)
            {
              sub_2680B3EBC();
              sub_2680A8FA4();

              v53 = *(v55 + 8);
              v53(v57, v56);
              v54 = OUTLINED_FUNCTION_43_0();
              (v53)(v54);
              sub_26808C12C(v64, &qword_280249218, &qword_2680B5470);
              sub_26808C12C(v63, &qword_280249218, &qword_2680B5470);
              goto LABEL_14;
            }

            sub_2680B423C();
            if (qword_2813194A0 != -1)
            {
              OUTLINED_FUNCTION_0();
            }

            sub_2680B406C();

            v51 = *(v55 + 8);
            v51(v57, v56);
            v52 = OUTLINED_FUNCTION_43_0();
            (v51)(v52);
            goto LABEL_13;
          }

          v45 = *(v55 + 8);
          v46 = OUTLINED_FUNCTION_43_0();
          v47(v46);
        }

        OUTLINED_FUNCTION_31_1(v42);
      }

LABEL_13:
      v48 = OUTLINED_FUNCTION_26();
      sub_26808C12C(v48, v49, &qword_2680B5470);
      OUTLINED_FUNCTION_31_1(v63);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_53();
}

void sub_2680AB964()
{
  OUTLINED_FUNCTION_54();
  v3 = v2;
  v4 = sub_2680B30CC();
  v77 = OUTLINED_FUNCTION_4(v4);
  v78 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_3();
  v76 = v8;
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48_0();
  v10 = sub_2680B38CC();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v74 = v16;
  OUTLINED_FUNCTION_5_4();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v69 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  if (sub_2680B3A4C())
  {
    v75 = v0;
    sub_2680B3ACC();
    v26 = sub_2680B30DC();
    v27 = *(v13 + 8);
    v27(v25, v10);
    v28 = v13 + 8;
    v29 = v10;
    v30 = *(v26 + 16);

    v73 = v3;
    sub_2680B3ACC();
    v31 = sub_2680B30DC();
    v32 = v23;
    v33 = v27;
    v27(v32, v29);
    v34 = *(v31 + 16);

    if (v30 == v34)
    {
      sub_2680B3ACC();
      v35 = sub_2680B30DC();
      v72 = v28;
      v27(v20, v29);
      v36 = *(v35 + 16);
      v37 = MEMORY[0x277D84F90];
      if (v36)
      {
        v70 = v27;
        v71 = v29;
        v79 = MEMORY[0x277D84F90];
        sub_2680B437C();
        v38 = 0;
        OUTLINED_FUNCTION_6_5();
        v75 = v35 + v39;
        v41 = (v40 + 8);
        while (1)
        {
          v42 = v77;
          if (v38 >= *(v35 + 16))
          {
            break;
          }

          (*(v78 + 16))(v1, v75 + *(v78 + 72) * v38, v77);
          sub_2680B3EBC();
          ++v38;
          (*v41)(v1, v42);
          sub_2680B435C();
          v43 = *(v79 + 16);
          sub_2680B438C();
          sub_2680B439C();
          sub_2680B436C();
          if (v36 == v38)
          {

            v44 = v79;
            v33 = v70;
            v29 = v71;
            v37 = MEMORY[0x277D84F90];
            goto LABEL_9;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        OUTLINED_FUNCTION_0();
        sub_2680B406C();

        goto LABEL_30;
      }

      v44 = MEMORY[0x277D84F90];
LABEL_9:
      v45 = v74;
      sub_2680B3ACC();
      v46 = sub_2680B30DC();
      v33(v45, v29);
      v47 = *(v46 + 16);
      v48 = v76;
      v75 = v44;
      if (v47)
      {
        v79 = v37;
        sub_2680B437C();
        v49 = 0;
        OUTLINED_FUNCTION_6_5();
        v51 = v46 + v50;
        v53 = (v52 + 8);
        while (v49 < *(v46 + 16))
        {
          v54 = v77;
          (*(v78 + 16))(v48, v51 + *(v78 + 72) * v49, v77);
          sub_2680B3EBC();
          ++v49;
          (*v53)(v48, v54);
          sub_2680B435C();
          v55 = *(v79 + 16);
          sub_2680B438C();
          v48 = v76;
          sub_2680B439C();
          sub_2680B436C();
          if (v47 == v49)
          {

            v56 = v79;
            v44 = v75;
            goto LABEL_15;
          }
        }

        goto LABEL_34;
      }

      v56 = MEMORY[0x277D84F90];
LABEL_15:
      v57 = sub_2680913FC(v44);
      v58 = 0;
      v59 = v44 & 0xC000000000000001;
      v60 = v44 + 32;
      v61 = v56 & 0xC000000000000001;
      v77 = v44 + 32;
      v78 = v57;
LABEL_16:
      if (v58 != v57)
      {
        sub_268091880(v58, v59 == 0, v44);
        if (v59)
        {
          MEMORY[0x26D60FED0](v58, v44);
        }

        else
        {
          v62 = *(v60 + 8 * v58);
        }

        if (__OFADD__(v58++, 1))
        {
          goto LABEL_35;
        }

        v64 = sub_2680913FC(v56);
        v65 = 0;
        while (1)
        {
          if (v64 == v65)
          {

            goto LABEL_30;
          }

          sub_268091880(v65, v61 == 0, v56);
          if (v61)
          {
            MEMORY[0x26D60FED0](v65, v56);
          }

          else
          {
            v66 = *(v56 + 8 * v65 + 32);
          }

          if (__OFADD__(v65, 1))
          {
            break;
          }

          sub_2680A8FA4();
          v68 = v67;

          ++v65;
          if (v68)
          {

            v44 = v75;
            v60 = v77;
            v57 = v78;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_33;
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_53();
}

void sub_2680ABFBC()
{
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4(v2);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  v10 = sub_2680B3D8C();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_2();
  if (sub_2680B3A9C())
  {
    OUTLINED_FUNCTION_16_2();
    sub_2680B3A7C();
    sub_2680B3D7C();
    v16 = OUTLINED_FUNCTION_18_2();
    v6(v16);
    OUTLINED_FUNCTION_34_0();
    sub_2680B3A7C();
    v17 = sub_2680B3D7C();
    v18 = OUTLINED_FUNCTION_24_1();
    v6(v18);
    if (v3 & 1) != 0 && (v17)
    {
      sub_2680B3A7C();
      sub_2680B3D6C();
      (v6)(v1, v10);
      OUTLINED_FUNCTION_33_1();
      if (v0)
      {
        v19 = OUTLINED_FUNCTION_37_1();
        v20(v19);
        sub_2680B423C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        sub_2680B406C();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_8_3();
        v22(v21);
        OUTLINED_FUNCTION_36_1();
        sub_2680B3A7C();
        OUTLINED_FUNCTION_35_0();
        sub_2680B3D6C();
        v23 = OUTLINED_FUNCTION_28_1();
        v6(v23);
        sub_2680B3EBC();
        v24 = OUTLINED_FUNCTION_10_3();
        v25(v24);
        sub_2680A8FA4();
      }
    }
  }

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_53();
}

void sub_2680AC284()
{
  OUTLINED_FUNCTION_54();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4(v2);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  v10 = sub_2680B3DBC();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_2();
  if (sub_2680B3AAC())
  {
    OUTLINED_FUNCTION_16_2();
    sub_2680B3A8C();
    sub_2680B3DAC();
    v16 = OUTLINED_FUNCTION_18_2();
    v6(v16);
    OUTLINED_FUNCTION_34_0();
    sub_2680B3A8C();
    v17 = sub_2680B3DAC();
    v18 = OUTLINED_FUNCTION_24_1();
    v6(v18);
    if (v3 & 1) != 0 && (v17)
    {
      sub_2680B3A8C();
      sub_2680B3D9C();
      (v6)(v1, v10);
      OUTLINED_FUNCTION_33_1();
      if (v0)
      {
        v19 = OUTLINED_FUNCTION_37_1();
        v20(v19);
        sub_2680B423C();
        if (qword_2813194A0 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        sub_2680B406C();
      }

      else
      {
        v21 = OUTLINED_FUNCTION_8_3();
        v22(v21);
        OUTLINED_FUNCTION_36_1();
        sub_2680B3A8C();
        OUTLINED_FUNCTION_35_0();
        sub_2680B3D9C();
        v23 = OUTLINED_FUNCTION_28_1();
        v6(v23);
        sub_2680B3EBC();
        v24 = OUTLINED_FUNCTION_10_3();
        v25(v24);
        sub_2680A8FA4();
      }
    }
  }

  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_53();
}

BOOL sub_2680AC54C()
{
  v0 = sub_2680B397C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-v6];
  if (sub_2680B39FC())
  {
    if ((sub_2680B39FC() & 1) == 0)
    {
      v14 = 1;
      goto LABEL_9;
    }

    v8 = sub_2680B39CC();
    v10 = v9;
    if (v8 != sub_2680B39CC() || v10 != v11)
    {
      v13 = sub_2680B447C();

      v14 = v13 ^ 1;
LABEL_9:
      v24 = v14;
      goto LABEL_12;
    }
  }

  v24 = 0;
LABEL_12:
  if (sub_2680B39AC())
  {
    v15 = sub_2680B398C();
    v16 = v15 ^ sub_2680B398C();
  }

  else
  {
    v16 = 0;
  }

  if (sub_2680B39BC())
  {
    v17 = sub_2680B399C();
    v18 = v17 ^ sub_2680B399C();
  }

  else
  {
    v18 = 0;
  }

  if (sub_2680B3A0C())
  {
    v19 = sub_2680B39EC();
    v20 = v19 ^ sub_2680B39EC();
  }

  else
  {
    v20 = 0;
  }

  if ((sub_2680B396C() & 1) == 0)
  {
    return ((v24 | v16 | v18 | v20) & 1) == 0;
  }

  sub_2680B39DC();
  sub_2680B39DC();
  sub_2680AE00C(&qword_280249370, MEMORY[0x277D5DC28]);
  sub_2680B41CC();
  sub_2680B41CC();
  v21 = *(v1 + 8);
  v21(v5, v0);
  v21(v7, v0);
  result = v26 == v25;
  if ((v24 | v16 | v18 | v20))
  {
    return 0;
  }

  return result;
}

uint64_t sub_2680AC838()
{
  v0 = sub_2680B30CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2680B2F6C())
  {
    sub_2680B2F7C();
    sub_2680A7394();
    v6 = v5;
    v8 = v7;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v8 = 0xE500000000000000;
    v6 = 0x296C696E28;
  }

  v10[0] = 0x7361745B6B736154;
  v10[1] = 0xEA00000000003D6BLL;
  MEMORY[0x26D60FCB0](v6, v8);

  MEMORY[0x26D60FCB0](93, 0xE100000000000000);
  return v10[0];
}

uint64_t sub_2680AC974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    v9 = sub_2680B447C();
  }

  return v9 & 1;
}

uint64_t sub_2680ACB34()
{
  v1 = *(v0 + 16);
  sub_2680AA1A8();
  return v2 & 1;
}

uint64_t sub_2680ACB7C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2680A5E1C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2680ACBE8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2680ACBE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2680B444C();
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
        v6 = sub_2680B41FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2680ACDA4(v7, v8, a1, v4);
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
    return sub_2680ACCDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2680ACCDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2680B447C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2680ACDA4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_2680B447C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_2680B447C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
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
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            __dst = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_2680B447C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v87;
            v9 = __dst;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_26809ED18();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_26809ED18();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_2680AD3D8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), __dsta);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_2680AD2AC(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_2680AD2AC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2680A5C2C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2680AD3D8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2680AD3D8(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_26809E9D0(__src, (a2 - __src) / 16, __dst);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_2680B447C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_26809E9D0(a2, (a3 - a2) / 16, __dst);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_2680B447C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

BOOL sub_2680AD57C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2680B452C();
  sub_2680B410C();
  v9 = sub_2680B454C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2680B447C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2680AD924(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2680AD6C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249378, &unk_2680B59F0);
  result = sub_2680B431C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2680B04A4(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2680B452C();
    sub_2680B410C();
    result = sub_2680B454C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2680AD924(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2680AD6C8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2680ADBE4(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2680B452C();
      sub_2680B410C();
      result = sub_2680B454C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2680B447C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2680ADA8C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2680B449C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_2680ADA8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249378, &unk_2680B59F0);
  v2 = *v0;
  v3 = sub_2680B430C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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