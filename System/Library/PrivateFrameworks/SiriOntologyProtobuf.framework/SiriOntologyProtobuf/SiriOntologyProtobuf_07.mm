uint64_t sub_26861B03C(uint64_t result, int a2)
{
  if ((a2 + 999999999) > 0x773593FE)
  {
    v2 = __OFADD__(result, a2 / 1000000000);
    result += a2 / 1000000000;
    if (v2)
    {
      __break(1u);
      return result;
    }

    a2 %= 1000000000;
  }

  if (a2 < 0 && (v3 = result - 1, result >= 1))
  {
    v4 = a2 + 1000000000;
  }

  else
  {
    v5 = a2 - 1000000000;
    if (result < 0)
    {
      v6 = result + 1;
    }

    else
    {
      v5 = a2;
      v6 = result;
    }

    if (a2 >= 1)
    {
      v4 = v5;
    }

    else
    {
      v4 = a2;
    }

    if (a2 >= 1)
    {
      v3 = v6;
    }

    else
    {
      v3 = result;
    }
  }

  if (qword_28028BDB0 != -1)
  {
    swift_once();
  }

  result = 0;
  if (v3 <= 315576000000 && v3 >= qword_28028CD40)
  {
    if (v4)
    {
      HIDWORD(v7) = 1757569337 * v4 + 137408;
      LODWORD(v7) = HIDWORD(v7);
      if ((v7 >> 6) <= 0x10C6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD60, &unk_26868F250);
        v16 = swift_allocObject();
        v17 = MEMORY[0x277D84A28];
        *(v16 + 16) = xmmword_26868F1D0;
        v18 = MEMORY[0x277D84A90];
        *(v16 + 56) = v17;
        *(v16 + 64) = v18;
        *(v16 + 32) = v3;
        if (v4 >= 0)
        {
          v19 = v4;
        }

        else
        {
          v19 = -v4;
        }

        v20 = MEMORY[0x277D84A20];
        *(v16 + 96) = MEMORY[0x277D849A8];
        *(v16 + 104) = v20;
        *(v16 + 72) = v19 / 0xF4240;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD60, &unk_26868F250);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_26868F1D0;
        v9 = MEMORY[0x277D84A90];
        *(v8 + 56) = MEMORY[0x277D84A28];
        *(v8 + 64) = v9;
        *(v8 + 32) = v3;
        if (v4 >= 0)
        {
          v10 = v4;
        }

        else
        {
          v10 = -v4;
        }

        HIDWORD(v11) = 652835029 * v4 + 17179864;
        LODWORD(v11) = HIDWORD(v11);
        v12 = MEMORY[0x277D84A20];
        *(v8 + 96) = MEMORY[0x277D849A8];
        *(v8 + 104) = v12;
        if ((v11 >> 3) <= 0x418936)
        {
          *(v8 + 72) = v10 / 0x3E8;
        }

        else
        {
          *(v8 + 72) = v10;
        }
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD60, &unk_26868F250);
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D84A28];
      *(v13 + 16) = xmmword_26868F1E0;
      v15 = MEMORY[0x277D84A90];
      *(v13 + 56) = v14;
      *(v13 + 64) = v15;
      *(v13 + 32) = v3;
    }

    return sub_268689984();
  }

  return result;
}

uint64_t sub_26861B324(uint64_t result, int a2)
{
  if ((a2 + 999999999) >= 0x773593FF)
  {
    v2 = __OFADD__(result, a2 / 1000000000);
    result += a2 / 1000000000;
    if (v2)
    {
      __break(1u);
      return result;
    }

    a2 %= 1000000000;
  }

  if (a2 < 0 && result >= 1)
  {
    --result;
  }

  else
  {
    if (result < 0)
    {
      v3 = result + 1;
    }

    else
    {
      v3 = result;
    }

    if (a2 >= 1)
    {
      return v3;
    }
  }

  return result;
}

double Google_Protobuf_Duration.init(seconds:nanos:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 16) = xmmword_26868A5E0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_26861B3C4()
{
  v1 = sub_26861B03C(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x26D61D4B0](v1);

    MEMORY[0x26D61D4B0](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    sub_2685D104C();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }
}

void sub_26861B488()
{
  sub_2685BC49C();
  if (!v1)
  {
    v2 = sub_26861A320();
    v4 = v3;

    *v0 = v2;
    *(v0 + 8) = v4;
  }
}

void _s20SiriOntologyProtobuf07Google_C9_DurationV12floatLiteralACSd_tcfC_0(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = trunc(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = round((a2 - v3) * 1000000000.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 2147483650.0)
  {
    *a1 = sub_26861B324(v3, v4);
    *(a1 + 8) = v5;
    *(a1 + 16) = xmmword_26868A5E0;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t - prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __OFSUB__(0, *a1);
  result = -*a1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 8);
    if (!__OFSUB__(0, v6))
    {
      result = sub_26861B324(result, -v6);
      *(a2 + 16) = xmmword_26868A5E0;
      *a2 = result;
      *(a2 + 8) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t + infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __OFADD__(*a1, *a2);
  result = *a1 + *a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if (!__OFADD__(v8, v7))
    {
      result = sub_26861B324(result, v8 + v7);
      *(a3 + 16) = xmmword_26868A5E0;
      *a3 = result;
      *(a3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26861B6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __OFSUB__(*a1, *a2);
  result = *a1 - *a2;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    if (!__OFSUB__(v8, v7))
    {
      result = sub_26861B324(result, v8 - v7);
      *(a3 + 16) = xmmword_26868A5E0;
      *a3 = result;
      *(a3 + 8) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26861B748()
{
  result = qword_28028CD50;
  if (!qword_28028CD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028CD48, &qword_26868F240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD50);
  }

  return result;
}

unsigned __int8 *sub_26861B7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_268689AF4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26861C2B4();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_268689D24();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
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

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
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

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
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

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_26861BD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_268689AF4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26861C2B4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_268689D24();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26861C2B4()
{
  v0 = sub_268689B04();
  v4 = sub_26861C334(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26861C334(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_268689A14();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_268689C84();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26861C48C(v9, 0);
  v12 = sub_26861C500(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_268689A14();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_268689D24();
LABEL_4:

  return sub_268689A14();
}

void *sub_26861C48C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD58, &qword_26868F248);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26861C500(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_26866A0F8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_268689AB4();
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
          result = sub_268689D24();
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

    result = sub_26866A0F8(v12, a6, a7);
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

    result = sub_268689A94();
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

unint64_t sub_26861C728()
{
  result = qword_28028CD68;
  if (!qword_28028CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD68);
  }

  return result;
}

unint64_t sub_26861C77C()
{
  result = qword_28028CD78;
  if (!qword_28028CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028CD78);
  }

  return result;
}

uint64_t OptionalExtensionField.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t OptionalExtensionField.value.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 40);

  return v7(v2, a1, AssociatedTypeWitness);
}

uint64_t (*OptionalExtensionField.protobufExtension.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_4;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t static OptionalExtensionField.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  v0 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_268689944() & 1;
}

uint64_t OptionalExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OptionalExtensionField();
  sub_2685B17CC(a1, a3 + *(v6 + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 32);

  return v8(a3, a2, AssociatedTypeWitness);
}

uint64_t OptionalExtensionField.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  (*(v8 + 16))(&v10 - v7, v1, AssociatedTypeWitness);
  return sub_2686899C4();
}

uint64_t OptionalExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_268689924();
}

uint64_t OptionalExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(v5, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = static OptionalExtensionField.== infix(_:_:)();
  (*(v3 + 8))(v7, a2);
  return v10 & 1;
}

uint64_t OptionalExtensionField.decodeExtensionField<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v28 = &v27 - v11;
  v12 = sub_268689C74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v27 - v20;
  v30 = v8;
  (*(v8 + 56))(&v27 - v20, 1, 1, AssociatedTypeWitness);
  v22 = v33;
  (*(v5 + 32))(v21, a1, v31, v32, v6, v5);
  if (v22)
  {
    return (*(v13 + 8))(v21, v12);
  }

  v25 = v28;
  v24 = v29;
  (*(v13 + 32))(v18, v21, v12);
  v26 = v30;
  if ((*(v30 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v13 + 8))(v18, v12);
  }

  (*(v26 + 32))(v25, v18, AssociatedTypeWitness);
  return (*(v26 + 40))(v24, v25, AssociatedTypeWitness);
}

uint64_t OptionalExtensionField.init<A>(protobufExtension:decoder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a6;
  v39 = a2;
  v40 = a4;
  v43 = a1;
  v37 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v35 - v16;
  v18 = sub_268689C74();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v35 - v26;
  v38 = v10;
  (*(v10 + 56))(&v35 - v26, 1, 1, AssociatedTypeWitness);
  v28 = v42;
  (*(a5 + 32))(v27, v39, v40, v41, a3, a5);
  v42 = v28;
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    return (*(v19 + 8))(v27, v18);
  }

  else
  {
    v41 = a3;
    v30 = v36;
    (*(v19 + 32))(v24, v27, v18);
    if ((*(v38 + 48))(v24, 1, AssociatedTypeWitness) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v43);
      (*(v19 + 8))(v24, v18);
      v31 = 1;
      v32 = v37;
    }

    else
    {
      v33 = *(v38 + 32);
      v33(v17, v24, AssociatedTypeWitness);
      v33(v30, v17, AssociatedTypeWitness);
      v32 = v37;
      OptionalExtensionField.init(protobufExtension:value:)(v43, v30, v37);
      v31 = 0;
    }

    v34 = type metadata accessor for OptionalExtensionField();
    return (*(*(v34 - 8) + 56))(v32, v31, 1, v34);
  }
}

uint64_t OptionalExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 + 16);
  v10 = (v4 + *(a2 + 36));
  v12 = v10[3];
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v12);
  v13 = (*(v11 + 8))(v12, v11);
  return (*(*(a2 + 24) + 48))(v4, v13, a1, a3, a4, v9);
}

uint64_t OptionalExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  OptionalExtensionField.hash(into:)(v3, a1);
  return sub_268689EF4();
}

uint64_t (*sub_26861D428(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OptionalExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t sub_26861D498@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  return OptionalExtensionField.init(protobufExtension:value:)(a1, a2, a3);
}

uint64_t sub_26861D53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static OptionalExtensionField.== infix(_:_:)();
}

uint64_t sub_26861D5B8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_268689C04();
  if (!v29)
  {
    return sub_268689B44();
  }

  v51 = v29;
  v55 = sub_268689D54();
  v42 = sub_268689D64();
  sub_268689D34();
  result = sub_268689BF4();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_268689C34();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_268689D44();
      result = sub_268689C14();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RepeatedExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_268689B74();
  if (result >= 1)
  {
    v12 = a4;
    v14 = v4[4];
    v13 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v14);
    v15 = (*(v13 + 8))(v14, v13);
    return (*(v9 + 56))(v8, v15, a1, a3, v12, v10, v9);
  }

  return result;
}

uint64_t (*sub_26861DAF0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RepeatedExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t PackedExtensionField.value.getter()
{
  sub_2685B9910();
}

uint64_t PackedExtensionField.value.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PackedExtensionField.protobufExtension.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_2685B17CC(a1, v1 + 8);
}

uint64_t sub_26861DCA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 8);

  return sub_268689BC4();
}

uint64_t PackedExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2685B17CC(a1, (a3 + 1));
  *a3 = a2;
  return result;
}

uint64_t sub_26861DD74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_268689BB4();
}

uint64_t sub_26861DE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *, void, void))
{
  sub_2685B1724(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  LOBYTE(a3) = a3(v3, v8, *(a2 + 16), *(a2 + 24));
  (*(*(a2 - 8) + 8))(v8, a2);
  return a3 & 1;
}

uint64_t sub_26861DEF4(uint64_t a1, void (*a2)(char *, char *))
{
  v14 = *v2;
  v4 = *(a1 + 24);
  v13[2] = *(a1 + 16);
  v13[3] = v4;
  swift_getAssociatedTypeWitness();
  v5 = sub_268689BA4();

  WitnessTable = swift_getWitnessTable();
  v8 = sub_26861D5B8(a2, v13, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
  sub_268621BAC();
  v9 = sub_268689934();
  v11 = v10;

  v14 = 91;
  v15 = 0xE100000000000000;
  MEMORY[0x26D61D4B0](v9, v11);

  MEMORY[0x26D61D4B0](93, 0xE100000000000000);

  return v14;
}

uint64_t sub_26861E060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  (*(v8 + 16))(&v11 - v7, a1, AssociatedTypeWitness);
  result = sub_2686899C4();
  *a2 = result;
  a2[1] = v10;
  return result;
}

uint64_t sub_26861E1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  v17 = sub_268689B44();
  (*(a5 + 40))(&v17, a2, a4, a6, a3, a5);
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v17;
    result = sub_2685B17CC(a1, (a7 + 1));
    *a7 = v16;
  }

  return result;
}

uint64_t PackedExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_268689B74();
  if (result >= 1)
  {
    v12 = a4;
    v14 = v4[4];
    v13 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v14);
    v15 = (*(v13 + 8))(v14, v13);
    return (*(v9 + 64))(v8, v15, a1, a3, v12, v10, v9);
  }

  return result;
}

uint64_t sub_26861E3C0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_268689E94();
  a2(v5, a1);
  return sub_268689EF4();
}

uint64_t (*sub_26861E418(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = PackedExtensionField.value.modify();
  return sub_26861E488;
}

uint64_t sub_26861E4D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_268689E94();
  a4(v7, a2);
  return sub_268689EF4();
}

uint64_t _s20SiriOntologyProtobuf22OptionalExtensionFieldV08protobufE0AA010AnyMessageE0_pvs_0(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4));

  return sub_2685B17CC(a1, v2 + v4);
}

uint64_t (*OptionalEnumExtensionField.protobufExtension.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_4;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t OptionalEnumExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for OptionalEnumExtensionField();
  sub_2685B17CC(a1, a4 + *(v8 + 36));
  v9 = *(*(a3 - 8) + 32);

  return v9(a4, a2, a3);
}

uint64_t OptionalEnumExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(a2 + 24) + 8);
  return sub_268689924();
}

uint64_t OptionalEnumExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(v5, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v8 = *(*(*(a2 + 24) + 8) + 8);
  v9 = *(a2 + 16);
  LOBYTE(v9) = sub_268689944();
  (*(v3 + 8))(v7, a2);
  return v9 & 1;
}

uint64_t OptionalEnumExtensionField.decodeExtensionField<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268689C74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v25 - v19;
  v26 = v7;
  (*(v7 + 56))(&v25 - v19, 1, 1, v6);
  v21 = v29;
  (*(a4 + 392))(v20, v6, *(a2 + 24), v28, a4);
  if (v21)
  {
    return (*(v12 + 8))(v20, v11);
  }

  v23 = v25;
  (*(v12 + 32))(v17, v20, v11);
  v24 = v26;
  if ((*(v26 + 48))(v17, 1, v6) == 1)
  {
    return (*(v12 + 8))(v17, v11);
  }

  (*(v24 + 32))(v10, v17, v6);
  return (*(v24 + 40))(v23, v10, v6);
}

uint64_t OptionalEnumExtensionField.init<A>(protobufExtension:decoder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a4;
  v42 = a2;
  v45 = a1;
  v40 = a7;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1, a2);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - v15;
  v46 = sub_268689C74();
  v17 = *(v46 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v46, v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v38 - v24;
  v41 = v10;
  (*(v10 + 56))(&v38 - v24, 1, 1, a3);
  v26 = a5;
  v27 = v44;
  (*(a6 + 392))(v25, a3, a5, v43, a6);
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    return (*(v17 + 8))(v25, v46);
  }

  else
  {
    v29 = v16;
    v30 = v45;
    v44 = v26;
    v31 = v25;
    v32 = v46;
    (*(v17 + 32))(v22, v31, v46);
    if ((*(v41 + 48))(v22, 1, a3) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v30);
      (*(v17 + 8))(v22, v32);
      v33 = 1;
      v34 = v40;
    }

    else
    {
      v35 = *(v41 + 32);
      v35(v29, v22, a3);
      v36 = v39;
      v35(v39, v29, a3);
      v34 = v40;
      OptionalEnumExtensionField.init(protobufExtension:value:)(v30, v36, a3, v40);
      v33 = 0;
    }

    v37 = type metadata accessor for OptionalEnumExtensionField();
    return (*(*(v37 - 8) + 56))(v34, v33, 1, v37);
  }
}

uint64_t OptionalEnumExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(a2 + 36));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = (*(v10 + 8))(v9, v10);
  return (*(a4 + 128))(v4, v11, *(a2 + 16), *(a2 + 24), a3, a4);
}

uint64_t OptionalEnumExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  v2 = *(a1 + 16);
  v3 = *(*(a1 + 24) + 8);
  sub_268689924();
  return sub_268689EF4();
}

uint64_t (*sub_26861EE60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OptionalEnumExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t RepeatedEnumExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  result = sub_268689B74();
  if (result >= 1)
  {
    v14 = a3;
    v12 = v4[4];
    v11 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v12);
    v13 = (*(v11 + 8))(v12, v11);
    return (*(a4 + 272))(v8, v13, v9, *(a2 + 24), v14, a4);
  }

  return result;
}

uint64_t (*sub_26861F0B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RepeatedEnumExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t static PackedEnumExtensionField.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*(a4 + 8) + 8);
  return sub_268689BC4();
}

uint64_t PackedEnumExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  return sub_268689BB4();
}

uint64_t sub_26861F1D0(uint64_t a1, uint64_t a2)
{
  sub_2685B1724(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v4 = *(a2 + 16);
  v5 = *v2;
  v6 = *(*(*(a2 + 24) + 8) + 8);
  v7 = sub_268689BC4();
  (*(*(a2 - 8) + 8))(v10, a2);
  return v7 & 1;
}

uint64_t sub_26861F294(uint64_t a1, void (*a2)(char *, char *))
{
  v13 = *v2;
  v12[1] = *(a1 + 16);
  v4 = sub_268689BA4();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_26861D5B8(a2, v12, v4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
  sub_268621BAC();
  v8 = sub_268689934();
  v10 = v9;

  v13 = 91;
  v14 = 0xE100000000000000;
  MEMORY[0x26D61D4B0](v8, v10);

  MEMORY[0x26D61D4B0](93, 0xE100000000000000);

  return v13;
}

uint64_t sub_26861F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2686899C4();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_26861F51C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v15 = sub_268689B44();
  (*(a5 + 400))(&v15, a2, a4, a3, a5);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v15;
    result = sub_2685B17CC(a1, (a6 + 1));
    *a6 = v14;
  }

  return result;
}

uint64_t PackedEnumExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  result = sub_268689B74();
  if (result >= 1)
  {
    v14 = a3;
    v12 = v4[4];
    v11 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v12);
    v13 = (*(v11 + 8))(v12, v11);
    return (*(a4 + 400))(v8, v13, v9, *(a2 + 24), v14, a4);
  }

  return result;
}

uint64_t sub_26861F6CC(uint64_t a1)
{
  sub_268689E94();
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  sub_268689BB4();
  return sub_268689EF4();
}

uint64_t (*sub_26861F71C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = PackedEnumExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t (*OptionalMessageExtensionField.protobufExtension.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_4;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t _s20SiriOntologyProtobuf26OptionalEnumExtensionFieldV16debugDescriptionSSvg_0(uint64_t a1)
{
  v2 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1, v1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_2686899C4();
}

uint64_t OptionalMessageExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(v5, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v8 = *(a2 + 32);
  v9 = *(a2 + 16);
  LOBYTE(v9) = sub_268689944();
  (*(v3 + 8))(v7, a2);
  return v9 & 1;
}

uint64_t OptionalMessageExtensionField.decodeExtensionField<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268689C74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v26 - v19;
  v21 = *(v8 + 16);
  v27 = v4;
  v21(&v26 - v19, v4, v7);
  (*(v8 + 56))(v20, 0, 1, v7);
  v22 = v30;
  (*(a4 + 408))(v20, v7, *(a2 + 24), v29, a4);
  if (v22)
  {
    return (*(v12 + 8))(v20, v11);
  }

  v25 = v26;
  v24 = v27;
  (*(v12 + 32))(v17, v20, v11);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    return (*(v12 + 8))(v17, v11);
  }

  (*(v8 + 32))(v25, v17, v7);
  return (*(v8 + 40))(v24, v25, v7);
}

uint64_t OptionalMessageExtensionField.init<A>(protobufExtension:decoder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a4;
  v39 = a6;
  v40 = a8;
  v41 = a2;
  v45 = a1;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - v16;
  v44 = sub_268689C74();
  v18 = *(v44 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v44, v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v37 - v25;
  v38 = v11;
  (*(v11 + 56))(&v37 - v25, 1, 1, a3);
  v27 = a5;
  v28 = v43;
  (*(a7 + 408))(v26, a3, a5, v42, a7);
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    return (*(v18 + 8))(v26, v44);
  }

  else
  {
    v30 = v37;
    v43 = v27;
    v31 = v44;
    (*(v18 + 32))(v23, v26, v44);
    v32 = v38;
    if ((*(v38 + 48))(v23, 1, a3) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v45);
      (*(v18 + 8))(v23, v31);
      v33 = 1;
      v34 = v40;
    }

    else
    {
      v35 = *(v32 + 32);
      v35(v17, v23, a3);
      v35(v30, v17, a3);
      v34 = v40;
      OptionalMessageExtensionField.init(protobufExtension:value:)(v45, v30, a3, v43, v39, v40);
      v33 = 0;
    }

    v36 = type metadata accessor for OptionalMessageExtensionField();
    return (*(*(v36 - 8) + 56))(v34, v33, 1, v36);
  }
}

uint64_t OptionalMessageExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(a2 + 44));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = (*(v10 + 8))(v9, v10);
  return (*(a4 + 136))(v4, v11, *(a2 + 16), *(a2 + 24), a3, a4);
}

uint64_t OptionalMessageExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  (*(*(a1 + 24) + 80))(v3, *(a1 + 16));
  return sub_268689EF4();
}

uint64_t (*sub_268620114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OptionalMessageExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t sub_268620230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  return static OptionalMessageExtensionField.== infix(_:_:)();
}

uint64_t static RepeatedMessageExtensionField.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_268689BC4();
}

uint64_t RepeatedMessageExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;

  if (sub_268689B74())
  {
    v9 = 0;
    v17 = *(a2 + 24);
    v10 = *(v17 + 80);
    v15 = v6;
    v16 = v10;
    while (1)
    {
      v11 = sub_268689B64();
      sub_268689B24();
      if (v11)
      {
        (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v4);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v15 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        (*(v5 + 16))(v7, &v19, v4);
        swift_unknownObjectRelease();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v16(v18, v4, v17);
      (*(v5 + 8))(v7, v4);
      ++v9;
      if (v12 == sub_268689B74())
      {
      }
    }
  }
}

uint64_t RepeatedMessageExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  sub_2685B1724(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *v2;
  v7 = sub_268689BC4();
  (*(*(a2 - 8) + 8))(v10, a2);
  return v7 & 1;
}

uint64_t RepeatedMessageExtensionField.init<A>(protobufExtension:decoder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v15 = sub_268689B44();
  (*(a5 + 416))(&v15, a2, a4, a3, a5);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v15;
    result = sub_2685B17CC(a1, (a6 + 1));
    *a6 = v14;
  }

  return result;
}

uint64_t RepeatedMessageExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  result = sub_268689B74();
  if (result >= 1)
  {
    v14 = a3;
    v12 = v4[4];
    v11 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v12);
    v13 = (*(v11 + 8))(v12, v11);
    return (*(a4 + 280))(v8, v13, v9, *(a2 + 24), v14, a4);
  }

  return result;
}

uint64_t (*sub_268620794(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RepeatedMessageExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t sub_26862089C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  return static RepeatedMessageExtensionField.== infix(_:_:)(a1, a2);
}

uint64_t sub_268620960(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4));

  return sub_2685B17CC(a1, v2 + v4);
}

uint64_t (*OptionalGroupExtensionField.protobufExtension.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_4;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_268620A14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v11 = a6(0, a3, a4, a5);
  sub_2685B17CC(a1, a7 + *(v11 + 44));
  v12 = *(*(a3 - 8) + 32);

  return v12(a7, a2, a3);
}

uint64_t OptionalGroupExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  return sub_268689924();
}

uint64_t OptionalGroupExtensionField.debugDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  return sub_268689E24();
}

uint64_t OptionalGroupExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(v5, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v8 = *(*(a2 + 32) + 8);
  v9 = *(a2 + 16);
  LOBYTE(v9) = sub_268689944();
  (*(v3 + 8))(v7, a2);
  return v9 & 1;
}

uint64_t OptionalGroupExtensionField.decodeExtensionField<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268689C74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v26 - v19;
  v21 = *(v8 + 16);
  v27 = v4;
  v21(&v26 - v19, v4, v7);
  (*(v8 + 56))(v20, 0, 1, v7);
  v22 = v30;
  (*(a4 + 424))(v20, v7, *(a2 + 24), v29, a4);
  if (v22)
  {
    return (*(v12 + 8))(v20, v11);
  }

  v25 = v26;
  v24 = v27;
  (*(v12 + 32))(v17, v20, v11);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    return (*(v12 + 8))(v17, v11);
  }

  (*(v8 + 32))(v25, v17, v7);
  return (*(v8 + 40))(v24, v25, v7);
}

uint64_t OptionalGroupExtensionField.init<A>(protobufExtension:decoder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a4;
  v39 = a6;
  v40 = a8;
  v41 = a2;
  v45 = a1;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - v16;
  v44 = sub_268689C74();
  v18 = *(v44 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v44, v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v37 - v25;
  v38 = v11;
  (*(v11 + 56))(&v37 - v25, 1, 1, a3);
  v27 = a5;
  v28 = v43;
  (*(a7 + 424))(v26, a3, a5, v42, a7);
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    return (*(v18 + 8))(v26, v44);
  }

  else
  {
    v30 = v37;
    v43 = v27;
    v31 = v44;
    (*(v18 + 32))(v23, v26, v44);
    v32 = v38;
    if ((*(v38 + 48))(v23, 1, a3) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v45);
      (*(v18 + 8))(v23, v31);
      v33 = 1;
      v34 = v40;
    }

    else
    {
      v35 = *(v32 + 32);
      v35(v17, v23, a3);
      v35(v30, v17, a3);
      v34 = v40;
      OptionalGroupExtensionField.init(protobufExtension:value:)(v45, v30, a3, v43, v39, v40);
      v33 = 0;
    }

    v36 = type metadata accessor for OptionalGroupExtensionField();
    return (*(*(v36 - 8) + 56))(v34, v33, 1, v36);
  }
}

uint64_t OptionalGroupExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(a2 + 44));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = (*(v10 + 8))(v9, v10);
  return (*(a4 + 144))(v4, v11, *(a2 + 16), *(a2 + 24), a3, a4);
}

uint64_t OptionalGroupExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  sub_268689924();
  return sub_268689EF4();
}

uint64_t (*sub_2686212CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OptionalGroupExtensionField.value.modify();
  return sub_268622EC8;
}

uint64_t sub_2686213E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_268689E94();
  a4(v7, a2);
  return sub_268689EF4();
}

uint64_t static RepeatedGroupExtensionField.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a5 + 8);
  return sub_268689BC4();
}

uint64_t RepeatedGroupExtensionField.init(protobufExtension:value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2685B17CC(a1, (a3 + 1));
  *a3 = a2;
  return result;
}

uint64_t RepeatedGroupExtensionField.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  return sub_268689BB4();
}

uint64_t sub_2686214FC(uint64_t a1, void (*a2)(char *, char *))
{
  v4 = *v2;
  v13[1] = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = sub_268689BA4();

  WitnessTable = swift_getWitnessTable();
  v8 = sub_26861D5B8(a2, v13, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
  sub_268621BAC();
  v9 = sub_268689934();
  v11 = v10;

  v15 = 91;
  v16 = 0xE100000000000000;
  MEMORY[0x26D61D4B0](v9, v11);

  MEMORY[0x26D61D4B0](93, 0xE100000000000000);

  return v15;
}

uint64_t RepeatedGroupExtensionField.isEqual(other:)(uint64_t a1, uint64_t a2)
{
  sub_2685B1724(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD80, &qword_26868F260);
  swift_dynamicCast();
  v4 = *(a2 + 16);
  v5 = *v2;
  v6 = *(*(a2 + 32) + 8);
  v7 = sub_268689BC4();
  (*(*(a2 - 8) + 8))(v10, a2);
  return v7 & 1;
}

uint64_t RepeatedGroupExtensionField.init<A>(protobufExtension:decoder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v15 = sub_268689B44();
  (*(a5 + 432))(&v15, a2, a4, a3, a5);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v15;
    result = sub_2685B17CC(a1, (a6 + 1));
    *a6 = v14;
  }

  return result;
}

uint64_t RepeatedGroupExtensionField.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  result = sub_268689B74();
  if (result >= 1)
  {
    v14 = a3;
    v12 = v4[4];
    v11 = v4[5];
    __swift_project_boxed_opaque_existential_1(v4 + 1, v12);
    v13 = (*(v11 + 8))(v12, v11);
    return (*(a4 + 288))(v8, v13, v9, *(a2 + 24), v14, a4);
  }

  return result;
}

uint64_t sub_2686218FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  v4 = sub_268689D74();
  result = v4 + 32;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (1)
  {
    v8 = v6 + v7;
    if (v6 + v7 == -1)
    {
LABEL_5:

      return v8 == -1;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v9 = result + 40;
    sub_2685B1724(result, v13);
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = (*(v11 + 32))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v13);
    result = v9;
    if ((v12 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t RepeatedGroupExtensionField.hashValue.getter(uint64_t a1)
{
  sub_268689E94();
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  sub_268689BB4();
  return sub_268689EF4();
}

uint64_t (*sub_268621A4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = RepeatedGroupExtensionField.value.modify();
  return sub_268622EC8;
}

void sub_268621ABC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_268621BAC()
{
  result = qword_28028CD90[0];
  if (!qword_28028CD90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028CD88, &unk_26868F268);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28028CD90);
  }

  return result;
}

uint64_t sub_268621C10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_26861E060(a1, a2);
}

uint64_t sub_268621C80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_26861F3E8(a1, v2[2], a2);
}

uint64_t sub_268621CBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 24) + 8);
  result = sub_268689E24();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_268621D30(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621DB4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621E38(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621EBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621F40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268621FC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268622048(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2686220CC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268622150(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2686221D4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268622220(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268622390(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_2686227A4();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_268622428(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *(((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

double sub_2686225B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 64);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v15 = a3 - v13 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v13 < a3)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (a2 > v13)
  {
    if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v19 = a2 - v13;
    }

    else
    {
      v19 = 1;
    }

    if (((v12 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v20 = ~v13 + a2;
      bzero(a1, v14);
      *a1 = v20;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *(a1 + v14) = v19;
      }

      else
      {
        *(a1 + v14) = v19;
      }
    }

    else if (v18)
    {
      *(a1 + v14) = v19;
    }

    return result;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v14) = 0;
  }

  else if (v18)
  {
    *(a1 + v14) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v11 < 0x7FFFFFFF)
  {
    v22 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v22 + 8) = 0u;
      *(v22 + 24) = 0u;
      *v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 24) = (a2 - 1);
    }
  }

  else
  {
    v21 = *(v9 + 56);

    v21(a1, a2);
  }

  return result;
}

unint64_t sub_2686227A4()
{
  result = qword_28028CE18[0];
  if (!qword_28028CE18[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_28028CE18);
  }

  return result;
}

unint64_t sub_268622844(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2686227A4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_268622914(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2686227A4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26862299C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_268622AD8(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_268622C9C(uint64_t *a1, int a2)
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

uint64_t sub_268622CE4(uint64_t result, int a2, int a3)
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

unint64_t sub_268622FA4(unint64_t result, int a2)
{
  v3 = 8 * a2;
  if ((8 * a2) >= 0x80)
  {
    if (v3 < 0x4000)
    {
      if (result < 0x80)
      {
        v5 = 2;
        v4 = 1;
        goto LABEL_59;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        v5 = 2;
        goto LABEL_46;
      }

      if (result >> 35)
      {
        v5 = 2;
        goto LABEL_50;
      }

      if (!(result >> 21))
      {
        v4 = 2;
        v5 = 2;
LABEL_18:
        if (result < 0x4000)
        {
          goto LABEL_59;
        }

LABEL_58:
        ++v4;
        goto LABEL_59;
      }

      v5 = 2;
LABEL_56:
      v4 = 4;
      goto LABEL_57;
    }

    if (v3 >> 21)
    {
      if (v3 >> 28)
      {
        if (result < 0x80)
        {
          v5 = 5;
          v4 = 1;
          goto LABEL_59;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          v5 = 5;
          goto LABEL_46;
        }

        if (result >> 35)
        {
          v5 = 5;
          goto LABEL_50;
        }

        if (!(result >> 21))
        {
          v5 = 5;
          goto LABEL_10;
        }

        v5 = 5;
        goto LABEL_56;
      }

      if (result < 0x80)
      {
        v5 = 4;
        v4 = 1;
        goto LABEL_59;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        if (!(result >> 35))
        {
          if (!(result >> 21))
          {
            v5 = 4;
            goto LABEL_10;
          }

          v4 = 4;
          v5 = 4;
LABEL_57:
          if (!(result >> 28))
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

        v5 = 4;
        goto LABEL_50;
      }

      v5 = 4;
    }

    else
    {
      if (result < 0x80)
      {
        v5 = 3;
        v4 = 1;
        goto LABEL_59;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        if (!(result >> 35))
        {
          if (!(result >> 21))
          {
            v5 = 3;
            goto LABEL_10;
          }

          v5 = 3;
          goto LABEL_56;
        }

        v5 = 3;
        goto LABEL_50;
      }

      v5 = 3;
    }

LABEL_46:
    v4 = 10;
    goto LABEL_59;
  }

  if (result < 0x80)
  {
    v4 = 1;
    v5 = 1;
    goto LABEL_59;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v5 = 1;
    goto LABEL_46;
  }

  if (!(result >> 35))
  {
    v5 = 1;
    if (result < 0x200000)
    {
LABEL_10:
      v4 = 2;
      goto LABEL_18;
    }

    goto LABEL_56;
  }

  v5 = 1;
LABEL_50:
  if (result >> 49)
  {
    result >>= 28;
    v4 = 8;
    goto LABEL_57;
  }

  v4 = 6;
  if (result >> 42)
  {
    goto LABEL_58;
  }

LABEL_59:
  v6 = v5 + v4;
  v7 = __OFADD__(*v2, v6);
  v8 = *v2 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *v2 = v8;
  }

  return result;
}

uint64_t sub_268623180(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = (2 * result) ^ (result >> 31);
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (v8 >> 28)
  {
    v11 = 5;
  }

  if (v8 >= 0x200000)
  {
    v10 = v11;
  }

  if (v8 >> 14)
  {
    v9 = v10;
  }

  if (v8 >= 0x80)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 + v7;
  v14 = __OFADD__(*v2, v13);
  v15 = *v2 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *v2 = v15;
  }

  return result;
}

uint64_t sub_268623218(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = (2 * result) ^ (result >> 63);
  if (v8 < 0x80)
  {
    v9 = 1;
    goto LABEL_25;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = 10;
    goto LABEL_25;
  }

  if (!(v8 >> 35))
  {
    if (v8 < 0x200000)
    {
      v9 = 2;
      if (v8 < 0x4000)
      {
        goto LABEL_25;
      }

LABEL_24:
      ++v9;
      goto LABEL_25;
    }

    v9 = 4;
LABEL_23:
    if (!(v8 >> 28))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v8 >> 49)
  {
    v8 >>= 28;
    v9 = 8;
    goto LABEL_23;
  }

  v9 = 6;
  if (v8 >> 42)
  {
    goto LABEL_24;
  }

LABEL_25:
  v10 = v9 + v7;
  v11 = __OFADD__(*v2, v10);
  v12 = *v2 + v10;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *v2 = v12;
  }

  return result;
}

uint64_t sub_2686232E8(uint64_t result, unint64_t a2, int a3)
{
  v4 = 8 * a3;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if ((8 * a3) >> 28)
  {
    v7 = 5;
  }

  if (v4 >= 0x200000)
  {
    v6 = v7;
  }

  if ((8 * a3) >> 14)
  {
    v5 = v6;
  }

  if (v4 >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v12 = *(result + 16);
      v11 = *(result + 24);
      v10 = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    result = sub_2685B5B0C(v10);
    v13 = v8 + result;
    if (__OFADD__(v8, result))
    {
      __break(1u);
    }

    else
    {
      v14 = __OFADD__(v13, v10);
      v15 = v13 + v10;
      if (!v14)
      {
        v14 = __OFADD__(*v3, v15);
        v16 = *v3 + v15;
        if (!v14)
        {
          *v3 = v16;
          return result;
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

LABEL_17:
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2686233D0(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if ((v12 & 0x80000000) != 0)
      {
        v13 = __OFADD__(v9, 10);
        v9 += 10;
        if (v13)
        {
          goto LABEL_36;
        }
      }

      else if (v11 > 0x7F)
      {
        if (v11 >> 28)
        {
          v14 = 5;
        }

        else
        {
          v14 = 4;
        }

        if (v11 < 0x200000)
        {
          v14 = 3;
        }

        if (v11 >= 0x4000)
        {
          v15 = v14;
        }

        else
        {
          v15 = 2;
        }

        v13 = __OFADD__(v9, v15);
        v9 += v15;
        if (v13)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      else
      {
        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
          goto LABEL_36;
        }
      }

      if (!--v8)
      {
        goto LABEL_32;
      }
    }
  }

  v9 = 0;
LABEL_32:
  result = sub_2685B5B0C(v9);
  v16 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = __OFADD__(v16, v9);
  v17 = v16 + v9;
  if (v13)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v13 = __OFADD__(*v2, v17);
  v18 = *v2 + v17;
  if (!v13)
  {
    *v2 = v18;
    return result;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2686234F0(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v11 = *v10++;
      v12 = (2 * v11) ^ (v11 >> 31);
      if (v12 >= 0x80)
      {
        if (v12 >> 14)
        {
          if (v12 >= 0x200000)
          {
            v13 = v12 >> 28 ? 5 : 4;
          }

          else
          {
            v13 = 3;
          }
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 1;
      }

      v14 = __OFADD__(v9, v13);
      v9 += v13;
      if (v14)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = 0;
LABEL_25:
  result = sub_2685B5B0C(v9);
  v15 = v7 + result;
  if (__OFADD__(v7, result))
  {
    goto LABEL_30;
  }

  v14 = __OFADD__(v15, v9);
  v16 = v15 + v9;
  if (v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v14 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v14)
  {
    *v2 = v17;
    return result;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_268623604(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v11 = *v10++;
      v12 = (2 * v11) ^ (v11 >> 63);
      if (v12 < 0x80)
      {
        v13 = 1;
        goto LABEL_27;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        v13 = 10;
        goto LABEL_27;
      }

      if (v12 >> 35)
      {
        if (v12 >> 49)
        {
          v12 >>= 28;
          v13 = 8;
LABEL_25:
          if (!(v12 >> 28))
          {
            goto LABEL_27;
          }

LABEL_26:
          ++v13;
          goto LABEL_27;
        }

        v13 = 6;
        if (v12 >> 42)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v12 >= 0x200000)
        {
          v13 = 4;
          goto LABEL_25;
        }

        v13 = 2;
        if (v12 >= 0x4000)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v14 = __OFADD__(v9, v13);
      v9 += v13;
      if (v14)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (!--v8)
      {
        goto LABEL_31;
      }
    }
  }

  v9 = 0;
LABEL_31:
  result = sub_2685B5B0C(v9);
  v15 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = __OFADD__(v15, v9);
  v16 = v15 + v9;
  if (v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v14)
  {
    *v2 = v17;
    return result;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_268623748(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 >= 0x80)
      {
        v14 = v11 >> 14;
        v15 = v11 >> 28 ? 5 : 4;
        v13 = v11 >= 0x200000 ? v15 : 3;
        if (!v14)
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 1;
      }

      v16 = __OFADD__(v9, v13);
      v9 += v13;
      if (v16)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = 0;
LABEL_26:
  result = sub_2685B5B0C(v9);
  v17 = v7 + result;
  if (__OFADD__(v7, result))
  {
    goto LABEL_31;
  }

  v16 = __OFADD__(v17, v9);
  v18 = v17 + v9;
  if (v16)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v16 = __OFADD__(*v2, v18);
  v19 = *v2 + v18;
  if (!v16)
  {
    *v2 = v19;
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_268623850(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (result + 32);
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 < 0x80)
      {
        v13 = 1;
        goto LABEL_27;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        v13 = 10;
        goto LABEL_27;
      }

      if (v11 >> 35)
      {
        if (v11 >> 49)
        {
          v11 >>= 28;
          v13 = 8;
LABEL_25:
          if (!(v11 >> 28))
          {
            goto LABEL_27;
          }

LABEL_26:
          ++v13;
          goto LABEL_27;
        }

        v13 = 6;
        if (v11 >> 42)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v11 >= 0x200000)
        {
          v13 = 4;
          goto LABEL_25;
        }

        v13 = 2;
        if (v11 >= 0x4000)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      v14 = __OFADD__(v9, v13);
      v9 += v13;
      if (v14)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (!--v8)
      {
        goto LABEL_31;
      }
    }
  }

  v9 = 0;
LABEL_31:
  result = sub_2685B5B0C(v9);
  v15 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = __OFADD__(v15, v9);
  v16 = v15 + v9;
  if (v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = __OFADD__(*v2, v16);
  v17 = *v2 + v16;
  if (!v14)
  {
    *v2 = v17;
    return result;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26862398C(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8 >> 61)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = 4 * v8;
  result = sub_2685B5B0C(4 * v8);
  v10 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = __OFADD__(*v2, v12);
  v13 = *v2 + v12;
  if (!v11)
  {
    *v2 = v13;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_268623A3C(uint64_t result, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(result + 16);
  if (v8 >> 60)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = 8 * v8;
  result = sub_2685B5B0C(8 * v8);
  v10 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = __OFADD__(*v2, v12);
  v13 = *v2 + v12;
  if (!v11)
  {
    *v2 = v13;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_268623AEC(uint64_t a1, int a2)
{
  v3 = 8 * a2;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if ((8 * a2) >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a1 + 16);
  result = sub_2685B5B0C(v8);
  v10 = v7 + result;
  if (__OFADD__(v7, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __OFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFADD__(*v2, v12);
  v13 = *v2 + v12;
  if (!v11)
  {
    *v2 = v13;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_268623B8C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = 8 * a2;
  v6 = 2;
  v7 = 3;
  v8 = 4;
  if ((8 * a2) >> 28)
  {
    v8 = 5;
  }

  if (v5 >= 0x200000)
  {
    v7 = v8;
  }

  if ((8 * a2) >> 14)
  {
    v6 = v7;
  }

  if (v5 >= 0x80)
  {
    v9 = v6;
  }

  else
  {
    v9 = 1;
  }

  v10 = *v4 + v9;
  if (__OFADD__(*v4, v9))
  {
    __break(1u);
  }

  else
  {
    *v4 = v10;
    v11 = (*(a4 + 40))(a3, a4);
    v12 = sub_26868413C(v11);
    if (!__OFADD__(v10, v12))
    {
      *v4 = v10 + v12;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_268623C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 8 * v10;
  v13 = 2;
  v14 = 3;
  v15 = 4;
  if ((8 * v10) >> 28)
  {
    v15 = 5;
  }

  if (v12 >= 0x200000)
  {
    v14 = v15;
  }

  if ((8 * v10) >> 14)
  {
    v13 = v14;
  }

  if (v12 >= 0x80)
  {
    v16 = v13;
  }

  else
  {
    v16 = 1;
  }

  result = sub_268689B74();
  v18 = result * v16;
  if ((result * v16) >> 64 == (result * v16) >> 63)
  {
    v19 = *v4 + v18;
    if (__OFADD__(*v4, v18))
    {
      goto LABEL_37;
    }

    *v4 = v19;
    result = sub_268689B74();
    if (!result)
    {
      return result;
    }

    v26 = v9;
    v27 = v4;
    v20 = 0;
    v30 = *(v33 + 40);
    v31 = v33 + 40;
    v32 = (v8 + 16);
    v28 = v5;
    v29 = (v8 + 8);
    while (1)
    {
      v21 = sub_268689B64();
      sub_268689B24();
      if (v21)
      {
        result = (*(v8 + 16))(v11, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, a3);
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v26 != 8)
        {
          goto LABEL_38;
        }

        v34 = result;
        (*v32)(v11, &v34, a3);
        result = swift_unknownObjectRelease();
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          *v27 = v19;
          return result;
        }
      }

      v23 = v30(a3, v33);
      result = (*v29)(v11, a3);
      v24 = 4;
      if (v23 >> 28)
      {
        v24 = 5;
      }

      if (v23 < 0x200000)
      {
        v24 = 3;
      }

      if (v23 < 0x4000)
      {
        v24 = 2;
      }

      if (v23 <= 0x7F)
      {
        v24 = 1;
      }

      if ((v23 & 0x80000000) != 0)
      {
        v24 = 10;
      }

      v25 = __OFADD__(v19, v24);
      v19 += v24;
      if (v25)
      {
        break;
      }

      result = sub_268689B74();
      ++v20;
      if (v22 == result)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_268623F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = a2;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v33 = v12;
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v11;
  sub_268689BA4();
  swift_getWitnessTable();
  result = sub_268689C24();
  if (result)
  {
    return result;
  }

  v15 = 8 * v7;
  v16 = 2;
  v17 = 3;
  v18 = 4;
  if ((8 * v7) >> 28)
  {
    v18 = 5;
  }

  if (v15 >= 0x200000)
  {
    v17 = v18;
  }

  if ((8 * v7) >> 14)
  {
    v16 = v17;
  }

  if (v15 >= 0x80)
  {
    v19 = v16;
  }

  else
  {
    v19 = 1;
  }

  v20 = __OFADD__(*v4, v19);
  v21 = *v4 + v19;
  if (v20)
  {
    goto LABEL_39;
  }

  v31 = v21;
  v32 = v5;
  v30 = v4;
  *v4 = v21;
  if (sub_268689B74())
  {
    v22 = 0;
    v23 = 0;
    v34 = *(v37 + 40);
    v35 = v37 + 40;
    v36 = (v9 + 16);
    while (1)
    {
      v24 = sub_268689B64();
      sub_268689B24();
      if (v24)
      {
        (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, a3);
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v33 != 8)
        {
          goto LABEL_42;
        }

        v38 = result;
        (*v36)(v13, &v38, a3);
        swift_unknownObjectRelease();
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v26 = v34(a3, v37);
      result = (*(v9 + 8))(v13, a3);
      v27 = 4;
      if (v26 >> 28)
      {
        v27 = 5;
      }

      if (v26 < 0x200000)
      {
        v27 = 3;
      }

      if (v26 < 0x4000)
      {
        v27 = 2;
      }

      if (v26 <= 0x7F)
      {
        v27 = 1;
      }

      if ((v26 & 0x80000000) != 0)
      {
        v27 = 10;
      }

      v20 = __OFADD__(v23, v27);
      v23 += v27;
      if (v20)
      {
        break;
      }

      ++v22;
      if (v25 == sub_268689B74())
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_33:
  v23 = 0;
LABEL_34:
  result = sub_2685B5B0C(v23);
  v28 = result + v23;
  if (!__OFADD__(result, v23))
  {
    v20 = __OFADD__(v31, v28);
    v29 = v31 + v28;
    if (!v20)
    {
      *v30 = v29;
      return result;
    }

    goto LABEL_41;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_268624240(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = 8 * a2;
  v7 = 2;
  v8 = 3;
  v9 = 4;
  if ((8 * a2) >> 28)
  {
    v9 = 5;
  }

  if (v6 >= 0x200000)
  {
    v8 = v9;
  }

  if ((8 * a2) >> 14)
  {
    v7 = v8;
  }

  if (v6 >= 0x80)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1;
  }

  result = sub_2685B59A8(a3, a4);
  if (!v5)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = result;
      result = sub_268684180(result);
      v13 = v10 + result;
      if (!__OFADD__(v10, result))
      {
        v14 = __OFADD__(v13, v12);
        v15 = v13 + v12;
        if (!v14)
        {
          v14 = __OFADD__(*v4, v15);
          v16 = *v4 + v15;
          if (!v14)
          {
            *v4 = v16;
            return result;
          }

LABEL_20:
          __break(1u);
          return result;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2686242FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = 8 * a2;
  v6 = 4;
  v7 = 6;
  v8 = 10;
  if (!((8 * a2) >> 28))
  {
    v8 = 8;
  }

  if (v5 >= 0x200000)
  {
    v7 = v8;
  }

  if ((8 * a2) >> 14)
  {
    v6 = v7;
  }

  if (v5 >= 0x80)
  {
    v9 = v6;
  }

  else
  {
    v9 = 2;
  }

  v10 = __OFADD__(*v4, v9);
  v11 = *v4 + v9;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *v4 = v11;
    return (*(a4 + 72))(v4, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8, a3);
  }

  return result;
}

uint64_t sub_2686243A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 8 * v10;
  v13 = 2;
  v14 = 3;
  v15 = 4;
  if ((8 * v10) >> 28)
  {
    v15 = 5;
  }

  if (v12 >= 0x200000)
  {
    v14 = v15;
  }

  if ((8 * v10) >> 14)
  {
    v13 = v14;
  }

  if (v12 >= 0x80)
  {
    v16 = v13;
  }

  else
  {
    v16 = 1;
  }

  result = sub_268689B74();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v18 = 2 * result * v16;
  if ((2 * result * v16) >> 64 != v18 >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = __OFADD__(*v4, v18);
  v20 = *v4 + v18;
  if (!v19)
  {
    *v4 = v20;
    result = sub_268689B74();
    if (!result)
    {
      return result;
    }

    v21 = 0;
    v27 = v4;
    v28 = (v8 + 16);
    v25 = v9;
    v26 = v29 + 72;
    while (1)
    {
      v22 = sub_268689B64();
      sub_268689B24();
      if (v22)
      {
        result = (*(v8 + 16))(v11, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, a3);
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = sub_268689D14();
        if (v25 != 8)
        {
          goto LABEL_28;
        }

        v30 = result;
        (*v28)(v11, &v30, a3);
        result = swift_unknownObjectRelease();
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_23:
          __break(1u);
          return result;
        }
      }

      (*(v29 + 72))(v27, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8, a3);
      result = (*(v8 + 8))(v11, a3);
      if (!v5)
      {
        result = sub_268689B74();
        ++v21;
        if (v23 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_268624644(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = *(a6 + 8);
  v83 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  v12 = *(v78 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v80 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v76 - v17;
  v96 = *(a5 + 8);
  v93 = a3;
  v19 = swift_getAssociatedTypeWitness();
  v77 = *(v19 - 8);
  v20 = *(v77 + 64);
  v21 = MEMORY[0x28223BE20](v19, v19);
  v104 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v81 = v76 - v24;
  v98 = v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = sub_268689C74();
  v27 = *(v92 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v92, v29);
  v85 = v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v91 = v76 - v33;
  v34 = 8 * a2;
  if ((8 * a2) >= 0x80)
  {
    if (v34 >= 0x4000)
    {
      if (v34 >= 0x200000)
      {
        v36 = v34 >> 28 == 0;
        v35 = 4;
        if (!v36)
        {
          v35 = 5;
        }
      }

      else
      {
        v35 = 3;
      }
    }

    else
    {
      v35 = 2;
    }
  }

  else
  {
    v35 = 1;
  }

  v76[0] = v35;
  v84 = v6;
  v106 = AssociatedTypeWitness;
  v79 = v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v37 = sub_268689D84();
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v97 = v37 | 0x8000000000000000;
  }

  else
  {
    v41 = -1 << *(a1 + 32);
    v39 = ~v41;
    v38 = a1 + 64;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v40 = v43 & *(a1 + 64);
    v97 = a1;
  }

  v44 = v85;
  v102 = (v77 + 32);
  v101 = (v78 + 32);
  v90 = TupleTypeMetadata2 - 8;
  v76[2] = v39;
  v45 = (v39 + 64) >> 6;
  v76[4] = v77 + 16;
  v76[3] = v78 + 16;
  v89 = (v27 + 32);
  v86 = v96 + 48;
  v82 = v95 + 48;
  v87 = (v78 + 8);
  v88 = (v77 + 8);
  v76[1] = a1;

  v47 = 0;
  v48 = v97;
  v49 = v98;
  v50 = v80;
  v94 = v38;
  v99 = 0;
  v100 = v40;
  if ((v97 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v40)
  {
    v51 = v40;
    v52 = v47;
    v53 = v81;
LABEL_27:
    v103 = (v51 - 1) & v51;
    v59 = __clz(__rbit64(v51)) | (v52 << 6);
    (*(v77 + 16))(v53, *(v48 + 48) + *(v77 + 72) * v59, v49);
    v60 = *(v48 + 56) + *(v78 + 72) * v59;
    v54 = v79;
    v55 = v106;
    (*(v78 + 16))(v79, v60, v106);
    goto LABEL_28;
  }

  if (v45 <= v47 + 1)
  {
    v56 = v47 + 1;
  }

  else
  {
    v56 = v45;
  }

  v57 = v56 - 1;
  v58 = v47;
  v53 = v81;
  while (1)
  {
    v52 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v52 >= v45)
    {
      v103 = 0;
      v62 = 1;
      v44 = v85;
      while (1)
      {
        v63 = *(TupleTypeMetadata2 - 8);
        (*(v63 + 56))(v44, v62, 1, TupleTypeMetadata2);
        v64 = v91;
        (*v89)(v91, v44, v92);
        if ((*(v63 + 48))(v64, 1, TupleTypeMetadata2) == 1)
        {
          sub_2686265DC();
          swift_getAssociatedConformanceWitness();
          result = sub_2686898E4();
          v74 = result * v76[0];
          if ((result * v76[0]) >> 64 != (result * v76[0]) >> 63)
          {
            goto LABEL_59;
          }

          v72 = __OFADD__(*v84, v74);
          v75 = *v84 + v74;
          if (!v72)
          {
            *v84 = v75;
            return result;
          }

          goto LABEL_60;
        }

        v47 = v57;
        v65 = *(TupleTypeMetadata2 + 48);
        v66 = v104;
        v49 = v98;
        (*v102)(v104, v64, v98);
        (*v101)(v50, &v64[v65], v106);
        v107 = 0;
        v67 = v105;
        (*(v96 + 48))(v66, 1, &v107, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
        if (v67)
        {
          v105 = v67;
          sub_2686265DC();
          (*v87)(v50, v106);
          return (*v88)(v104, v49);
        }

        (*(v95 + 48))(v50, 2, &v107, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
        v105 = 0;
        (*v87)(v50, v106);
        result = (*v88)(v104, v49);
        v48 = v97;
        if (v107 < 0x80)
        {
          v68 = 1;
          v69 = v84;
          v38 = v94;
          goto LABEL_48;
        }

        v69 = v84;
        v38 = v94;
        if ((v107 & 0x8000000000000000) != 0)
        {
          v68 = 10;
          goto LABEL_48;
        }

        if (v107 >> 35)
        {
          if (v107 >> 49)
          {
            v70 = v107 >> 28;
            v68 = 8;
LABEL_46:
            if (!(v70 >> 28))
            {
              goto LABEL_48;
            }

LABEL_47:
            ++v68;
            goto LABEL_48;
          }

          v68 = 6;
          if (v107 >> 42)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v107 >= 0x200000)
          {
            v68 = 4;
            v70 = v107;
            goto LABEL_46;
          }

          v68 = 2;
          if (v107 >= 0x4000)
          {
            goto LABEL_47;
          }
        }

LABEL_48:
        v71 = v68 + v107;
        if (__OFADD__(v68, v107))
        {
          goto LABEL_57;
        }

        v72 = __OFADD__(*v69, v71);
        v73 = *v69 + v71;
        if (v72)
        {
          goto LABEL_58;
        }

        *v69 = v73;
        v40 = v103;
        v99 = v47;
        v100 = v103;
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

LABEL_18:
        if (sub_268689D94())
        {
          sub_268689E04();
          swift_unknownObjectRelease();
          v54 = v79;
          v55 = v106;
          sub_268689E04();
          swift_unknownObjectRelease();
          v52 = v99;
          v103 = v100;
LABEL_28:
          v61 = *(TupleTypeMetadata2 + 48);
          v44 = v85;
          (*v102)();
          (*v101)(&v44[v61], v54, v55);
          v62 = 0;
          v57 = v52;
          v50 = v80;
          continue;
        }

        v62 = 1;
        v57 = v99;
        v103 = v100;
      }
    }

    v51 = *(v38 + 8 * v52);
    ++v58;
    if (v51)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_268624FA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v89 = a6;
  v8 = a2;
  v84 = *(a4 - 8);
  v10 = *(v84 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v93 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v82 - v14;
  v17 = *(v16 + 8);
  v100 = v18;
  v101 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  v20 = *(v83 + 64);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness, AssociatedTypeWitness);
  v104 = v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v82 - v24;
  v102 = v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v99 = sub_268689C74();
  v28 = *(v99 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v99, v30);
  v87 = v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v98 = v82 - v34;
  v35 = 8 * v8;
  if ((8 * v8) >= 0x80)
  {
    v36 = v87;
    if (v35 >= 0x4000)
    {
      if (v35 >= 0x200000)
      {
        v38 = v35 >> 28 == 0;
        v37 = 4;
        if (!v38)
        {
          v37 = 5;
        }
      }

      else
      {
        v37 = 3;
      }
    }

    else
    {
      v37 = 2;
    }

    v82[0] = v37;
  }

  else
  {
    v82[0] = 1;
    v36 = v87;
  }

  v94 = v6;
  v108 = a4;
  v86 = v15;
  v85 = v25;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v39 = sub_268689D84();
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = v39 | 0x8000000000000000;
  }

  else
  {
    v44 = -1 << *(a1 + 32);
    v41 = ~v44;
    v40 = a1 + 64;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v42 = v46 & *(a1 + 64);
    v43 = a1;
  }

  v107 = (v83 + 32);
  v106 = (v84 + 32);
  v97 = TupleTypeMetadata2 - 8;
  v82[2] = v41;
  v47 = (v41 + 64) >> 6;
  v82[4] = v83 + 16;
  v82[3] = v84 + 16;
  v96 = (v28 + 32);
  v90 = v101 + 48;
  v91 = (v84 + 8);
  v92 = (v83 + 8);
  v82[1] = a1;

  v49 = 0;
  v50 = v102;
  v95 = v40;
  v103 = v43;
  v88 = v47;
  v105 = v42;
  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (v42)
  {
    v51 = v42;
    v52 = v49;
LABEL_29:
    v109 = (v51 - 1) & v51;
    v59 = __clz(__rbit64(v51)) | (v52 << 6);
    (*(v83 + 16))(v85, *(v43 + 48) + *(v83 + 72) * v59, v50);
    v60 = *(v43 + 56) + *(v84 + 72) * v59;
    v53 = v86;
    v54 = v108;
    (*(v84 + 16))(v86, v60, v108);
    goto LABEL_30;
  }

  if (v47 <= v49 + 1)
  {
    v55 = v49 + 1;
  }

  else
  {
    v55 = v47;
  }

  v56 = v55 - 1;
  v57 = v49;
  v58 = v104;
  while (1)
  {
    v52 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v52 >= v47)
    {
      v109 = 0;
      v62 = 1;
      while (1)
      {
        v63 = *(TupleTypeMetadata2 - 8);
        (*(v63 + 56))(v36, v62, 1, TupleTypeMetadata2);
        v64 = v98;
        (*v96)(v98, v36, v99);
        if ((*(v63 + 48))(v64, 1, TupleTypeMetadata2) == 1)
        {
          sub_2686265DC();
          swift_getAssociatedConformanceWitness();
          result = sub_2686898E4();
          v80 = result * v82[0];
          if ((result * v82[0]) >> 64 != (result * v82[0]) >> 63)
          {
            goto LABEL_64;
          }

          v77 = __OFADD__(*v94, v80);
          v81 = *v94 + v80;
          if (!v77)
          {
            *v94 = v81;
            return result;
          }

          goto LABEL_65;
        }

        v65 = TupleTypeMetadata2;
        v66 = v36;
        v67 = v65;
        v68 = *(v65 + 48);
        v69 = v102;
        (*v107)(v58, v64, v102);
        v70 = &v64[v68];
        v71 = v93;
        v72 = v108;
        (*v106)(v93, v70, v108);
        v111 = 0;
        v73 = v110;
        (*(v101 + 48))(v58, 1, &v111, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
        if (v73)
        {
          v110 = v73;
          sub_2686265DC();
          (*v91)(v71, v72);
          return (*v92)(v58, v69);
        }

        sub_268623B8C(v71, 2, v72, v89);
        v110 = 0;
        (*v91)(v71, v72);
        result = (*v92)(v58, v69);
        v50 = v69;
        if (v111 < 0x80)
        {
          v74 = 1;
          v75 = v94;
          v40 = v95;
          v43 = v103;
          v36 = v66;
LABEL_42:
          TupleTypeMetadata2 = v67;
          v47 = v88;
          goto LABEL_43;
        }

        v75 = v94;
        v40 = v95;
        v43 = v103;
        v36 = v66;
        if ((v111 & 0x8000000000000000) != 0)
        {
          v74 = 10;
          goto LABEL_42;
        }

        TupleTypeMetadata2 = v67;
        if (v111 >> 35)
        {
          v47 = v88;
          if (v111 >> 49)
          {
            v79 = v111 >> 28;
            v74 = 8;
LABEL_54:
            if (!(v79 >> 28))
            {
              goto LABEL_43;
            }

            goto LABEL_55;
          }

          v74 = 6;
          if (!(v111 >> 42))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v47 = v88;
          if (v111 >= 0x200000)
          {
            v74 = 4;
            v79 = v111;
            goto LABEL_54;
          }

          v74 = 2;
          if (v111 < 0x4000)
          {
            goto LABEL_43;
          }
        }

LABEL_55:
        ++v74;
LABEL_43:
        v76 = v74 + v111;
        if (__OFADD__(v74, v111))
        {
          goto LABEL_62;
        }

        v77 = __OFADD__(*v75, v76);
        v78 = *v75 + v76;
        if (v77)
        {
          goto LABEL_63;
        }

        *v75 = v78;
        v49 = v56;
        v42 = v109;
        v105 = v109;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_19:
        if (sub_268689D94())
        {
          sub_268689E04();
          swift_unknownObjectRelease();
          v53 = v86;
          v54 = v108;
          sub_268689E04();
          swift_unknownObjectRelease();
          v52 = v49;
          v109 = v105;
LABEL_30:
          v61 = *(TupleTypeMetadata2 + 48);
          v36 = v87;
          (*v107)();
          (*v106)(&v36[v61], v53, v54);
          v62 = 0;
          v56 = v52;
          goto LABEL_31;
        }

        v62 = 1;
        v56 = v49;
        v109 = v105;
LABEL_31:
        v58 = v104;
      }
    }

    v51 = *(v40 + 8 * v52);
    ++v57;
    if (v51)
    {
      v43 = v103;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_2686258C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v89 = a6;
  v8 = a2;
  v85 = *(a4 - 8);
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v87 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v78 - v14;
  v103 = *(v16 + 8);
  v100 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v19 = *(v84 + 64);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness, v20);
  v108 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v88 = &v78 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v99 = sub_268689C74();
  v26 = *(v99 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v99, v28);
  v91 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v98 = &v78 - v32;
  v33 = 8 * v8;
  if ((8 * v8) >= 0x80)
  {
    v34 = v91;
    if (v33 >= 0x4000)
    {
      if (v33 >= 0x200000)
      {
        v36 = v33 >> 28 == 0;
        v35 = 4;
        if (!v36)
        {
          v35 = 5;
        }
      }

      else
      {
        v35 = 3;
      }
    }

    else
    {
      v35 = 2;
    }

    v79 = v35;
  }

  else
  {
    v79 = 1;
    v34 = v91;
  }

  v86 = v15;
  v106 = a4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v37 = sub_268689D84();
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v102 = v37 | 0x8000000000000000;
  }

  else
  {
    v41 = -1 << *(a1 + 32);
    v39 = ~v41;
    v38 = a1 + 64;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v40 = v43 & *(a1 + 64);
    v102 = a1;
  }

  v44 = a1;
  v105 = (v84 + 32);
  v45 = (v85 + 32);
  v97 = TupleTypeMetadata2 - 8;
  v81 = v39;
  v46 = (v39 + 64) >> 6;
  v83 = v84 + 16;
  v82 = v85 + 16;
  v96 = (v26 + 32);
  v92 = v103 + 48;
  v93 = (v85 + 8);
  v94 = (v84 + 8);
  v80 = v44;

  v48 = 0;
  v90 = v6;
  v110 = AssociatedTypeWitness;
  v49 = v87;
  v101 = v38;
  while (1)
  {
    v95 = v40;
    v104 = v48;
    if ((v102 & 0x8000000000000000) == 0)
    {
      if (!v40)
      {
        if (v46 <= v48 + 1)
        {
          v55 = v48 + 1;
        }

        else
        {
          v55 = v46;
        }

        v56 = v55 - 1;
        v57 = v48;
        v52 = v88;
        while (1)
        {
          v51 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v51 >= v46)
          {
            v107 = 0;
            v61 = 1;
            v34 = v91;
            goto LABEL_31;
          }

          v50 = *(v38 + 8 * v51);
          ++v57;
          if (v50)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v50 = v40;
      v51 = v48;
      v52 = v88;
LABEL_29:
      v107 = (v50 - 1) & v50;
      v58 = __clz(__rbit64(v50)) | (v51 << 6);
      v59 = v102;
      (*(v84 + 16))(v52, *(v102 + 48) + *(v84 + 72) * v58, AssociatedTypeWitness);
      v53 = v86;
      v54 = v106;
      (*(v85 + 16))(v86, *(v59 + 56) + *(v85 + 72) * v58, v106);
      goto LABEL_30;
    }

    if (sub_268689D94())
    {
      sub_268689E04();
      swift_unknownObjectRelease();
      v53 = v86;
      v54 = v106;
      sub_268689E04();
      swift_unknownObjectRelease();
      v51 = v104;
      v107 = v40;
LABEL_30:
      v60 = *(TupleTypeMetadata2 + 48);
      v34 = v91;
      (*v105)();
      (*v45)(&v34[v60], v53, v54);
      v61 = 0;
      v56 = v51;
      v49 = v87;
      goto LABEL_31;
    }

    v61 = 1;
    v71 = v40;
    v56 = v104;
    v107 = v71;
LABEL_31:
    v62 = *(TupleTypeMetadata2 - 8);
    (*(v62 + 56))(v34, v61, 1, TupleTypeMetadata2);
    v63 = v98;
    (*v96)(v98, v34, v99);
    if ((*(v62 + 48))(v63, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v64 = *(TupleTypeMetadata2 + 48);
    v65 = v108;
    (*v105)(v108, v63, v110);
    v66 = &v63[v64];
    v67 = v106;
    (*v45)(v49, v66, v106);
    v111 = 0;
    v68 = v109;
    (*(v103 + 48))(v65, 1, &v111, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
    if (v68)
    {
      v109 = v68;
      sub_2686265DC();
      (*v93)(v49, v106);
      return (*v94)(v108, v110);
    }

    sub_268624240(v49, 2, v67, v89);
    v109 = 0;
    (*v93)(v49, v67);
    AssociatedTypeWitness = v110;
    result = (*v94)(v108, v110);
    if (v111 < 0x80)
    {
      v69 = 1;
      v70 = v90;
      v38 = v101;
      goto LABEL_50;
    }

    v70 = v90;
    v38 = v101;
    if ((v111 & 0x8000000000000000) != 0)
    {
      v69 = 10;
      goto LABEL_50;
    }

    if (v111 >> 35)
    {
      if (v111 >> 49)
      {
        v72 = v111 >> 28;
        v69 = 8;
LABEL_48:
        if (!(v72 >> 28))
        {
          goto LABEL_50;
        }

LABEL_49:
        ++v69;
        goto LABEL_50;
      }

      v69 = 6;
      if (v111 >> 42)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v111 >= 0x200000)
      {
        v69 = 4;
        v72 = v111;
        goto LABEL_48;
      }

      v69 = 2;
      if (v111 >= 0x4000)
      {
        goto LABEL_49;
      }
    }

LABEL_50:
    v73 = v69 + v111;
    if (__OFADD__(v69, v111))
    {
      goto LABEL_58;
    }

    v74 = __OFADD__(*v70, v73);
    v75 = *v70 + v73;
    if (v74)
    {
      goto LABEL_59;
    }

    *v70 = v75;
    v48 = v56;
    v40 = v107;
  }

  sub_2686265DC();
  swift_getAssociatedConformanceWitness();
  result = sub_2686898E4();
  v76 = result * v79;
  if ((result * v79) >> 64 != (result * v79) >> 63)
  {
    goto LABEL_60;
  }

  v74 = __OFADD__(*v90, v76);
  v77 = *v90 + v76;
  if (!v74)
  {
    *v90 = v77;
    return result;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_2686263A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v7 = 0;
  result = sub_2685DC7EC(&v7, a2, a3, v5);
  if (!v4)
  {
    if (__OFADD__(*v3, v7))
    {
      __break(1u);
    }

    else
    {
      *v3 += v7;
    }
  }

  return result;
}

uint64_t sub_2686263E8(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v4 = v5 - v6;
    if (!v7)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_11;
  }

  LODWORD(v4) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_14;
  }

  v4 = v4;
LABEL_11:
  v7 = __OFADD__(*v2, v4);
  v8 = *v2 + v4;
  if (!v7)
  {
    *v2 = v8;
    return result;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_26862644C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v4;
  result = sub_26868413C(a2);
  v9 = result + 4;
  if (__OFADD__(result, 4))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_2685B59A8(a3, a4);
  if (v5)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v10 = result;
  result = sub_268684180(result);
  v11 = result + v10;
  if (__OFADD__(result, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = __OFADD__(v9, v11);
  v13 = v9 + v11;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = __OFADD__(*v6, v13);
  v14 = *v6 + v13;
  if (v12)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *v6 = v14;
  return result;
}

uint64_t sub_268626534(uint64_t result)
{
  v2 = 8 * result;
  v3 = 6;
  v4 = 7;
  v5 = 8;
  if ((8 * result) >> 28)
  {
    v5 = 9;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * result) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 5;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *v1 = v8;
  }

  return result;
}

uint64_t sub_268626588(uint64_t result)
{
  v2 = 8 * result;
  v3 = 10;
  v4 = 11;
  v5 = 12;
  if ((8 * result) >> 28)
  {
    v5 = 13;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * result) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 9;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *v1 = v8;
  }

  return result;
}

uint64_t MessageExtension.fieldName.getter()
{
  v0 = sub_268626AEC();

  return v0;
}

uint64_t MessageExtension.messageType.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t *MessageExtension.__allocating_init(_protobuf_fieldNumber:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = *result;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  v8 = *(v7 + 88);
  v9 = *(v7 + 104);
  result[5] = v8;
  result[6] = v9;
  return result;
}

uint64_t *MessageExtension.init(_protobuf_fieldNumber:fieldName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5 = *(v4 + 88);
  v6 = *(v4 + 104);
  v3[5] = v5;
  v3[6] = v6;
  return v3;
}

uint64_t sub_268626784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v29 = a3;
  v27 = a4;
  v8 = *v4;
  v9 = *v4;
  v10 = *(*v4 + 80);
  v11 = sub_268689C74();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26 - v14;
  v16 = *(v8 + 88);
  v30[0] = v10;
  v30[1] = v16;
  v28 = *(v9 + 96);
  v31 = v28;
  *(&v31 + 1) = type metadata accessor for MessageExtension();
  v32 = &protocol witness table for MessageExtension<A, B>;
  v30[0] = v5;
  v17 = v28;
  v18 = *(v28 + 64);

  v19 = v33;
  result = v18(v30, a1, a2, v29, v10, v17);
  if (!v19)
  {
    v21 = v11;
    v23 = v26;
    v22 = v27;
    v24 = *(v10 - 8);
    if ((*(v24 + 48))(v15, 1, v10) == 1)
    {
      result = (*(v23 + 8))(v15, v21);
      *(v22 + 32) = 0;
      *v22 = 0u;
      *(v22 + 16) = 0u;
    }

    else
    {
      *(v22 + 24) = v10;
      *(v22 + 32) = *(v17 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      return (*(v24 + 32))(boxed_opaque_existential_1, v15, v10);
    }
  }

  return result;
}

uint64_t MessageExtension.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t MessageExtension.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_268626A68()
{
  v1 = *v0;
  v2 = sub_268626AEC();

  return v2;
}

uint64_t sub_268626AEC()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

double Google_Protobuf_SourceContext.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_SourceContext.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Google_Protobuf_SourceContext.fileName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Google_Protobuf_SourceContext.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_SourceContext.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static Google_Protobuf_SourceContext._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D328;
  v2 = qword_28028D330;
  v3 = unk_28028D338;
  *a1 = qword_28028D320;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_SourceContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 336))(v3, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t Google_Protobuf_SourceContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = (*(a3 + 112))(), !v4))
  {
    sub_2685BA80C(v10, v11);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v10, v11);
  }

  return result;
}

uint64_t Google_Protobuf_SourceContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_268689E94();
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return sub_268689EF4();
    }

    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
  }

  else
  {
    if (!v6)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        return sub_268689EF4();
      }

      goto LABEL_13;
    }

    v7 = v3;
    v8 = v3 >> 32;
  }

  if (v7 != v8)
  {
LABEL_13:
    sub_268689844();
  }

  return sub_268689EF4();
}

double sub_26862707C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t _s20SiriOntologyProtobuf07Google_C11_BytesValueV13unknownFieldsAA14UnknownStorageVvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_268627114@<X0>(void *a1@<X8>)
{
  if (qword_28028BDB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028D328;
  v2 = qword_28028D330;
  v3 = unk_28028D338;
  *a1 = qword_28028D320;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2686271CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_268689E94();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  sub_2685C962C(&v7, v3, v4);
  v15 = v10;
  v16 = v11;
  v13 = v8;
  v14 = v9;
  v12 = v7;
  return sub_268689EF4();
}

uint64_t _s20SiriOntologyProtobuf07Google_C14_SourceContextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v7 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v7 & 1;
}

unint64_t sub_26862735C(uint64_t a1)
{
  result = sub_268627384();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268627384()
{
  result = qword_28028D340;
  if (!qword_28028D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D340);
  }

  return result;
}

unint64_t sub_2686273D8(uint64_t a1)
{
  *(a1 + 8) = sub_2685CFDF4();
  result = sub_268627408();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268627408()
{
  result = qword_28028D348;
  if (!qword_28028D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D348);
  }

  return result;
}

unint64_t sub_268627460()
{
  result = qword_28028D350;
  if (!qword_28028D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D350);
  }

  return result;
}

uint64_t sub_2686274B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2686274FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 Message.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = *(a1 + 8);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  (*(a3 + 72))(&v8, &type metadata for HashVisitor, &off_287928AE0, a2, a3);
  v6 = v11;
  a1[2] = v10;
  a1[3] = v6;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_26862764C(uint64_t a1)
{
  v2 = *(v1 + 80);
  v24[4] = *(v1 + 64);
  v24[5] = v2;
  v25 = *(v1 + 96);
  v3 = *(v1 + 16);
  v24[0] = *v1;
  v24[1] = v3;
  v4 = *(v1 + 48);
  v24[2] = *(v1 + 32);
  v24[3] = v4;
  sub_2685B1724(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_5;
  }

  if (!*(&v9 + 1))
  {
LABEL_5:
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    sub_2685B2E64(&v17, &qword_28028D368, &qword_2686900C0);
    v5 = 0;
    return v5 & 1;
  }

  v21 = v13;
  v22 = v14;
  v23 = v15;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v5 = static Google_Protobuf_Method.== infix(_:_:)(v24, &v17);
  v7[4] = v21;
  v7[5] = v22;
  v8 = v23;
  v7[0] = v17;
  v7[1] = v18;
  v7[2] = v19;
  v7[3] = v20;
  sub_268618E6C(v7);
  return v5 & 1;
}

uint64_t sub_268627784(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2685B1724(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v17;
  v11 = v16;
  if (!v18)
  {
LABEL_7:
    v14 = 0;
LABEL_8:
    sub_2685C31B4(v11, v10, v14);
    v13 = 0;
    return v13 & 1;
  }

  if (v18 != a4)
  {

    v12 = a6(a4);

    if ((v12 & 1) == 0)
    {
      v11 = v16;
      v10 = v17;
      v14 = v18;
      goto LABEL_8;
    }
  }

  sub_2685BA80C(a2, a3);
  sub_2685BA80C(v16, v17);
  v13 = sub_2686131DC(a2, a3, v16, v17);
  sub_2685B593C(v16, v17);
  sub_2685B593C(a2, a3);
  sub_2685C31B4(v16, v17, v18);
  return v13 & 1;
}

uint64_t sub_2686278EC(uint64_t a1)
{
  v2 = v1[1];
  v17[0] = *v1;
  v17[1] = v2;
  v17[2] = v1[2];
  sub_2685B1724(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v11;
  v5 = *(&v12 + 1);
  v4 = v12;
  v7 = *(&v13 + 1);
  v6 = v13;
  if (!*(&v11 + 1))
  {
LABEL_5:
    sub_26862BE08(v3, 0, v4, v5, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  v15[0] = v11;
  v15[1] = v12;
  v16 = v13;
  v8 = _s20SiriOntologyProtobuf07Google_C6_MixinV2eeoiySbAC_ACtFZ_0(v17, v15);
  v9 = v16;

  sub_2685B593C(v9, *(&v9 + 1));
  return v8 & 1;
}

uint64_t sub_2686279E8(uint64_t a1)
{
  v2 = v1[5];
  v35[4] = v1[4];
  v35[5] = v2;
  v3 = v1[7];
  v35[6] = v1[6];
  v35[7] = v3;
  v4 = v1[1];
  v35[0] = *v1;
  v35[1] = v4;
  v5 = v1[3];
  v35[2] = v1[2];
  v35[3] = v5;
  sub_2685B1724(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (swift_dynamicCast())
  {
    nullsub_4(&v18, v6, v7);
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
  }

  else
  {
    sub_26862BE68(&v10);
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v33 = v16;
    v34 = v17;
  }

  if (sub_26862BE80(&v27) == 1)
  {
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    sub_2685B2E64(&v27, &qword_28028D370, qword_2686900C8);
    v8 = 0;
  }

  else
  {
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v8 = static Google_Protobuf_Field.== infix(_:_:)(v35, &v27);
    v14 = v31;
    v15 = v32;
    v16 = v33;
    v17 = v34;
    v10 = v27;
    v11 = v28;
    v12 = v29;
    v13 = v30;
    sub_268618F1C(&v10);
  }

  return v8 & 1;
}

uint64_t sub_268627B78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2685B1724(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v6 = 0xF000000000000000;
    goto LABEL_5;
  }

  v6 = v10;
  v5 = v9;
  if (v10 >> 60 == 15)
  {
LABEL_5:
    sub_2685B98FC(v5, v6);
    v7 = 0;
    return v7 & 1;
  }

  sub_2685BA80C(a2, a3);
  v7 = sub_2686131DC(a2, a3, v9, v10);
  sub_2685B98FC(v9, v10);
  sub_2685B593C(a2, a3);
  return v7 & 1;
}

uint64_t sub_268627C68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = v13;
  v8 = v12;
  if (!v14)
  {
LABEL_7:
    v10 = 0;
LABEL_8:
    sub_2685C31B4(v8, v7, v10);
    v9 = 0;
    return v9 & 1;
  }

  if (v14 != a4 && (sub_26866A280(v14) & 1) == 0)
  {
    v8 = v12;
    v7 = v13;
    v10 = v14;
    goto LABEL_8;
  }

  sub_2685BA80C(a2, a3);
  sub_2685BA80C(v12, v13);
  v9 = sub_2686131DC(a2, a3, v12, v13);
  sub_2685B593C(v12, v13);
  sub_2685B593C(a2, a3);
  sub_2685C31B4(v12, v13, v14);
  return v9 & 1;
}

uint64_t sub_268627D98(uint64_t a1)
{
  v2 = *(v1 + 80);
  v26[4] = *(v1 + 64);
  v26[5] = v2;
  v26[6] = *(v1 + 96);
  v27 = *(v1 + 112);
  v3 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v3;
  v4 = *(v1 + 48);
  v26[2] = *(v1 + 32);
  v26[3] = v4;
  sub_2685B1724(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    goto LABEL_5;
  }

  if (!v9)
  {
LABEL_5:
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    sub_2685B2E64(&v18, &qword_28028D360, &qword_2686900B8);
    v5 = 0;
    return v5 & 1;
  }

  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v5 = _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV2eeoiySbAC_ACtFZ_0(v26, &v18);
  v7[4] = v22;
  v7[5] = v23;
  v7[6] = v24;
  v8 = v25;
  v7[0] = v18;
  v7[1] = v19;
  v7[2] = v20;
  v7[3] = v21;
  sub_268619078(v7);
  return v5 & 1;
}

uint64_t sub_268627EF4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v2;
  v20 = *(v1 + 32);
  sub_2685B1724(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v8;
  v4 = v9;
  v5 = v10;
  if (v11 == 1)
  {
LABEL_5:
    sub_26862BDC4(v3, v4, v5, 1);
    v6 = 0;
    return v6 & 1;
  }

  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v6 = _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV8NamePartV2eeoiySbAE_AEtFZ_0(v19, &v14);
  sub_2685B593C(v14, v15);

  return v6 & 1;
}

uint64_t sub_268627FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2685B1724(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v16;
  v11 = v17;
  if (!v15)
  {
LABEL_6:
    v13 = 0;
LABEL_7:
    sub_268601BC8(v13, v10, v11);
    v12 = 0;
    return v12 & 1;
  }

  if ((a6(a2) & 1) == 0)
  {
    v13 = v15;
    v10 = v16;
    v11 = v17;
    goto LABEL_7;
  }

  sub_2685BA80C(a3, a4);
  sub_2685BA80C(v16, v17);
  v12 = sub_2686131DC(a3, a4, v16, v17);
  sub_2685B593C(v16, v17);
  sub_2685B593C(a3, a4);
  sub_268601BC8(v15, v16, v17);
  return v12 & 1;
}

uint64_t sub_268628118(uint64_t a1)
{
  v2 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v2;
  v12[0] = *(v1 + 32);
  *(v12 + 13) = *(v1 + 45);
  sub_2685B1724(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v4 = 0;
    v5 = 0;
    memset(&v8[2], 0, 53);
LABEL_6:
    sub_26862BD68(0, v5, v4);
    v3 = 0;
    return v3 & 1;
  }

  if (!*&v8[2])
  {
    v5 = *(&v8[2] + 1);
    v4 = *&v8[3];
    goto LABEL_6;
  }

  *&v10[8] = *(&v8[2] + 8);
  *&v10[24] = *(&v8[3] + 8);
  *v10 = *&v8[2];
  *&v10[40] = *(&v8[4] + 1);
  v10[52] = BYTE4(v8[5]);
  *&v10[48] = v8[5];
  v3 = _s20SiriOntologyProtobuf07Google_C18_GeneratedCodeInfoV10AnnotationV2eeoiySbAE_AEtFZ_0(v11, v10);
  v7[0] = *v10;
  v7[1] = *&v10[16];
  v8[0] = *&v10[32];
  *(v8 + 13) = *&v10[45];
  sub_268618FA8(v7);
  return v3 & 1;
}

uint64_t sub_268628258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, __int128 *), void (*a8)(uint64_t, unint64_t, uint64_t, unint64_t))
{
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v27 = a5;
  v28 = BYTE4(a5);
  sub_2685B1724(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v11 = 0xF000000000000000;
    goto LABEL_5;
  }

  v11 = *(&v16 + 1);
  v10 = v16;
  v12 = v17;
  v13 = v18 | (v19 << 32);
  if (*(&v16 + 1) >> 60 == 15)
  {
LABEL_5:
    a8(v10, v11, v12, v13);
    v14 = 0;
    return v14 & 1;
  }

  v21 = v16;
  v22 = v17;
  v23 = BYTE4(v17) & 1;
  v24 = v18;
  v25 = BYTE4(v13) & 1;
  v14 = a7(v26, &v21);
  sub_2685B593C(v21, *(&v21 + 1));
  return v14 & 1;
}

uint64_t sub_268628370(uint64_t a1)
{
  v2 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v2;
  v20 = *(v1 + 64);
  v3 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v3;
  sub_2685B1724(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_5:
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v14 = v8;
    v15 = v9;
    sub_2685B2E64(&v14, &qword_28028D358, &qword_2686900B0);
    v4 = 0;
    return v4 & 1;
  }

  v16 = v10;
  v17 = v11;
  v18 = v12;
  v14 = v8;
  v15 = v9;
  v4 = _s20SiriOntologyProtobuf07Google_C15_SourceCodeInfoV8LocationV2eeoiySbAE_AEtFZ_0(v19, &v14);
  v6[2] = v16;
  v6[3] = v17;
  v7 = v18;
  v6[0] = v14;
  v6[1] = v15;
  sub_268619010(v6);
  return v4 & 1;
}

uint64_t sub_268628484(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, __int128 *))
{
  v5 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v5;
  v20 = *(v3 + 32);
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v6 = *(&v12 + 1);
  v7 = v13;
  if (!v12)
  {
LABEL_5:
    sub_268601C90(0, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v8 = a3(v19, &v16);
  v9 = *(&v16 + 1);
  v10 = v17;

  sub_2685B593C(v9, v10);

  return v8 & 1;
}

uint64_t sub_268628580(uint64_t a1)
{
  v2 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v2;
  v15 = *(v1 + 32);
  sub_2685B1724(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v4 = 0;
    v5 = 0;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
LABEL_6:
    sub_268601C90(0, v5, v4);
    v3 = 0;
    return v3 & 1;
  }

  if (!*&v9[0])
  {
    v5 = *(&v9[0] + 1);
    v4 = *&v9[1];
    goto LABEL_6;
  }

  *&v12[8] = *(v9 + 8);
  *v12 = *&v9[0];
  *&v12[24] = *(&v9[1] + 1);
  v13 = v10;
  v3 = static Google_Protobuf_MessageOptions.== infix(_:_:)(v14, v12);
  v7[0] = *v12;
  v7[1] = *&v12[16];
  v8 = v13;
  sub_268601D24(v7);
  return v3 & 1;
}

uint64_t sub_268628688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, __int128 *))
{
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  sub_2685B1724(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  v8 = *(&v14 + 1);
  v9 = v15;
  if (!v14)
  {
LABEL_5:
    sub_268601C90(0, v8, v9);
    v10 = 0;
    return v10 & 1;
  }

  v17 = v14;
  v18 = v15;
  v10 = a7(v19, &v17);
  v11 = *(&v17 + 1);
  v12 = v18;

  sub_2685B593C(v11, v12);

  return v10 & 1;
}

uint64_t sub_26862876C(uint64_t a1)
{
  v2 = v1[1];
  v11 = *v1;
  v12[0] = v2;
  *(v12 + 14) = *(v1 + 30);
  sub_2685B1724(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v4 = 0;
    v5 = 0;
    memset(&v8[2], 0, 38);
LABEL_6:
    sub_268601C90(0, v5, v4);
    v3 = 0;
    return v3 & 1;
  }

  if (!*&v8[2])
  {
    v5 = *(&v8[2] + 1);
    v4 = *&v8[3];
    goto LABEL_6;
  }

  *&v10[8] = *(&v8[2] + 8);
  *v10 = *&v8[2];
  *&v10[24] = *(&v8[3] + 1);
  *&v10[36] = WORD2(v8[4]);
  *&v10[32] = v8[4];
  v3 = static Google_Protobuf_FieldOptions.== infix(_:_:)(&v11, v10);
  v7 = *v10;
  v8[0] = *&v10[16];
  *(v8 + 14) = *&v10[30];
  sub_268601DD4(&v7);
  return v3 & 1;
}

uint64_t sub_268628884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_2685B1724(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v9 = v16;
  v11 = v19;
  v10 = v18;
  if (!v17)
  {
LABEL_8:
    v13 = v9;
    v14 = 0;
LABEL_9:
    sub_2685CE920(v13, v14, v10, v11);
    v12 = 0;
    return v12 & 1;
  }

  if ((v16 != a2 || v17 != a3) && (sub_268689E14() & 1) == 0)
  {
    v13 = v16;
    v14 = v17;
    v11 = v19;
    v10 = v18;
    goto LABEL_9;
  }

  sub_2685BA80C(a4, a5);
  sub_2685BA80C(v18, v19);
  v12 = sub_2686131DC(a4, a5, v18, v19);
  sub_2685B593C(v18, v19);
  sub_2685B593C(a4, a5);
  sub_2685CE920(v16, v17, v18, v19);
  return v12 & 1;
}

uint64_t sub_2686289E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  sub_2685B1724(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v6 = *(&v9 + 1);
  v5 = v9;
  if (!v10)
  {
LABEL_5:
    sub_268601B34(v5, v6, 0);
    v7 = 0;
    return v7 & 1;
  }

  v12[0] = v9;
  v12[1] = v10;
  v7 = static Google_Protobuf_FileOptions.== infix(_:_:)(v13, v12);
  sub_2685B593C(*&v12[0], *(&v12[0] + 1));

  return v7 & 1;
}

uint64_t sub_268628AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, __int128 *))
{
  v5 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v5;
  v20 = *(v3 + 32);
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v6 = *(&v12 + 1);
  v7 = v13;
  if (!v12)
  {
LABEL_5:
    sub_268601C90(0, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v8 = a3(v19, &v16);
  v9 = *(&v16 + 1);
  v10 = v17;

  sub_2685B593C(v9, v10);

  return v8 & 1;
}

uint64_t sub_268628BC4(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v9 = 0;
    v8 = 0xF000000000000000;
LABEL_6:
    sub_2685B89A0(v9, v7, v8);
    v10 = 0;
    return v10 & 1;
  }

  v7 = v13;
  v8 = v14;
  v9 = v12;
  if (v14 >> 60 == 15 || *&v12 != a4)
  {
    goto LABEL_6;
  }

  sub_2685BA80C(a2, a3);
  sub_2685B89BC(v12, v13, v14);
  v10 = sub_2686131DC(a2, a3, v13, v14);
  sub_2685B89A0(v12, v13, v14);
  sub_2685B593C(a2, a3);
  sub_2685B89A0(v12, v13, v14);
  return v10 & 1;
}

uint64_t sub_268628CF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t, uint64_t))
{
  sub_2685B1724(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v13 = 0;
LABEL_6:
    a7(v13, v12);
    v14 = 0;
    return v14 & 1;
  }

  v12 = v17;
  v13 = v16;
  if (v18 >> 60 == 15 || v16 != a2)
  {
    goto LABEL_6;
  }

  sub_2685BA80C(a3, a4);
  a6(a2);
  v14 = sub_2686131DC(a3, a4, v17, v18);
  (a7)(a2);
  sub_2685B593C(a3, a4);
  (a7)(a2);
  return v14 & 1;
}

uint64_t sub_268628E3C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(), void (*a7)())
{
  sub_2685B1724(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v13 = 0;
LABEL_6:
    (a7)(v13, v12);
    v14 = 0;
    return v14 & 1;
  }

  v12 = v17;
  v13 = v16;
  if (v18 >> 60 == 15 || v16 != a2)
  {
    goto LABEL_6;
  }

  sub_2685BA80C(a3, a4);
  a6();
  v14 = sub_2686131DC(a3, a4, v17, v18);
  a7();
  sub_2685B593C(a3, a4);
  a7();
  return v14 & 1;
}

uint64_t sub_268628F84(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v9 = 0;
    v8 = 0xF000000000000000;
LABEL_6:
    sub_2685B89A0(v9, v7, v8);
    v10 = 0;
    return v10 & 1;
  }

  v7 = v13;
  v8 = v14;
  v9 = v12;
  if (v14 >> 60 == 15 || *&v12 != a4)
  {
    goto LABEL_6;
  }

  sub_2685BA80C(a2, a3);
  sub_2685B89BC(v12, v13, v14);
  v10 = sub_2686131DC(a2, a3, v13, v14);
  sub_2685B89A0(v12, v13, v14);
  sub_2685B593C(a2, a3);
  sub_2685B89A0(v12, v13, v14);
  return v10 & 1;
}

uint64_t sub_2686290B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_2685B1724(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v11 = 0;
    v9 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_6;
  }

  v10 = v18;
  v9 = v17;
  v11 = v19;
  v12 = v20;
  if (v18 >> 60 == 15)
  {
LABEL_6:
    v14 = v9;
    v15 = v10;
LABEL_7:
    sub_26862BCE0(v14, v15, v11, v12);
    v13 = 0;
    return v13 & 1;
  }

  if ((sub_2686131DC(a2, a3, v17, v18) & 1) == 0)
  {
    v15 = v18;
    v14 = v17;
    v11 = v19;
    v12 = v20;
    goto LABEL_7;
  }

  sub_2685BA80C(a4, a5);
  sub_2685BA80C(v19, v20);
  v13 = sub_2686131DC(a4, a5, v19, v20);
  sub_2685B593C(v19, v20);
  sub_2685B593C(a4, a5);
  sub_26862BCE0(v17, v18, v19, v20);
  return v13 & 1;
}

uint64_t sub_26862921C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), void (*a8)(uint64_t))
{
  sub_2685B1724(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
LABEL_7:
    a7(v14, v15, v16);
    v17 = 0;
    return v17 & 1;
  }

  v14 = v19;
  v15 = v20;
  v16 = v21;
  if (v22 >> 60 == 15 || v19 != a2)
  {
    goto LABEL_7;
  }

  if (v20 != a3)
  {
    v14 = a2;
    goto LABEL_7;
  }

  sub_2685BA80C(a4, a5);
  a8(a2);
  v17 = sub_2686131DC(a4, a5, v21, v22);
  (a7)(a2);
  sub_2685B593C(a4, a5);
  (a7)(a2);
  return v17 & 1;
}

uint64_t sub_268629388(uint64_t a1)
{
  v2 = v1[1];
  v20[0] = *v1;
  v20[1] = v2;
  v20[2] = v1[2];
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (!swift_dynamicCast())
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = v11;
  v5 = v13;
  v4 = v12;
  v7 = *(&v14 + 1);
  v6 = v14;
  if (!*(&v11 + 1))
  {
LABEL_5:
    sub_26862BE08(v3, 0, v4, v5, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v8 = static Google_Protobuf_EnumValue.== infix(_:_:)(v20, &v16);
  v9 = v19;

  sub_2685B593C(v9, *(&v9 + 1));
  return v8 & 1;
}

uint64_t sub_268629488(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  if (swift_dynamicCast())
  {
    if ((v12 & 1) == (a2 & 1))
    {
      sub_2685BA80C(a3, a4);
      sub_26862BD4C(v12, v13, v14);
      v10 = sub_2686131DC(a3, a4, v13, v14);
      sub_26862BD30(v12, v13, v14);
      sub_2685B593C(a3, a4);
      sub_26862BD30(v12, v13, v14);
      return v10 & 1;
    }

    v7 = v12;
    v8 = v13;
    v9 = v14;
  }

  else
  {
    v7 = 2;
    v8 = 0;
    v9 = 0;
  }

  sub_26862BD30(v7, v8, v9);
  v10 = 0;
  return v10 & 1;
}

uint64_t _MessageImplementationBase.isEqualTo(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268689C74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v24[-v11 - 8];
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2685B1724(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  v18 = swift_dynamicCast();
  v19 = *(v13 + 56);
  if (v18)
  {
    v19(v12, 0, 1, a2);
    (*(v13 + 32))(v17, v12, a2);
    v20 = *(*(a3 + 16) + 8);
    v21 = sub_268689944();
    (*(v13 + 8))(v17, a2);
  }

  else
  {
    v19(v12, 1, 1, a2);
    (*(v7 + 8))(v12, v6);
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_268629838(uint64_t a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_2686279E8(a1) & 1;
}

uint64_t sub_268629888(_OWORD *a1)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = v1[5];
  v11[4] = v1[4];
  v11[5] = v6;
  v7 = v1[7];
  v11[6] = v1[6];
  v11[7] = v7;
  v8 = v1[1];
  v11[0] = *v1;
  v11[1] = v8;
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v9;
  return _s20SiriOntologyProtobuf07Google_C6_FieldV2eeoiySbAC_ACtFZ_0(v11, v12) & 1;
}

uint64_t sub_26862996C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_268629388(a1) & 1;
}

uint64_t sub_2686299AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 4);
  v8 = v1[3];
  v14[0] = *a1;
  v14[1] = v2;
  v15 = v3;
  v16 = v4;
  v17 = *(a1 + 32);
  v10[0] = v5;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  v13 = *(v1 + 2);
  return _s20SiriOntologyProtobuf07Google_C10_EnumValueV2eeoiySbAC_ACtFZ_0(v10, v14) & 1;
}

uint64_t sub_268629AF8(uint64_t a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_26862764C(a1) & 1;
}

uint64_t sub_268629B48(uint64_t a1)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v5;
  v10 = *(v1 + 96);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v6;
  v7 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v7;
  return _s20SiriOntologyProtobuf07Google_C7_MethodV2eeoiySbAC_ACtFZ_0(v9, v11) & 1;
}

uint64_t sub_268629BB4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_2686278EC(a1) & 1;
}

uint64_t sub_268629BF4(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v13 = *(a1 + 2);
  v14 = v3;
  v15 = a1[2];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v1[2];
  v12 = v2;
  return _s20SiriOntologyProtobuf07Google_C6_MixinV2eeoiySbAC_ACtFZ_0(&v8, &v12) & 1;
}

__n128 sub_26862A00C(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, unint64_t, unint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 4);
  v9 = *(v4 + 20);
  v10 = *(v4 + 6);
  v11 = *(v4 + 28);
  v12 = a1[3];
  v18 = a1[2];
  v19 = v12;
  v20 = *(a1 + 8);
  v13 = a1[1];
  v16 = *a1;
  v17 = v13;
  a4(&v16, v6, v7, v8 | (v9 << 32), v10 | (v11 << 32));
  v14 = v19;
  a1[2] = v18;
  a1[3] = v14;
  *(a1 + 8) = v20;
  result = v17;
  *a1 = v16;
  a1[1] = result;
  return result;
}

uint64_t sub_26862A148(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 20);
  v7 = *(a1 + 6);
  v8 = *(a1 + 28);
  v9 = *(v4 + 4);
  v10 = *(v4 + 20);
  v11 = *(v4 + 6);
  v12 = *(v4 + 28);
  v19 = *a1;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v14 = *v4;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  return a4(&v14, &v19) & 1;
}

__n128 sub_26862A2C0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __int128 *))
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = a1[3];
  v15 = a1[2];
  v16 = v9;
  v17 = *(a1 + 8);
  v10 = a1[1];
  v13 = *a1;
  v14 = v10;
  a4(v8, &v13);
  sub_2685C962C(&v13, v7, v6);
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = result;
  return result;
}

uint64_t sub_26862A3C4(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  return _s20SiriOntologyProtobuf07Google_C12_FileOptionsV2eeoiySbAC_ACtFZ_0(v5, v6) & 1;
}

uint64_t sub_26862A400(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  return sub_268628580(a1) & 1;
}

uint64_t sub_26862A440(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6 = *(v1 + 32);
  return _s20SiriOntologyProtobuf07Google_C15_MessageOptionsV2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_26862A48C(uint64_t a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[14] = *(v1 + 30);
  return sub_26862876C(a1) & 1;
}

uint64_t sub_26862A4CC(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8[0] = v2;
  *(v8 + 14) = *(a1 + 30);
  v3 = v1[1];
  v5 = *v1;
  v6[0] = v3;
  *(v6 + 14) = *(v1 + 30);
  return _s20SiriOntologyProtobuf07Google_C13_FieldOptionsV2eeoiySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_26862A558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v5 = *a1;
  v6 = a1[3];
  v7 = *v4;
  v11 = v4[3];
  v12 = v5;
  v13 = *(a1 + 1);
  v14 = v6;
  v9 = v7;
  v10 = *(v4 + 1);
  return a4(&v9, &v12) & 1;
}

uint64_t sub_26862A5B4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  return sub_268628AC0(a1, &type metadata for Google_Protobuf_EnumOptions, _s20SiriOntologyProtobuf07Google_C12_EnumOptionsV2eeoiySbAC_ACtFZ_0) & 1;
}

uint64_t sub_26862A640(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_268628484(a1, &type metadata for Google_Protobuf_EnumValueOptions, static Google_Protobuf_EnumValueOptions.== infix(_:_:)) & 1;
}

__n128 sub_26862A6CC(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  v6 = v4[1];
  v16 = *v4;
  v17 = v6;
  v18 = *(v4 + 32);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = *(a1 + 8);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  a4(&v11);
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = result;
  return result;
}

uint64_t sub_26862A75C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_268628484(a1, &type metadata for Google_Protobuf_ServiceOptions, static Google_Protobuf_ServiceOptions.== infix(_:_:)) & 1;
}

uint64_t sub_26862A7B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *v4;
  v8 = v4[3];
  v9 = *(v4 + 32);
  v15 = *a1;
  v16 = *(a1 + 1);
  v17 = v5;
  v18 = v6;
  v11 = v7;
  v12 = *(v4 + 1);
  v13 = v8;
  v14 = v9;
  return a4(&v11, &v15) & 1;
}

uint64_t sub_26862A828(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  return sub_268628AC0(a1, &type metadata for Google_Protobuf_MethodOptions, static Google_Protobuf_MethodOptions.== infix(_:_:)) & 1;
}

uint64_t sub_26862A89C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v5 = a1[3];
  v6 = *(a1 + 16);
  v7 = *v4;
  v8 = v4[3];
  v9 = *(v4 + 16);
  v15 = *a1;
  v16 = *(a1 + 1);
  v17 = v5;
  v18 = v6;
  v11 = v7;
  v12 = *(v4 + 1);
  v13 = v8;
  v14 = v9;
  return a4(&v11, &v15) & 1;
}

uint64_t sub_26862A90C(uint64_t a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 14);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_268627D98(a1) & 1;
}

uint64_t sub_26862A964(uint64_t a1)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v11[6] = *(a1 + 96);
  v12 = *(a1 + 112);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v5;
  v9[6] = *(v1 + 96);
  v10 = *(v1 + 112);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v6;
  v7 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v7;
  return _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV2eeoiySbAC_ACtFZ_0(v9, v11) & 1;
}

uint64_t sub_26862A9E8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_268627EF4(a1) & 1;
}

uint64_t sub_26862AA28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  v8 = v3;
  return _s20SiriOntologyProtobuf07Google_C20_UninterpretedOptionV8NamePartV2eeoiySbAE_AEtFZ_0(v7, v9) & 1;
}

uint64_t sub_26862AACC(uint64_t a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_268628370(a1) & 1;
}

uint64_t sub_26862AB14(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v10 = *(a1 + 64);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v4;
  v8 = *(v1 + 64);
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  return _s20SiriOntologyProtobuf07Google_C15_SourceCodeInfoV8LocationV2eeoiySbAE_AEtFZ_0(v7, v9) & 1;
}

uint64_t sub_26862ABC8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[13] = *(v1 + 45);
  return sub_268628118(a1) & 1;
}

uint64_t sub_26862AC10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = *(a1 + 32);
  *(v8 + 13) = *(a1 + 45);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  v6[0] = *(v1 + 32);
  *(v6 + 13) = *(v1 + 45);
  return _s20SiriOntologyProtobuf07Google_C18_GeneratedCodeInfoV10AnnotationV2eeoiySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t static Message.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 16))(a2, a3);
  result = a1(a4);
  if (v4)
  {
    return (*(*(a2 - 8) + 8))(a4, a2);
  }

  return result;
}

uint64_t sub_26862AF30(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *v1;
  v4 = v1[1];
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v2, v3);
  v6 = sub_2686131DC(v5, v4, v2, v3);
  sub_2685B593C(v2, v3);
  sub_2685B593C(v5, v4);
  return v6 & 1;
}

__n128 sub_26862AFD4(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_26864D2AC(v3, &v10, v4, v5);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

uint64_t sub_26862B060(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v4 = v1 + 8;
  v3 = *(v1 + 8);
  v2 = *(v4 + 8);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_2685BA80C(v3, v2);
  sub_2685BA80C(v6, v5);
  v7 = sub_2686131DC(v3, v2, v6, v5);
  sub_2685B593C(v6, v5);
  sub_2685B593C(v3, v2);
  return v7 & 1;
}

__n128 sub_26862B0F8(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_26864DB28(v3, &v10, v4, v5);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

uint64_t sub_26862B184(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v4 = v1 + 8;
  v3 = *(v1 + 8);
  v2 = *(v4 + 8);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_2685BA80C(v3, v2);
  sub_2685BA80C(v6, v5);
  v7 = sub_2686131DC(v3, v2, v6, v5);
  sub_2685B593C(v6, v5);
  sub_2685B593C(v3, v2);
  return v7 & 1;
}

uint64_t sub_26862B2DC(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v4 = v1 + 1;
  v3 = v1[1];
  v2 = v4[1];
  v6 = a1[1];
  v5 = a1[2];
  sub_2685BA80C(v3, v2);
  sub_2685BA80C(v6, v5);
  v7 = sub_2686131DC(v3, v2, v6, v5);
  sub_2685B593C(v6, v5);
  sub_2685B593C(v3, v2);
  return v7 & 1;
}

__n128 sub_26862B3F8(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = *(v4 + 1);
  v9 = *(v4 + 2);
  v10 = a1[3];
  v16 = a1[2];
  v17 = v10;
  v18 = *(a1 + 8);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  a4(&v14, v7, v8, v9);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_26862B4D4(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v4 = v1 + 8;
  v3 = *(v1 + 8);
  v2 = *(v4 + 8);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_2685BA80C(v3, v2);
  sub_2685BA80C(v6, v5);
  v7 = sub_2686131DC(v3, v2, v6, v5);
  sub_2685B593C(v6, v5);
  sub_2685B593C(v3, v2);
  return v7 & 1;
}

__n128 sub_26862B56C(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_26864FBC4(&v10, v3, v4, v5);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

uint64_t sub_26862B5F8(unsigned __int8 *a1)
{
  if (*a1 != *v1)
  {
    return 0;
  }

  v5 = v1 + 8;
  v4 = *(v1 + 1);
  v3 = *(v5 + 1);
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  sub_2685BA80C(v4, v3);
  sub_2685BA80C(v7, v6);
  v8 = sub_2686131DC(v4, v3, v7, v6);
  sub_2685B593C(v7, v6);
  sub_2685B593C(v4, v3);
  return v8 & 1;
}

uint64_t sub_26862B6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v5 = *(a1 + 8);
  v6 = *v4;
  v7 = v4[1];
  v11[0] = *a1;
  v11[1] = v5;
  v12 = *(a1 + 16);
  v9[0] = v6;
  v9[1] = v7;
  v10 = *(v4 + 1);
  return a4(v9, v11) & 1;
}

__n128 sub_26862B70C(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = *(a1 + 8);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  sub_2686507AC(&v11, v3, v4, v5, v6);
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = result;
  return result;
}

uint64_t sub_26862B798(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  if ((sub_2686131DC(v6, v7, v2, v3) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v8, v9);
  sub_2685BA80C(v4, v5);
  v10 = sub_2686131DC(v8, v9, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v8, v9);
  return v10 & 1;
}

__n128 sub_26862B8A0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = *(v4 + 2);
  v9 = v4[2];
  v10 = v4[3];
  v11 = a1[3];
  v17 = a1[2];
  v18 = v11;
  v19 = *(a1 + 8);
  v12 = a1[1];
  v15 = *a1;
  v16 = v12;
  a4(&v15, v7, v8, v9, v10);
  v13 = v18;
  a1[2] = v17;
  a1[3] = v13;
  *(a1 + 8) = v19;
  result = v16;
  *a1 = v15;
  a1[1] = result;
  return result;
}

uint64_t sub_26862B984(uint64_t a1)
{
  if (*v1 != *a1 || *(v1 + 8) != *(a1 + 8))
  {
    return 0;
  }

  v6 = v1 + 16;
  v5 = *(v1 + 16);
  v4 = *(v6 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_2685BA80C(v5, v4);
  sub_2685BA80C(v8, v7);
  v9 = sub_2686131DC(v5, v4, v8, v7);
  sub_2685B593C(v8, v7);
  sub_2685B593C(v5, v4);
  return v9 & 1;
}

__n128 sub_26862BAB0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = a1[3];
  v16 = a1[2];
  v17 = v10;
  v18 = *(a1 + 8);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  a4(&v14, v7, v8, v9);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_26862BB90(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  v5 = *(a1 + 2);
  v6 = *(v4 + 2);
  v10 = *a1;
  v11 = v5;
  v8 = *v4;
  v9 = v6;
  return a4(&v8, &v10) & 1;
}

uint64_t sub_26862BC44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  if ((a4(v8, v5) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v9, v10);
  sub_2685BA80C(v6, v7);
  v11 = sub_2686131DC(v9, v10, v6, v7);
  sub_2685B593C(v6, v7);
  sub_2685B593C(v9, v10);
  return v11 & 1;
}

uint64_t sub_26862BCE0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_2685B593C(result, a2);

    return sub_2685B593C(a3, a4);
  }

  return result;
}

uint64_t sub_26862BD30(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 2)
  {
    return sub_2685B593C(a2, a3);
  }

  return result;
}

uint64_t sub_26862BD4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 2)
  {
    return sub_2685BA80C(a2, a3);
  }

  return result;
}

uint64_t sub_26862BD68(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    sub_2685B593C(a2, a3);
  }

  return result;
}

uint64_t sub_26862BDC4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_2685B593C(result, a2);
  }

  return result;
}

void sub_26862BE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_2685B593C(a5, a6);
  }
}

double sub_26862BE68(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_26862BE80(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Message.init(unpackingAny:extensions:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = a1[1];
  v16 = *a1;
  v11 = a1[2];
  v12 = *a3;
  v13 = *(a3 + 8);
  (*(a5 + 16))(a6, a4, a5);
  v17 = v12;
  v18 = v13;
  v14 = v19;
  sub_26866D488(a6, a2, &v17, a4, a5);
  sub_2685B593C(v16, v10);

  result = sub_2685B55C0(a2);
  if (v14)
  {
    return (*(*(a4 - 8) + 8))(a6, a4);
  }

  return result;
}