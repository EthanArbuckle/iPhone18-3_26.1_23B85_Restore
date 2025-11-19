void sub_1C70B5198(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1C7551DBC();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1C70B5A48((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C70B56E8(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_1C70B56E8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C70B5A48((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C70B5820(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 144;
  v9 = (a3 - a2) / 144;
  if (v8 < v9)
  {
    sub_1C741E4D4(a1, (a2 - a1) / 144, a4);
    v10 = &v4[144 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v20 = v7;
        goto LABEL_47;
      }

      v12 = *(v6 + 15);
      v13 = *(v4 + 15);
      if (v12 == v13)
      {
        v14 = *(v6 + 17);
        v15 = *(v4 + 17);
        if (v14 == v15)
        {
          v16 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
          if (v16 || (sub_1C7551DBC() & 1) == 0)
          {
LABEL_20:
            v17 = v4;
            v16 = v7 == v4;
            v4 += 144;
            if (v16)
            {
              goto LABEL_22;
            }

LABEL_21:
            memmove(v7, v17, 0x90uLL);
            goto LABEL_22;
          }
        }

        else if (v14 >= v15)
        {
          goto LABEL_20;
        }
      }

      else if (v12 >= v13)
      {
        goto LABEL_20;
      }

      v17 = v6;
      v16 = v7 == v6;
      v6 += 144;
      if (!v16)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 144;
    }
  }

  sub_1C741E4D4(a2, (a3 - a2) / 144, a4);
  v18 = &v4[144 * v9];
LABEL_24:
  v19 = 0;
  v20 = v6;
  while (1)
  {
    v10 = &v18[v19];
    if (&v18[v19] <= v4 || v6 <= v7)
    {
      break;
    }

    v22 = *(v10 - 3);
    v23 = *(v6 - 3);
    if (v22 == v23)
    {
      v24 = *(v10 - 1);
      v25 = *(v6 - 1);
      if (v24 == v25)
      {
        v26 = *(v10 - 16) == *(v6 - 16) && *(v10 - 15) == *(v6 - 15);
        if (!v26 && (sub_1C7551DBC() & 1) != 0)
        {
LABEL_44:
          v6 -= 144;
          v27 = &v5[v19];
          v5 = &v5[v19 - 144];
          v18 += v19;
          if (v27 != v20)
          {
            memmove(v5, v20 - 144, 0x90uLL);
          }

          goto LABEL_24;
        }
      }

      else if (v24 < v25)
      {
        goto LABEL_44;
      }
    }

    else if (v22 < v23)
    {
      goto LABEL_44;
    }

    if (v10 != &v5[v19])
    {
      memmove(&v5[v19 - 144], v10 - 144, 0x90uLL);
    }

    v19 -= 144;
  }

LABEL_47:
  v28 = (v10 - v4) / 144;
  if (v20 != v4 || v20 >= &v4[144 * v28])
  {
    memmove(v20, v4, 144 * v28);
  }

  return 1;
}

uint64_t sub_1C70B5A48(char *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C7423D18(a1);
    v10 = &a4[24 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *a4 && *(v6 + 1) == *(a4 + 1);
      if (v12 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = a4;
    v12 = v7 == a4;
    a4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1C7423D18(a2);
  v10 = &a4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > a4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1C7551DBC() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - a4) / 24;
  if (v6 != a4 || v6 >= &a4[24 * v20])
  {
    memmove(v6, a4, 24 * v20);
  }

  return 1;
}

uint64_t sub_1C70B5C10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6FC1640(a1, a2);
  }

  return a1;
}

uint64_t sub_1C70B5C9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1C70B5CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryChapterValidator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C70B5E2C()
{
  result = qword_1EC216F60;
  if (!qword_1EC216F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216F60);
  }

  return result;
}

void __swiftcall FreeformStoryChapterCompletion.init(title:fallbackQuery:shots:)(PhotosIntelligence::FreeformStoryChapterCompletion *__return_ptr retstr, Swift::String title, Swift::String fallbackQuery, Swift::OpaquePointer shots)
{
  retstr->title = title;
  retstr->fallbackQuery = fallbackQuery;
  retstr->shots = shots;
}

uint64_t FreeformStoryChapterCompletion.title.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryChapterCompletion.fallbackQuery.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C70B5EF8()
{
  v0 = sub_1C7551B2C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C70B5F44(char a1)
{
  if (!a1)
  {
    return 0x72657470616863;
  }

  if (a1 == 1)
  {
    return 0x6B6361626C6C6166;
  }

  return 0x73746F6873;
}

uint64_t sub_1C70B5FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C70B5EF8();
  *a1 = result;
  return result;
}

uint64_t sub_1C70B5FEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C70B5F44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C70B6020@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C70B5EF8();
  *a1 = result;
  return result;
}

uint64_t sub_1C70B6048(uint64_t a1)
{
  v2 = sub_1C70B67DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70B6084(uint64_t a1)
{
  v2 = sub_1C70B67DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FreeformStoryChapterCompletion.description.getter()
{
  OUTLINED_FUNCTION_1_38();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759CCC0);
  MEMORY[0x1CCA5CD70](v1, v2);
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1CCA5CD70](v3, v4);
  OUTLINED_FUNCTION_3_30();
  v5 = MEMORY[0x1CCA5D090](v0, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v5);

  return v7;
}

uint64_t FreeformStoryChapterCompletion.generableDescription.getter()
{
  OUTLINED_FUNCTION_1_38();
  sub_1C755180C();

  strcpy(v7, "    \tchapter: ");
  MEMORY[0x1CCA5CD70](v1, v2);
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1CCA5CD70](v3, v4);
  OUTLINED_FUNCTION_3_30();
  v5 = MEMORY[0x1CCA5D090](v0, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v5);

  return v7[0];
}

uint64_t static FreeformStoryChapterCompletion.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  return sub_1C70020D4(v3, v7);
}

uint64_t FreeformStoryChapterCompletion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F68);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = v1[2];
  v15 = v1[3];
  v16 = v9;
  v14 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70B67DC();
  sub_1C755200C();
  v21 = 0;
  v10 = v17;
  sub_1C7551CCC();
  if (!v10)
  {
    v11 = v14;
    v20 = 1;
    sub_1C7551CCC();
    v18 = v11;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    sub_1C7551D2C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t FreeformStoryChapterCompletion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F70);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70B67DC();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1C7551BBC();
  v14 = v7;
  v12 = sub_1C7551BBC();
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FF60E4(&qword_1EDD0CF50);
  sub_1C7551C1C();
  v9 = OUTLINED_FUNCTION_4();
  v10(v9);
  *a2 = v6;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v15;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C70B67DC()
{
  result = qword_1EDD07E38[0];
  if (!qword_1EDD07E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD07E38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryChapterCompletion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C70B6920()
{
  result = qword_1EC216F78;
  if (!qword_1EC216F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216F78);
  }

  return result;
}

unint64_t sub_1C70B6978()
{
  result = qword_1EDD07E28;
  if (!qword_1EDD07E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07E28);
  }

  return result;
}

unint64_t sub_1C70B69D0()
{
  result = qword_1EDD07E30;
  if (!qword_1EDD07E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07E30);
  }

  return result;
}

id sub_1C70B6A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = objc_opt_self();
  v6 = sub_1C7550F7C();
  v7 = [v5 uuidsFromLocalIdentifiers_];

  if (v7)
  {
    v8 = sub_1C7550F8C();

    v9 = a3(a1, v8);

    return v9;
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x1E6978840]);

    return [v11 init];
  }
}

id static CollectionFetcherHelper.fetchCollections(using:localIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = sub_1C7550F7C();
  v9 = [v7 uuidsFromLocalIdentifiers_];

  if (v9)
  {
    v10 = sub_1C7550F8C();

    v11 = (*(*(a4 + 8) + 40))(a1, v10, a3);

    return v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F80);
    swift_getAssociatedTypeWitness();
    return _sSo25PNDetailsViewAssetFetcherC18PhotosIntelligenceEABycfC_0();
  }
}

uint64_t static CollectionFetcherHelper.fetchCollections(using:uuids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C75604F0;
  (*(a4 + 48))(a3, a4);
  *(v8 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  *(v8 + 104) = sub_1C7067A60();
  *(v8 + 72) = a2;
  sub_1C75504FC();
  v9 = sub_1C755112C();
  v10 = *(a1 + 24);
  v11 = [v10 predicate];
  if (v11)
  {
    v12 = v11;
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C7564A90;
    *(v13 + 32) = v9;
    *(v13 + 40) = v12;
    v14 = v9;
    v15 = v12;
    v16 = sub_1C6F6E5C4();
    [v10 setPredicate_];
  }

  else
  {
    [v10 setPredicate_];
  }

  v17 = (*(*(a4 + 8) + 24))(a1, a3);

  return v17;
}

id static CollectionFetcherHelper.supports(collection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6F774EC(a1, v9);
  swift_getAssociatedTypeWitness();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v5 = (*(a3 + 24))(0, a2, a3);
  v6 = [v5 evaluateWithObject_];

  return v6;
}

unint64_t sub_1C70B6F6C@<X0>(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  result = sub_1C6F6D524();
  a1[4] = result;
  *a1 = 1684632949;
  a1[1] = 0xE400000000000000;
  return result;
}

unint64_t static CollectionFetcherHelper.uuidKey()@<X0>(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  result = sub_1C6F6D524();
  a1[4] = result;
  *a1 = 1684632949;
  a1[1] = 0xE400000000000000;
  return result;
}

void sub_1C70B7154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  if (![v6 fetchLimit])
  {
    v7 = OUTLINED_FUNCTION_3_31();
    [v6 setFetchLimit_];
  }

  v10 = [v6 sortDescriptors];
  if (!v10)
  {
    (*(a3 + 40))(*(a1 + 33), a2, a3);
    sub_1C6F65BE8(0, &qword_1EDD108F0);
    v10 = sub_1C7550B3C();

    [v6 setSortDescriptors_];
  }

  v11 = OUTLINED_FUNCTION_3_31();
  v20 = sub_1C70B75A4(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_3_31();
  v17 = sub_1C70B769C(v14, v15, v16);
  if (v17)
  {
    v18 = v17;
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C7564A90;
    *(v19 + 32) = v20;
    *(v19 + 40) = v18;
    v20 = sub_1C6F6E5C4();
  }

  [v6 setPredicate_];
  [v6 setInternalPredicate_];
}

id sub_1C70B7364()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

id static CollectionFetcherHelper.basePredicate(using:)()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}

id _sSo25PNDetailsViewAssetFetcherC18PhotosIntelligenceEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1C70B7518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(*(a1 + 32))
  {
    case 1:
    case 2:
    case 4:
      result = 0;
      break;
    case 3:
      result = (*(a3 + 64))(a2, a3);
      break;
    default:
      result = (*(a3 + 56))(a2, a3);
      break;
  }

  return result;
}

id sub_1C70B75A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24))();
  v7 = 1;
  switch(*(a1 + 32))
  {
    case 1:
      goto LABEL_4;
    case 2:
      v7 = 0;
LABEL_4:
      v9 = (*(a3 + 32))(v7, a2, a3);
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C7564A90;
      *(v10 + 32) = v6;
      *(v10 + 40) = v9;
      result = sub_1C6F6E5C4();
      break;
    default:
      result = v6;
      break;
  }

  return result;
}

id sub_1C70B769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C754FF1C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v12 = [v11 predicate];
  if (v12)
  {

    v13 = [v11 internalPredicate];
    if (v13)
    {

      (*(a3 + 16))(a2, a3);
      v14 = sub_1C754FEEC();
      v15 = sub_1C75511AC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        MEMORY[0x1CCA5F8E0](v16, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
    }
  }

  v17 = &selRef_predicate;
  result = [v11 predicate];
  if (result || (v17 = &selRef_internalPredicate, (result = [v11 internalPredicate]) != 0))
  {

    return [v11 *v17];
  }

  return result;
}

uint64_t CollectionScorerError.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t CollectionScorer.__allocating_init(with:andWith:)(__int16 *a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = *a1;
  v6 = *(a1 + 1);
  *(result + 16) = a2;
  *(result + 24) = v5;
  *(result + 32) = v6;
  return result;
}

uint64_t CollectionScorer.init(with:andWith:)(__int16 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  return v2;
}

void sub_1C70B7B14(uint64_t a1)
{
  __C[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v2 = v1;
    v70 = *(a1 + 16);
    v4 = *(v1 + 32);
    __C[0] = a1;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C6FD2568(v4);
    v5 = __C[0];
    v6 = [*(v2 + 16) librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C755BAA0;
    *(v7 + 32) = sub_1C755068C();
    *(v7 + 40) = v8;
    *(v7 + 48) = sub_1C755068C();
    *(v7 + 56) = v9;
    *(v7 + 64) = sub_1C755068C();
    *(v7 + 72) = v10;
    sub_1C70B81C8(v7, v6);
    v11 = objc_opt_self();
    v69 = v5;
    v12 = sub_1C7550B3C();
    v13 = [v11 fetchAssetsWithLocalIdentifiers:v12 options:v6];

    v74 = v13;
    v72 = [v13 count];
    if ((v72 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v67 = a1;
    v68 = v6;
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC8];
    v71 = v2;
    while (v72 != v14)
    {
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v16 = objc_autoreleasePoolPush();
      v17 = [v74 objectAtIndexedSubscript_];
      v18 = [v17 sceneAnalysisProperties];
      if (!v18 || (v19 = v18, v20 = [v18 sceneAnalysisVersion], v19, *(v2 + 24) != v20) || (sub_1C73C6BB8(), !v21))
      {

        sub_1C70B8234();
        swift_allocError();
        swift_willThrow();

        objc_autoreleasePoolPop(v16);

        return;
      }

      v22 = v21;
      v75 = v16;
      v77 = v14;
      v23 = [v17 localIdentifier];
      v24 = sub_1C755068C();
      v26 = v25;

      swift_isUniquelyReferenced_nonNull_native();
      __C[0] = v15;
      v27 = sub_1C6F78124(v24, v26);
      if (__OFADD__(v15[2], (v28 & 1) == 0))
      {
        goto LABEL_44;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F90);
      if (sub_1C7551A2C())
      {
        v31 = sub_1C6F78124(v24, v26);
        if ((v30 & 1) != (v32 & 1))
        {
          sub_1C7551E4C();
          __break(1u);
          return;
        }

        v29 = v31;
      }

      v15 = __C[0];
      if (v30)
      {
        *(*(__C[0] + 56) + 8 * v29) = v22;
      }

      else
      {
        *(__C[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v33 = (v15[6] + 16 * v29);
        *v33 = v24;
        v33[1] = v26;
        *(v15[7] + 8 * v29) = v22;
        v34 = v15[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_46;
        }

        v15[2] = v36;
      }

      objc_autoreleasePoolPop(v75);
      v14 = v77 + 1;
      v2 = v71;
    }

    v37 = sub_1C75504FC();
    v38 = sub_1C7080ED4(v37);
    v39 = sub_1C706D154(v69);
    sub_1C7036A90(v38, v39);
    v41 = v40;

    if (v41)
    {
      v42 = 0;
      v43 = *(v4 + 16);
      v76 = (v4 + 40);
      v44 = 0.0;
      v45 = v70;
      v73 = v43;
      do
      {
        while (1)
        {
          if (v42 == v45)
          {
            goto LABEL_45;
          }

          v46 = v42 + 1;
          if (v43)
          {
            break;
          }

          v44 = v44 + 0.0;
          ++v42;
          if (v46 == v45)
          {
            goto LABEL_38;
          }
        }

        v47 = (v67 + 32 + 16 * v42);
        v49 = *v47;
        v48 = v47[1];
        sub_1C75504FC();
        v50 = 0.0;
        v51 = v76;
        do
        {
          if (v15[2])
          {
            v52 = *(v51 - 1);
            v53 = *v51;
            sub_1C75504FC();
            v54 = sub_1C6F78124(v52, v53);
            v56 = v55;

            if (v56)
            {
              if (v15[2])
              {
                v57 = *(v15[7] + 8 * v54);
                sub_1C75504FC();
                v58 = sub_1C6F78124(v49, v48);
                if (v59)
                {
                  v60 = *(v15[7] + 8 * v58);
                  v61 = *(v57 + 16);
                  if (v61 != *(v60 + 16))
                  {
                    goto LABEL_42;
                  }

                  LODWORD(__C[0]) = 0;
                  sub_1C75504FC();
                  vDSP_dotpr((v57 + 32), 1, (v60 + 32), 1, __C, v61);
                  if (v61 >> 31)
                  {
                    goto LABEL_43;
                  }

                  v62 = *__C;
                  cblas_snrm2_NEWLAPACK();
                  v64 = v63;

                  cblas_snrm2_NEWLAPACK();
                  v66 = v65;

                  if (v50 < (v62 / (v64 * v66)))
                  {
                    v50 = v62 / (v64 * v66);
                  }
                }

                else
                {
                }
              }
            }
          }

          v51 += 2;
          --v43;
        }

        while (v43);

        v44 = v44 + v50;
        v42 = v46;
        v45 = v70;
        v43 = v73;
      }

      while (v46 != v70);
LABEL_38:
    }

    else
    {
    }
  }
}

uint64_t CollectionScorer.__deallocating_deinit()
{
  CollectionScorer.deinit();

  return swift_deallocClassInstance();
}

void sub_1C70B81C8(uint64_t a1, void *a2)
{
  v3 = sub_1C7550B3C();

  [a2 addFetchPropertySets_];
}

unint64_t sub_1C70B8234()
{
  result = qword_1EC216F88;
  if (!qword_1EC216F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216F88);
  }

  return result;
}

unint64_t sub_1C70B828C()
{
  result = qword_1EC216F98;
  if (!qword_1EC216F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216F98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CollectionScorerError(_BYTE *result, int a2, int a3)
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

id static OptionalizedTokensDataSource.optionalizedTokensByCategoryType.getter()
{
  v23[5] = *MEMORY[0x1E69E9840];
  v1 = sub_1C754DD2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  v8 = sub_1C754E5EC();
  v23[3] = v8;
  v23[4] = sub_1C70B881C();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD40], v8);
  LOBYTE(v8) = sub_1C754E3AC();
  __swift_destroy_boxed_opaque_existential_1(v23);
  if ((v8 & 1) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v10 = sub_1C70B89C0(0xD000000000000012, 0x80000001C759CD70, 0x7473696C70, 0xE500000000000000, v12);

    if (!v10)
    {
      sub_1C70B8A54();
      swift_allocError();
      swift_willThrow();
      return v10;
    }

    sub_1C754DCCC();

    (*(v2 + 32))(v7, v4, v1);
    v13 = sub_1C754DD6C();
    if (!v0)
    {
      v16 = v13;
      v17 = v14;
      v18 = objc_opt_self();
      v19 = sub_1C754DDCC();
      v23[0] = 0;
      v20 = [v18 propertyListWithData:v19 options:0 format:0 error:v23];

      if (v20)
      {
        v21 = v23[0];
        sub_1C75515CC();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FA8);
        if (swift_dynamicCast())
        {
          v10 = v22[1];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          v10 = sub_1C75504DC();
        }

        sub_1C6FC1640(v16, v17);
        (*(v2 + 8))(v7, v1);
        return v10;
      }

      v10 = v23[0];
      sub_1C754DBEC();

      swift_willThrow();
      sub_1C6FC1640(v16, v17);
    }

    (*(v2 + 8))(v7, v1);
    return v10;
  }

  if (qword_1EDD087C8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDD087D0;
  sub_1C75504FC();
  return v10;
}

unint64_t sub_1C70B881C()
{
  result = qword_1EDD0F9B0;
  if (!qword_1EDD0F9B0)
  {
    sub_1C754E5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F9B0);
  }

  return result;
}

uint64_t sub_1C70B8874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  sub_1C754F28C();
  *(inited + 48) = sub_1C754F27C();
  *(inited + 56) = 1702125924;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_1C754F27C();
  *(inited + 80) = 1952540791;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = sub_1C754F27C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  result = sub_1C75504DC();
  qword_1EDD087D0 = result;
  return result;
}

id sub_1C70B89C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C755065C();

  v7 = sub_1C755065C();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1C70B8A54()
{
  result = qword_1EC216FA0;
  if (!qword_1EC216FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216FA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OptionalizedTokensDataSource.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C70B8B94()
{
  result = qword_1EC216FB0;
  if (!qword_1EC216FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216FB0);
  }

  return result;
}

uint64_t sub_1C70B8BE8(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  sub_1C75504FC();
  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(a2 + 48) + ((v10 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];
    v16 = *a3;
    v17 = *(*a3 + 16);
    sub_1C75504FC();
    if (v17 && (v18 = sub_1C6F78124(v14, v15), (v19 & 1) != 0))
    {
      v21 = (*(v16 + 56) + 16 * v18);
      v37 = *v21;
      v38 = v21[1];
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v35 = sub_1C6F78124(v14, v15);
      v36 = v22;
      if (__OFADD__(a1[2], (v22 & 1) == 0))
      {
        goto LABEL_25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
      if (sub_1C7551A2C())
      {
        v23 = sub_1C6F78124(v14, v15);
        v25 = v36;
        if ((v36 & 1) != (v24 & 1))
        {
          goto LABEL_27;
        }

        v27 = v37;
        v26 = v38;
      }

      else
      {
        v27 = v37;
        v26 = v38;
        v23 = v35;
        v25 = v36;
      }

      if (v25)
      {
        v28 = (a1[7] + 16 * v23);
        *v28 = v27;
        v28[1] = v26;
LABEL_20:
      }

      else
      {
        a1[(v23 >> 6) + 8] |= 1 << v23;
        v29 = (a1[6] + 16 * v23);
        *v29 = v14;
        v29[1] = v15;
        v30 = (a1[7] + 16 * v23);
        *v30 = v27;
        v30[1] = v26;
        v31 = a1[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        a1[2] = v33;
      }
    }

    else
    {
      sub_1C6F78124(v14, v15);
      if (v20)
      {
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
        sub_1C7551A2C();

        sub_1C7551A4C();
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return a1;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C70B8EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217058);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = type metadata accessor for MomentInformation();
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43[2] = v43 - v11;
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  sub_1C75504FC();
  v17 = 0;
  v50 = a2;
  v46 = v7;
  v48 = v8;
  while (v15)
  {
    v18 = v7;
    v19 = a1;
LABEL_10:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v22 = (*(v50 + 48) + ((v17 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];
    v25 = *(*v49 + 16);
    sub_1C75504FC();
    v51 = v23;
    if (v25 && (sub_1C6F78124(v24, v23), (v26 & 1) != 0))
    {
      v43[3] = *(v47 + 72);
      sub_1C70BBE70();
      sub_1C70BBE18();
      swift_isUniquelyReferenced_nonNull_native();
      v52 = v19;
      v44 = v24;
      v27 = sub_1C6F78124(v24, v23);
      if (__OFADD__(*(v19 + 16), (v28 & 1) == 0))
      {
        goto LABEL_28;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217060);
      if (sub_1C7551A2C())
      {
        v31 = sub_1C6F78124(v44, v51);
        v7 = v46;
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_30;
        }

        v29 = v31;
      }

      else
      {
        v7 = v46;
      }

      a1 = v52;
      v36 = v44;
      if (v30)
      {
        sub_1C70BBEC8();
        goto LABEL_20;
      }

      *(v52 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (*(a1 + 48) + 16 * v29);
      v38 = v51;
      *v37 = v36;
      v37[1] = v38;
      sub_1C70BBE18();
      v39 = *(a1 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_29;
      }

      *(a1 + 16) = v41;
    }

    else
    {
      a1 = v19;
      sub_1C6F78124(v24, v23);
      if (v33)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v52 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217060);
        v7 = v46;
        sub_1C7551A2C();
        a1 = v52;

        sub_1C70BBE18();
        v34 = v48;
        sub_1C7551A4C();
        v35 = 0;
      }

      else
      {
        v35 = 1;
        v34 = v48;
        v7 = v18;
      }

      __swift_storeEnumTagSinglePayload(v7, v35, 1, v34);
      sub_1C6FD7FC8(v7, &qword_1EC217058);
LABEL_20:
    }
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return a1;
    }

    v15 = *(v12 + 8 * v20);
    ++v17;
    if (v15)
    {
      v18 = v7;
      v19 = a1;
      v17 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C70B93B0(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v27 - v4;
  v6 = type metadata accessor for AssetSummaryInfo(0);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v27[2] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v27[1] = v27 - v9;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  result = sub_1C75504FC();
  v15 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
    v16 = v12;
LABEL_10:
    v12 = (v16 - 1) & v16;
    if (!*(*v30 + 16))
    {
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
      goto LABEL_16;
    }

    v18 = (*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v16)))));
    v19 = *v18;
    v20 = v18[1];
    sub_1C75504FC();
    sub_1C6F78124(v19, v20);
    if (v21)
    {
      sub_1C70BBE70();
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v22, 1, v6);

    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
LABEL_16:
      result = sub_1C6FD7FC8(v5, &qword_1EC217030);
    }

    else
    {
      sub_1C70BBE18();
      sub_1C70BBE18();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB26C8(0, *(v28 + 16) + 1, 1, v28);
        v28 = v25;
      }

      v24 = *(v28 + 16);
      v23 = *(v28 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C6FB26C8(v23 > 1, v24 + 1, 1, v28);
        v28 = v26;
      }

      *(v28 + 16) = v24 + 1;
      result = sub_1C70BBE18();
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return v28;
    }

    v16 = *(a1 + 56 + 8 * v17);
    ++v15;
    if (v16)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void StoryGenerationCache.cacheLexiconLanguageIdentifier(languageIdentifier:)(void *a1)
{
  os_unfair_lock_lock((v1 + 64));

  *(v1 + 72) = a1;
  v3 = a1;

  os_unfair_lock_unlock((v1 + 64));
}

uint64_t StoryGenerationCache.assetUUIDs(forMomentUUIDs:)()
{
  v1 = OUTLINED_FUNCTION_5_26();
  os_unfair_lock_lock(v1);
  sub_1C75504FC();
  OUTLINED_FUNCTION_3_32();
  sub_1C70BABF0(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_5_26();
  os_unfair_lock_unlock(v6);

  return sub_1C7080ED4(v0);
}

uint64_t sub_1C70B980C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1C754DF6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  *&v22 = MEMORY[0x1EEE9AC00](v21 - 8).n128_u64[0];
  v24 = &v43 - v23;
  v25 = [a1 localStartDate];
  if (v25)
  {
    v26 = v25;
    sub_1C754DF2C();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v27, 1, v3);
  sub_1C6FF51C8(v24, v44);
  v28 = a1;
  v29 = [v28 startDate];
  if (!v29)
  {

LABEL_10:
    goto LABEL_11;
  }

  v30 = v29;
  sub_1C754DF2C();

  v31 = *(v4 + 32);
  v31(v20, v17, v3);
  v32 = [v28 endDate];

  if (!v32)
  {
    (*(v4 + 8))(v20, v3);
    goto LABEL_10;
  }

  sub_1C754DF2C();

  v31(v14, v11, v3);
  sub_1C70BBF78();
  if ((sub_1C755060C() & 1) == 0)
  {
    v39 = *(type metadata accessor for MomentInformation() + 20);
    v40 = *(v4 + 16);
    v40(v8, v20, v3);
    v40(v43, v14, v3);
    v41 = v44;
    sub_1C754D87C();

    v42 = *(v4 + 8);
    v42(v14, v3);
    v42(v20, v3);
    v35 = sub_1C754D8BC();
    v36 = v41 + v39;
    v37 = 0;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  v33 = *(v4 + 8);
  v33(v14, v3);
  v33(v20, v3);
LABEL_11:
  v34 = *(type metadata accessor for MomentInformation() + 20);
  v35 = sub_1C754D8BC();
  v36 = v44 + v34;
  v37 = 1;
  return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
}

uint64_t StoryGenerationCache.__allocating_init()()
{
  v0 = swift_allocObject();
  StoryGenerationCache.init()();
  return v0;
}

uint64_t StoryGenerationCache.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = v2;
  *(v0 + 96) = 0;
  *(v0 + 104) = v2;
  return result;
}

Swift::Void __swiftcall StoryGenerationCache.reset()()
{
  os_unfair_lock_lock((v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FB8);
  sub_1C755054C();
  os_unfair_lock_unlock((v0 + 16));
  os_unfair_lock_lock((v0 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FC0);
  sub_1C755054C();
  os_unfair_lock_unlock((v0 + 32));
  os_unfair_lock_lock((v0 + 64));

  *(v0 + 72) = 0;

  os_unfair_lock_unlock((v0 + 64));
}

Swift::Void __swiftcall StoryGenerationCache.cache(momentUUIDByAssetUUID:)(Swift::OpaquePointer momentUUIDByAssetUUID)
{
  v2 = OUTLINED_FUNCTION_5_26();
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_3_32();
  sub_1C70B9D70(v3, v4);

  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1C70B9D70(void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  sub_1C75504FC();
  v8 = 0;
  v31 = v7;
  v32 = v3;
  v33 = a1;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
      v11 = (*(a2 + 48) + v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = (*(a2 + 56) + v10);
      v15 = v14[1];
      v35 = *v14;
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *a1;
      v36 = *a1;
      v17 = sub_1C6F78124(v13, v12);
      if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
      if (sub_1C7551A2C())
      {
        v21 = sub_1C6F78124(v13, v12);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      if (v20)
      {

        v23 = v36;
        v24 = (v36[7] + 16 * v19);
        *v24 = v35;
        v24[1] = v15;
      }

      else
      {
        v23 = v36;
        v36[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v36[6] + 16 * v19);
        *v25 = v13;
        v25[1] = v12;
        v26 = (v36[7] + 16 * v19);
        *v26 = v35;
        v26[1] = v15;
        v27 = v36[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_21;
        }

        v36[2] = v29;
      }

      v6 &= v6 - 1;
      v3 = v32;
      a1 = v33;
      *v33 = v23;
      v7 = v31;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall StoryGenerationCache.momentUUID(forAssetUUID:)(Swift::String forAssetUUID)
{
  v2 = v1;
  object = forAssetUUID._object;
  countAndFlagsBits = forAssetUUID._countAndFlagsBits;
  os_unfair_lock_lock((v1 + 16));
  v5 = *(v1 + 24);
  if (*(v5 + 16) && (v6 = sub_1C6F78124(countAndFlagsBits, object), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
    sub_1C75504FC();
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  os_unfair_lock_unlock(v2 + 4);
  v11 = v9;
  v12 = v10;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

void StoryGenerationCache.momentUUIDByAssetUUID(for:)()
{
  v2 = OUTLINED_FUNCTION_5_26();
  os_unfair_lock_lock(v2);
  v3 = *(*(v1 + 24) + 16);
  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v0 + 16);
  v5 = (v4 * 5) >> 64;
  v6 = 5 * v4;
  if (v5 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (2 * v3 >= v6)
  {
    OUTLINED_FUNCTION_3_32();
    sub_1C70B8BE8(v11, v12, v13);
  }

  else
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_3_32();
    sub_1C70BABF0(v7, v8, v9, v10);
  }

  v14 = OUTLINED_FUNCTION_5_26();
  os_unfair_lock_unlock(v14);
}

Swift::Void __swiftcall StoryGenerationCache.cache(_:)(Swift::OpaquePointer a1)
{
  os_unfair_lock_lock((v1 + 32));
  v2 = sub_1C75504FC();
  sub_1C70BAB6C(v2, sub_1C70BAAFC, 0, (v1 + 40), sub_1C70BB86C);

  os_unfair_lock_unlock((v1 + 32));
}

{
  v2 = type metadata accessor for AssetSummaryInfo(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - v5);
  v7 = *(a1._rawValue + 2);
  if (v7)
  {
    v8 = a1._rawValue + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = MEMORY[0x1E69E7CC8];
    v10 = *(v4 + 72);
    v26 = (&v24 - v5);
    while (1)
    {
      v27 = v7;
      sub_1C70BBE70();
      v12 = *v6;
      v11 = v6[1];
      sub_1C70BBE70();
      swift_isUniquelyReferenced_nonNull_native();
      v28 = v9;
      v13 = sub_1C6F78124(v12, v11);
      if (__OFADD__(*(v9 + 16), (v14 & 1) == 0))
      {
        break;
      }

      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FC8);
      if (sub_1C7551A2C())
      {
        v17 = sub_1C6F78124(v12, v11);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_17;
        }

        v15 = v17;
      }

      v9 = v28;
      if (v16)
      {
        OUTLINED_FUNCTION_0_43();
        sub_1C70BBEC8();
      }

      else
      {
        *(v28 + 8 * (v15 >> 6) + 64) |= 1 << v15;
        v19 = (*(v9 + 48) + 16 * v15);
        *v19 = v12;
        v19[1] = v11;
        OUTLINED_FUNCTION_0_43();
        sub_1C70BBE18();
        v20 = *(v9 + 16);
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_16;
        }

        *(v9 + 16) = v22;
        sub_1C75504FC();
      }

      v6 = v26;
      sub_1C70BBF20(v26, type metadata accessor for AssetSummaryInfo);
      v8 += v10;
      v7 = v27 - 1;
      if (v27 == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
LABEL_14:
    v23 = v25;
    os_unfair_lock_lock(v25 + 24);
    sub_1C70BAB6C(v9, sub_1C70BAA8C, 0, &v23[26], sub_1C70BB4D8);
    os_unfair_lock_unlock(v23 + 24);
  }
}

uint64_t StoryGenerationCache.momentInformationByMomentUUID(for:)()
{
  os_unfair_lock_lock(v0 + 8);
  OUTLINED_FUNCTION_3_32();
  v4 = sub_1C70B8EE4(v1, v2, v3);
  os_unfair_lock_unlock(v0 + 8);
  return v4;
}

void StoryGenerationCache.cacheObjectIDs(for:)()
{
  os_unfair_lock_lock(v0 + 12);
  OUTLINED_FUNCTION_3_32();
  sub_1C70BA248(v1, v2);

  os_unfair_lock_unlock(v0 + 12);
}

void sub_1C70BA248(void *a1, id a2)
{
  v30 = [a2 count];
  if ((v30 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v28 = a1;
    while (1)
    {
      if (v30 == v3)
      {
        return;
      }

      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v4 = objc_autoreleasePoolPush();
      v5 = [a2 objectAtIndexedSubscript_];
      v6 = sub_1C6FCA214(v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      v8 = v6;
      v9 = v7;
      v10 = [v5 objectID];
      if (v10)
      {
        break;
      }

      v21 = sub_1C6F78124(v8, v9);
      v23 = v22;

      if (v23)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v33 = *a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217050);
        sub_1C7551A2C();
        v18 = v33;

        sub_1C70BBDD4();
        sub_1C7551A4C();

LABEL_18:
        *a1 = v18;
        goto LABEL_19;
      }

LABEL_19:
      objc_autoreleasePoolPop(v4);
      ++v3;
    }

    v31 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v32 = *a1;
    v12 = sub_1C6F78124(v8, v9);
    if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
    {
      goto LABEL_23;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217050);
    if (sub_1C7551A2C())
    {
      v16 = sub_1C6F78124(v8, v9);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_27;
      }

      v14 = v16;
    }

    if (v15)
    {

      v18 = v32;
      v19 = v32[7];
      v20 = *(v19 + 8 * v14);
      *(v19 + 8 * v14) = v31;
    }

    else
    {
      v18 = v32;
      v32[(v14 >> 6) + 8] |= 1 << v14;
      v24 = (v32[6] + 16 * v14);
      *v24 = v8;
      v24[1] = v9;
      *(v32[7] + 8 * v14) = v31;

      v25 = v32[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      v32[2] = v27;
    }

    a1 = v28;
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t StoryGenerationCache.cachedObjectIDByAssetUUID(for:)()
{
  os_unfair_lock_lock(v0 + 12);
  sub_1C75504FC();
  OUTLINED_FUNCTION_3_32();
  v5 = sub_1C70BABF0(v1, v2, v3, v4);
  os_unfair_lock_unlock(v0 + 12);
  return v5;
}

void *StoryGenerationCache.cachedLexiconLanguageIdentifier()()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 72);
  v2 = v1;
  os_unfair_lock_unlock((v0 + 64));
  return v1;
}

Swift::Void __swiftcall StoryGenerationCache.cacheHighlightInformation(highlightInformation:)(Swift::OpaquePointer highlightInformation)
{
  os_unfair_lock_lock((v1 + 80));

  *(v1 + 88) = highlightInformation;
  sub_1C75504FC();

  os_unfair_lock_unlock((v1 + 80));
}

uint64_t StoryGenerationCache.cachedHighlightInformation()()
{
  os_unfair_lock_lock((v0 + 80));
  v1 = *(v0 + 88);
  sub_1C75504FC();
  os_unfair_lock_unlock((v0 + 80));
  return v1;
}

uint64_t StoryGenerationCache.assetSummaryInfo(for:)(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 24);
  v3 = sub_1C70B93B0(a1, &v1[26]);
  os_unfair_lock_unlock(v1 + 24);
  return v3;
}

uint64_t StoryGenerationCache.deinit()
{
  sub_1C6FD7FC8(v0 + 24, &qword_1EC214C50);
  sub_1C6FD7FC8(v0 + 40, &qword_1EC216FD0);
  sub_1C6FD7FC8(v0 + 56, &qword_1EC216FD8);
  sub_1C6FD7FC8(v0 + 72, &qword_1EC216FE0);
  sub_1C6FD7FC8(v0 + 88, &qword_1EC216FE8);
  sub_1C6FD7FC8(v0 + 104, &qword_1EC216FF0);
  return v0;
}

uint64_t StoryGenerationCache.__deallocating_deinit()
{
  StoryGenerationCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C70BAA8C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217040);
  result = sub_1C73D916C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C70BAAFC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217070);
  result = sub_1C73D91A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C70BAB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a4;
  result = a5(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v12);
  *a4 = v12;
  return result;
}

uint64_t sub_1C70BABF0(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a1[32];
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = swift_bridgeObjectRetain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_1C75504FC();
      OUTLINED_FUNCTION_6_31();
      v7 = sub_1C70BB430(v15, v16, v17, v18, a4);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  sub_1C71FAC38(0, v10, v19 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1C75504FC();
  OUTLINED_FUNCTION_6_31();
  v12 = a3();
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v7 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v7;
}

uint64_t sub_1C70BADB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v31 = v10;
      v32 = v5;
      v17 = (*(a3 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v29 = v16;
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v20 = sub_1C7551FAC();
      v21 = ~(-1 << *(a4 + 32));
      do
      {
        v22 = v20 & v21;
        if (((*(v12 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {

          v5 = v32;
          v10 = v31;
          goto LABEL_5;
        }

        v23 = (*(a4 + 48) + 16 * v22);
        if (*v23 == v18 && v23[1] == v19)
        {
          break;
        }

        v25 = sub_1C7551DBC();
        v20 = v22 + 1;
      }

      while ((v25 & 1) == 0);

      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v5 = v32 + 1;
      v10 = v31;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_1C7483F80();
      v27 = v26;

      return v27;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C70BAFE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    if (*(a4 + 16))
    {
      v30 = v10;
      v31 = v5;
      v28 = v13 | (v6 << 6);
      v16 = (*(a3 + 56) + 16 * v28);
      v17 = *v16;
      v18 = v16[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v19 = sub_1C7551FAC();
      v20 = ~(-1 << *(a4 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v12 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v5 = v31;
          v10 = v30;
          goto LABEL_5;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 == v17 && v22[1] == v18)
        {
          break;
        }

        v24 = sub_1C7551DBC();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v5 = v31 + 1;
      v10 = v30;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_1C7483F80();
      v26 = v25;

      return v26;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1C70BB20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v31 = v10;
      v32 = v5;
      v17 = (*(a3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v28 = v16;
      v20 = *(*(a3 + 56) + 8 * v16);
      sub_1C7551F3C();
      sub_1C75504FC();
      v30 = v20;
      sub_1C75505AC();
      v21 = sub_1C7551FAC();
      v22 = ~(-1 << *(a4 + 32));
      do
      {
        v23 = v21 & v22;
        if (((*(v12 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {

          v5 = v32;
          v10 = v31;
          goto LABEL_5;
        }

        v24 = (*(a4 + 48) + 16 * v23);
        if (*v24 == v19 && v24[1] == v18)
        {
          break;
        }

        v26 = sub_1C7551DBC();
        v21 = v23 + 1;
      }

      while ((v26 & 1) == 0);

      *(a1 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v5 = v32 + 1;
      v10 = v31;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_1C7484568();

      return;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void *sub_1C70BB430(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1C70BB4D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = type metadata accessor for AssetSummaryInfo(0);
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35[3] = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217048);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v35 - v15);
  sub_1C6F78034(v40);
  v36 = v40[0];
  v37 = v40[1];
  v38 = v40[2];
  v39 = v41;
  v35[1] = a1;
  sub_1C75504FC();
  v35[0] = a3;

  while (1)
  {
    sub_1C73DA9C4();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217040);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1C6F61E88();
    }

    v19 = *v16;
    v18 = v16[1];
    sub_1C70BBE18();
    v20 = *a5;
    v22 = sub_1C6F78124(v19, v18);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216FC8);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7354208(v25, a4 & 1);
      v27 = sub_1C6F78124(v19, v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_16;
      }

      v22 = v27;
    }

    v29 = *a5;
    if (v26)
    {
      sub_1C70BBE70();
      sub_1C70BBF20(v13, type metadata accessor for AssetSummaryInfo);

      sub_1C70BBEC8();
      a4 = 1;
    }

    else
    {
      *(v29 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v30 = (*(v29 + 48) + 16 * v22);
      *v30 = v19;
      v30[1] = v18;
      sub_1C70BBE18();
      v31 = *(v29 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_15;
      }

      *(v29 + 16) = v33;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C70BB86C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = type metadata accessor for MomentInformation();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35[3] = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217078);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v35 - v15);
  sub_1C6F78034(v40);
  v36 = v40[0];
  v37 = v40[1];
  v38 = v40[2];
  v39 = v41;
  v35[1] = a1;
  sub_1C75504FC();
  v35[0] = a3;

  while (1)
  {
    sub_1C73DAC08();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217070);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1C6F61E88();
    }

    v19 = *v16;
    v18 = v16[1];
    sub_1C70BBE18();
    v20 = *a5;
    v22 = sub_1C6F78124(v19, v18);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217060);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7354244(v25, a4 & 1);
      v27 = sub_1C6F78124(v19, v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_16;
      }

      v22 = v27;
    }

    v29 = *a5;
    if (v26)
    {
      sub_1C70BBE70();
      sub_1C70BBF20(v13, type metadata accessor for MomentInformation);

      sub_1C70BBEC8();
      a4 = 1;
    }

    else
    {
      *(v29 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v30 = (*(v29 + 48) + 16 * v22);
      *v30 = v19;
      v30[1] = v18;
      sub_1C70BBE18();
      v31 = *(v29 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_15;
      }

      *(v29 + 16) = v33;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MomentInformation()
{
  result = qword_1EDD0EEB8;
  if (!qword_1EDD0EEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C70BBC74()
{
  sub_1C70BBD30(319, &qword_1EDD0F9D0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1C70BBD30(319, &unk_1EDD0FA00, MEMORY[0x1E6968130]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C70BBD30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C755149C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C70BBDD4()
{
  result = qword_1EDD0FAB0;
  if (!qword_1EDD0FAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0FAB0);
  }

  return result;
}

uint64_t sub_1C70BBE18()
{
  v2 = OUTLINED_FUNCTION_47_0();
  v3(v2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C70BBE70()
{
  v2 = OUTLINED_FUNCTION_47_0();
  v3(v2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C70BBEC8()
{
  v2 = OUTLINED_FUNCTION_47_0();
  v3(v2);
  OUTLINED_FUNCTION_12();
  (*(v4 + 40))(v0, v1);
  return v0;
}

uint64_t sub_1C70BBF20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C70BBF78()
{
  result = qword_1EDD0F9E0;
  if (!qword_1EDD0F9E0)
  {
    sub_1C754DF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F9E0);
  }

  return result;
}

uint64_t sub_1C70BBFD0()
{
  OUTLINED_FUNCTION_115();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C755BAB0;
  *(v4 + 32) = v1;
  *(v4 + 40) = v0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0xE000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 64) = MEMORY[0x1E69E7CC0];
  *v3 = v1;
  v3[1] = v0;
  v3[2] = 0;
  v3[3] = 0xE000000000000000;
  v3[4] = 0;
  v3[5] = 0xE000000000000000;
  v3[6] = v5;
  v3[7] = v4;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1C70BC05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v55 = a7;
  v56 = a4;
  v57 = a6;
  v53 = a5;
  v60 = a1;
  v61 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v54 = v8;
  v62 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217080);
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v58 = v47 - v17;
  v18 = type metadata accessor for StoryGenerationSession(0);
  v19 = OUTLINED_FUNCTION_18(v18);
  v51 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v47[4] = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s9GeneratorVMa_1();
  v24 = OUTLINED_FUNCTION_18(v23);
  v49 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v47[2] = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v47 - v29;
  v52 = v47 - v29;
  sub_1C754F2FC();
  v48 = swift_allocBox();
  sub_1C754F29C();
  v31 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
  sub_1C6FB5E28(v53, v64);
  OUTLINED_FUNCTION_9_24();
  v47[1] = v32;
  v50 = a2;
  sub_1C70BC90C();
  OUTLINED_FUNCTION_0_44();
  v47[3] = v33;
  sub_1C70BC90C();
  v47[0] = v13;
  (*(v13 + 16))(v58, v60, v63);
  v34 = v54;
  v35 = *(v54 + 16);
  v53 = v54 + 16;
  v55 = v35;
  v35(v59, a2, v61);
  v36 = (v27 + ((*(v49 + 80) + 88) & ~*(v49 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v22 + *(v13 + 80) + ((*(v51 + 80) + v36 + 304) & ~*(v51 + 80))) & ~*(v13 + 80);
  v38 = *(v34 + 80);
  v51 = (v15 + v38 + v37) & ~v38;
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v56;
  sub_1C6F699F8(v64, (v39 + 40));
  *(v39 + 10) = v48;
  sub_1C70BC964();
  v40 = &v39[v36];
  v41 = v57;
  memcpy(v40, v57, 0x130uLL);
  sub_1C70BC964();
  (*(v47[0] + 32))(&v39[v37], v58, v63);
  v58 = *(v34 + 32);
  v42 = v59;
  v43 = v61;
  (v58)(&v39[v51], v59, v61);
  sub_1C75504FC();

  sub_1C6FDE884(v41, v64);
  v44 = sub_1C6FEB80C(0, 0, v52, &unk_1C7568F98, v39);
  v55(v42, v50, v43);
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  (v58)(v45 + ((v38 + 24) & ~v38), v42, v43);
  sub_1C7550E9C();
}

uint64_t sub_1C70BC5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v12;
  *(v8 + 56) = v11;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  sub_1C754F2FC();
  *(v8 + 80) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C70BC634, 0, 0);
}

uint64_t sub_1C70BC634()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v6;
  *(v4 + 72) = v2;
  *(v4 + 80) = v3;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1C70BC75C;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C70BC75C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C70BC860()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 88);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 16));
  *(v0 + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217080);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C70BC90C()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C70BC964()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C70BC9BC()
{
  OUTLINED_FUNCTION_115_0();
  v1 = _s9GeneratorVMa_1();
  OUTLINED_FUNCTION_18(v1);
  v2 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217080);
  OUTLINED_FUNCTION_18(v3);
  sub_1C754FF1C();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_44();

  return sub_1C70BC5A0(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C70BCBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 696) = v18;
  *(v8 + 680) = v17;
  *(v8 + 672) = a8;
  *(v8 + 664) = a7;
  *(v8 + 656) = a6;
  *(v8 + 648) = a5;
  *(v8 + 640) = a4;
  *(v8 + 632) = a3;
  *(v8 + 624) = a2;
  v9 = sub_1C754FF1C();
  *(v8 + 704) = v9;
  v10 = *(v9 - 8);
  *(v8 + 712) = v10;
  *(v8 + 720) = *(v10 + 64);
  *(v8 + 728) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217080);
  *(v8 + 736) = v11;
  v12 = *(v11 - 8);
  *(v8 + 744) = v12;
  *(v8 + 752) = *(v12 + 64);
  *(v8 + 760) = swift_task_alloc();
  v13 = *(type metadata accessor for StoryGenerationSession(0) - 8);
  *(v8 + 768) = v13;
  *(v8 + 776) = *(v13 + 64);
  *(v8 + 784) = swift_task_alloc();
  v14 = *(_s9GeneratorVMa_1() - 8);
  *(v8 + 792) = v14;
  *(v8 + 800) = *(v14 + 64);
  *(v8 + 808) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  *(v8 + 816) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70BCE44, 0, 0);
}

uint64_t sub_1C70BCE44()
{
  v1 = *(v0 + 632);
  v2 = (v1 + 32);
  v27 = *(v0 + 800) + 7;
  v26 = *(v0 + 776) + 7;
  v25 = *(v0 + 792);
  v24 = *(v0 + 768);
  v22 = *(v0 + 720) + 7;
  v23 = *(v0 + 640);
  v39 = *(v0 + 744);
  v38 = *(v0 + 712);
  v3 = *(v1 + 16) + 1;
  do
  {
    v4 = v3 - 1;
    if (!v4)
    {
      break;
    }

    v36 = v2 + 88;
    v40 = *(v0 + 816);
    v43 = *(v0 + 760);
    v33 = *(v0 + 752);
    v41 = *(v0 + 728);
    v42 = *(v0 + 736);
    v44 = *(v0 + 704);
    v30 = *(v0 + 680);
    v31 = *(v0 + 688);
    __src = *(v0 + 664);
    v35 = *(v0 + 696);
    v5 = *(v0 + 640);
    v37 = v4;
    memcpy((v0 + 320), v2, 0x58uLL);
    v7 = *(v0 + 392);
    v6 = *(v0 + 400);
    __swift_project_boxed_opaque_existential_1(v5, *(v23 + 24));
    sub_1C70BF6E8(v0 + 320, v0 + 408);
    sub_1C75504FC();
    sub_1C755180C();

    v29 = v7;
    MEMORY[0x1CCA5CD70](v7, v6);
    sub_1C754F17C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
    v28 = swift_allocBox();
    v9 = v8;
    sub_1C755180C();

    *(v0 + 576) = v7;
    *(v0 + 584) = v6;
    *(v0 + 592) = 32;
    *(v0 + 600) = 0xE100000000000000;
    *(v0 + 608) = 0;
    *(v0 + 616) = 0xE000000000000000;
    sub_1C6FB5E8C();
    v10 = sub_1C755155C();
    MEMORY[0x1CCA5CD70](v10);

    sub_1C754F29C();

    v11 = sub_1C754F2FC();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    v12 = sub_1C7550D5C();
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v12);
    OUTLINED_FUNCTION_9_24();
    sub_1C70BC90C();
    OUTLINED_FUNCTION_0_44();
    sub_1C70BC90C();
    sub_1C6FB5E28(v0 + 496, v0 + 536);
    (*(v39 + 16))(v43, v30, v42);
    (*(v38 + 16))(v41, v31, v44);
    v13 = (v27 + ((*(v25 + 80) + 40) & ~*(v25 + 80))) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v13 + 95) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v26 + ((*(v24 + 80) + v14 + 304) & ~*(v24 + 80))) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
    v17 = (*(v39 + 80) + v16 + 16) & ~*(v39 + 80);
    v32 = (v33 + *(v38 + 80) + v17) & ~*(v38 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v28;
    sub_1C70BC964();
    memcpy(&v18[v13], (v0 + 320), 0x58uLL);
    memcpy(&v18[v14], __src, 0x130uLL);
    sub_1C70BC964();
    sub_1C6F699F8((v0 + 536), &v18[v15]);
    v19 = &v18[v16];
    *v19 = v29;
    *(v19 + 1) = v6;
    (*(v39 + 32))(&v18[v17], v43, v42);
    (*(v38 + 32))(&v18[v32], v41, v44);
    *&v18[(v22 + v32) & 0xFFFFFFFFFFFFFFF8] = v35;

    sub_1C6FDE884(__src, v0 + 16);

    LOBYTE(v15) = sub_1C70BEE24(v40, &unk_1C7568FD8, v18);
    sub_1C6FD7FC8(v40, &qword_1EC2158F8);
    __swift_destroy_boxed_opaque_existential_1(v0 + 496);

    v2 = v36;
    v3 = v37;
  }

  while ((v15 & 1) != 0);

  OUTLINED_FUNCTION_43();

  return v20();
}

uint64_t sub_1C70BD400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 824) = v17;
  *(v8 + 816) = v16;
  *(v8 + 784) = v14;
  *(v8 + 800) = v15;
  *(v8 + 776) = a8;
  *(v8 + 768) = a7;
  *(v8 + 760) = a6;
  *(v8 + 752) = a5;
  v9 = sub_1C7550CBC();
  *(v8 + 832) = v9;
  *(v8 + 840) = *(v9 - 8);
  *(v8 + 848) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2170A0);
  *(v8 + 856) = v10;
  *(v8 + 864) = *(v10 - 8);
  *(v8 + 872) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  *(v8 + 880) = swift_task_alloc();
  v11 = sub_1C754F2FC();
  *(v8 + 888) = v11;
  *(v8 + 896) = *(v11 - 8);
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C70BD5FC, 0, 0);
}

uint64_t sub_1C70BD5FC()
{
  OUTLINED_FUNCTION_115_0();
  v1 = v0[115];
  v2 = v0[111];
  v3 = v0[110];
  swift_beginAccess();
  sub_1C705544C(v1, v3);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = v0[110];
    if (__swift_getEnumTagSinglePayload(v4, 1, v0[111]) != 1)
    {
      sub_1C6FD7FC8(v4, &unk_1EC218C90);
    }

    return sub_1C7551AAC();
  }

  else
  {
    v6 = v0[96];
    v7 = v0[95];
    v8 = *(v0[112] + 32);
    (v8)(v0[114], v0[110], v0[111]);
    memcpy(v0 + 40, v7, 0x58uLL);
    memcpy(v0 + 2, v6, 0x130uLL);
    v9 = OUTLINED_FUNCTION_90();
    v8(v9);
    v10 = swift_task_alloc();
    v0[116] = v10;
    *v10 = v0;
    v10[1] = sub_1C70BD814;
    v11 = v0[113];
    v12 = v0[98];
    v13 = v0[97];

    return sub_1C70BE05C((v0 + 51), (v0 + 40), v0 + 2, v13, v12, v11);
  }
}

uint64_t sub_1C70BD814()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 936) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70BD90C()
{
  OUTLINED_FUNCTION_115_0();
  v33 = v0;
  sub_1C70BFA5C(v0 + 408, v0 + 464);
  v1 = *(v0 + 776);
  if (*(v0 + 512))
  {
    v2 = *(v0 + 504);
    sub_1C6F699F8((v0 + 464), v0 + 520);
    if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      v3 = *(v0 + 800);
      v4 = *(v0 + 792);
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      v31 = 0xD000000000000022;
      v32 = v5;
      MEMORY[0x1CCA5CD70](v4, v3);
      sub_1C7161CDC(0xD000000000000022, v32);
    }

    sub_1C6FB5E28(v0 + 520, v0 + 560);
    v6 = v2;
    v7 = sub_1C754FEEC();
    v8 = sub_1C75511BC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v9 = 136643075;
      sub_1C6FB5E28(v0 + 560, v0 + 600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2170A8);
      v12 = sub_1C75506EC();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(v0 + 560);
      v15 = sub_1C6F765A4(v12, v14, &v31);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2112;
      v16 = v2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v17;
      *v10 = v17;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "Uncurated story %{sensitive}s failed validation with error %@", v9, 0x16u);
      sub_1C6FD7FC8(v10, &qword_1EC215190);
      OUTLINED_FUNCTION_109();
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 560);
    }

    v28 = v0 + 520;
  }

  else
  {
    sub_1C6F699F8((v0 + 464), v0 + 640);
    if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_6_32();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v18, v19, v20, v21, v22, v23, v24, v25, v31, v32);
    }

    sub_1C6FB5E28(v0 + 640, v0 + 680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217080);
    sub_1C7550EAC();
    v26 = OUTLINED_FUNCTION_57_0();
    v27(v26);
    v28 = v0 + 640;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_1C70BFA94(v0 + 408);
  OUTLINED_FUNCTION_26_16();

  OUTLINED_FUNCTION_43();

  return v29();
}

uint64_t sub_1C70BDC84()
{
  OUTLINED_FUNCTION_115_0();
  v48 = v0;
  v1 = *(v0 + 936);
  *(v0 + 744) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 776);

    if (*(v3 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_6_32();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v4, v5, v6, v7, v8, v9, v10, v11, v46, v47);
    }

    sub_1C75504FC();
    v12 = sub_1C754FEEC();
    v13 = sub_1C755119C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 800);
      v15 = *(v0 + 792);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v46 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1C6F765A4(v15, v14, &v46);
      _os_log_impl(&dword_1C6F5C000, v12, v13, "Cancelled UncuratedStory %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    (*(*(v0 + 840) + 8))(*(v0 + 848), *(v0 + 832));
    v18 = *(v0 + 744);
  }

  else
  {
    v19 = *(v0 + 776);

    if (*(v19 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_6_32();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v20, v21, v22, v23, v24, v25, v26, v27, v46, v47);
    }

    v28 = *(v0 + 936);
    sub_1C75504FC();
    v29 = v28;
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 936);
      v33 = *(v0 + 800);
      v34 = *(v0 + 792);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = v37;
      *v35 = 136315394;
      *(v35 + 4) = sub_1C6F765A4(v34, v33, &v46);
      *(v35 + 12) = 2112;
      v38 = v32;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v39;
      *v36 = v39;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Failed UncuratedStory %s: %@", v35, 0x16u);
      sub_1C6FD7FC8(v36, &qword_1EC215190);
      OUTLINED_FUNCTION_109();
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v40 = *(v0 + 824);
    os_unfair_lock_lock((v40 + 16));
    if (!*(v40 + 24))
    {
      v41 = *(v0 + 936);
      *(v40 + 24) = v41;
      v42 = v41;
    }

    v43 = *(v0 + 936);
    os_unfair_lock_unlock((*(v0 + 824) + 16));
    v18 = v43;
  }

  OUTLINED_FUNCTION_26_16();

  OUTLINED_FUNCTION_43();

  return v44();
}

uint64_t sub_1C70BE05C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 3688) = v6;
  *(v7 + 3680) = a6;
  *(v7 + 3672) = a5;
  *(v7 + 3664) = a4;
  *(v7 + 3656) = a1;
  *(v7 + 3696) = _s9GeneratorVMa_0();
  *(v7 + 3704) = swift_task_alloc();
  *(v7 + 3712) = _s9GeneratorVMa();
  *(v7 + 3720) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v7 + 3728) = v10;
  *(v7 + 3736) = *(v10 - 8);
  *(v7 + 3744) = swift_task_alloc();
  memcpy((v7 + 3504), a2, 0x41uLL);
  *(v7 + 409) = *(a2 + 65);
  *(v7 + 410) = *(a2 + 66);
  *(v7 + 424) = *(a2 + 80);
  memcpy((v7 + 2416), a3, 0x130uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C70BE1D8, 0, 0);
}

uint64_t sub_1C70BE1D8()
{
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 409);
  v2 = *(v0 + 3672);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1CC();
  if ((v1 >> 5) - 2 < 3)
  {
    v3 = *(v0 + 409);
    v4 = *(v0 + 3744);
    v5 = *(v0 + 3736);
    v6 = *(v0 + 3728);
    v7 = *(v0 + 3680);
    v8 = *(v0 + 3672);
    sub_1C70BFAC4();
    swift_allocError();
    *v9 = v3;
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v8, v2[3]);
    sub_1C754F1AC();
    (*(v5 + 8))(v4, v6);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v10 + 8))(v7);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X1, X16 }
  }

  v13 = (v0 + 410);
  if (v1 >> 5)
  {
    v36 = *(v0 + 3704);
    v37 = *(v0 + 3696);
    v38 = *(v0 + 3688);
    v39 = _s9GeneratorVMa_1();
    v40 = *(v39 + 20);
    *(v0 + 1228) = v40;
    v41 = *(v38 + v40);
    OUTLINED_FUNCTION_0_44();
    sub_1C70BC90C();
    v42 = *(v38 + *(v39 + 24));
    v43 = *(v37 + 32);
    if (qword_1EC213E18 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 409);
    v45 = *(v0 + 3704);
    v46 = *(v0 + 3696);
    v47 = sub_1C754FF1C();
    __swift_project_value_buffer(v47, qword_1EC217E40);
    OUTLINED_FUNCTION_30_13();
    (*(v48 + 16))(v36 + v43);
    *v45 = v41;
    *(v45 + *(v46 + 24)) = v42;
    sub_1C6FB5E28(v42 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting, v45 + *(v46 + 28));

    memcpy((v0 + 3328), (v0 + 3504), 0x41uLL);
    *(v0 + 3393) = v44;
    *(v0 + 3394) = *v13;
    *(v0 + 3408) = *(v0 + 424);
    memcpy((v0 + 2720), (v0 + 2416), 0x130uLL);
    v49 = swift_task_alloc();
    *(v0 + 3768) = v49;
    *v49 = v0;
    v49[1] = sub_1C70BEA6C;
    OUTLINED_FUNCTION_44();

    return sub_1C7142E1C(v50, v51, v52, v53, v54);
  }

  else
  {
    v14 = *(v0 + 3720);
    v15 = *(v0 + 3712);
    v16 = *(v0 + 3688);
    v17 = _s9GeneratorVMa_1();
    v18 = *(v17 + 20);
    *(v0 + 828) = v18;
    v19 = *(v16 + v18);
    OUTLINED_FUNCTION_0_44();
    sub_1C70BC90C();
    v20 = *(v16 + *(v17 + 24));
    v21 = *(v15 + 28);
    v22 = qword_1EC213C80;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 409);
    v24 = *(v0 + 3720);
    v25 = *(v0 + 3712);
    v26 = sub_1C754FF1C();
    __swift_project_value_buffer(v26, qword_1EC215718);
    OUTLINED_FUNCTION_30_13();
    (*(v27 + 16))(v14 + v21);
    *v24 = v19;
    *(v24 + *(v25 + 24)) = v20;
    memcpy((v0 + 3416), (v0 + 3504), 0x41uLL);
    *(v0 + 3481) = v23;
    *(v0 + 3482) = *v13;
    *(v0 + 3496) = *(v0 + 424);
    memcpy((v0 + 3024), (v0 + 2416), 0x130uLL);
    v28 = swift_task_alloc();
    *(v0 + 3752) = v28;
    *v28 = v0;
    v28[1] = sub_1C70BE6B0;
    OUTLINED_FUNCTION_44();

    return sub_1C6FE3B4C(v29, v30, v31, v32, v33);
  }
}

uint64_t sub_1C70BE6B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3760) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70BE7A8()
{
  OUTLINED_FUNCTION_31_11();
  if (v1)
  {
    sub_1C6FE53EC(v0 + 2024, *(v0 + 3664), (v0 + 832));
    sub_1C6FD7F70();
    if (*(v0 + 1624))
    {
      v2 = *(v0 + 3656);
      v3 = *(v0 + 1232);
      FreeformStoryGeneration.Montage.Uncurated.Story.cancel()();
      *(v2 + 24) = &type metadata for FreeformStoryGeneration.Montage.Uncurated.Story;
      *(v2 + 32) = &protocol witness table for FreeformStoryGeneration.Montage.Uncurated.Story;
      OUTLINED_FUNCTION_14_21();
      v4 = swift_allocObject();
      *v2 = v4;
      memcpy((v4 + 16), (v0 + 2024), 0x188uLL);
      sub_1C6FD7FC8(v0 + 832, &qword_1EC2170C0);
      *(v2 + 40) = v3;
      *(v2 + 48) = 1;
      goto LABEL_7;
    }

    *(v0 + 3640) = &type metadata for FreeformStoryGeneration.Montage.Uncurated.Story;
    *(v0 + 3648) = &protocol witness table for FreeformStoryGeneration.Montage.Uncurated.Story;
    OUTLINED_FUNCTION_14_21();
    v6 = swift_allocObject();
    *(v0 + 3616) = v6;
    memcpy((v6 + 16), (v0 + 1232), 0x188uLL);
    sub_1C6FD7FC8(v0 + 832, &qword_1EC2170C0);
    sub_1C6FE3B1C(v0 + 2024);
  }

  else
  {
    *(v0 + 3640) = &type metadata for FreeformStoryGeneration.Montage.Uncurated.Story;
    *(v0 + 3648) = &protocol witness table for FreeformStoryGeneration.Montage.Uncurated.Story;
    OUTLINED_FUNCTION_14_21();
    v5 = swift_allocObject();
    *(v0 + 3616) = v5;
    memcpy((v5 + 16), (v0 + 2024), 0x188uLL);
  }

  v7 = *(v0 + 3656);
  sub_1C6F699F8((v0 + 3616), v7);
  *(v7 + 48) = 0;
LABEL_7:
  OUTLINED_FUNCTION_10_26(*(v0 + 3720));
  OUTLINED_FUNCTION_13_22();
  v8 = OUTLINED_FUNCTION_57_0();
  v9(v8);

  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t sub_1C70BE9B4()
{
  OUTLINED_FUNCTION_10_26(*(v0 + 3720));
  OUTLINED_FUNCTION_25_12();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C70BEA6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3776) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70BEB64()
{
  OUTLINED_FUNCTION_31_11();
  if (v1)
  {
    sub_1C70BFB18(v0 + 1632, v0 + 16);
    *(v0 + 408) = 0;
    sub_1C6FD7F70();
    if (*(v0 + 824))
    {
      v2 = *(v0 + 3656);
      v3 = *(v0 + 432);
      FreeformStoryGeneration.Chronological.Uncurated.Story.cancel()();
      *(v2 + 24) = &type metadata for FreeformStoryGeneration.Chronological.Uncurated.Story;
      *(v2 + 32) = &protocol witness table for FreeformStoryGeneration.Chronological.Uncurated.Story;
      OUTLINED_FUNCTION_14_21();
      v4 = swift_allocObject();
      *v2 = v4;
      memcpy((v4 + 16), (v0 + 1632), 0x188uLL);
      sub_1C6FD7FC8(v0 + 16, &qword_1EC2170B8);
      *(v2 + 40) = v3;
      *(v2 + 48) = 1;
      goto LABEL_7;
    }

    *(v0 + 3600) = &type metadata for FreeformStoryGeneration.Chronological.Uncurated.Story;
    *(v0 + 3608) = &protocol witness table for FreeformStoryGeneration.Chronological.Uncurated.Story;
    OUTLINED_FUNCTION_14_21();
    v6 = swift_allocObject();
    *(v0 + 3576) = v6;
    memcpy((v6 + 16), (v0 + 432), 0x188uLL);
    sub_1C6FD7FC8(v0 + 16, &qword_1EC2170B8);
    sub_1C70BFB74(v0 + 1632);
  }

  else
  {
    *(v0 + 3600) = &type metadata for FreeformStoryGeneration.Chronological.Uncurated.Story;
    *(v0 + 3608) = &protocol witness table for FreeformStoryGeneration.Chronological.Uncurated.Story;
    OUTLINED_FUNCTION_14_21();
    v5 = swift_allocObject();
    *(v0 + 3576) = v5;
    memcpy((v5 + 16), (v0 + 1632), 0x188uLL);
  }

  v7 = *(v0 + 3656);
  sub_1C6F699F8((v0 + 3576), v7);
  *(v7 + 48) = 0;
LABEL_7:
  OUTLINED_FUNCTION_12_23(*(v0 + 3704));
  OUTLINED_FUNCTION_13_22();
  v8 = OUTLINED_FUNCTION_57_0();
  v9(v8);

  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t sub_1C70BED6C()
{
  OUTLINED_FUNCTION_12_23(*(v0 + 3704));
  OUTLINED_FUNCTION_25_12();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C70BEE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = *v3;
  v10 = swift_taskGroup_addPending();
  if (v10)
  {
    sub_1C6FD7F70();
    v11 = sub_1C7550D5C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
    {
      sub_1C6FD7FC8(v8, &qword_1EC2158F8);
    }

    else
    {
      sub_1C7550D4C();
      (*(*(v11 - 8) + 8))(v8, v11);
    }

    if (*(a3 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1C7550C8C();
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = (v14 | v12);
    if (v14 | v12)
    {
      v19[0] = 0;
      v19[1] = 0;
      v16 = v19;
      v19[2] = v12;
      v19[3] = v14;
    }

    v18[1] = 1;
    v18[2] = v16;
    v18[3] = v9;
    swift_task_create();
  }

  return v10 & 1;
}

void sub_1C70BF040(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217088);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = *(v4 + 16);
  v13(&v24 - v11, a1, v3, v10);
  v14 = (*(v4 + 88))(v12, v3);
  v15 = *MEMORY[0x1E69E8760];
  v26 = *(v4 + 8);
  v26(v12, v3);
  if (v14 == v15)
  {
    sub_1C7550E1C();
  }

  (v13)(v8, a1, v3);
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    (v13)(v25, v8, v3);
    v20 = sub_1C75506EC();
    v22 = v21;
    v26(v8, v3);
    v23 = sub_1C6F765A4(v20, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "UncuratedStories stream terminated in state %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  else
  {

    v26(v8, v3);
  }
}

void sub_1C70BF32C(uint64_t a1)
{
  sub_1C754FF1C();
  v3 = *(v1 + 16);

  sub_1C70BF040(a1, v3);
}

uint64_t sub_1C70BF3A0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_2_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_23(v1);

  return v4(v3);
}

uint64_t sub_1C70BF44C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_2_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_23(v1);

  return v4(v3);
}

uint64_t sub_1C70BF4F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C70BFEBC;

  return v6(a1);
}

uint64_t sub_1C70BF5F0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_5_2(v11);
  *v12 = v13;
  v12[1] = sub_1C6F739D4;

  return sub_1C70BCBE4(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C70BF720()
{
  v0 = _s9GeneratorVMa_1();
  OUTLINED_FUNCTION_18(v0);
  v1 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217080);
  OUTLINED_FUNCTION_18(v2);
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_18(v3);
  v4 = swift_task_alloc();
  *(v14 + 16) = v4;
  *v4 = v14;
  v4[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_27_16();

  return sub_1C70BD400(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C70BF9B0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_2(v4);
  *v5 = v6;
  v5[1] = sub_1C6F738F4;

  return sub_1C70BF4F8(v2, v3);
}

unint64_t sub_1C70BFAC4()
{
  result = qword_1EC2170B0;
  if (!qword_1EC2170B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2170B0);
  }

  return result;
}

uint64_t sub_1C70BFBC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_22Tm()
{

  if (*(v0 + 160))
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 344);

  OUTLINED_FUNCTION_14_21();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C70BFD4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C70BFD88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C70BFDD8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1C70BFE18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C70BFE58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C70BFEC0()
{
  OUTLINED_FUNCTION_72_4();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217140);
    v2 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_2_32();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  OUTLINED_FUNCTION_76_5();
  sub_1C75504FC();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_66_10();
    v12 = *v10;
    v11 = v10[1];
    v15 = (v14 + v13);
    v16 = *v15;
    v17 = v15[1];
    v32 = MEMORY[0x1E69E6158];
    v33 = MEMORY[0x1E69C6560];
    *&v31 = v16;
    *(&v31 + 1) = v17;
    sub_1C6F699F8(&v31, v35);
    sub_1C6F699F8(v35, v36);
    sub_1C6F699F8(v36, &v34);
    sub_1C75504FC();
    sub_1C75504FC();
    v18 = sub_1C6F78124(v12, v11);
    v19 = v18;
    if (v20)
    {
      v21 = (v2[6] + 16 * v18);
      *v21 = v12;
      v21[1] = v11;

      v22 = v2[7] + 40 * v19;
      __swift_destroy_boxed_opaque_existential_1(v22);
      sub_1C6F699F8(&v34, v22);
      v8 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_45_10();
      if (v23)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_21_18(v24, v29, v30);
      v26 = (v25 + 16 * v19);
      *v26 = v12;
      v26[1] = v11;
      sub_1C6F699F8(&v34, v2[7] + 40 * v19);
      OUTLINED_FUNCTION_43_1();
      if (v28)
      {
        goto LABEL_18;
      }

      v2[2] = v27;
      v8 = v9;
    }
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

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C70C00AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_103_1();
  a33 = v37;
  a34 = v38;
  OUTLINED_FUNCTION_72_4();
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217168);
    v39 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_2_32();
  v42 = v41 & v40;
  OUTLINED_FUNCTION_72_5();

  sub_1C75504FC();
  v43 = 0;
  while (v42)
  {
    v44 = v43;
LABEL_10:
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_51_7();
    v47 = *v45;
    v46 = v45[1];
    sub_1C75504FC();
    swift_dynamicCast();
    sub_1C6F9ED18(&a13, &a17);
    sub_1C6F9ED18(&a17, &a20);
    sub_1C6F9ED18(&a20, &a16);
    v48 = sub_1C6F78124(v47, v46);
    if (v49)
    {
      OUTLINED_FUNCTION_57_7();
      *v50 = v47;
      v50[1] = v46;

      v51 = (*(v39 + 56) + 32 * v48);
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_1C6F9ED18(&a16, v51);
      v43 = v44;
    }

    else
    {
      OUTLINED_FUNCTION_45_10();
      if (v52)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_36_10();
      *(v39 + 64 + v53) |= v54;
      OUTLINED_FUNCTION_57_7();
      *v55 = v47;
      v55[1] = v46;
      sub_1C6F9ED18(&a16, (*(v39 + 56) + 32 * v48));
      OUTLINED_FUNCTION_43_1();
      if (v57)
      {
        goto LABEL_18;
      }

      *(v39 + 16) = v56;
      v43 = v44;
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v36)
    {

      OUTLINED_FUNCTION_102_0();
      return;
    }

    v42 = *(v34 + 64 + 8 * v44);
    ++v43;
    if (v42)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C70C0278()
{
  OUTLINED_FUNCTION_72_4();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217170);
    v3 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_2_32();
  v6 = v5 & v4;
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_76_5();
  sub_1C75504FC();
  v7 = 0;
  while (v6)
  {
    v8 = v7;
LABEL_10:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_51_7();
    v11 = *v9;
    v10 = v9[1];
    v14 = *(v13 + 8 * v12);
    sub_1C75504FC();
    v15 = v14;
    v16 = sub_1C6F78124(v11, v10);
    if (v17)
    {
      OUTLINED_FUNCTION_57_7();
      *v18 = v11;
      v18[1] = v10;

      v19 = *(v3 + 56);
      v20 = *(v19 + 8 * v16);
      *(v19 + 8 * v16) = v15;

      v7 = v8;
    }

    else
    {
      OUTLINED_FUNCTION_45_10();
      if (v21)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_36_10();
      OUTLINED_FUNCTION_21_18(v22, v27, v28);
      v24 = (v23 + 16 * v16);
      *v24 = v11;
      v24[1] = v10;
      *(*(v3 + 56) + 8 * v16) = v15;
      OUTLINED_FUNCTION_43_1();
      if (v26)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v25;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v2)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v8);
    ++v7;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C70C03F8()
{
  OUTLINED_FUNCTION_72_4();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217178);
    v4 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_82_5();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_72_5();
  v8 = v4 + 64;

  sub_1C75504FC();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    OUTLINED_FUNCTION_51_7();
    v13 = *v11;
    v12 = v11[1];
    OUTLINED_FUNCTION_74_4(v14);
    *&v36 = v13;
    *(&v36 + 1) = v12;
    v34[2] = v36;
    v35[0] = v37;
    v35[1] = v38;
    v34[0] = v36;
    sub_1C75504FC();
    swift_dynamicCast();
    sub_1C6F9ED18(v35, v29);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1C6F9ED18(v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1C6F9ED18(v33, v34);
    sub_1C755174C();
    OUTLINED_FUNCTION_101_4();
    if (((v2 << v16) & ~*(v8 + 8 * v15)) == 0)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v20)
        {
          if (v18)
          {
            goto LABEL_23;
          }
        }

        if (v17 == v19)
        {
          v17 = 0;
        }

        if (*(v8 + 8 * v17) != -1)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_98_0();
    *(v8 + v21) |= v22;
    v24 = *(v4 + 48) + 40 * v23;
    *v24 = v26;
    *(v24 + 16) = v27;
    *(v24 + 32) = v28;
    OUTLINED_FUNCTION_94_5();
    sub_1C6F9ED18(v34, v25);
    OUTLINED_FUNCTION_37_15();
  }

  while (v7);
LABEL_5:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v3)
    {

      return;
    }

    v7 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C70C0638(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217190);
    v1 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_91_5();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v7 = v1 + 64;

  sub_1C75504FC();
  v8 = 0;
  if (!v4)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v10 = __clz(__rbit64(v4)) | (v8 << 6);
    v11 = *(a1[6] + 8 * v10);
    v27 = *(a1[7] + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_1C6F9ED18((v28 + 8), v26);
    sub_1C6F9ED18(v26, v28);
    sub_1C755068C();
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();

    OUTLINED_FUNCTION_73_6();
    if (((v15 << v14) & ~*(v7 + 8 * v13)) == 0)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v19)
        {
          if (v17)
          {
            goto LABEL_23;
          }
        }

        if (v16 == v18)
        {
          v16 = 0;
        }

        if (*(v7 + 8 * v16) != -1)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_89_6();
    *(v7 + v20) |= v21;
    v4 &= v22;
    *(*(v1 + 48) + 8 * v23) = v12;
    OUTLINED_FUNCTION_94_5();
    sub_1C6F9ED18(v28, v24);
    OUTLINED_FUNCTION_37_15();
  }

  while (v4);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v4 = a1[v9 + 8];
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C70C085C(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217188);
    v3 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_68_7();
  v4 = v3 + 64;

  sub_1C75504FC();
  v5 = 0;
  if (!v1)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v7 = (v5 << 9) | (8 * __clz(__rbit64(v1)));
    v8 = *(a1[6] + v7);
    v26 = *(a1[7] + v7);
    v9 = v26;
    type metadata accessor for CGColorSpace(0);
    v10 = v8;
    v11 = v9;
    swift_dynamicCast();
    sub_1C6F9ED18((v27 + 8), v25);
    sub_1C6F9ED18(v25, v27);
    sub_1C755068C();
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();

    OUTLINED_FUNCTION_73_6();
    if (((v14 << v13) & ~*(v4 + 8 * v12)) == 0)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v18)
        {
          if (v16)
          {
            goto LABEL_23;
          }
        }

        if (v15 == v17)
        {
          v15 = 0;
        }

        if (*(v4 + 8 * v15) != -1)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_89_6();
    *(v4 + v19) |= v20;
    v1 &= v21;
    *(*(v3 + 48) + 8 * v22) = v10;
    OUTLINED_FUNCTION_94_5();
    sub_1C6F9ED18(v27, v23);
    OUTLINED_FUNCTION_37_15();
  }

  while (v1);
LABEL_5:
  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v6 >= v2)
    {

      return;
    }

    v1 = a1[v6 + 8];
    ++v5;
    if (v1)
    {
      v5 = v6;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C70C0A88()
{
  OUTLINED_FUNCTION_72_4();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217178);
    v4 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_5_27();
  OUTLINED_FUNCTION_82_5();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_72_5();
  v8 = v4 + 64;

  sub_1C75504FC();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    OUTLINED_FUNCTION_51_7();
    v13 = *v11;
    v12 = v11[1];
    v16 = (v15 + 48 * v14);
    v17 = v16[1];
    v40 = *v16;
    v41 = v17;
    v42 = v16[2];
    v30 = v13;
    v31 = v12;
    sub_1C75504FC();
    swift_dynamicCast();
    v29[0] = v40;
    v29[1] = v41;
    v29[2] = v42;
    type metadata accessor for CMTimeRange(0);
    swift_dynamicCast();
    v36 = v32;
    v37 = v33;
    v38 = v34;
    sub_1C6F9ED18(&v35, v39);
    v32 = v36;
    v33 = v37;
    v34 = v38;
    sub_1C6F9ED18(v39, v29);
    sub_1C755174C();
    OUTLINED_FUNCTION_101_4();
    if (((v2 << v19) & ~*(v8 + 8 * v18)) == 0)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v23)
        {
          if (v21)
          {
            goto LABEL_23;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        if (*(v8 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_19;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    v7 &= v7 - 1;
    OUTLINED_FUNCTION_98_0();
    *(v8 + v24) |= v25;
    v27 = *(v4 + 48) + 40 * v26;
    *v27 = v32;
    *(v27 + 16) = v33;
    *(v27 + 32) = v34;
    OUTLINED_FUNCTION_94_5();
    sub_1C6F9ED18(v29, v28);
    OUTLINED_FUNCTION_37_15();
  }

  while (v7);
LABEL_5:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v3)
    {

      return;
    }

    v7 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C70C0CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_103_1();
  a33 = v37;
  a34 = v38;
  OUTLINED_FUNCTION_72_4();
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217168);
    v39 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_2_32();
  v42 = v41 & v40;
  OUTLINED_FUNCTION_72_5();

  sub_1C75504FC();
  v43 = 0;
  while (v42)
  {
    v44 = v43;
LABEL_10:
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_66_10();
    v47 = *v45;
    v46 = v45[1];
    sub_1C75504FC();
    sub_1C75504FC();
    swift_dynamicCast();
    sub_1C6F9ED18(&a13, &a17);
    sub_1C6F9ED18(&a17, &a20);
    sub_1C6F9ED18(&a20, &a16);
    v48 = sub_1C6F78124(v47, v46);
    if (v49)
    {
      OUTLINED_FUNCTION_57_7();
      *v50 = v47;
      v50[1] = v46;

      v51 = (*(v39 + 56) + 32 * v48);
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_1C6F9ED18(&a16, v51);
      v43 = v44;
    }

    else
    {
      OUTLINED_FUNCTION_45_10();
      if (v52)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_36_10();
      *(v39 + 64 + v53) |= v54;
      OUTLINED_FUNCTION_57_7();
      *v55 = v47;
      v55[1] = v46;
      sub_1C6F9ED18(&a16, (*(v39 + 56) + 32 * v48));
      OUTLINED_FUNCTION_43_1();
      if (v57)
      {
        goto LABEL_18;
      }

      *(v39 + 16) = v56;
      v43 = v44;
    }
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v36)
    {

      OUTLINED_FUNCTION_102_0();
      return;
    }

    v42 = *(v34 + 64 + 8 * v44);
    ++v43;
    if (v42)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C70C0EC0()
{
  OUTLINED_FUNCTION_72_4();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217168);
    v4 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_2_32();
  OUTLINED_FUNCTION_68_7();

  sub_1C75504FC();
  v5 = 0;
  while (v2)
  {
    v6 = v5;
LABEL_10:
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_51_7();
    v8 = *v7;
    v9 = v7[1];
    OUTLINED_FUNCTION_74_4(v10);
    *&v28 = v8;
    *(&v28 + 1) = v9;
    v26[2] = v28;
    v27[0] = v29;
    v27[1] = v30;
    v11 = v28;
    sub_1C6F9ED18(v27, &v22);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    swift_dynamicCast();
    sub_1C6F9ED18(&v23, v25);
    sub_1C6F9ED18(v25, v26);
    sub_1C6F9ED18(v26, &v24);
    v12 = sub_1C6F78124(v11, *(&v11 + 1));
    if (v13)
    {
      OUTLINED_FUNCTION_90_7();
      *v14 = v11;

      v15 = (*(v4 + 56) + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v15);
      sub_1C6F9ED18(&v24, v15);
      v5 = v6;
    }

    else
    {
      OUTLINED_FUNCTION_45_10();
      if (v16)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_44_10();
      *(v4 + 64 + v18) |= v17 << v12;
      OUTLINED_FUNCTION_90_7();
      *v19 = v11;
      sub_1C6F9ED18(&v24, (*(v4 + 56) + 32 * v12));
      OUTLINED_FUNCTION_43_1();
      if (v21)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v20;
      v5 = v6;
    }
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v6 >= v3)
    {

      return;
    }

    v2 = *(v0 + 64 + 8 * v6);
    ++v5;
    if (v2)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C70C10E0()
{
  OUTLINED_FUNCTION_72_4();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217160);
    v4 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_2_32();
  OUTLINED_FUNCTION_68_7();

  sub_1C75504FC();
  v5 = 0;
  while (v2)
  {
    v6 = v5;
LABEL_10:
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_51_7();
    v8 = *v7;
    v9 = v7[1];
    OUTLINED_FUNCTION_74_4(v10);
    *&v28 = v8;
    *(&v28 + 1) = v9;
    v26[2] = v28;
    v27[0] = v29;
    v27[1] = v30;
    v11 = v28;
    sub_1C6F9ED18(v27, &v22);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    swift_dynamicCast();
    sub_1C6F9ED18(&v23, v25);
    sub_1C6F9ED18(v25, v26);
    sub_1C6F9ED18(v26, &v24);
    v12 = sub_1C6F78124(v11, *(&v11 + 1));
    if (v13)
    {
      OUTLINED_FUNCTION_90_7();
      *v14 = v11;

      v15 = (*(v4 + 56) + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v15);
      sub_1C6F9ED18(&v24, v15);
      v5 = v6;
    }

    else
    {
      OUTLINED_FUNCTION_45_10();
      if (v16)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_44_10();
      *(v4 + 64 + v18) |= v17 << v12;
      OUTLINED_FUNCTION_90_7();
      *v19 = v11;
      sub_1C6F9ED18(&v24, (*(v4 + 56) + 32 * v12));
      OUTLINED_FUNCTION_43_1();
      if (v21)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v20;
      v5 = v6;
    }
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v6 >= v3)
    {

      return;
    }

    v2 = *(v0 + 64 + 8 * v6);
    ++v5;
    if (v2)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C70C1300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_103_1();
  a33 = v36;
  a34 = v37;
  OUTLINED_FUNCTION_72_4();
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217160);
    v38 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_2_32();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;

  sub_1C75504FC();
  v44 = 0;
  while (v41)
  {
    v45 = v44;
LABEL_10:
    OUTLINED_FUNCTION_99_6();
    OUTLINED_FUNCTION_66_10();
    v48 = *v46;
    v47 = v46[1];
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    swift_dynamicCast();
    sub_1C6F9ED18(&a13, &a17);
    sub_1C6F9ED18(&a17, &a20);
    sub_1C6F9ED18(&a20, &a16);
    v49 = sub_1C6F78124(v48, v47);
    v50 = v49;
    if (v51)
    {
      v52 = (v38[6] + 16 * v49);
      *v52 = v48;
      v52[1] = v47;

      v53 = (v38[7] + 32 * v50);
      __swift_destroy_boxed_opaque_existential_1(v53);
      sub_1C6F9ED18(&a16, v53);
      v44 = v45;
    }

    else
    {
      OUTLINED_FUNCTION_45_10();
      if (v54)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_44_10();
      *(v38 + v56 + 64) |= v55 << v50;
      v57 = (v38[6] + 16 * v50);
      *v57 = v48;
      v57[1] = v47;
      sub_1C6F9ED18(&a16, (v38[7] + 32 * v50));
      OUTLINED_FUNCTION_43_1();
      if (v59)
      {
        goto LABEL_18;
      }

      v38[2] = v58;
      v44 = v45;
    }
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v45 >= v43)
    {

      OUTLINED_FUNCTION_102_0();
      return;
    }

    v41 = *(v34 + 64 + 8 * v45);
    ++v44;
    if (v41)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1C70C1534(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_72_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217148);
    v4 = OUTLINED_FUNCTION_18_14();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_2_32();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  OUTLINED_FUNCTION_76_5();
  sub_1C75504FC();
  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    OUTLINED_FUNCTION_99_6();
    OUTLINED_FUNCTION_51_7();
    v14 = *v12;
    v13 = v12[1];
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750);
    swift_dynamicCast();
    v15 = OUTLINED_FUNCTION_66_4();
    v17 = sub_1C6F78124(v15, v16);
    v18 = v17;
    if (v19)
    {
      v20 = (v4[6] + 16 * v17);
      *v20 = v14;
      v20[1] = v13;

      *(v4[7] + 8 * v18) = v30;

      v10 = v11;
    }

    else
    {
      OUTLINED_FUNCTION_45_10();
      if (v21)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_21_18(v22, v27, v28);
      v24 = (v23 + 16 * v18);
      *v24 = v14;
      v24[1] = v13;
      *(v4[7] + 8 * v18) = v30;
      OUTLINED_FUNCTION_43_1();
      if (v26)
      {
        goto LABEL_18;
      }

      v4[2] = v25;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = *(v2 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t Spatial3DResourceGenerator.GenerationMode.rawValue.getter()
{
  result = 0x7055656E6FLL;
  switch(*v0)
  {
    case 1:
      result = 0x657061706C6C6177;
      break;
    case 2:
    case 3:
      result = OUTLINED_FUNCTION_55_1();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Spatial3DResourceGenerator.spatial3DScene(for:statusHandler:)()
{
  OUTLINED_FUNCTION_42();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  OUTLINED_FUNCTION_76(v5);
  v1[6] = OUTLINED_FUNCTION_77();
  v6 = sub_1C754DD2C();
  v1[7] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_81_0();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C70C1880()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  result = OUTLINED_FUNCTION_64_6();
  if (v2)
  {
    v3 = sub_1C70C2554();

    if (v3)
    {
      if (qword_1EC213D80 != -1)
      {
        OUTLINED_FUNCTION_1_39();
      }

      v4 = qword_1EC2170C8;
      type metadata accessor for PerformanceMeasure();
      OUTLINED_FUNCTION_137();
      v5 = v4;
      PerformanceMeasure.init(name:log:)();
      if (qword_1EC213D88 != -1)
      {
        OUTLINED_FUNCTION_0_45();
      }

      v6 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v6, qword_1EC2170D0);
      v7 = sub_1C754FEEC();
      v8 = sub_1C755117C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_127();
        *v9 = 0;
        _os_log_impl(&dword_1C6F5C000, v7, v8, "Resource found still pending persistence", v9, 2u);
        OUTLINED_FUNCTION_109();
      }

      v10 = v3;
      sub_1C6F85170();

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_244_0();

      return v13(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    else
    {
      type metadata accessor for Spatial3DAssetResourceUtils();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 96) = v19;
      *v19 = v20;
      v19[1] = sub_1C70C1AD8;
      OUTLINED_FUNCTION_244_0();

      return static Spatial3DAssetResourceUtils.requestSpatial3DImageURL(for:with:statusHandler:)(v21, v22, v23, v24, v25);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C70C1AD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C70C1BBC()
{
  v43 = v0;
  v2 = v0[6];
  v1 = v0[7];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C6FB5FC8(v2, &qword_1EC215BD8);
    v3 = 0;
LABEL_3:

    OUTLINED_FUNCTION_116();

    return v4(v3);
  }

  (*(v0[8] + 32))(v0[11], v2, v1);
  v6 = MTLCreateSystemDefaultDevice();
  if (v6)
  {
    v7 = v6;
    if (qword_1EC213D80 != -1)
    {
      OUTLINED_FUNCTION_1_39();
    }

    v8 = qword_1EC2170C8;
    type metadata accessor for PerformanceMeasure();
    OUTLINED_FUNCTION_137();
    v9 = v8;
    PerformanceMeasure.init(name:log:)();
    if (qword_1EC213D88 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v11 = v0[10];
    v10 = v0[11];
    v13 = v0[7];
    v12 = v0[8];
    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EC2170D0);
    v15 = *(v12 + 16);
    v15(v11, v10, v13);
    v16 = sub_1C754FEEC();
    v17 = sub_1C755117C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[7];
    if (v18)
    {
      buf = OUTLINED_FUNCTION_41_0();
      v40 = OUTLINED_FUNCTION_20_1();
      v42 = v40;
      *buf = 136315138;
      OUTLINED_FUNCTION_31_12();
      sub_1C70CB88C(v20, v21);
      v22 = v7;
      v23 = sub_1C7551D8C();
      v41 = v15;
      v25 = v24;
      v26 = OUTLINED_FUNCTION_97_3();
      v27(v26);
      v28 = v23;
      v7 = v22;
      v29 = sub_1C6F765A4(v28, v25, &v42);
      v15 = v41;

      *(buf + 4) = v29;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Resource found at %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v32 = OUTLINED_FUNCTION_97_3();
      v33(v32);
    }

    v34 = v0[9];
    v15(v34, v0[11], v0[7]);
    v35 = objc_allocWithZone(MEMORY[0x1E69ADA20]);
    swift_unknownObjectRetain();
    v3 = sub_1C70CAAA0(v34, v7);
    v37 = v0[11];
    v38 = v0[7];
    sub_1C6F85170();

    swift_unknownObjectRelease();
    v19(v37, v38);
    goto LABEL_3;
  }

  v30 = v0[8];
  sub_1C70CAC64();
  OUTLINED_FUNCTION_166_0();
  *v31 = xmmword_1C7569120;
  *(v31 + 16) = 2;
  swift_willThrow();
  (*(v30 + 8))(v0[11], v0[7]);

  OUTLINED_FUNCTION_43();

  return v36();
}

uint64_t static Spatial3DResourceGenerator.prewarm()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v1 = OUTLINED_FUNCTION_76(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - v2;
  sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_30();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1C6FEB80C(0, 0, v3, &unk_1C7569140, v8);
}

uint64_t sub_1C70C20C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C6FF5694(v4, v5);
  }

  else
  {
    v7 = sub_1C75504AC();

    return sub_1C6FF5698(v4, v7);
  }
}

PhotosIntelligence::Spatial3DResourceGenerator::GenerationMode_optional __swiftcall Spatial3DResourceGenerator.GenerationMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C70C2220@<X0>(uint64_t *a1@<X8>)
{
  result = Spatial3DResourceGenerator.GenerationMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL static Spatial3DResourceGenerator.Status.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = LODWORD(v3) == 0;
  }

  else
  {
    if (LODWORD(v2) != 1)
    {
      if (LODWORD(v3) > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = LODWORD(v3) == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1C70C22CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C755001C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C755000C();
  v13 = v3;
  v14 = a2;
  v15 = a3;
  v16 = a1;
  sub_1C755127C();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C70C23F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (a4)
  {
    v8 = a4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 24);
    sub_1C6FC893C();
    *(a1 + 24) = v14;
  }

  else
  {
    v9 = sub_1C6F78124(a2, a3);
    if (v10)
    {
      v11 = v9;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *(a1 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215200);
      sub_1C7551A2C();

      v12 = *(*(v15 + 56) + 8 * v11);
      sub_1C6F65BE8(0, &qword_1EC217138);
      sub_1C7551A4C();
      *(a1 + 24) = v15;
    }
  }

  return swift_endAccess();
}

uint64_t sub_1C70C2554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171C0);
  sub_1C755128C();
  return v1;
}

uint64_t sub_1C70C25D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 24);
  if (*(v9 + 16))
  {
    sub_1C75504FC();
    v10 = sub_1C6F78124(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      v13 = v12;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return result;
}

uint64_t sub_1C70C267C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C755001C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C755000C();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  sub_1C755127C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C70C2798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_1C6F78124(a2, a3);
  if (v7)
  {
    v8 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215200);
    sub_1C7551A2C();

    v9 = *(*(v11 + 56) + 8 * v8);
    sub_1C6F65BE8(0, &qword_1EC217138);
    sub_1C7551A4C();
    *(a1 + 24) = v11;
  }

  return swift_endAccess();
}

uint64_t sub_1C70C28D8()
{
  sub_1C70C28B0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C70C2908()
{
  v1 = v0;
  v2 = sub_1C755125C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C755124C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C755006C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C6F65BE8(0, &unk_1EDD0FA90);
  sub_1C755004C();
  sub_1C755123C();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
  *(v1 + 16) = sub_1C75512AC();
  sub_1C6F65BE8(0, &qword_1EC217138);
  *(v1 + 24) = sub_1C75504DC();
  return v1;
}

uint64_t sub_1C70C2B08()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC2170C8 = result;
  return result;
}

uint64_t sub_1C70C2B80()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2170D0);
  __swift_project_value_buffer(v0, qword_1EC2170D0);
  if (qword_1EC213D80 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2170C8;
  return sub_1C754FF2C();
}

id Spatial3DResourceGenerator.init(with:processInBackground:)@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v53 = a2;
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v51 = v6;
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v49 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v17 = OUTLINED_FUNCTION_76(v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v48 = *a1;
  *(a3 + 8) = [objc_opt_self() defaultManager];
  v20 = sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  type metadata accessor for AsyncStreamWorker();
  OUTLINED_FUNCTION_137();
  *(a3 + 16) = AsyncStreamWorker.init(priority:)(v19);
  v24 = type metadata accessor for Spatial3DResourceGenerator(0);
  v25 = v24[10];
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
  swift_allocObject();
  *(a3 + v25) = AsyncStreamWorker.init(priority:)(v19);
  v29 = v24[11];
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v20);
  v33 = v48;
  swift_allocObject();
  *(a3 + v29) = AsyncStreamWorker.init(priority:)(v19);
  v34 = v8;
  v35 = v49;
  v36 = v24[12];
  type metadata accessor for Spatial3DResourceGenerator.PendingMXIScenePersistenceDictionary();
  OUTLINED_FUNCTION_30();
  swift_allocObject();
  *(a3 + v36) = sub_1C70C2908();
  *a3 = v33;
  v37 = NSTemporaryDirectory();
  sub_1C755068C();

  sub_1C754DC4C();

  v38 = [objc_opt_self() protectedTemporaryItemsSubdirectoryName];
  sub_1C755068C();

  sub_1C754DC9C();

  v39 = *(v35 + 8);
  v39(v12, v34);
  v54 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2170F8);
  v54 = sub_1C75506EC();
  v55 = v40;
  MEMORY[0x1CCA5CD70](45, 0xE100000000000000);
  v41 = 0xE500000000000000;
  v42 = 0x7055656E6FLL;
  switch(v33)
  {
    case 1:
      v41 = 0xEF72656B63695072;
      v42 = 0x657061706C6C6177;
      break;
    case 2:
      v42 = OUTLINED_FUNCTION_55_1();
      v41 = 0xE900000000000031;
      break;
    case 3:
      v42 = OUTLINED_FUNCTION_55_1();
      v41 = 0xE900000000000032;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v42, v41);

  MEMORY[0x1CCA5CD70](45, 0xE100000000000000);
  v43 = v50;
  sub_1C754DFEC();
  sub_1C70CB88C(&qword_1EDD0CB90, MEMORY[0x1E69695A8]);
  v44 = v52;
  v45 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v45);

  (*(v51 + 8))(v43, v44);
  sub_1C754DC9C();

  v39(v15, v34);
  v46 = v53;
  *(a3 + 24) = v53 & 1;
  if (v46)
  {
    result = [objc_allocWithZone(PNMADGenerationServiceWrapper) init];
  }

  else
  {
    result = 0;
  }

  *(a3 + v24[9]) = result;
  return result;
}

Swift::Bool __swiftcall Spatial3DResourceGenerator.isSpatial3DAssetResourcePresent(for:)(PHAsset a1)
{
  result = OUTLINED_FUNCTION_64_6();
  if (v2)
  {
    v3 = sub_1C70C2554();

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      type metadata accessor for Spatial3DAssetResourceUtils();
      v5 = OUTLINED_FUNCTION_90();
      v3 = static Spatial3DAssetResourceUtils.spatial3DAssetResource(for:resourceType:)(v5, v6);
      v4 = v3 != 0;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C70C31DC(uint64_t a1)
{
  v17[20] = *MEMORY[0x1E69E9840];
  if (qword_1EC213D80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v3 = v2;
  PerformanceMeasure.init(name:log:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171B0);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E69E6530];
  v6 = *MEMORY[0x1E69AD9A8];
  *(inited + 32) = *MEMORY[0x1E69AD9A8];
  *(inited + 40) = 68;
  v7 = MEMORY[0x1E69AD9B0];
  *(inited + 16) = xmmword_1C755BAA0;
  v8 = *v7;
  *(inited + 64) = v5;
  *(inited + 72) = v8;
  *(inited + 104) = MEMORY[0x1E69E63B0];
  *(inited + 80) = 0x3FEFAE147AE147AELL;
  v9 = v6;
  v10 = v8;
  *(inited + 112) = sub_1C755065C();
  *(inited + 144) = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  type metadata accessor for MXIBuildOption(0);
  sub_1C70CB88C(&qword_1EC214940, type metadata accessor for MXIBuildOption);
  v11 = sub_1C75504DC();
  v12 = objc_opt_self();
  v17[0] = 0;
  v13 = sub_1C70CB6EC(a1, v11, v17, v12);
  v14 = v17[0];
  if (!v13)
  {
    v15 = v14;
    sub_1C754DBEC();

    swift_willThrow();
  }

  sub_1C6F85170();

  return v13;
}

uint64_t sub_1C70C3438(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (qword_1EC213D80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v3 = v2;
  PerformanceMeasure.init(name:log:)();
  v4 = sub_1C70C3588();
  v5 = sub_1C754DC8C();
  v10[0] = 0;
  v6 = sub_1C70CB7C0(v5, v4, v10, a1);

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

  sub_1C6F85170();
}

uint64_t sub_1C70C3588()
{
  type metadata accessor for MXISerializeOption(0);
  sub_1C70CB88C(&unk_1EC215B00, type metadata accessor for MXISerializeOption);
  v0 = sub_1C75504DC();
  v1 = objc_opt_self();
  v2 = [v1 spatial3DImageCompressionCodec];
  v3 = *MEMORY[0x1E69ADA08];
  v4 = MEMORY[0x1E69AD9F8];
  if (v2 == 1)
  {
    v4 = MEMORY[0x1E69AD9F0];
  }

  v5 = *v4;
  type metadata accessor for MXISerializeImageCompressionCodec(0);
  v13 = v6;
  *&v12 = v5;
  sub_1C6F9ED18(&v12, v11);
  v7 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC8950(v11, v7);

  v8 = *MEMORY[0x1E69ADA10];
  [v1 spatial3DImageCompressionQuality];
  v13 = MEMORY[0x1E69E63B0];
  *&v12 = v9;
  sub_1C6F9ED18(&v12, v11);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC8950(v11, v8);

  return v0;
}

uint64_t Spatial3DResourceGenerator.generateSpatial3DScene(for:statusHandler:persistOnSeperateThread:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 88) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = type metadata accessor for Spatial3DResourceGenerator(0);
  OUTLINED_FUNCTION_76(v6);
  *(v1 + 48) = OUTLINED_FUNCTION_77();
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70C3798()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v0[5] + 24))
  {
    return sub_1C7551AAC();
  }

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1C70C3890;
  OUTLINED_FUNCTION_61_3(v0[2]);
  OUTLINED_FUNCTION_41();

  return Spatial3DResourceGenerator.spatial3DScene(for:statusHandler:)();
}

uint64_t sub_1C70C3890()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

void sub_1C70C39CC()
{
  OUTLINED_FUNCTION_31();
  v47 = v0;
  v1 = *(v0 + 64);
  if (v1)
  {
    if (qword_1EC213D88 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 16);
    v5 = sub_1C754FF1C();
    __swift_project_value_buffer(v5, qword_1EC2170D0);
    OUTLINED_FUNCTION_3_33();
    sub_1C70CB94C(v3, v2, v6);
    v7 = v4;
    v8 = sub_1C754FEEC();
    v9 = sub_1C755117C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 48);
    if (v10)
    {
      v12 = *(v0 + 16);
      v13 = OUTLINED_FUNCTION_23_1();
      v46 = OUTLINED_FUNCTION_20_1();
      v14 = v46;
      *v13 = 136315394;
      v15 = [v12 localIdentifier];
      v16 = sub_1C755068C();
      v18 = v17;

      v19 = sub_1C6F765A4(v16, v18, &v46);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2048;
      v20 = *&aT[8 * *v11];
      OUTLINED_FUNCTION_7_21();
      sub_1C70CB9A4(v21, v22);
      *(v13 + 14) = v20;
      _os_log_impl(&dword_1C6F5C000, v8, v9, "Resource Found for Asset %s with resource type %ld", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_37();
    }

    else
    {
      OUTLINED_FUNCTION_7_21();
      sub_1C70CB9A4(v11, v23);
    }

    sub_1C754F84C();
    OUTLINED_FUNCTION_137();
    v24 = v1;
    sub_1C754F75C();
    v25 = sub_1C754F82C();

    if (v25)
    {

      OUTLINED_FUNCTION_116();

      v26(v24);
      return;
    }

    v27 = *(v0 + 16);
    v28 = sub_1C754FEEC();
    v29 = sub_1C755119C();
    v30 = OUTLINED_FUNCTION_21_0(v29);
    v31 = *(v0 + 16);
    if (v30)
    {
      v32 = OUTLINED_FUNCTION_41_0();
      v33 = OUTLINED_FUNCTION_20_1();
      v46 = v33;
      *v32 = 136446210;
      v34 = sub_1C70CAC04(v31);
      v36 = v35;

      if (!v36)
      {
        __break(1u);
        return;
      }

      v37 = sub_1C6F765A4(v34, v36, &v46);

      *(v32 + 4) = v37;
      OUTLINED_FUNCTION_89(&dword_1C6F5C000, v38, v39, "Cached resource found for %{public}s has too many MXI atlas slices and would render incorrectly, re-generating.");
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }
  }

  v40 = swift_task_alloc();
  *(v0 + 72) = v40;
  *v40 = v0;
  v40[1] = sub_1C70C3D34;
  v41 = OUTLINED_FUNCTION_61_3(*(v0 + 16));

  sub_1C70C3F14(v41, v42, v43, v44, v45);
}

uint64_t sub_1C70C3D34()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 80) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1C70C3E70()
{
  OUTLINED_FUNCTION_49_0();
  v8 = v0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v6 = 1;
    v7 = 1;

    v1(&v6, 0);
    v2 = OUTLINED_FUNCTION_90();
    sub_1C6F6E5B4(v2);
  }

  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_116();

  return v4(v3);
}

uint64_t sub_1C70C3F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 152) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  *(v5 + 48) = swift_task_alloc();
  v6 = type metadata accessor for Spatial3DResourceGenerator(0);
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 + 64);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70C4028, 0, 0);
}

uint64_t sub_1C70C4028()
{
  OUTLINED_FUNCTION_115_0();
  v38 = v0;
  if (qword_1EC213D88 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v1 = v0[2];
  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2170D0);
  v0[12] = v3;
  OUTLINED_FUNCTION_3_33();
  v4 = OUTLINED_FUNCTION_90();
  sub_1C70CB94C(v4, v5, v6);
  v7 = v1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[11];
  if (v10)
  {
    v12 = v0[2];
    OUTLINED_FUNCTION_23_1();
    v37 = OUTLINED_FUNCTION_47_10();
    *v3 = 136315394;
    v13 = [v12 localIdentifier];
    v14 = sub_1C755068C();
    v16 = v15;

    v17 = sub_1C6F765A4(v14, v16, &v37);

    *(v3 + 4) = v17;
    *(v3 + 12) = 2048;
    v18 = *&aT[8 * *v11];
    OUTLINED_FUNCTION_7_21();
    sub_1C70CB9A4(v19, v20);
    *(v3 + 14) = v18;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    OUTLINED_FUNCTION_22_20();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
    sub_1C70CB9A4(v0[11], type metadata accessor for Spatial3DResourceGenerator);
  }

  v26 = objc_opt_self();
  v0[13] = v26;
  if ([v26 enableSpatial3DBackgroundPersistence])
  {
    if (qword_1EC213D80 != -1)
    {
      OUTLINED_FUNCTION_1_39();
    }
  }

  else if (qword_1EC213D80 != -1)
  {
    OUTLINED_FUNCTION_1_39();
  }

  v27 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v28 = v27;
  v0[14] = PerformanceMeasure.init(name:log:)();
  v29 = v0[4];
  v30 = v0[5];
  if (v29)
  {
    OUTLINED_FUNCTION_30();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
  }

  else
  {
    v31 = 0;
  }

  v0[15] = v31;

  sub_1C6F9EE84(v29);
  OUTLINED_FUNCTION_63_8(&unk_1C75694C0);
  v36 = v32;
  v33 = swift_task_alloc();
  v0[16] = v33;
  *v33 = v0;
  v33[1] = sub_1C70C436C;
  v34 = OUTLINED_FUNCTION_61_3(v0[2]);

  return v36(v34);
}

uint64_t sub_1C70C436C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C70C446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C70CAC04(*(v10 + 16));
  if (!v11)
  {

    __break(1u);
    return result;
  }

  v12 = v11;
  v13 = *(v10 + 152);
  v14 = *(v10 + 136);
  v15 = OUTLINED_FUNCTION_41_3();
  sub_1C70C22CC(v15, v16, v12);
  if ((v13 & 1) != 0 || [*(v10 + 104) enableSpatial3DBackgroundPersistence])
  {
    v17 = sub_1C754FEEC();
    v18 = sub_1C755118C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v19);
      _os_log_impl(&dword_1C6F5C000, v17, v18, "Moving scene persistence to task", v12, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    v21 = *(v10 + 72);
    v20 = *(v10 + 80);
    v22 = *(v10 + 64);
    v24 = *(v10 + 16);
    v23 = *(v10 + 24);

    sub_1C7550D5C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_3_33();
    sub_1C70CB94C(v23, v20, v29);
    v30 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    sub_1C70CB390(v20, v31 + v30);
    *(v31 + ((v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
    v32 = v24;
    sub_1C7293D70();

    goto LABEL_7;
  }

  v42 = *(v10 + 144);
  sub_1C70C5D4C(*(v10 + 136), *(v10 + 24), *(v10 + 16));
  if (!v42)
  {
LABEL_7:
    sub_1C6F85170();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_88_0();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10);
}

uint64_t sub_1C70C46E0()
{
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C70C4768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v7 = sub_1C75519CC();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  v4[12] = swift_task_alloc();
  v8 = sub_1C754DF6C();
  v4[13] = v8;
  v4[14] = *(v8 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = swift_allocObject();
  v4[17] = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  return MEMORY[0x1EEE6DFA0](sub_1C70C4904, 0, 0);
}

uint64_t sub_1C70C4904()
{
  OUTLINED_FUNCTION_115_0();
  if (qword_1EC213D80 != -1)
  {
    OUTLINED_FUNCTION_1_39();
  }

  v3 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v4 = v3;
  *(v1 + 144) = PerformanceMeasure.init(name:log:)();
  if (qword_1EC213D88 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v5 = *(v1 + 40);
  v6 = sub_1C754FF1C();
  *(v1 + 152) = OUTLINED_FUNCTION_23_2(v6, qword_1EC2170D0);
  v7 = v5;
  v8 = sub_1C754FEEC();
  v9 = sub_1C75511BC();
  v10 = OUTLINED_FUNCTION_21_0(v9);
  v11 = *(v1 + 40);
  if (v10)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_47_10();
    *v0 = 136315138;
    sub_1C70CAC04(v11);
    v2 = v12;

    if (!v2)
    {

      __break(1u);
      return result;
    }

    v13 = OUTLINED_FUNCTION_66_4();
    v16 = sub_1C6F765A4(v13, v14, v15);

    *(v0 + 4) = v16;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_22_20();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  v22 = *(v1 + 40);
  sub_1C754DF5C();
  [v22 pixelWidth];
  [v22 pixelHeight];
  OUTLINED_FUNCTION_100_4();
  if (v24)
  {
    if (v23)
    {
      sub_1C70C9DEC();
      v25 = OUTLINED_FUNCTION_53_12();
    }

    else
    {
      sub_1C70C9DEC();
      v25 = OUTLINED_FUNCTION_54_10();
    }

    sub_1C70C9EE0(v28, v29, v30, v31, v25, v26, v27);
  }

  v32 = *(v1 + 136);
  v33 = *(v1 + 48);
  sub_1C754DD2C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  if (*v33 < 2u)
  {
    v38 = v2;
  }

  else
  {
    v38 = v2 + 1;
  }

  *(v1 + 192) = v38;
  OUTLINED_FUNCTION_30();
  v39 = swift_allocObject();
  *(v1 + 160) = v39;
  *(v39 + 16) = sub_1C70CBAF4;
  *(v39 + 24) = v32;

  v40 = swift_task_alloc();
  *(v1 + 168) = v40;
  *v40 = v1;
  v40[1] = sub_1C70C4C04;
  OUTLINED_FUNCTION_61_3(*(v1 + 40));
  OUTLINED_FUNCTION_85_5();

  return AlchemistServiceInterface.convert(asset:saveURL:configurationPreset:bakingSize:eventHandler:)();
}

uint64_t sub_1C70C4C04()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  OUTLINED_FUNCTION_93_5(v4);
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v9 + 176) = v0;

  sub_1C6FB5FC8(v6, &qword_1EC215BD8);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C70C4D48()
{
  if (PFOSVariantHasInternalUI() && (([objc_opt_self() spatial3DMinimumGenerationTime], v5 = v4, sub_1C754DF5C(), sub_1C754DEAC(), v7 = v6, v8 = OUTLINED_FUNCTION_57_0(), v9(v8), v5 - v7 < 0.0) ? (v10 = 0.0) : (v10 = v5 - v7), v10 > 0.0))
  {
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v12))
    {
      v13 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_70_6(v13, 3.8521e-34);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_23_3();
    }

    sub_1C755201C();
    sub_1C7551E7C();
    OUTLINED_FUNCTION_63_8(&dword_1C75818B8);
    v25 = v19;
    v20 = swift_task_alloc();
    *(v0 + 184) = v20;
    *v20 = v0;
    v21 = OUTLINED_FUNCTION_41_10(v20);

    return v25(v21);
  }

  else
  {
    OUTLINED_FUNCTION_24_17();
    v23();
    (*(v3 + 8))(v1, v2);
    sub_1C6F85170();

    OUTLINED_FUNCTION_116();

    return v24();
  }
}

uint64_t sub_1C70C4F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  (*(v10[14] + 8))(v10[16], v10[13]);
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1C70C504C()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C70C51C4()
{
  OUTLINED_FUNCTION_24_17();
  v3();
  (*(v2 + 8))(v0, v1);
  sub_1C6F85170();

  OUTLINED_FUNCTION_116();

  return v4();
}

uint64_t Spatial3DResourceGenerator.alchemizeInProcess(asset:statusHandler:)()
{
  OUTLINED_FUNCTION_42();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1C75519CC();
  v1[9] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_77();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  OUTLINED_FUNCTION_76(v7);
  v1[12] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754DF6C();
  v1[13] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_81_0();
  v1[16] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1C70C53D0()
{
  OUTLINED_FUNCTION_31();
  if (qword_1EC213D80 != -1)
  {
    OUTLINED_FUNCTION_1_39();
  }

  v3 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v4 = v3;
  *(v1 + 136) = PerformanceMeasure.init(name:log:)();
  if (qword_1EC213D88 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v5 = *(v1 + 40);
  v6 = sub_1C754FF1C();
  *(v1 + 144) = OUTLINED_FUNCTION_23_2(v6, qword_1EC2170D0);
  v7 = v5;
  v8 = sub_1C754FEEC();
  v9 = sub_1C75511BC();
  v10 = OUTLINED_FUNCTION_21_0(v9);
  v11 = *(v1 + 40);
  if (v10)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_47_10();
    *v0 = 136315138;
    sub_1C70CAC04(v11);
    v2 = v12;

    if (!v2)
    {
      __break(1u);
      return;
    }

    v13 = OUTLINED_FUNCTION_66_4();
    v16 = sub_1C6F765A4(v13, v14, v15);

    *(v0 + 4) = v16;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    OUTLINED_FUNCTION_22_20();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  v22 = *(v1 + 40);
  sub_1C754DF5C();
  [v22 pixelWidth];
  [v22 pixelHeight];
  OUTLINED_FUNCTION_100_4();
  if (v24)
  {
    if (v23)
    {
      sub_1C70C9DEC();
      v25 = OUTLINED_FUNCTION_53_12();
    }

    else
    {
      sub_1C70C9DEC();
      v25 = OUTLINED_FUNCTION_54_10();
    }

    sub_1C70C9EE0(v28, v29, v30, v31, v25, v26, v27);
  }

  v32 = *(v1 + 56);
  v33 = *(v1 + 64);
  v34 = *(v1 + 48);
  sub_1C754DD2C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  if (*v33 < 2u)
  {
    v39 = v2;
  }

  else
  {
    v39 = v2 + 1;
  }

  *(v1 + 184) = v39;
  OUTLINED_FUNCTION_30();
  v40 = swift_allocObject();
  *(v1 + 152) = v40;
  *(v40 + 16) = v34;
  *(v40 + 24) = v32;

  v41 = swift_task_alloc();
  *(v1 + 160) = v41;
  *v41 = v1;
  v41[1] = sub_1C70C56C4;
  OUTLINED_FUNCTION_61_3(*(v1 + 40));
  OUTLINED_FUNCTION_85_5();

  AlchemistServiceInterface.convert(asset:saveURL:configurationPreset:bakingSize:eventHandler:)();
}

uint64_t sub_1C70C56C4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  OUTLINED_FUNCTION_93_5(v4);
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v9 + 168) = v0;

  sub_1C6FB5FC8(v6, &qword_1EC215BD8);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C70C5808()
{
  v31 = v1;
  if (PFOSVariantHasInternalUI() && ((v0 = v1[15], v5 = v1[14], [objc_opt_self() spatial3DMinimumGenerationTime], v7 = v6, sub_1C754DF5C(), sub_1C754DEAC(), v9 = v8, v2 = v5 + 8, v10 = OUTLINED_FUNCTION_57_0(), v11(v10), v7 - v9 < 0.0) ? (v12 = 0.0) : (v12 = v7 - v9), v12 > 0.0))
  {
    v13 = sub_1C754FEEC();
    v14 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v14))
    {
      v15 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_70_6(v15, 3.8521e-34);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
      OUTLINED_FUNCTION_23_3();
    }

    sub_1C755201C();
    sub_1C7551E7C();
    OUTLINED_FUNCTION_63_8(&dword_1C75818B8);
    v28 = v21;
    v22 = swift_task_alloc();
    v1[22] = v22;
    *v22 = v1;
    v23 = OUTLINED_FUNCTION_41_10(v22);

    return v28(v23);
  }

  else
  {
    OUTLINED_FUNCTION_50_8();
    v29 = v25;
    v30 = v25;
    v26(&v29, 0);
    (*(v4 + 8))(v2, v3);
    sub_1C6F85170();

    OUTLINED_FUNCTION_116();

    return v27(v0);
  }
}

uint64_t sub_1C70C5A4C()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C70C5BC4()
{
  OUTLINED_FUNCTION_115_0();
  v11 = v1;
  OUTLINED_FUNCTION_50_8();
  v9 = v5;
  v10 = v5;
  v6(&v9, 0);
  (*(v4 + 8))(v2, v3);
  sub_1C6F85170();

  OUTLINED_FUNCTION_116();

  return v7(v0);
}

uint64_t sub_1C70C5CA0()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  (*(v0[14] + 8))(v0[16], v0[13]);
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1C70C5D4C(void *a1, char *a2, void *a3)
{
  v7 = sub_1C754DD2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() spatial3DTextureCompressionPhase] == 2)
  {
    v11 = sub_1C70C31DC(a1);
    if (v3)
    {
      return;
    }
  }

  else
  {
    v11 = a1;
  }

  v12 = v11;
  v13 = sub_1C70CAC04(a3);
  if (v14)
  {
    static AlchemistServiceInterface.getMXIOutputURL(assetUUID:)(v13, v14);

    if (!v3)
    {
      sub_1C70C3438(v12);
      v15 = *&aT[8 * *a2];
      type metadata accessor for Spatial3DAssetResourceUtils();
      static Spatial3DAssetResourceUtils.persistSpatial3DResult(asset:generatedContentURL:resourceType:)(a3, v10, v15);
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C70C5EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Spatial3DResourceGenerator(0);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70C5FB4, 0, 0);
}

uint64_t sub_1C70C5FB4()
{
  OUTLINED_FUNCTION_123();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  OUTLINED_FUNCTION_3_33();
  sub_1C70CB94C(v5, v1, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[8] = v9;
  sub_1C70CB390(v1, v9 + v7);
  *(v9 + v8) = v4;
  v10 = v4;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1C70C60D0;

  return sub_1C73967F0(&unk_1C75694E0, v9);
}

uint64_t sub_1C70C60D0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C70C6214()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C70C6270(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C70C6290, 0, 0);
}

uint64_t sub_1C70C6290()
{
  OUTLINED_FUNCTION_115_0();
  v20 = v0;
  sub_1C7550E6C();
  result = OUTLINED_FUNCTION_64_6();
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = sub_1C70C2554();

  if (!v5)
  {
    if (qword_1EC213D88 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v6 = *(v0 + 24);
    v7 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v7, qword_1EC2170D0);
    v8 = v6;
    v9 = sub_1C754FEEC();
    LOBYTE(v6) = sub_1C755119C();

    if (os_log_type_enabled(v9, v6))
    {
      v10 = *(v0 + 24);
      OUTLINED_FUNCTION_41_0();
      v19 = OUTLINED_FUNCTION_47_10();
      *v8 = 136315138;
      v11 = [v10 localIdentifier];
      sub_1C755068C();
      OUTLINED_FUNCTION_59();

      sub_1C6F765A4(v1, v2, &v19);
      OUTLINED_FUNCTION_80();
      *(v8 + 1) = v11;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      OUTLINED_FUNCTION_22_20();
      OUTLINED_FUNCTION_23_3();
    }

    goto LABEL_11;
  }

  sub_1C70C5D4C(v5, *(v0 + 16), *(v0 + 24));
  result = sub_1C70CAC04(*(v0 + 24));
  if (!v17)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1C70C267C(result, v17);

LABEL_11:
  OUTLINED_FUNCTION_43();

  return v18();
}

uint64_t Spatial3DResourceGenerator.generateSpatial3DScene(for:statusHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C70C6498()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  if (*(v0[6] + 24))
  {
    sub_1C70CAC64();
    OUTLINED_FUNCTION_166_0();
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_244_0();

    return v3(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    if (qword_1EC213D80 != -1)
    {
      OUTLINED_FUNCTION_1_39();
    }

    v11 = v0[4];
    v12 = qword_1EC2170C8;
    type metadata accessor for PerformanceMeasure();
    OUTLINED_FUNCTION_137();
    v13 = v12;
    v0[7] = PerformanceMeasure.init(name:log:)();
    v14 = v0[4];
    v15 = v0[5];
    v16 = CGRectMake;
    if (v11)
    {
      OUTLINED_FUNCTION_30();
      v11 = swift_allocObject();
      *(v11 + 16) = v14;
      *(v11 + 24) = v15;
      v16 = sub_1C70CADB8;
    }

    v17 = v16;
    OUTLINED_FUNCTION_30();
    v18 = swift_allocObject();
    v0[8] = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v11;
    v19 = OUTLINED_FUNCTION_90();
    sub_1C6F9EE84(v19);
    v20 = swift_task_alloc();
    v0[9] = v20;
    *v20 = v0;
    v20[1] = sub_1C70C6674;
    OUTLINED_FUNCTION_61_3(v0[2]);
    OUTLINED_FUNCTION_244_0();

    return Spatial3DResourceGenerator.alchemizeInProcess(imageData:statusHandler:)();
  }
}

uint64_t sub_1C70C6674()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C70C6780()
{
  OUTLINED_FUNCTION_42();
  sub_1C6F85170();

  OUTLINED_FUNCTION_116();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1C70C67F0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t Spatial3DResourceGenerator.alchemizeInProcess(imageData:statusHandler:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  OUTLINED_FUNCTION_76(v6);
  v1[7] = OUTLINED_FUNCTION_77();
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70C68E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_123();
  if (qword_1EC213D80 != -1)
  {
    OUTLINED_FUNCTION_1_39();
  }

  v10 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v11 = v10;
  *(v9 + 64) = PerformanceMeasure.init(name:log:)();
  if (qword_1EC213D88 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v12 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v12, qword_1EC2170D0);
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v14))
  {
    v15 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v15);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v21 = *(v9 + 48);
  v23 = *(v9 + 32);
  v22 = *(v9 + 40);

  sub_1C754DD2C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  if (*v21 < 2u)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  *(v9 + 104) = v28;
  OUTLINED_FUNCTION_30();
  v29 = swift_allocObject();
  *(v9 + 72) = v29;
  *(v29 + 16) = v23;
  *(v29 + 24) = v22;

  v30 = swift_task_alloc();
  *(v9 + 80) = v30;
  *v30 = v9;
  v30[1] = sub_1C70C6AD8;
  OUTLINED_FUNCTION_61_3(*(v9 + 16));
  OUTLINED_FUNCTION_244_0();

  return AlchemistServiceInterface.convert(imageData:saveURL:configurationPreset:bakingSize:eventHandler:)(v31, v32, v33, v34, v35, v36, v37, v38, a9);
}

uint64_t sub_1C70C6AD8()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[11] = v0;

  if (v0)
  {
    sub_1C6FB5FC8(v5[7], &qword_1EC215BD8);
  }

  else
  {
    v9 = v5[7];
    v5[12] = v3;
    sub_1C6FB5FC8(v9, &qword_1EC215BD8);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C70C6C28()
{
  OUTLINED_FUNCTION_42();
  sub_1C6F85170();

  OUTLINED_FUNCTION_116();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1C70C6C98()
{
  OUTLINED_FUNCTION_42();
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v0();
}

void Spatial3DResourceGenerator.GenerationMode.configurationPreset.getter(char *a1@<X8>)
{
  if (*v1 < 2u)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1C70C6D1C(uint64_t a1, uint64_t a2, void (*a3)(int *, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217198);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1C754E7DC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  v18 = v17;
  v19 = *MEMORY[0x1E698A7F8];
  if (v17 == *MEMORY[0x1E698A7F8])
  {
    (*(v13 + 96))(v16, v12);
    *&v20 = *v16 / v16[1];
  }

  else if (v17 == *MEMORY[0x1E698A808])
  {
    *&v20 = 0.0;
  }

  else if (v17 == *MEMORY[0x1E698A7E8])
  {
    v20 = 1;
  }

  else
  {
    if (v17 != *MEMORY[0x1E698A7D0])
    {
      result = sub_1C7551AAC();
      __break(1u);
      return result;
    }

    v20 = 2;
  }

  sub_1C70CB8F4(a2, &v28, &qword_1EC2171A0);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171A8);
    v21 = sub_1C754E93C();
    v22 = swift_dynamicCast() ^ 1;
    v23 = v11;
  }

  else
  {
    sub_1C6FB5FC8(&v28, &qword_1EC2171A0);
    v21 = sub_1C754E93C();
    v23 = v11;
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v22, 1, v21);
  sub_1C70CB8F4(v11, v8, &qword_1EC217198);
  sub_1C754E93C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v21) == 1)
  {
    sub_1C6FB5FC8(v8, &qword_1EC217198);
    v24 = 0;
  }

  else
  {
    v24 = sub_1C754E92C();
    (*(*(v21 - 8) + 8))(v8, v21);
  }

  if (v18 == v19 || v20 != 1)
  {
    v28 = v20;
    v29 = v18 != v19;
    a3(&v28, v24);
  }

  return sub_1C6FB5FC8(v11, &qword_1EC217198);
}

uint64_t sub_1C70C7104(uint64_t a1, uint64_t a2, void (*a3)(float *, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217198);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1C754E7DC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  v18 = v17;
  v19 = *MEMORY[0x1E698A7F8];
  if (v17 == *MEMORY[0x1E698A7F8])
  {
    (*(v13 + 96))(v16, v12);
    v20 = *v16 / v16[1];
  }

  else
  {
    v20 = 0.0;
    if (v17 != *MEMORY[0x1E698A808])
    {
      if (v17 == *MEMORY[0x1E698A7E8])
      {
        v21 = 1;
      }

      else
      {
        if (v17 != *MEMORY[0x1E698A7D0])
        {
          result = sub_1C7551AAC();
          __break(1u);
          return result;
        }

        v21 = 2;
      }

      v20 = *&v21;
    }
  }

  sub_1C70CB8F4(a2, &v28, &qword_1EC2171A0);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171A8);
    v22 = sub_1C754E93C();
    v23 = swift_dynamicCast() ^ 1;
    v24 = v11;
  }

  else
  {
    sub_1C6FB5FC8(&v28, &qword_1EC2171A0);
    v22 = sub_1C754E93C();
    v24 = v11;
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v23, 1, v22);
  sub_1C70CB8F4(v11, v8, &qword_1EC217198);
  sub_1C754E93C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v22) == 1)
  {
    sub_1C6FB5FC8(v8, &qword_1EC217198);
    v25 = 0;
  }

  else
  {
    v25 = sub_1C754E92C();
    (*(*(v22 - 8) + 8))(v8, v22);
  }

  v28 = v20;
  v29 = v18 != v19;
  a3(&v28, v25);

  return sub_1C6FB5FC8(v11, &qword_1EC217198);
}

uint64_t Spatial3DResourceGenerator.generateSpatial3DResourceInBackground(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C70C750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EC213D80 != -1)
  {
    OUTLINED_FUNCTION_1_39();
  }

  v13 = v12[2];
  v14 = v12[3];
  v15 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v16 = v15;
  v12[4] = PerformanceMeasure.init(name:log:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215B18);
  v17 = swift_allocObject();
  v12[5] = v17;
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  v18 = swift_task_alloc();
  v12[6] = v18;
  v18[2] = v14;
  v18[3] = v17;
  v18[4] = v13;
  v19 = swift_task_alloc();
  v12[7] = v19;
  *v19 = v12;
  v19[1] = sub_1C70C7688;
  v20 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v19, &unk_1C7569190, v18, sub_1C70CAE90, v17, 0, 0, v20, a9, a10, a11, a12);
}

uint64_t sub_1C70C7688()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70C7788()
{
  OUTLINED_FUNCTION_42();

  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C70C77F0()
{
  OUTLINED_FUNCTION_42();

  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C70C7868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for Spatial3DResourceGenerator(0);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70C7934, 0, 0);
}

uint64_t sub_1C70C7934()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_3_33();
  sub_1C70CB94C(v6, v1, v7);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[9] = v10;
  *(v10 + 16) = v4;
  sub_1C70CB390(v1, v10 + v8);
  *(v10 + v9) = v5;

  v11 = v5;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1C70C7A58;
  OUTLINED_FUNCTION_88_0();

  return sub_1C73967F0(v13, v14);
}

uint64_t sub_1C70C7A58()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C70C7B9C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C70C7BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1C754DD2C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70C7CC8, 0, 0);
}

uint64_t sub_1C70C7CC8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2)
  {
    sub_1C7550CBC();
    sub_1C70CB88C(&qword_1EC217180, MEMORY[0x1E69E8550]);
    OUTLINED_FUNCTION_166_0();
    sub_1C755044C();
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v3();
  }

  else
  {
    sub_1C7550E6C();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 72) = v5;
    *v5 = v6;
    v5[1] = sub_1C70C7E30;

    return Spatial3DResourceGenerator.requestImageURL(for:)();
  }
}

uint64_t sub_1C70C7E30()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C70C7F28()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  if (qword_1EC213D88 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v2 = *(v1 + 32);
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v3, qword_1EC2170D0);
  v4 = v2;
  v5 = sub_1C754FEEC();
  v6 = sub_1C75511BC();
  v7 = OUTLINED_FUNCTION_21_0(v6);
  v8 = *(v1 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_47_10();
    *v0 = 136315138;
    sub_1C70CAC04(v8);
    v10 = v9;

    if (!v10)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v11 = OUTLINED_FUNCTION_66_4();
    v14 = sub_1C6F765A4(v11, v12, v13);

    *(v0 + 4) = v14;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    OUTLINED_FUNCTION_22_20();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  sub_1C70CAC04(*(v1 + 32));
  *(v1 + 88) = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 96) = v21;
  *v21 = v22;
  v21[1] = sub_1C70C80B0;
  OUTLINED_FUNCTION_88_0();

  Spatial3DResourceGenerator.executeAlchemistInBackground(for:with:)();
}

uint64_t sub_1C70C80B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70C81C4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 32);
  v2 = *&aT[8 * **(v0 + 24)];
  v3 = *(v0 + 104);
  v4 = *(v0 + 56);
  type metadata accessor for Spatial3DAssetResourceUtils();
  static Spatial3DAssetResourceUtils.persistSpatial3DResult(asset:generatedContentURL:resourceType:)(v1, v4, v2);
  if (v3)
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 40);
    v7 = *(*(v0 + 48) + 8);
    v7(*(v0 + 56), v6);
    v7(v5, v6);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    switch(**(v0 + 24))
    {
      case 1:
        goto LABEL_6;
      case 2:
      case 3:
        OUTLINED_FUNCTION_55_1();
LABEL_6:
        v8 = sub_1C7551DBC();

        if ((v8 & 1) == 0)
        {
          static Spatial3DAssetResourceUtils.cleanupTemporaryFile(at:)(*(v0 + 64));
        }

        break;
      default:

        break;
    }

    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v11 = *(*(v0 + 48) + 8);
    v12 = OUTLINED_FUNCTION_57_0();
    v11(v12);
    (v11)(v9, v10);

    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_244_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1C70C8390()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C70C83F4()
{
  OUTLINED_FUNCTION_42();
  (*(v0[6] + 8))(v0[8], v0[5]);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t Spatial3DResourceGenerator.requestImageURL(for:)()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C754DD2C();
  v1[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_81_0();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C70C8530()
{
  OUTLINED_FUNCTION_31();
  v18 = v0;
  if (qword_1EC213D80 != -1)
  {
    OUTLINED_FUNCTION_1_39();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v4 = v3;
  v0[10] = PerformanceMeasure.init(name:log:)();
  v17[0] = *v2;
  static Cropping.Spatial3D.getCropRequirements(for:with:)(v1, v17, &v15);
  if (v16 == 1)
  {
    if (v15 == 0)
    {
      type metadata accessor for Spatial3DAssetResourceUtils();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      v0[13] = v11;
      *v11 = v12;
      v11[1] = sub_1C70C88F0;

      return static Spatial3DAssetResourceUtils.requestFullSizeImageURL(for:progressHandler:cancellationHandler:)();
    }

    else
    {
      if (v15 ^ 1 | *(&v15 + 1))
      {
        v5 = 0x80000001C759D2D0;
        v7 = 1;
        v6 = 0xD000000000000015;
      }

      else
      {
        v5 = 0;
        v6 = 2;
        v7 = 2;
      }

      sub_1C70CAC64();
      OUTLINED_FUNCTION_166_0();
      *v13 = v6;
      *(v13 + 8) = v5;
      *(v13 + 16) = v7;
      swift_willThrow();
      sub_1C6F85170();

      OUTLINED_FUNCTION_43();

      return v14();
    }
  }

  else
  {
    type metadata accessor for Spatial3DAssetResourceUtils();
    type metadata accessor for Spatial3DResourceGenerator(0);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[11] = v8;
    *v8 = v9;
    v8[1] = sub_1C70C87F8;

    return static Spatial3DAssetResourceUtils.requestAndSaveCroppedImageURL(for:with:to:)();
  }
}

uint64_t sub_1C70C87F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70C88F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70C89E8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(v0[6] + 32);
  v5 = OUTLINED_FUNCTION_57_0();
  v4(v5);
  (v4)(v3, v1, v2);
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C70C8AB8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(v0[6] + 32);
  v5 = OUTLINED_FUNCTION_57_0();
  v4(v5);
  (v4)(v3, v1, v2);
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C70C8B88()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C70C8C14()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t Spatial3DResourceGenerator.executeAlchemistInBackground(for:with:)()
{
  OUTLINED_FUNCTION_42();
  v1[56] = v2;
  v1[57] = v0;
  v1[55] = v3;
  v4 = sub_1C754DC1C();
  v1[58] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[59] = v5;
  v1[60] = OUTLINED_FUNCTION_77();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  OUTLINED_FUNCTION_76(v6);
  v1[61] = OUTLINED_FUNCTION_77();
  v7 = sub_1C754DD2C();
  v1[62] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[63] = v8;
  v1[64] = OUTLINED_FUNCTION_81_0();
  v1[65] = swift_task_alloc();
  v9 = sub_1C754E91C();
  v1[66] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[67] = v10;
  v1[68] = OUTLINED_FUNCTION_77();
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C70C8E18()
{
  v63 = v0;
  if (qword_1EC213D80 != -1)
  {
    OUTLINED_FUNCTION_1_39();
  }

  v1 = *(v0 + 456);
  v2 = qword_1EC2170C8;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v3 = v2;
  *(v0 + 552) = PerformanceMeasure.init(name:log:)();
  v4 = *(v1 + *(type metadata accessor for Spatial3DResourceGenerator(0) + 36));
  *(v0 + 560) = v4;
  if (!v4)
  {
    sub_1C70CAC64();
    OUTLINED_FUNCTION_166_0();
    *v25 = 0xD000000000000036;
    *(v25 + 8) = 0x80000001C759D330;
    *(v25 + 16) = 1;
    swift_willThrow();
    sub_1C6F85170();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_108_4();

    __asm { BRAA            X1, X16 }
  }

  v59 = v3;
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 528);
  v8 = *(v0 + 456);
  v60 = v4;
  v9 = sub_1C75504DC();
  sub_1C755068C();
  OUTLINED_FUNCTION_59();
  v10 = MEMORY[0x1E698A8C8];
  if (*v8 >= 2u)
  {
    v10 = MEMORY[0x1E698A8C0];
  }

  (*(v6 + 104))(v5, *v10, v7);
  v11 = sub_1C754E90C();
  v13 = v12;
  (*(v6 + 8))(v5, v7);
  v14 = MEMORY[0x1E69E6158];
  *(v0 + 168) = MEMORY[0x1E69E6158];
  *(v0 + 144) = v11;
  *(v0 + 152) = v13;
  sub_1C6F9ED18((v0 + 144), (v0 + 176));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7D4C();

  sub_1C755068C();
  v15 = sub_1C755068C();
  *(v0 + 232) = v14;
  *(v0 + 208) = v15;
  *(v0 + 216) = v16;
  sub_1C6F9ED18((v0 + 208), (v0 + 240));
  swift_isUniquelyReferenced_nonNull_native();
  v61 = v9;
  sub_1C6FC7D4C();

  v17 = v9;
  v18 = sub_1C754DC8C();
  v19 = CGImageSourceCreateWithURL(v18, 0);

  if (v19)
  {
    OUTLINED_FUNCTION_41();
    v23 = CGImageSourceCopyPropertiesAtIndex(v20, v21, v22);
    if (v23)
    {
      v24 = v23;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v61 = 0;
        type metadata accessor for CFString(0);
        sub_1C70CB88C(&qword_1EC214578, type metadata accessor for CFString);
        sub_1C755049C();
      }
    }
  }

  if (qword_1EC213D88 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 504);
  v31 = *(v0 + 448);
  v32 = sub_1C754FF1C();
  __swift_project_value_buffer(v32, qword_1EC2170D0);
  (*(v30 + 16))(v28, v31, v29);
  v33 = sub_1C754FEEC();
  v34 = sub_1C755119C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 520);
  v38 = *(v0 + 496);
  v37 = *(v0 + 504);
  if (v35)
  {
    v39 = OUTLINED_FUNCTION_41_0();
    v58 = OUTLINED_FUNCTION_20_1();
    v61 = v58;
    *v39 = 136446210;
    OUTLINED_FUNCTION_31_12();
    sub_1C70CB88C(v40, v41);
    v42 = sub_1C7551D8C();
    v43 = v17;
    v45 = v44;
    (*(v37 + 8))(v36, v38);
    v46 = sub_1C6F765A4(v42, v45, &v61);
    v17 = v43;

    *(v39 + 4) = v46;
    _os_log_impl(&dword_1C6F5C000, v33, v34, "Unable to determine image size for URL:%{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    (*(v37 + 8))(v36, v38);
  }

  if (**(v0 + 456) - 2 < 2)
  {
    goto LABEL_27;
  }

  v47 = sub_1C755068C();
  v61 = 123;
  v62 = 0xE100000000000000;
  if (2048.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (2048.0 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    __break(1u);
    goto LABEL_32;
  }

  *(v0 + 408) = 2048.0;
  v48 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v48);

  v47 = MEMORY[0x1CCA5CD70](44, 0xE100000000000000);
  if (2048.0 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (2048.0 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v47);
  }

  *(v0 + 416) = 2048.0;
  v49 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v49);

  MEMORY[0x1CCA5CD70](125, 0xE100000000000000);
  v50 = v61;
  v51 = v62;
  *(v0 + 296) = MEMORY[0x1E69E6158];
  *(v0 + 272) = v50;
  *(v0 + 280) = v51;
  sub_1C6F9ED18((v0 + 272), (v0 + 304));
  swift_isUniquelyReferenced_nonNull_native();
  v61 = v17;
  sub_1C6FC7D4C();

LABEL_27:
  OUTLINED_FUNCTION_137();
  v52 = v59;
  *(v0 + 568) = PerformanceMeasure.init(name:log:)();
  v53 = sub_1C754DC8C();
  *(v0 + 576) = v53;
  sub_1C70C03F8();

  v54 = sub_1C755048C();
  *(v0 + 584) = v54;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 400;
  *(v0 + 24) = sub_1C70C97E4;
  v55 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C70C20C8;
  *(v0 + 104) = &block_descriptor_5;
  *(v0 + 112) = v55;
  [v60 requestAlchemistProcessingForURL:v53 options:v54 progressHandler:0 completionHandler:v0 + 80];
  OUTLINED_FUNCTION_108_4();

  return MEMORY[0x1EEE6DEC8](v47);
}