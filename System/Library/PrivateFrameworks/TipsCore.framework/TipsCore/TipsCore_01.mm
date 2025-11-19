uint64_t sub_1C0109770(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C0106968(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1C014C9B0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066F8, &qword_1C0156710);
      v7 = sub_1C014C3F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C010996C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C01098CC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1C014C750();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1C014C840();
  *v1 = result;
  return result;
}

uint64_t sub_1C010996C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C010685C(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1C0109EF8((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C00FE794(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1C00FE794((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1C0109EF8((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1C0109EF8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_1C010A0FC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1C010A834();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C68D7040](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1C68D7040](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1C014C610();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1C014C610();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1C014C750();
  }

  result = sub_1C014C750();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1C010A358()
{
  v3 = MEMORY[0x1E69E7CC0];
  v0 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v1 = sub_1C014C200();
  [v0 setString_];

  sub_1C014C540();
  return v3;
}

uint64_t sub_1C010A448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D8, &qword_1C0156680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C010A4B8()
{
  result = sub_1C014BF40();
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

uint64_t dispatch thunk of SupportFlowSearchResultsProvider.supportFlows(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C010A72C;

  return v10(a1, a2);
}

uint64_t sub_1C010A72C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_1C010A834()
{
  result = qword_1EBE06708;
  if (!qword_1EBE06708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE06708);
  }

  return result;
}

uint64_t TPSSavedTipEntry.savedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  v4 = sub_1C014BD40();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TPSSavedTipEntry.savedDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  v4 = sub_1C014BD40();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1C010ACC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1C014C200();

  return v6;
}

uint64_t sub_1C010AD58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C014C230();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

id TPSSavedTipEntry.__allocating_init(tipIdentifier:savedDate:lastUsedVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___TPSSavedTipEntry_tipIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  v14 = sub_1C014BD40();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v11[v13], a3, v14);
  v16 = &v11[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v15 + 8))(a3, v14);
  return v17;
}

id TPSSavedTipEntry.init(tipIdentifier:savedDate:lastUsedVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___TPSSavedTipEntry_tipIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  v14 = sub_1C014BD40();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v5[v13], a3, v14);
  v16 = &v5[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v15 + 8))(a3, v14);
  return v17;
}

id TPSSavedTipEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSSavedTipEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TPSSavedTipEntry.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];

  v12 = sub_1C014C200();

  v13 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  v14 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v14, v4);
  v15 = sub_1C014BCE0();
  (*(v5 + 8))(v8, v4);
  v16 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = (v2 + OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion);
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];

  v20 = sub_1C014C200();

  v21 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
}

id TPSSavedTipEntry.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TPSSavedTipEntry.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v34 - v6;
  v8 = sub_1C014BD40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v34 - v14;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v16 = sub_1C014C5E0();
  if (!v16 || (v37 = 0, v38 = 0, v17 = v16, sub_1C014C220(), v17, !v38))
  {

    goto LABEL_11;
  }

  v35 = v15;
  v36 = v9;
  v18 = v37;
  sub_1C010074C(0, &qword_1EBE06728, 0x1E695DF00);
  v19 = sub_1C014C5E0();
  if (!v19 || (v20 = v19, v34[1] = v18, v21 = v36, (*(v36 + 56))(v7, 1, 1, v8), sub_1C010BA6C(), sub_1C014C920(), v20, (*(v21 + 48))(v7, 1, v8) == 1))
  {
LABEL_10:

    goto LABEL_11;
  }

  v22 = *(v21 + 32);
  v22(v13, v7, v8);
  v23 = v35;
  v22(v35, v13, v8);
  v24 = sub_1C014C5E0();
  if (!v24)
  {
    (*(v21 + 8))(v23, v8);
    goto LABEL_10;
  }

  v37 = 0;
  v38 = 0;
  v25 = v24;
  sub_1C014C220();

  if (v38)
  {
    v26 = sub_1C014C200();

    v27 = v35;
    v28 = sub_1C014BCE0();
    v29 = sub_1C014C200();

    v30 = [v2 initWithTipIdentifier:v26 savedDate:v28 lastUsedVersion:v29];

    (*(v36 + 8))(v27, v8);
    return v30;
  }

  (*(v36 + 8))(v35, v8);
LABEL_11:
  swift_getObjectType();
  v32 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v33 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1C010BA6C()
{
  result = qword_1EBE06730;
  if (!qword_1EBE06730)
  {
    sub_1C014BD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06730);
  }

  return result;
}

uint64_t type metadata accessor for TPSSavedTipEntry()
{
  result = qword_1EDD44A10;
  if (!qword_1EDD44A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C010BB18()
{
  result = sub_1C014BD40();
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

void *TPSAnalyticsEventSharedTip.__allocating_init(collectionID:correlationID:tipID:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;
  v16[10] = a6;
  v16[11] = a7;
  v16[12] = a8;
  v17 = TipsAnalyticsEvent.init(identifier:)(0xD000000000000019, 0x80000001C015BC90);
  v18 = v17[11] == 0x6E776F6E6B6E75 && v17[12] == 0xE700000000000000;
  if (v18 || (sub_1C014C9F0() & 1) != 0)
  {
    v19 = qword_1EDD44C28;

    if (v19 != -1)
    {
      swift_once();
    }

    v20._countAndFlagsBits = 0xD000000000000043;
    v20._object = 0x80000001C015BCB0;
    TipsLog.error(_:)(v20);
  }

  return v17;
}

void *TPSAnalyticsEventSharedTip.init(collectionID:correlationID:tipID:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a1;
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = a5;
  v8[10] = a6;
  v8[11] = a7;
  v8[12] = a8;
  v9 = TipsAnalyticsEvent.init(identifier:)(0xD000000000000019, 0x80000001C015BC90);
  v10 = v9[11] == 0x6E776F6E6B6E75 && v9[12] == 0xE700000000000000;
  if (v10 || (sub_1C014C9F0() & 1) != 0)
  {
    v11 = qword_1EDD44C28;

    if (v11 != -1)
    {
      swift_once();
    }

    v12._countAndFlagsBits = 0xD000000000000043;
    v12._object = 0x80000001C015BCB0;
    TipsLog.error(_:)(v12);
  }

  return v9;
}

unint64_t sub_1C010BE6C()
{
  v1 = v0;
  v2 = sub_1C00F8F90(MEMORY[0x1E69E7CC0]);
  v3 = v1[5];
  v4 = v1[6];

  v5 = sub_1C014C200();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v5, 0x697463656C6C6F63, 0xED000064695F6E6FLL, isUniquelyReferenced_nonNull_native);
  v19 = v2;
  if (v1[8])
  {
    v7 = v1[7];
    v8 = v1[8];

    v9 = sub_1C014C200();
  }

  else
  {
    v9 = 0;
  }

  sub_1C00F7D6C(v9, 0xD000000000000012, 0x80000001C015BD00);
  v10 = v1[9];
  v11 = v1[10];

  v12 = sub_1C014C200();

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v12, 0x64695F706974, 0xE600000000000000, v13);
  v15 = v1[11];
  v14 = v1[12];

  v16 = sub_1C014C200();

  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C00F875C(v16, 0x646E75625F707061, 0xED000064695F656CLL, v17);
  return v19;
}

uint64_t sub_1C010C058()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];
}

uint64_t TPSAnalyticsEventSharedTip.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return v0;
}

uint64_t TPSAnalyticsEventSharedTip.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1C010C238(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  v7 = a3();
  result = os_log_type_enabled(v6, v7);
  if (result)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1C010C980(a1, a2, &v11);
    _os_log_impl(&dword_1C00A7000, v6, v7, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1C68D7F30](v10, -1, -1);
    return MEMORY[0x1C68D7F30](v9, -1, -1);
  }

  return result;
}

uint64_t sub_1C010C324()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44C58 = result;
  return result;
}

uint64_t sub_1C010C3B0()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44C30 = result;
  return result;
}

uint64_t sub_1C010C440()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44878 = result;
  return result;
}

uint64_t sub_1C010C4C8()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44C70 = result;
  return result;
}

uint64_t sub_1C010C54C()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44888 = result;
  return result;
}

uint64_t sub_1C010C5E4()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44850 = result;
  return result;
}

uint64_t sub_1C010C674()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44C18 = result;
  return result;
}

uint64_t sub_1C010C6FC()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44860 = result;
  return result;
}

uint64_t sub_1C010C788()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44AB8 = result;
  return result;
}

uint64_t sub_1C010C810()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EDD44AA0 = result;
  return result;
}

uint64_t sub_1C010C89C()
{
  sub_1C010CF54();
  result = sub_1C014C630();
  qword_1EBE06738 = result;
  return result;
}

id sub_1C010C924@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

uint64_t sub_1C010C980(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C010CA4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C00FC1C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1C010CA4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C010CB58(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C014C850();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C010CB58(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C010CBA4(a1, a2);
  sub_1C010CCD4(&unk_1F3F2C700);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C010CBA4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C0120B80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C014C850();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C014C310();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C0120B80(v10, 0);
        result = sub_1C014C7F0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C010CCD4(uint64_t result)
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

  result = sub_1C010CDC0(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

char *sub_1C010CDC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06740, &qword_1C0156818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for WorkItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WorkItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C010CF54()
{
  result = qword_1EDD44D28;
  if (!qword_1EDD44D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD44D28);
  }

  return result;
}

id sub_1C010CFA0()
{
  v0 = sub_1C010CFCC();

  return v0;
}

id sub_1C010CFCC()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1C01403D0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0156330;
  *(inited + 32) = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  sub_1C00FA23C(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v3 = sub_1C014C3B0();

  v4 = [v2 initWithArray_];

  sub_1C014C500();
  v5 = sub_1C014C4F0();

  [v0 setClasses:v5 forSelector:sel_updateSessionMapWithIdentifier_data_ argumentIndex:0 ofReply:0];

  sub_1C01403D0();
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1C0156330;
  *(v6 + 32) = sub_1C010074C(0, &qword_1EBE06748, 0x1E695DEF0);
  sub_1C00FA23C(v6);
  swift_setDeallocating();
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = sub_1C014C3B0();

  v9 = [v7 initWithArray_];

  sub_1C014C500();
  v10 = sub_1C014C4F0();

  [v0 setClasses:v10 forSelector:sel_updateSessionMapWithIdentifier_data_ argumentIndex:1 ofReply:0];

  return v0;
}

uint64_t Trimmed.wrappedValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1C010D288(void *a1, uint64_t *a2)
{
  v4 = sub_1C014B930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[1];

  v10 = a1[1];
  v15[0] = *a1;
  v15[1] = v10;
  sub_1C014B920();
  sub_1C00FCDA8();
  v11 = sub_1C014C6A0();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t Trimmed.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C014B930();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  sub_1C014B920();
  sub_1C00FCDA8();
  v11 = sub_1C014C6A0();
  v13 = v12;
  (*(v7 + 8))(v10, v6);

  v14 = v3[1];

  *v3 = v11;
  v3[1] = v13;
  return result;
}

void (*Trimmed.wrappedValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_1C014B930();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[9] = v8;
  v9 = v1[1];
  *v5 = *v1;
  v5[1] = v9;

  return sub_1C010D594;
}

void sub_1C010D594(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v8 = (*a1)[6];
  v7 = (*a1)[7];
  v9 = *a1;
  if (a2)
  {
    v9[2] = v3;
    v9[3] = v4;

    sub_1C014B920();
    sub_1C00FCDA8();
    v10 = sub_1C014C6A0();
    v12 = v11;
    (*(v6 + 8))(v5, v7);

    v13 = v8[1];

    *v8 = v10;
    v8[1] = v12;
    v14 = v9[1];
  }

  else
  {
    v9[4] = v3;
    v9[5] = v4;
    sub_1C014B920();
    sub_1C00FCDA8();
    v15 = sub_1C014C6A0();
    v17 = v16;
    (*(v6 + 8))(v5, v7);

    v18 = v8[1];

    *v8 = v15;
    v8[1] = v17;
  }

  free(v5);

  free(v2);
}

TipsCore::Trimmed __swiftcall Trimmed.init(wrappedValue:)(Swift::String wrappedValue)
{
  object = wrappedValue._object;
  countAndFlagsBits = wrappedValue._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1C014B930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0;
  v4[1] = 0xE000000000000000;

  v16[0] = countAndFlagsBits;
  v16[1] = object;
  sub_1C014B920();
  sub_1C00FCDA8();
  v10 = sub_1C014C6A0();
  v12 = v11;
  (*(v6 + 8))(v9, v5);

  *v4 = v10;
  v4[1] = v12;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C010D7F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C010D840(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C010D958()
{
  v1 = (v0 + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C010D9B0(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1C010E2AC, v5);
}

void sub_1C010DA44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1C014BB60();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1C010DB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C010DBF8;
  v7[3] = &block_descriptor_1;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

void sub_1C010DBF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1C010DC64@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1C010E2E8;
  a2[1] = v6;
}

uint64_t sub_1C010DCF0(uint64_t *a1, void (*a2)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_1C010E2F0, v5);
}

uint64_t sub_1C010DD80(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_1C010E2B4;
  v6[1] = v5;
}

uint64_t sub_1C010DE1C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_1C010E2BC;
  v8[1] = v6;

  a3(v8);
}

id TPSAsyncBlockOperation.__allocating_init(asyncBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id TPSAsyncBlockOperation.init(asyncBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for TPSAsyncBlockOperation();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1C010E004(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      a1 = sub_1C014BB60();
    }

    [v3 finishWithError_];
  }
}

id TPSAsyncBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSAsyncBlockOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAsyncBlockOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C010E2BC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1C010E2F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

id sub_1C010E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___TPSSearchResultItem_contentType];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR___TPSSearchResultItem_title];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v9[OBJC_IVAR___TPSSearchResultItem_body];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v9[OBJC_IVAR___TPSSearchResultItem_relevance] = 0x3FF0000000000000;
  v14 = &v9[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v9[OBJC_IVAR___TPSSearchResultItem_collectionIdentifier];
  *v15 = a3;
  *(v15 + 1) = a4;
  v17.receiver = v9;
  v17.super_class = v4;
  return objc_msgSendSuper2(&v17, sel_init);
}

double SearchResult.Item.relevance.getter()
{
  v1 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  return *(v0 + v1);
}

id SearchResult.Item.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SearchResult.deviceExpertResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
  swift_beginAccess();
  return sub_1C010E838(v1 + v3, a1);
}

uint64_t sub_1C010E838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C010EA2C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

id SearchResult.query.getter()
{
  v1 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t SearchResult.replaceItems(with:)(uint64_t result)
{
  if (result)
  {
    v2 = OBJC_IVAR___TPSSearchResult_items;
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + v2);
    v5 = OBJC_IVAR___TPSSearchResult_items;
    swift_beginAccess();
    v6 = *(v1 + v5);
    *(v1 + v5) = v4;
  }

  return result;
}

Swift::Void __swiftcall SearchResult.append(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  if (a1._rawValue >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C014C750())
  {
    v4 = OBJC_IVAR___TPSSearchResult_items;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = rawValue;
    if (v5 >> 62)
    {
      v7 = sub_1C014C750();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    rawValue = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v39 = MEMORY[0x1E69E7CC0];

      sub_1C01090B4(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return;
      }

      v37 = i;
      v8 = 0;
      v1 = v39;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1C68D7040](v8, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = &v9[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
        swift_beginAccess();
        v12 = *v11;
        v13 = *(v11 + 1);

        v15 = *(v39 + 16);
        v14 = *(v39 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C01090B4((v14 > 1), v15 + 1, 1);
        }

        ++v8;
        *(v39 + 16) = v15 + 1;
        v16 = v39 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
      }

      while (v7 != v8);

      i = v37;
      rawValue = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }

    v17 = sub_1C0110C68(v1);

    v18 = 0;
    v40 = rawValue;
    v36 = v6 & 0xFFFFFFFFFFFFFF8;
    v38 = v6 & 0xC000000000000001;
    v35 = v6;
    v19 = v6 + 32;
    v20 = v17 + 56;
    while (1)
    {
      if (v38)
      {
        v22 = MEMORY[0x1C68D7040](v18, v35);
      }

      else
      {
        if (v18 >= *(v36 + 16))
        {
          goto LABEL_39;
        }

        v22 = *(v19 + 8 * v18);
      }

      v23 = v22;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v25 = &v22[OBJC_IVAR___TPSSearchResultItem_documentIdentifier];
      swift_beginAccess();
      if (!*(v17 + 16))
      {
        goto LABEL_18;
      }

      v26 = i;
      v28 = *v25;
      v27 = *(v25 + 1);
      v29 = *(v17 + 40);
      sub_1C014CAE0();

      sub_1C014C2E0();
      v30 = sub_1C014CB10();
      v31 = -1 << *(v17 + 32);
      v1 = v30 & ~v31;
      if ((*(v20 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
      {
        rawValue = ~v31;
        while (1)
        {
          v32 = (*(v17 + 48) + 16 * v1);
          v33 = *v32 == v28 && v32[1] == v27;
          if (v33 || (sub_1C014C9F0() & 1) != 0)
          {
            break;
          }

          v1 = (v1 + 1) & rawValue;
          if (((*(v20 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        i = v26;
        if (v18 == v26)
        {
LABEL_36:

          v34 = v40;
          swift_beginAccess();
          sub_1C0108F40(v34);
          swift_endAccess();
          return;
        }
      }

      else
      {
LABEL_17:

        i = v26;
LABEL_18:
        sub_1C014C860();
        v21 = v40[2];
        sub_1C014C890();
        sub_1C014C8A0();
        v1 = &v40;
        sub_1C014C870();
        if (v18 == i)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }
}

Swift::Void __swiftcall SearchResult.encode(with:)(NSCoder with)
{
  v3 = sub_1C014C270();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35[1] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C014BF80();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C014BE60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];

  v18 = OBJC_IVAR___TPSSearchResult_items;
  swift_beginAccess();
  v19 = *(v1 + v18);
  type metadata accessor for SearchResult.Item();

  v20 = sub_1C014C3B0();

  v21 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

  v22 = OBJC_IVAR___TPSSearchResult_suggestions;
  swift_beginAccess();
  v23 = *(v1 + v22);

  v24 = sub_1C014C3B0();

  v25 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];

  v26 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
  swift_beginAccess();
  if (!(*(v11 + 48))(v1 + v26, 1, v10))
  {
    v27 = v6;
    v28 = v36;
    (*(v11 + 16))(v14, v1 + v26, v10);
    sub_1C014BF70();
    sub_1C0110D24();
    v29 = sub_1C014BFA0();
    v31 = v30;
    (*(v28 + 8))(v9, v27);
    (*(v11 + 8))(v14, v10);
    sub_1C014C260();
    sub_1C014C240();
    if (v32)
    {
      v33 = sub_1C014C200();

      v34 = sub_1C014C200();
      [(objc_class *)with.super.isa encodeObject:v33 forKey:v34];
    }

    sub_1C0110D7C(v29, v31);
  }
}

id SearchResult.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1C014BF60();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  type metadata accessor for SearchQuery();
  v17 = sub_1C014C5E0();
  if (!v17)
  {

LABEL_13:
    swift_getObjectType();
    v30 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v31 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = v17;
  v50 = v11;
  v51 = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067A8, &qword_1C0157B10);
  v19 = swift_allocObject();
  v52 = xmmword_1C0156390;
  *(v19 + 16) = xmmword_1C0156390;
  v20 = sub_1C010074C(0, &unk_1EDD44910, 0x1E695DEC8);
  *(v19 + 32) = v20;
  *(v19 + 40) = type metadata accessor for SearchResult.Item();
  sub_1C014C5F0();

  if (!v56)
  {

LABEL_12:
    sub_1C00F98F4(v55, &qword_1EBE06490, &qword_1C0155FA0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067B0, &qword_1C0156890);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v49 = v16;
  v21 = v54;
  v22 = swift_allocObject();
  *(v22 + 16) = v52;
  *(v22 + 32) = v20;
  *(v22 + 40) = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  sub_1C014C5F0();

  if (!v56)
  {

    goto LABEL_12;
  }

  *&v52 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v47 = v54;
  v23 = sub_1C014BE60();
  v45 = *(v23 - 8);
  v24 = *(v45 + 56);
  v25 = v45 + 56;
  v26 = v49;
  v48 = v23;
  v24(v49, 1, 1);
  v27 = sub_1C014C5E0();
  v28 = v51;
  if (v27)
  {
    v46 = v25;
    v29 = v27;
    sub_1C014C230();

    sub_1C014BF50();
    sub_1C0110D24();
    sub_1C014BF90();
    v26 = v49;
    sub_1C00F98F4(v49, &qword_1EBE066D0, &unk_1C0156640);
    v33 = v48;
    (v24)(v14, 0, 1, v48);
    (*(v45 + 32))(v26, v14, v33);
    (v24)(v26, 0, 1, v33);
    v28 = v51;
  }

  v34 = v50;
  sub_1C010E838(v26, v50);
  v35 = objc_allocWithZone(v28);
  v36 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
  (v24)(&v35[OBJC_IVAR___TPSSearchResult_deviceExpertResponse], 1, 1, v48);
  v37 = OBJC_IVAR___TPSSearchResult_items;
  v38 = MEMORY[0x1E69E7CC0];
  *&v35[OBJC_IVAR___TPSSearchResult_items] = MEMORY[0x1E69E7CC0];
  v39 = OBJC_IVAR___TPSSearchResult_suggestions;
  *&v35[OBJC_IVAR___TPSSearchResult_suggestions] = v38;
  *&v35[OBJC_IVAR___TPSSearchResult_query] = v18;
  swift_beginAccess();
  *&v35[v37] = v52;
  swift_beginAccess();
  *&v35[v39] = v47;
  v40 = v18;
  swift_beginAccess();
  sub_1C0107C90(v34, &v35[v36]);
  swift_endAccess();
  v53.receiver = v35;
  v53.super_class = v28;
  v41 = objc_msgSendSuper2(&v53, sel_init);

  sub_1C00F98F4(v34, &qword_1EBE066D0, &unk_1C0156640);
  sub_1C00F98F4(v49, &qword_1EBE066D0, &unk_1C0156640);
  swift_getObjectType();
  v42 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v43 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v41;
}

uint64_t SearchResult.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066D0, &unk_1C0156640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30[-v4];
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1C014C800();
  v33 = v31;
  v34 = v32;
  MEMORY[0x1C68D6B10](0x6669746E65646928, 0xEC0000003A726569);
  v6 = OBJC_IVAR___TPSSearchResult_query;
  swift_beginAccess();
  v7 = (*(v0 + v6) + OBJC_IVAR___TPSSearchQuery_identifier);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  MEMORY[0x1C68D6B10](v8, v9);

  MEMORY[0x1C68D6B10](0x3A736D657469202CLL, 0xE800000000000000);
  v10 = OBJC_IVAR___TPSSearchResult_items;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = type metadata accessor for SearchResult.Item();

  v14 = MEMORY[0x1C68D6BE0](v13, v12);
  v16 = v15;

  MEMORY[0x1C68D6B10](v14, v16);

  MEMORY[0x1C68D6B10](0x736567677573202CLL, 0xEE003A736E6F6974);
  v17 = OBJC_IVAR___TPSSearchResult_suggestions;
  swift_beginAccess();
  v18 = *(v1 + v17);

  v20 = MEMORY[0x1C68D6BE0](v19, MEMORY[0x1E69E6158]);
  v22 = v21;

  MEMORY[0x1C68D6B10](v20, v22);

  MEMORY[0x1C68D6B10](0x636E61437369202CLL, 0xEE003A64656C6C65);
  v23 = *(v1 + v6);
  v24 = OBJC_IVAR___TPSSearchQuery_isCancelled;
  swift_beginAccess();
  if (*(v23 + v24))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v23 + v24))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x1C68D6B10](v25, v26);

  MEMORY[0x1C68D6B10](0xD000000000000018, 0x80000001C015BF10);
  v27 = OBJC_IVAR___TPSSearchResult_deviceExpertResponse;
  swift_beginAccess();
  sub_1C010E838(v1 + v27, v5);
  v28 = sub_1C014C290();
  MEMORY[0x1C68D6B10](v28);

  return v33;
}

Swift::Void __swiftcall SearchResult.Item.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1C014C200();

  v7 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = (v1 + OBJC_IVAR___TPSSearchResultItem_collectionIdentifier);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  v11 = sub_1C014C200();

  v12 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = (v1 + OBJC_IVAR___TPSSearchResultItem_correlationIdentifier);
  swift_beginAccess();
  if (v13[1])
  {
    v14 = *v13;

    v15 = sub_1C014C200();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  v17 = (v1 + OBJC_IVAR___TPSSearchResultItem_contentType);
  swift_beginAccess();
  if (v17[1])
  {
    v18 = *v17;

    v19 = sub_1C014C200();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  v21 = (v1 + OBJC_IVAR___TPSSearchResultItem_title);
  swift_beginAccess();
  if (v21[1])
  {
    v22 = *v21;

    v23 = sub_1C014C200();
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  v25 = (v1 + OBJC_IVAR___TPSSearchResultItem_body);
  swift_beginAccess();
  if (v25[1])
  {
    v26 = *v25;

    v27 = sub_1C014C200();
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];
  swift_unknownObjectRelease();

  v29 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  v30 = *(v1 + v29);
  v31 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeDouble:v31 forKey:v30];
}

id SearchResult.Item.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *SearchResult.Item.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v4 = sub_1C014C5E0();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_1C014C5E0();
  if (!v6)
  {

    a1 = v5;
LABEL_6:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v8 = [v2 initWithIdentifier:v5 collectionIdentifier:v6];

  v9 = v8;
  v10 = sub_1C014C5E0();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C014C230();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = &v9[OBJC_IVAR___TPSSearchResultItem_correlationIdentifier];
  swift_beginAccess();
  v16 = v15[1];
  *v15 = v12;
  v15[1] = v14;

  v17 = sub_1C014C5E0();
  if (v17)
  {
    v18 = v17;
    v19 = sub_1C014C230();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = &v9[OBJC_IVAR___TPSSearchResultItem_contentType];
  swift_beginAccess();
  v23 = v22[1];
  *v22 = v19;
  v22[1] = v21;

  v24 = sub_1C014C5E0();
  if (v24)
  {
    v25 = v24;
    v26 = sub_1C014C230();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = &v9[OBJC_IVAR___TPSSearchResultItem_title];
  swift_beginAccess();
  v30 = v29[1];
  *v29 = v26;
  v29[1] = v28;

  v31 = sub_1C014C5E0();
  if (v31)
  {
    v32 = v31;
    v33 = sub_1C014C230();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = &v9[OBJC_IVAR___TPSSearchResultItem_body];
  swift_beginAccess();
  v37 = v36[1];
  *v36 = v33;
  v36[1] = v35;

  v38 = sub_1C014C200();
  [a1 decodeDoubleForKey_];
  v40 = v39;

  v41 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  *&v9[v41] = v40;

  return v9;
}

id sub_1C0110918(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C014C200();

  return v5;
}

uint64_t SearchResult.Item.description.getter()
{
  v1 = v0;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x6669746E65646928, 0xEC0000003A726569);
  v2 = (v0 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x1C68D6B10](v3, v4);

  MEMORY[0x1C68D6B10](0x63656C6C6F63202CLL, 0xED00003A6E6F6974);
  v5 = (v1 + OBJC_IVAR___TPSSearchResultItem_collectionIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x1C68D6B10](v6, v7);

  MEMORY[0x1C68D6B10](0x3A656C746974202CLL, 0xE800000000000000);
  v8 = (v1 + OBJC_IVAR___TPSSearchResultItem_title);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    v11 = *v8;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = v8[1];
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C68D6B10](v11, v12);

  MEMORY[0x1C68D6B10](0x6E65746E6F63202CLL, 0xEE003A6570795474);
  v13 = (v1 + OBJC_IVAR___TPSSearchResultItem_contentType);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];
  if (v14)
  {
    v16 = *v13;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v17 = v13[1];
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x1C68D6B10](v16, v17);

  MEMORY[0x1C68D6B10](0x6176656C6572202CLL, 0xED0000203A79636ELL);
  v18 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  v19 = *(v1 + v18);
  sub_1C014C4D0();
  return 0;
}

void (*sub_1C0110BE0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C68D7040](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C0110C60;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0110C68(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C68D6D20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C013C4D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1C0110D24()
{
  result = qword_1EBE067A0;
  if (!qword_1EBE067A0)
  {
    sub_1C014BE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE067A0);
  }

  return result;
}

uint64_t sub_1C0110D7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for SearchResult()
{
  result = qword_1EDD44BA0;
  if (!qword_1EDD44BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C0110E24()
{
  sub_1C0110EE8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C0110EE8()
{
  if (!qword_1EDD44BB0)
  {
    sub_1C014BE60();
    v0 = sub_1C014C640();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD44BB0);
    }
  }
}

uint64_t sub_1C0110F58(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C014C750())
  {
    v4 = sub_1C010074C(0, &qword_1EBE067D0, 0x1E6964E80);
    v5 = sub_1C0111098();
    result = MEMORY[0x1C68D6D20](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C68D7040](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1C013C628(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1C014C750();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1C0111098()
{
  result = qword_1EBE067D8;
  if (!qword_1EBE067D8)
  {
    sub_1C010074C(255, &qword_1EBE067D0, 0x1E6964E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE067D8);
  }

  return result;
}

uint64_t SupportFlowSessionAnalyticsClient.Error.hashValue.getter()
{
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](0);
  return sub_1C014CB10();
}

uint64_t sub_1C0111188()
{
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](0);
  return sub_1C014CB10();
}

uint64_t sub_1C01111F4()
{
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](0);
  return sub_1C014CB10();
}

uint64_t SupportFlowSessionAnalyticsClient.__allocating_init()()
{
  v0 = swift_allocObject();
  SupportFlowSessionAnalyticsClient.init()();
  return v0;
}

uint64_t SupportFlowSessionAnalyticsClient.init()()
{
  v1 = v0;
  v2 = sub_1C014C580();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1C014C0D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1C014C5A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0111504();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v6);
  sub_1C014C0B0();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1C0111550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C01115A8();
  sub_1C014C700();
  *(v0 + 16) = sub_1C014C5D0();
  v11 = objc_allocWithZone(TPSServiceConnection);
  v12 = sub_1C014C200();
  v13 = [v11 initWithServiceName_];

  *(v1 + 24) = v13;
  v14 = v13;
  v15 = sub_1C010CFCC();
  [v14 setRemoteInterfaceInstance_];

  return v1;
}

unint64_t sub_1C0111504()
{
  result = qword_1EDD44B68;
  if (!qword_1EDD44B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD44B68);
  }

  return result;
}

unint64_t sub_1C0111550()
{
  result = qword_1EDD44B70;
  if (!qword_1EDD44B70)
  {
    sub_1C014C580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44B70);
  }

  return result;
}

unint64_t sub_1C01115A8()
{
  result = qword_1EDD44B90;
  if (!qword_1EDD44B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE067E0, &qword_1C01568E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44B90);
  }

  return result;
}

uint64_t SupportFlowSessionAnalyticsClient.updateSessionMap(identifier:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0111634, 0, 0);
}

uint64_t sub_1C0111634()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v5[2] = 0xD000000000000022;
  v5[3] = 0x80000001C015C0F0;
  v5[4] = v2;
  v5[5] = sub_1C01121C4;
  v5[6] = v4;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1C011177C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1C011177C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1C01118B8;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_1C01118A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C01118B8()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1C0111924(void *a1)
{
  v2 = sub_1C014C200();
  v3 = sub_1C014BCB0();
  [a1 updateSessionMapWithIdentifier:v2 data:v3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  return sub_1C014C440();
}

uint64_t sub_1C01119E0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  v2[2] = 0xD000000000000014;
  v2[3] = 0x80000001C015C120;
  v2[4] = v1;
  v2[5] = sub_1C0111C78;
  v2[6] = 0;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1C0111AF8;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1C0111AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1C0111C14;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1C011245C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C0111C14()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1C0111C78(void *a1)
{
  [a1 logForAppTerminate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  return sub_1C014C440();
}

uint64_t SupportFlowSessionAnalyticsClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C0111D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v24[1] = a6;
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  if (qword_1EDD44C28 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDD44C30;
  aBlock._countAndFlagsBits = 0;
  aBlock._object = 0xE000000000000000;
  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD000000000000034, 0x80000001C015C190);
  MEMORY[0x1C68D6B10](a2, a3);
  v16 = aBlock;
  aBlock._countAndFlagsBits = v15;
  TipsLog.debug(_:)(v16);

  v17 = [*(a4 + 24) connection];
  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v14, v10);
  v31 = sub_1C0112374;
  v32 = v19;
  aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
  aBlock._object = 1107296256;
  v29 = sub_1C0130E34;
  v30 = &block_descriptor_2;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(&aBlock, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F8, &qword_1C0156A18);
  if (swift_dynamicCast())
  {
    v25(v26, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v27[0] = qword_1EDD44C30;
    v22._countAndFlagsBits = 0xD000000000000079;
    v22._object = 0x80000001C015C1D0;
    TipsLog.error(_:)(v22);
    sub_1C0112408();
    v27[0] = swift_allocError();
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&aBlock._countAndFlagsBits);
}

uint64_t sub_1C0112090(void *a1)
{
  if (qword_1EDD44C28 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0xD000000000000058, 0x80000001C015C250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
  sub_1C014C8B0();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  TipsLog.error(_:)(v2);

  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08);
  return sub_1C014C430();
}

uint64_t sub_1C01121C4(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1C0111924(a1);
}

unint64_t sub_1C01121E8()
{
  result = qword_1EBE067E8;
  if (!qword_1EBE067E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE067E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowSessionAnalyticsClient.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SupportFlowSessionAnalyticsClient.Error(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1C0112374(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067F0, &unk_1C0156A08) - 8) + 80);

  return sub_1C0112090(a1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C0112408()
{
  result = qword_1EBE06800;
  if (!qword_1EBE06800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06800);
  }

  return result;
}

uint64_t sub_1C01124D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0156A30;
  v1 = *MEMORY[0x1E6964C28];
  *(v0 + 32) = sub_1C014C230();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E6963F48];
  *(v0 + 48) = sub_1C014C230();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E6963F28];
  *(v0 + 64) = sub_1C014C230();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E6964DA8];
  *(v0 + 80) = sub_1C014C230();
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E6964440];
  *(v0 + 96) = sub_1C014C230();
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x1E6963EA0];
  result = sub_1C014C230();
  *(v0 + 112) = result;
  *(v0 + 120) = v13;
  *(v0 + 128) = 0xD000000000000024;
  *(v0 + 136) = 0x80000001C015C2F0;
  *(v0 + 144) = 0xD000000000000023;
  *(v0 + 152) = 0x80000001C015C320;
  qword_1EBE06810 = v0;
  return result;
}

id sub_1C01125D0()
{
  v1 = v0;
  v2 = sub_1C014B930();
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C0112D60();
  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  if (qword_1EBE06368 != -1)
  {
    swift_once();
  }

  v83 = qword_1EBE06810;

  sub_1C0108E4C(v9);
  v10 = v83;
  v83 = MEMORY[0x1E69E7CD0];
  sub_1C011350C(v10);

  v11 = sub_1C014C3B0();

  [v8 setFetchAttributes_];

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
  v13 = swift_allocObject();
  v75 = xmmword_1C0156330;
  *(v13 + 16) = xmmword_1C0156330;
  v14 = *MEMORY[0x1E696A388];
  *(v13 + 32) = sub_1C014C230();
  *(v13 + 40) = v15;
  v16 = sub_1C014C3B0();

  [v8 setProtectionClasses_];

  v73 = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v75;
  result = [objc_opt_self() spotlightBundleIdentifier];
  if (result)
  {
    v19 = result;
    v20 = sub_1C014C230();
    v22 = v21;

    *(v17 + 32) = v20;
    *(v17 + 40) = v22;
    v23 = sub_1C014C3B0();

    *&v75 = v8;
    [v8 setBundleIDs_];

    v24 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
    swift_beginAccess();
    v25 = *(v1 + v24);
    if (v25 != 3)
    {
      v26 = OBJC_IVAR___TPSSearchQuery_options;
      swift_beginAccess();
      if (v25 != 2 || (*(v1 + v26) & 1) == 0)
      {
        v27 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
        swift_beginAccess();
        v28 = *v27;
        v29 = v27[1];
        v82 = MEMORY[0x1E69E7CC0];

        v30 = sub_1C011366C(v28, v29, 1);
        sub_1C0108E4C(v30);
        v31 = sub_1C011366C(v28, v29, 0);

        sub_1C0108E4C(v31);
        if (*(v82 + 16))
        {
          v32 = sub_1C014C3B0();
        }

        else
        {

          v32 = 0;
        }

        v33 = v75;
        [v75 setRankingQueries_];

        v34 = [v33 rankingQueries];
        if (v34)
        {
          v35 = v34;
          v36 = sub_1C014C3C0();

          v37 = *(v36 + 16);

          if (v37)
          {
            v38 = swift_allocObject();
            *(v38 + 16) = v37;
            v39 = (v1 + OBJC_IVAR___TPSSearchQuery_rankingModifier);
            v41 = *(v1 + OBJC_IVAR___TPSSearchQuery_rankingModifier);
            v40 = *(v1 + OBJC_IVAR___TPSSearchQuery_rankingModifier + 8);
            *v39 = sub_1C011384C;
            v39[1] = v38;
            sub_1C0113884(v41);
          }
        }
      }
    }

    v42 = OBJC_IVAR___TPSSearchQuery_options;
    swift_beginAccess();
    if ((*(v1 + v42) & 2) != 0)
    {
      v71 = v7;
      v43 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
      swift_beginAccess();
      v44 = v43[1];
      v80 = *v43;
      v81 = v44;

      sub_1C014B920();
      sub_1C00FCDA8();
      v45 = sub_1C014C6A0();
      v47 = v46;
      (*(v72 + 8))(v5, v2);

      v80 = v45;
      v81 = v47;
      v48 = sub_1C014C6C0();
      v50 = v49;

      v51 = 4;
      v52 = &unk_1F3F2C750;
      do
      {
        v53 = *(v52 - 1);
        v54 = *v52;
        v80 = v48;
        v81 = v50;
        v78 = v53;
        v79 = v54;
        v76 = 92;
        v77 = 0xE100000000000000;

        MEMORY[0x1C68D6B10](v53, v54);
        v48 = sub_1C014C6B0();
        v56 = v55;

        v50 = v56;
        v52 += 2;
        --v51;
      }

      while (v51);
      v80 = v48;
      v81 = v56;
      MEMORY[0x1C68D6B10](42, 0xE100000000000000);
      v57 = sub_1C014C200();

      v58 = v75;
      [v75 setCompletionString_];

      [v58 setCompletionResultCount_];
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1C0156A40;
      v60 = *MEMORY[0x1E6964C28];
      *(v59 + 32) = sub_1C014C230();
      *(v59 + 40) = v61;
      v62 = *MEMORY[0x1E6964520];
      *(v59 + 48) = sub_1C014C230();
      *(v59 + 56) = v63;
      v64 = *MEMORY[0x1E6963F48];
      *(v59 + 64) = sub_1C014C230();
      *(v59 + 72) = v65;
      v66 = sub_1C014C3B0();

      [v58 setCompletionAttributes_];
    }

    v67 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v68 = v75;
    v69 = sub_1C014C200();

    v70 = [v67 initWithQueryString:v69 queryContext:v68];

    return v70;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0112D60()
{
  v1 = v0;
  v2 = OBJC_IVAR___TPSSearchQuery_matchingStyle;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 3)
  {
    v4 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
    swift_beginAccess();
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v7 = (v1 + OBJC_IVAR___TPSSearchQuery_searchTerm);
    swift_beginAccess();
    v8 = *v7;
    v9 = v7[1];
    v10 = OBJC_IVAR___TPSSearchQuery_options;
    swift_beginAccess();
    v11 = (*(v1 + v10) >> 2) & 1;

    v12 = sub_1C0113000(v8, v9, v11, v3);
    v14 = v13;

    if (*(v1 + v10))
    {
      sub_1C014C800();

      v21 = 0xD000000000000013;
      v22 = 0x80000001C015C350;
    }

    else
    {
      v21 = 0x203D3D202A2ALL;
      v22 = 0xE600000000000000;
    }

    MEMORY[0x1C68D6B10](v12, v14);

    v15 = v21;
    v16 = v22;
    v17 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
    swift_beginAccess();
    v18 = sub_1C0113338(*(v1 + v17));
    if (v19)
    {
      MEMORY[0x1C68D6B10](v18);

      MEMORY[0x1C68D6B10](539371040, 0xE400000000000000);

      v15 = v21;
      v16 = v22;
    }

    MEMORY[0x1C68D6B10](v15, v16);

    MEMORY[0x1C68D6B10](41, 0xE100000000000000);
    return 40;
  }

  return v5;
}

uint64_t sub_1C0113000(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v29 = a4;
  HIDWORD(v28) = a3;
  v6 = sub_1C014B930();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  sub_1C014B920();
  sub_1C00FCDA8();
  v11 = sub_1C014C6A0();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v34 = v11;
  v35 = v13;
  v14 = sub_1C014C6C0();
  v16 = v15;

  v17 = 4;
  v18 = &unk_1F3F2C750;
  do
  {
    v19 = *(v18 - 1);
    v20 = *v18;
    v34 = v14;
    v35 = v16;
    v32 = v19;
    v33 = v20;
    v30 = 92;
    v31 = 0xE100000000000000;

    MEMORY[0x1C68D6B10](v19, v20);
    v14 = sub_1C014C6B0();
    v22 = v21;

    v16 = v22;
    v18 += 2;
    --v17;
  }

  while (v17);
  if ((v28 & 0x100000000) != 0)
  {
    v23 = 808923238;
  }

  else
  {
    v23 = 0;
  }

  if ((v28 & 0x100000000) != 0)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      v34 = 39;
      v35 = 0xE100000000000000;
      MEMORY[0x1C68D6B10](v14, v22);

      v25 = 0x74776463272ALL;
      v26 = 0xE600000000000000;
LABEL_16:
      MEMORY[0x1C68D6B10](v25, v26);
      MEMORY[0x1C68D6B10](v23, v24);

      return v34;
    }

    if (v29 == 1)
    {
      v34 = 39;
      v35 = 0xE100000000000000;
      MEMORY[0x1C68D6B10](v14, v22);

      v25 = 0x7477646327;
      v26 = 0xE500000000000000;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v29 == 2)
  {

    v34 = 39;
    v35 = 0xE100000000000000;
    MEMORY[0x1C68D6B10](v14, v22);

    MEMORY[0x1C68D6B10](39, 0xE100000000000000);
    return v34;
  }

  if (v29 != 3)
  {
LABEL_21:
    v34 = v29;
    result = sub_1C014CA30();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1C0113338(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000025;
    }

    if (a1 == 4)
    {
      return 0xD00000000000002BLL;
    }
  }

  else
  {
    if (a1 < 2)
    {
      return 0;
    }

    if (a1 == 2)
    {
      return 0xD00000000000001FLL;
    }
  }

  result = sub_1C014CA30();
  __break(1u);
  return result;
}

uint64_t sub_1C0113468()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C0156A50;
  v1 = *MEMORY[0x1E6964BB0];
  *(v0 + 32) = sub_1C014C230();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E6963F28];
  *(v0 + 48) = sub_1C014C230();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E6964520];
  *(v0 + 64) = sub_1C014C230();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E6963F48];
  result = sub_1C014C230();
  *(v0 + 80) = result;
  *(v0 + 88) = v9;
  off_1EBE06818 = v0;
  return result;
}

uint64_t sub_1C011350C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1C013C4D8(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1C01090B4(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1C01090B4((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_1C011366C(uint64_t a1, unint64_t a2, char a3)
{
  v3 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = qword_1F3F2C788[v3 + 4];
    if (v5 != 2)
    {
      break;
    }

LABEL_4:
    if (++v3 == 4)
    {
      return v23;
    }
  }

  v18 = v3;
  result = sub_1C0113000(a1, a2, a3 & 1, v5);
  v19 = result;
  v20 = v7;
  if (qword_1EBE06370 != -1)
  {
    result = swift_once();
  }

  v8 = off_1EBE06818;
  v9 = *(off_1EBE06818 + 2);
  if (!v9)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_3:

    sub_1C0108E4C(v4);
    v3 = v18;
    goto LABEL_4;
  }

  v10 = 0;
  v11 = (off_1EBE06818 + 40);
  v4 = MEMORY[0x1E69E7CC0];
  while (v10 < v8[2])
  {
    v21 = *(v11 - 1);
    v22 = *v11;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1C68D6B10](61, 0xE100000000000000);
    MEMORY[0x1C68D6B10](v19, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1C00FE898(0, *(v4 + 2) + 1, 1, v4);
    }

    v13 = *(v4 + 2);
    v12 = *(v4 + 3);
    if (v13 >= v12 >> 1)
    {
      v4 = sub_1C00FE898((v12 > 1), v13 + 1, 1, v4);
    }

    ++v10;

    *(v4 + 2) = v13 + 1;
    v14 = &v4[16 * v13];
    *(v14 + 4) = v21;
    *(v14 + 5) = v22;
    v11 += 2;
    if (v9 == v10)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0113884(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C0113894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C014B930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;
  sub_1C014B920();
  sub_1C00FCDA8();
  v9 = sub_1C014C6A0();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v23 = v9;
  v24 = v11;
  v12 = sub_1C014C6C0();
  v14 = v13;

  v15 = 4;
  v16 = &unk_1F3F2C750;
  do
  {
    v17 = v14;
    v18 = *(v16 - 1);
    v19 = *v16;
    v23 = v12;
    v24 = v17;
    v22[2] = v18;
    v22[3] = v19;
    v22[0] = 92;
    v22[1] = 0xE100000000000000;

    MEMORY[0x1C68D6B10](v18, v19);
    v12 = sub_1C014C6B0();
    v14 = v20;

    v16 += 2;
    --v15;
  }

  while (v15);
  return v12;
}

uint64_t WorkItemDebouncer.__allocating_init(queue:debounceInterval:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

uint64_t WorkItemDebouncer.init(queue:debounceInterval:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t WorkItemDebouncer.deinit()
{
  if (*(v0 + 24))
  {

    sub_1C014C110();

    v1 = *(v0 + 24);
  }

  *(v0 + 24) = 0;

  v2 = *(v0 + 24);

  return v0;
}

uint64_t WorkItemDebouncer.__deallocating_deinit()
{
  if (*(v0 + 24))
  {

    sub_1C014C110();

    v1 = *(v0 + 24);
  }

  *(v0 + 24) = 0;

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_1C0113BB4(const void *a1)
{
  v2 = _Block_copy(a1);
  v3 = *(v1 + 32);
  sub_1C0113BF4(v2);

  _Block_release(v2);
}

uint64_t sub_1C0113BF4(const void *a1)
{
  v2 = v1;
  v4 = sub_1C014C0F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v39 - v9;
  v43 = sub_1C014C0A0();
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C014C0D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = _Block_copy(a1);
  v21 = *(v2 + 24);
  v46 = v5;
  v47 = v4;
  if (v21)
  {

    sub_1C014C110();

    v22 = *(v2 + 24);
  }

  *(v2 + 24) = 0;

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v23;
  aBlock[4] = sub_1C0114314;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011431C;
  aBlock[3] = &block_descriptor_3;
  v25 = _Block_copy(aBlock);
  _Block_copy(v20);

  v26 = v19;
  sub_1C014C0C0();
  v41 = _Block_copy(v25);
  (*(v13 + 16))(v17, v19, v12);
  v48 = MEMORY[0x1E69E7CC0];
  sub_1C0104390();
  v40 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C01043E8();
  sub_1C014C700();
  v27 = sub_1C014C120();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_1C014C100();
  _Block_release(v25);
  (*(v13 + 8))(v26, v12);

  v31 = *(v2 + 24);
  *(v2 + 24) = v30;

  v32 = *(v2 + 16);
  v33 = v44;
  sub_1C014C0E0();
  v34 = v45;
  sub_1C014C140();
  v35 = v47;
  v36 = *(v46 + 8);
  result = v36(v33, v47);
  if (*(v2 + 24))
  {
    v38 = *(v2 + 24);

    _Block_release(v40);
    sub_1C014C590();

    return v36(v34, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C0114048(const void *a1)
{
  v1 = _Block_copy(a1);
  sub_1C0113BF4(v1);

  _Block_release(v1);
}

uint64_t sub_1C0114094()
{
  if (*(v0 + 24))
  {

    sub_1C014C110();

    v1 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1C01140FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkItemDebouncer();
  result = sub_1C014BFC0();
  *a1 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1C01142AC(uint64_t a1)
{
  (*(a1 + 16))();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 24);
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1C011431C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Bool __swiftcall TPSAppController.hasLocalVariant(tip:)(TPSTip *tip)
{
  v2 = [(TPSDocument *)tip correlationID];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 tipForCorrelationIdentifier_];

    if (v4)
    {

      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

Swift::Void __swiftcall TPSAppController.logSharedTipDisplayed(tip:isEligible:)(TPSTip *tip, Swift::Bool isEligible)
{
  v3 = v2;
  if (isEligible)
  {
    v6 = [(TPSDocument *)tip identifier];
    if (!v6)
    {
      sub_1C014C230();
      v6 = sub_1C014C200();
    }

    v7 = [v3 collectionIdentifierForTipIdentifier_];

    sub_1C014C230();
    v9 = v8;

LABEL_10:
    v16 = 0;
    goto LABEL_19;
  }

  v10 = [(TPSDocument *)tip correlationID];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 tipForCorrelationIdentifier_];

    if (v12)
    {
      v13 = [v12 identifier];
      if (!v13)
      {
        sub_1C014C230();
        v13 = sub_1C014C200();
      }

      v14 = [v3 collectionIdentifierForTipIdentifier_];

      sub_1C014C230();
      v9 = v15;

      goto LABEL_10;
    }
  }

  v17 = [(TPSDocument *)tip availabilityContent];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() textRepresentationForContent_];

    if (v19)
    {
      v20 = sub_1C014C230();
      v16 = v21;

      v22 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v9 = 0;
        goto LABEL_19;
      }
    }
  }

  v9 = 0;
  v16 = 0x80000001C015C460;
LABEL_19:
  v23 = [(TPSDocument *)tip identifier];
  if (!v23)
  {
    sub_1C014C230();
    v23 = sub_1C014C200();
  }

  v24 = [(TPSDocument *)tip correlationID];
  if (v9)
  {
    v25 = sub_1C014C200();
  }

  else
  {
    v25 = 0;
  }

  v26 = [(TPSDocument *)tip variantID];
  if (v26)
  {
    if (v16)
    {
LABEL_26:
      v27 = sub_1C014C200();

      goto LABEL_29;
    }
  }

  else
  {
    sub_1C014C230();
    v26 = sub_1C014C200();

    if (v16)
    {
      goto LABEL_26;
    }
  }

  v27 = 0;
LABEL_29:
  v28 = [objc_opt_self() eventWithTipID:v23 correlationID:v24 collectionID:v25 variantID:v26 message:v27 isEligible:isEligible];

  [v28 log];
}

void _sSo16TPSAppControllerC8TipsCoreE28logInvalidSharedTipDisplayed3tipySo6TPSTipC_tF_0(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    sub_1C014C230();
    v2 = sub_1C014C200();
  }

  v3 = [a1 variantID];
  if (!v3)
  {
    sub_1C014C230();
    v3 = sub_1C014C200();
  }

  v4 = [objc_opt_self() eventWithTipID:v2 invalidVariantID:v3];

  [v4 log];
}

void sub_1C01149D0()
{
  v0 = [objc_opt_self() tps_userLanguageCode];
  v1 = sub_1C014C230();
  v3 = v2;

  qword_1EBE06820 = v1;
  qword_1EBE06828 = v3;
  qword_1EBE06830 = 0x3FF0000000000000;
}

TipsCore::TipSpotlightViewType::AssetConfiguration __swiftcall TipSpotlightViewType.AssetConfiguration.init(language:heightToWidthRatio:)(Swift::String language, Swift::Double heightToWidthRatio)
{
  *v2 = language;
  *(v2 + 16) = heightToWidthRatio;
  result.language = language;
  result.heightToWidthRatio = heightToWidthRatio;
  return result;
}

uint64_t static TipSpotlightViewType.AssetConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBE06378 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EBE06828;
  v3 = qword_1EBE06830;
  *a1 = qword_1EBE06820;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t TipSpotlightViewType.AssetConfiguration.language.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TipSpotlightViewType.AssetConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06838, &qword_1C0156B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0114D60();
  sub_1C014CB20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  v11 = sub_1C014C940();
  v14 = v12;
  if (v12)
  {
    v15 = v11;
  }

  else
  {
    if (qword_1EBE06378 != -1)
    {
      swift_once();
    }

    v15 = qword_1EBE06820;
    v14 = qword_1EBE06828;
  }

  v19 = 1;
  v16 = sub_1C014C950();
  if (v17)
  {
    if (qword_1EBE06378 != -1)
    {
      swift_once();
    }

    v16 = qword_1EBE06830;
  }

  (*(v6 + 8))(v9, v5);
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1C0114D60()
{
  result = qword_1EDD44948;
  if (!qword_1EDD44948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44948);
  }

  return result;
}

unint64_t sub_1C0114DB4()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x65676175676E616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1C0114DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1C014C9F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C015C4D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C014C9F0();

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

uint64_t sub_1C0114EE4(uint64_t a1)
{
  v2 = sub_1C0114D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0114F20(uint64_t a1)
{
  v2 = sub_1C0114D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TipSpotlightViewType.AssetConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06840, &qword_1C0156B48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0114D60();
  sub_1C014CB30();
  v16 = 0;
  v12 = v14;
  sub_1C014C970();
  if (!v12)
  {
    v15 = 1;
    sub_1C014C980();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t TipSpotlightViewProxy.assetConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t TipSpotlightViewProxy.assetConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

uint64_t TipSpotlightViewProxy.bodyContent.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void __swiftcall TipSpotlightViewProxy.init()(TipsCore::TipSpotlightViewProxy *__return_ptr retstr)
{
  retstr->bodyContent.value._rawValue = 0;
  if (qword_1EBE06378 != -1)
  {
    v4 = retstr;
    swift_once();
    retstr = v4;
  }

  v2 = qword_1EBE06828;
  v3 = *&qword_1EBE06830;
  retstr->assetConfiguration.language._countAndFlagsBits = qword_1EBE06820;
  retstr->assetConfiguration.language._object = v2;
  retstr->assetConfiguration.heightToWidthRatio = v3;
}

void __swiftcall TipSpotlightViewProxy.init(assetConfiguration:bodyContent:)(TipsCore::TipSpotlightViewProxy *__return_ptr retstr, TipsCore::TipSpotlightViewType::AssetConfiguration assetConfiguration, Swift::OpaquePointer_optional bodyContent)
{
  v3 = *(assetConfiguration.language._countAndFlagsBits + 8);
  v4 = *(assetConfiguration.language._countAndFlagsBits + 16);
  retstr->assetConfiguration.language._countAndFlagsBits = *assetConfiguration.language._countAndFlagsBits;
  retstr->assetConfiguration.language._object = v3;
  retstr->assetConfiguration.heightToWidthRatio = v4;
  retstr->bodyContent.value._rawValue = assetConfiguration.language._object;
}

uint64_t sub_1C0115288@<X0>(void *a1@<X8>)
{
  a1[3] = 0;
  if (qword_1EBE06378 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EBE06828;
  v3 = qword_1EBE06830;
  *a1 = qword_1EBE06820;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1C0115308@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1C011531C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
  return result;
}

uint64_t sub_1C0115388(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1C01153EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v34 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06848, &qword_1C0156B50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  if (qword_1EBE06378 != -1)
  {
    swift_once();
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0115CD4();

  sub_1C014CB20();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1C0115D28();
    sub_1C014C960();
    v12 = v32;
    if (v32)
    {
      v13 = v33;
      v14 = v31;
    }

    else
    {
      v14 = qword_1EBE06820;
      v12 = qword_1EBE06828;
      v13 = qword_1EBE06830;
    }

    LOBYTE(v30) = 1;
    sub_1C0115D7C();
    sub_1C014C960();
    v15 = v32;
    if (v32 >> 60 == 15)
    {
      (*(v5 + 8))(v8, v4);
      v16 = 0;
    }

    else
    {
      v28 = v14;
      v17 = v31;
      v18 = objc_opt_self();
      v27 = v17;
      v19 = sub_1C014BCB0();
      v31 = 0;
      v20 = [v18 JSONObjectWithData:v19 options:0 error:&v31];

      if (v20)
      {
        v21 = v31;
        sub_1C014C6E0();
        swift_unknownObjectRelease();
        sub_1C01166E0(v27, v15);
        (*(v5 + 8))(v8, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06850, &qword_1C0156B58);
        v22 = swift_dynamicCast();
        v16 = v30;
        if (!v22)
        {
          v16 = 0;
        }
      }

      else
      {
        v23 = v31;
        v24 = sub_1C014BB70();

        swift_willThrow();
        sub_1C01166E0(v27, v15);
        (*(v5 + 8))(v8, v4);
        v16 = 0;
      }

      v14 = v28;
    }

    v25 = v29;
    *v29 = v14;
    v25[1] = v12;
    v25[2] = v13;
    v25[3] = v16;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TipSpotlightViewProtocol.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06848, &qword_1C0156B50);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(a2, a3);
  v16 = a1[3];
  v17 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_1C0115CD4();
  v18 = v44;
  sub_1C014CB20();
  if (v18)
  {
    (*(v12 + 8))(v15, a2);
  }

  else
  {
    v19 = a3;
    v20 = v42;
    v44 = v12;
    LOBYTE(v46) = 0;
    sub_1C0115D28();
    v21 = v43;
    sub_1C014C960();
    v22 = v48;
    if (v48)
    {
      v23 = v49;
      v24 = v47;
      v25 = v15;
    }

    else
    {
      v25 = v15;
      if (qword_1EBE06378 != -1)
      {
        swift_once();
      }

      v24 = qword_1EBE06820;
      v23 = qword_1EBE06830;
    }

    v26 = v19;
    v47 = v24;
    v48 = v22;
    v49 = v23;
    (*(v19 + 40))(&v47, a2, v19);
    LOBYTE(v46) = 1;
    sub_1C0115D7C();
    v27 = v11;
    sub_1C014C960();
    v30 = v48;
    if (v48 >> 60 != 15)
    {
      v31 = v47;
      v38 = objc_opt_self();
      v39 = v31;
      v40 = v30;
      v32 = sub_1C014BCB0();
      v47 = 0;
      v33 = [v38 JSONObjectWithData:v32 options:0 error:&v47];

      if (v33)
      {
        v34 = v47;
        sub_1C014C6E0();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06850, &qword_1C0156B58);
        if (swift_dynamicCast())
        {
          v35 = v46;
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v36 = v47;
        v37 = sub_1C014BB70();

        swift_willThrow();
        v35 = 0;
      }

      (*(v26 + 64))(v35, a2, v26);
      sub_1C01166E0(v39, v40);
    }

    (*(v20 + 8))(v27, v21);
    (*(v44 + 32))(v41, v25, a2);
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v45);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1C0115CD4()
{
  result = qword_1EDD44A90;
  if (!qword_1EDD44A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44A90);
  }

  return result;
}

unint64_t sub_1C0115D28()
{
  result = qword_1EBE05CD0;
  if (!qword_1EBE05CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05CD0);
  }

  return result;
}

unint64_t sub_1C0115D7C()
{
  result = qword_1EBE05D30;
  if (!qword_1EBE05D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05D30);
  }

  return result;
}

uint64_t sub_1C0115DF4(void *a1, void *a2, unint64_t a3, uint64_t a4, double a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06858, &qword_1C0156B60);
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0115CD4();
  sub_1C014CB30();
  v29 = a2;
  v30 = a3;
  v31 = a5;
  v28 = 0;
  sub_1C01166F4();

  sub_1C014C990();
  if (v5)
  {
  }

  if (a4)
  {
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06860, &qword_1C0156B68);
    v17 = sub_1C014C3B0();
    v29 = 0;
    v18 = [v16 dataWithJSONObject:v17 options:0 error:&v29];

    v19 = v29;
    if (v18)
    {
      v20 = sub_1C014BCC0();
      v22 = v21;

      v29 = v20;
      v30 = v22;
      v28 = 1;
      sub_1C0116748();
      sub_1C014C990();
      (*(v27 + 8))(v14, v11);
      result = sub_1C0110D7C(v20, v22);
    }

    else
    {
      v23 = v19;
      v24 = sub_1C014BB70();

      swift_willThrow();
      result = (*(v27 + 8))(v14, v11);
    }
  }

  else
  {
    result = (*(v27 + 8))(v14, v11);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TipSpotlightViewProtocol.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06858, &qword_1C0156B60);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0115CD4();
  sub_1C014CB30();
  (*(a3 + 32))(&v29, a2, a3);
  v26 = v29;
  v27 = v30;
  v28 = v31;
  v25 = 0;
  sub_1C01166F4();
  sub_1C014C990();
  if (v3)
  {
  }

  if ((*(a3 + 56))(a2, a3))
  {
    v12 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06860, &qword_1C0156B68);
    v13 = sub_1C014C3B0();

    v29 = 0;
    v14 = [v12 dataWithJSONObject:v13 options:0 error:&v29];

    v15 = v29;
    if (v14)
    {
      v16 = sub_1C014BCC0();
      v18 = v17;

      v29 = v16;
      v30 = v18;
      LOBYTE(v26) = 1;
      sub_1C0116748();
      sub_1C014C990();
      (*(v24 + 8))(v10, v7);
      result = sub_1C0110D7C(v16, v18);
    }

    else
    {
      v19 = v15;
      v20 = sub_1C014BB70();

      swift_willThrow();
      result = (*(v24 + 8))(v10, v7);
    }
  }

  else
  {
    result = (*(v24 + 8))(v10, v7);
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C01164A0()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t sub_1C01164E8()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

unint64_t sub_1C011652C()
{
  if (*v0)
  {
    result = 0x746E6F4379646F62;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1C0116578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001C015C4F0 == a2 || (sub_1C014C9F0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E6F4379646F62 && a2 == 0xEF61746144746E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C014C9F0();

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

uint64_t sub_1C0116668(uint64_t a1)
{
  v2 = sub_1C0115CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C01166A4(uint64_t a1)
{
  v2 = sub_1C0115CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C01166E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0110D7C(a1, a2);
  }

  return a1;
}

unint64_t sub_1C01166F4()
{
  result = qword_1EBE05CD8;
  if (!qword_1EBE05CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05CD8);
  }

  return result;
}

unint64_t sub_1C0116748()
{
  result = qword_1EBE05D38;
  if (!qword_1EBE05D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE05D38);
  }

  return result;
}

unint64_t sub_1C011679C(uint64_t a1)
{
  *(a1 + 8) = sub_1C01167CC();
  result = sub_1C0116820();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C01167CC()
{
  result = qword_1EBE06868;
  if (!qword_1EBE06868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06868);
  }

  return result;
}

unint64_t sub_1C0116820()
{
  result = qword_1EBE06870;
  if (!qword_1EBE06870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06870);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0116898(uint64_t a1, int a2)
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

uint64_t sub_1C01168E0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C01169C8(uint64_t a1, int a2)
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

uint64_t sub_1C0116A10(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AssistantSupportClient.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssistantSupportClient.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0116BD0()
{
  result = qword_1EBE06878;
  if (!qword_1EBE06878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06878);
  }

  return result;
}

unint64_t sub_1C0116C28()
{
  result = qword_1EBE06880;
  if (!qword_1EBE06880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06880);
  }

  return result;
}

unint64_t sub_1C0116C80()
{
  result = qword_1EDD44A80;
  if (!qword_1EDD44A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44A80);
  }

  return result;
}

unint64_t sub_1C0116CD8()
{
  result = qword_1EDD44A88;
  if (!qword_1EDD44A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44A88);
  }

  return result;
}

unint64_t sub_1C0116D30()
{
  result = qword_1EDD44938;
  if (!qword_1EDD44938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44938);
  }

  return result;
}

unint64_t sub_1C0116D88()
{
  result = qword_1EDD44940;
  if (!qword_1EDD44940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44940);
  }

  return result;
}

id sub_1C0116E00()
{
  if (qword_1EDD44A68 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDD44A70;
  v1 = type metadata accessor for NetworkMonitorProxy();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___TPSNetworkPathMonitor_serialTasks;
  type metadata accessor for SerialTaskExecutor();
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06890, &qword_1C0156F30);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *&v2[v3] = v4;
  *&v2[OBJC_IVAR___TPSNetworkPathMonitor_monitor] = v0;
  v7.receiver = v2;
  v7.super_class = v1;

  result = objc_msgSendSuper2(&v7, sel_init);
  qword_1EDD44958 = result;
  return result;
}

id static NetworkMonitorProxy.shared.getter()
{
  if (qword_1EDD44950 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD44958;

  return v1;
}

id NetworkMonitorProxy.init(monitor:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___TPSNetworkPathMonitor_serialTasks;
  type metadata accessor for SerialTaskExecutor();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06890, &qword_1C0156F30);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = 0;
  *&v1[v4] = v5;
  if (!a1)
  {
    v7 = type metadata accessor for NetworkMonitor();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    a1 = swift_allocObject();
    swift_defaultActor_initialize();
    *(a1 + 112) = 0;
    v10 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
    v11 = sub_1C014C090();
    (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
    v12 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
    *(a1 + v12) = sub_1C00F9450(MEMORY[0x1E69E7CC0]);
  }

  *&v1[OBJC_IVAR___TPSNetworkPathMonitor_monitor] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

Swift::Void __swiftcall NetworkMonitorProxy.start()()
{
  v1 = *(v0 + OBJC_IVAR___TPSNetworkPathMonitor_serialTasks);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 4);
  sub_1C01189D0();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1C0117220()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___TPSNetworkPathMonitor_monitor);
    v0[6] = v3;
    v4 = Strong;

    return MEMORY[0x1EEE6DFA0](sub_1C01172F8, v3, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1C01172F8()
{
  v1 = *(v0 + 48);
  sub_1C0129EFC();

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall NetworkMonitorProxy.stop()()
{
  v1 = *(v0 + OBJC_IVAR___TPSNetworkPathMonitor_serialTasks);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2 + 4);
  sub_1C0118E5C();
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1C011748C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___TPSNetworkPathMonitor_monitor);
    v0[6] = v3;
    v4 = Strong;

    return MEMORY[0x1EEE6DFA0](sub_1C0117564, v3, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1C0117564()
{
  v1 = *(v0 + 48);
  sub_1C012AE50();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t NetworkMonitorProxy.addObserver(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C014BD80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(v4 + OBJC_IVAR___TPSNetworkPathMonitor_serialTasks);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(&v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v9 + 32))(v14 + v13, &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v8);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  v16 = *(v11 + 16);
  v22 = v11;
  v23 = &unk_1C0156F60;
  v24 = v14;
  v19 = sub_1C0118E44;
  v20 = &v21;

  os_unfair_lock_lock(v16 + 4);
  sub_1C0118E5C();
  os_unfair_lock_unlock(v16 + 4);
}

uint64_t sub_1C01177FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE068A0, &qword_1C0156FD8) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C01178A8, 0, 0);
}

uint64_t sub_1C01178A8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v7 = *(Strong + OBJC_IVAR___TPSNetworkPathMonitor_monitor);
    v0[11] = v7;
    v8 = Strong;

    v9 = sub_1C014BD80();
    v0[12] = v9;
    v10 = *(v9 - 8);
    (*(v10 + 16))(v4, v5, v9);
    v11 = *(v10 + 56);
    v0[13] = v11;
    v0[14] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v4, 0, 1, v9);
    v12 = swift_allocObject();
    v0[15] = v12;
    *(v12 + 16) = v6;
    *(v12 + 24) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1C0117AB0, v7, 0);
  }

  else
  {
    v13 = sub_1C014BD80();
    v14 = v0[10];
    (*(*(v13 - 8) + 56))(v14, 1, 1, v13);
    sub_1C0118D08(v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1C0117AB0()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_1C012B3BC(v2, sub_1C0118CE0, v0[15], v0[10]);

  sub_1C0118D08(v2);

  return MEMORY[0x1EEE6DFA0](sub_1C0117B5C, 0, 0);
}

uint64_t sub_1C0117B5C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  (*(v0 + 104))(v2, 0, 1, *(v0 + 96));
  sub_1C0118D08(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t NetworkMonitorProxy.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C014BD80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(v2 + OBJC_IVAR___TPSNetworkPathMonitor_serialTasks);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v11 = *(v7 + 16);
  v17 = v7;
  v18 = &unk_1C0156F70;
  v19 = v10;
  v14 = sub_1C0118E44;
  v15 = &v16;

  os_unfair_lock_lock(v11 + 4);
  sub_1C0118E5C();
  os_unfair_lock_unlock(v11 + 4);
}

uint64_t sub_1C0117ED8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C0117EF8, 0, 0);
}

uint64_t sub_1C0117EF8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___TPSNetworkPathMonitor_monitor);
    v0[7] = v3;
    v4 = Strong;

    return MEMORY[0x1EEE6DFA0](sub_1C0117FD0, v3, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1C0117FD0()
{
  v1 = v0[7];
  sub_1C012B5C8(v0[6]);

  v2 = v0[1];

  return v2();
}

id NetworkMonitorProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkMonitorProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C011831C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_1C014C490();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(a1 + 24);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = a2;
  v12[6] = a3;

  v13 = sub_1C0129B50(0, 0, v9, &unk_1C0156FF0, v12);
  v14 = *(a1 + 24);
  *(a1 + 24) = v13;
}

uint64_t sub_1C011845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  if (a4)
  {
    v8 = *(MEMORY[0x1E69E86B0] + 4);
    v9 = swift_task_alloc();
    v6[6] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
    *v9 = v6;
    v9[1] = sub_1C01185F8;
    v11 = MEMORY[0x1E69E7288];
    v12 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v6 + 2, a4, v12, v10, v11);
  }

  else
  {
    v17 = (a5 + *a5);
    v13 = a5[1];
    v14 = swift_task_alloc();
    v6[7] = v14;
    *v14 = v6;
    v14[1] = sub_1C01187EC;
    v15 = v6[5];

    return v17();
  }
}

uint64_t sub_1C01185F8()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C01186F4, 0, 0);
}

uint64_t sub_1C01186F4()
{
  sub_1C0118E38(*(v0 + 16), *(v0 + 24));
  v5 = (*(v0 + 32) + **(v0 + 32));
  v1 = *(*(v0 + 32) + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1C01187EC;
  v3 = *(v0 + 40);

  return v5();
}

uint64_t sub_1C01187EC()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C01188E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C0118920()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C01044FC;

  return sub_1C0117200(v0);
}

uint64_t sub_1C01189D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C01189F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C01044FC;

  return sub_1C011746C(v0);
}

uint64_t sub_1C0118A88()
{
  v2 = *(sub_1C014BD80() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C01044FC;

  return sub_1C01177FC(v4, v0 + v3, v6, v7);
}

uint64_t sub_1C0118BA0()
{
  v2 = *(sub_1C014BD80() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C01044FC;

  return sub_1C0117ED8(v4, v0 + v3);
}

uint64_t sub_1C0118CE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C0118D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE068A0, &qword_1C0156FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0118D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C0103EAC;

  return sub_1C011845C(a1, v4, v5, v6, v7, v8);
}

void sub_1C0118E38(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t UserGuide.topicIdentifier.getter()
{
  swift_getKeyPath();
  sub_1C011A644();
  sub_1C014BF00();

  v1 = (v0 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

id UserGuide.__allocating_init(identifier:version:text:symbol:platform:platformIndependent:gradientColorStrings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = v12;
  v20 = objc_allocWithZone(v13);
  v21 = &v20[OBJC_IVAR___TPSUserGuide_referrer];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v20[OBJC_IVAR___TPSUserGuide_version];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v20[OBJC_IVAR___TPSUserGuide__topicIdentifier];
  *v23 = 0;
  v23[1] = 0;
  sub_1C014BF30();
  v24 = &v20[OBJC_IVAR___TPSUserGuide_identifier];
  *v24 = a1;
  v24[1] = a2;
  swift_beginAccess();
  v25 = v22[1];
  *v22 = a3;
  v22[1] = a4;

  if (a6)
  {
    v26 = a5;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (a6)
  {
    v27 = a6;
  }

  v28 = &v20[OBJC_IVAR___TPSUserGuide_text];
  *v28 = v26;
  v28[1] = v27;
  v29 = &v20[OBJC_IVAR___TPSUserGuide_symbol];
  *v29 = a7;
  v29[1] = a8;
  v30 = &v20[OBJC_IVAR___TPSUserGuide_platform];
  *v30 = a9;
  v30[1] = a10;
  v20[OBJC_IVAR___TPSUserGuide_platformIndependent] = a11;
  *&v20[OBJC_IVAR___TPSUserGuide_gradientColorStrings] = a12;
  v31 = objc_allocWithZone(TPSGradient);

  v32 = sub_1C014C3B0();

  v33 = [v31 initWithColorStrings_];

  *&v20[OBJC_IVAR___TPSUserGuide_gradient] = v33;
  v38.receiver = v20;
  v38.super_class = v37;
  return objc_msgSendSuper2(&v38, sel_init);
}

uint64_t UserGuide.topicIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = v5[1];
      if (sub_1C014C9F0())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  swift_getKeyPath();
  MEMORY[0x1EEE9AC00]();
  sub_1C011A644();
  sub_1C014BEF0();
}

uint64_t static UserGuide.privateURL(bookIdentifier:topicIdentifier:version:referrer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v46 = a7;
  v42[2] = a4;
  v42[3] = a6;
  v43 = a3;
  v44 = a5;
  v42[1] = a2;
  v48 = a8;
  v49 = sub_1C014BA60();
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C014B9A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v50 = v42 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v42 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v42 - v21;
  v45 = v23;
  if (!a1)
  {
    v24 = [objc_opt_self() deviceGuideIdentifier];
    sub_1C014C230();
  }

  sub_1C014B970();

  v25 = sub_1C00FE568(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1C00FE568(v26 > 1, v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v30 = *(v13 + 32);
  v28 = v13 + 32;
  v29 = v30;
  v31 = (*(v28 + 48) + 32) & ~*(v28 + 48);
  v32 = *(v28 + 40);
  v30(&v25[v31 + v32 * v27], v22, v12);
  if (v43)
  {
    sub_1C014B970();
    v34 = *(v25 + 2);
    v33 = *(v25 + 3);
    if (v34 >= v33 >> 1)
    {
      v25 = sub_1C00FE568(v33 > 1, v34 + 1, 1, v25);
    }

    *(v25 + 2) = v34 + 1;
    v29(&v25[v31 + v34 * v32], v20, v12);
  }

  v35 = v45;
  if (v44)
  {
    sub_1C014B970();
    v37 = *(v25 + 2);
    v36 = *(v25 + 3);
    if (v37 >= v36 >> 1)
    {
      v25 = sub_1C00FE568(v36 > 1, v37 + 1, 1, v25);
    }

    *(v25 + 2) = v37 + 1;
    v29(&v25[v31 + v37 * v32], v50, v12);
  }

  if (v46)
  {
    sub_1C014B970();
    v39 = *(v25 + 2);
    v38 = *(v25 + 3);
    if (v39 >= v38 >> 1)
    {
      v25 = sub_1C00FE568(v38 > 1, v39 + 1, 1, v25);
    }

    *(v25 + 2) = v39 + 1;
    v29(&v25[v31 + v39 * v32], v35, v12);
  }

  sub_1C014BA50();
  sub_1C014C230();
  sub_1C014BA30();
  v40 = sub_1C014C230();
  MEMORY[0x1C68D6220](v40);
  sub_1C014B9D0();
  sub_1C014B9F0();
  return (*(v47 + 8))(v11, v49);
}

uint64_t static UserGuide.url(book:topic:anchor:version:referrer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v53 = a5;
  v54 = a7;
  v49 = a4;
  v50 = a6;
  v51 = a3;
  v48 = a2;
  v56 = a8;
  v57 = sub_1C014BA60();
  v55 = *(v57 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C014B9A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v58 = &v48 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v52 = &v48 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  if (!a1)
  {
    v28 = [objc_opt_self() deviceGuideIdentifier];
    sub_1C014C230();
  }

  sub_1C014B970();

  v29 = sub_1C00FE568(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1C00FE568(v30 > 1, v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v34 = *(v15 + 32);
  v33 = v15 + 32;
  v32 = v34;
  v35 = (*(v33 + 48) + 32) & ~*(v33 + 48);
  v36 = *(v33 + 40);
  v34(&v29[v35 + v36 * v31], v27, v14);
  if (v51)
  {
    sub_1C014B970();
    v38 = *(v29 + 2);
    v37 = *(v29 + 3);
    if (v38 >= v37 >> 1)
    {
      v29 = sub_1C00FE568(v37 > 1, v38 + 1, 1, v29);
    }

    *(v29 + 2) = v38 + 1;
    v32(&v29[v35 + v38 * v36], v25, v14);
  }

  v39 = v52;
  if (v53)
  {
    sub_1C014B970();
    v41 = *(v29 + 2);
    v40 = *(v29 + 3);
    if (v41 >= v40 >> 1)
    {
      v29 = sub_1C00FE568(v40 > 1, v41 + 1, 1, v29);
    }

    *(v29 + 2) = v41 + 1;
    v32(&v29[v35 + v41 * v36], v39, v14);
  }

  if (v54)
  {
    sub_1C014B970();
    v43 = *(v29 + 2);
    v42 = *(v29 + 3);
    if (v43 >= v42 >> 1)
    {
      v29 = sub_1C00FE568(v42 > 1, v43 + 1, 1, v29);
    }

    *(v29 + 2) = v43 + 1;
    v32(&v29[v35 + v43 * v36], v58, v14);
  }

  if (a10)
  {
    sub_1C014B970();
    v45 = *(v29 + 2);
    v44 = *(v29 + 3);
    if (v45 >= v44 >> 1)
    {
      v29 = sub_1C00FE568(v44 > 1, v45 + 1, 1, v29);
    }

    *(v29 + 2) = v45 + 1;
    v32(&v29[v35 + v45 * v36], v59, v14);
  }

  sub_1C014BA50();
  sub_1C014C230();
  sub_1C014BA30();
  v46 = sub_1C014C230();
  MEMORY[0x1C68D6220](v46);
  sub_1C014B9D0();
  sub_1C014B9F0();
  return (*(v55 + 8))(v13, v57);
}

uint64_t UserGuide.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_identifier);
  v2 = *(v0 + OBJC_IVAR___TPSUserGuide_identifier + 8);

  return v1;
}

uint64_t UserGuide.text.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_text);
  v2 = *(v0 + OBJC_IVAR___TPSUserGuide_text + 8);

  return v1;
}

id sub_1C011A1CC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1C014C200();

  return v6;
}

uint64_t UserGuide.symbol.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_symbol);
  v2 = *(v0 + OBJC_IVAR___TPSUserGuide_symbol + 8);

  return v1;
}

void *UserGuide.gradient.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_gradient);
  v2 = v1;
  return v1;
}

uint64_t UserGuide.platform.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_platform);
  v2 = *(v0 + OBJC_IVAR___TPSUserGuide_platform + 8);

  return v1;
}

unint64_t sub_1C011A644()
{
  result = qword_1EBE065D8;
  if (!qword_1EBE065D8)
  {
    type metadata accessor for UserGuide();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE065D8);
  }

  return result;
}

uint64_t type metadata accessor for UserGuide()
{
  result = qword_1EDD44BE0;
  if (!qword_1EDD44BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C011A6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a2;
  v5[1] = a3;
}

void (*UserGuide.topicIdentifier.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR___TPSUserGuide___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C011A644();
  sub_1C014BF00();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C014BF20();

  swift_beginAccess();
  return sub_1C011A874;
}

void sub_1C011A874(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C014BF10();

  free(v1);
}

id UserGuide.init(identifier:version:text:symbol:platform:platformIndependent:gradientColorStrings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v19 = &v12[OBJC_IVAR___TPSUserGuide_referrer];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v12[OBJC_IVAR___TPSUserGuide_version];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v12[OBJC_IVAR___TPSUserGuide__topicIdentifier];
  *v21 = 0;
  v21[1] = 0;
  sub_1C014BF30();
  v22 = &v12[OBJC_IVAR___TPSUserGuide_identifier];
  *v22 = a1;
  v22[1] = a2;
  swift_beginAccess();
  v23 = v20[1];
  *v20 = a3;
  v20[1] = a4;

  if (a6)
  {
    v24 = a5;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (a6)
  {
    v25 = a6;
  }

  v26 = &v12[OBJC_IVAR___TPSUserGuide_text];
  *v26 = v24;
  v26[1] = v25;
  v27 = &v12[OBJC_IVAR___TPSUserGuide_symbol];
  *v27 = a7;
  v27[1] = a8;
  v28 = &v12[OBJC_IVAR___TPSUserGuide_platform];
  *v28 = a9;
  v28[1] = a10;
  v12[OBJC_IVAR___TPSUserGuide_platformIndependent] = a11;
  *&v12[OBJC_IVAR___TPSUserGuide_gradientColorStrings] = a12;
  v29 = objc_allocWithZone(TPSGradient);

  v30 = sub_1C014C3B0();

  v31 = [v29 initWithColorStrings_];

  *&v12[OBJC_IVAR___TPSUserGuide_gradient] = v31;
  v36.receiver = v12;
  v36.super_class = ObjectType;
  return objc_msgSendSuper2(&v36, sel_init);
}

uint64_t UserGuide.displayName.getter()
{
  v1 = sub_1C014BDC0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1C014C1F0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C014C1E0();
  v5 = [objc_opt_self() tipsCoreFrameworkBundle];
  sub_1C014BDB0();
  sub_1C014C280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06900, &qword_1C0157710);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C0156330;
  v8 = *(v0 + OBJC_IVAR___TPSUserGuide_text);
  v7 = *(v0 + OBJC_IVAR___TPSUserGuide_text + 8);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C011C85C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;

  v9 = sub_1C014C210();

  return v9;
}

id sub_1C011ADE8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C014C200();

  return v5;
}

uint64_t UserGuide.description.getter()
{
  v1 = v0;
  strcpy(v17, "(identifier:");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  MEMORY[0x1C68D6B10](*(v0 + OBJC_IVAR___TPSUserGuide_identifier), *(v0 + OBJC_IVAR___TPSUserGuide_identifier + 8));
  v18 = v17[0];
  v19 = v17[1];
  v2 = (v0 + OBJC_IVAR___TPSUserGuide_version);
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;

    MEMORY[0x1C68D6B10](v4, v3);

    MEMORY[0x1C68D6B10](0x6F6973726576202CLL, 0xEA00000000003A6ELL);
  }

  swift_getKeyPath();
  sub_1C011A644();
  sub_1C014BF00();

  v5 = (v1 + OBJC_IVAR___TPSUserGuide__topicIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;

    sub_1C014C800();

    MEMORY[0x1C68D6B10](v7, v6);

    MEMORY[0x1C68D6B10](0xD000000000000012, 0x80000001C015C6E0);
  }

  MEMORY[0x1C68D6B10](*(v1 + OBJC_IVAR___TPSUserGuide_text), *(v1 + OBJC_IVAR___TPSUserGuide_text + 8));
  MEMORY[0x1C68D6B10](0x3A74786574202CLL, 0xE700000000000000);

  MEMORY[0x1C68D6B10](*(v1 + OBJC_IVAR___TPSUserGuide_symbol), *(v1 + OBJC_IVAR___TPSUserGuide_symbol + 8));
  MEMORY[0x1C68D6B10](0x6C6F626D7973202CLL, 0xE90000000000003ALL);

  if (*(v1 + OBJC_IVAR___TPSUserGuide_platform + 8))
  {
    MEMORY[0x1C68D6B10](*(v1 + OBJC_IVAR___TPSUserGuide_platform));
    MEMORY[0x1C68D6B10](0x6F6674616C70202CLL, 0xEB000000003A6D72);
  }

  sub_1C014C800();

  if (*(v1 + OBJC_IVAR___TPSUserGuide_platformIndependent))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___TPSUserGuide_platformIndependent))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1C68D6B10](v8, v9);

  MEMORY[0x1C68D6B10](0xD000000000000016, 0x80000001C015C6C0);

  v10 = *(v1 + OBJC_IVAR___TPSUserGuide_gradient);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 description];
    v13 = sub_1C014C230();
    v15 = v14;

    MEMORY[0x1C68D6B10](v13, v15);

    MEMORY[0x1C68D6B10](0x656964617267202CLL, 0xEB000000003A746ELL);
  }

  return v18;
}

id UserGuide.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserGuide.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UserGuide.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *(v2 + OBJC_IVAR___TPSUserGuide_identifier + 8);
  v27 = *(v2 + OBJC_IVAR___TPSUserGuide_identifier);
  v5 = (v2 + OBJC_IVAR___TPSUserGuide_version);
  swift_beginAccess();
  v6 = v5[1];
  v7 = *(v2 + OBJC_IVAR___TPSUserGuide_text + 8);
  v8 = *(v2 + OBJC_IVAR___TPSUserGuide_symbol + 8);
  v28 = *(v2 + OBJC_IVAR___TPSUserGuide_symbol);
  v29 = *(v2 + OBJC_IVAR___TPSUserGuide_text);
  v9 = *(v2 + OBJC_IVAR___TPSUserGuide_platform + 8);
  v25 = *v5;
  v26 = *(v2 + OBJC_IVAR___TPSUserGuide_platform);
  v24 = *(v2 + OBJC_IVAR___TPSUserGuide_platformIndependent);
  v10 = *(v2 + OBJC_IVAR___TPSUserGuide_gradientColorStrings);
  v11 = objc_allocWithZone(ObjectType);
  v12 = &v11[OBJC_IVAR___TPSUserGuide_referrer];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v11[OBJC_IVAR___TPSUserGuide_version];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v11[OBJC_IVAR___TPSUserGuide__topicIdentifier];
  *v14 = 0;
  v14[1] = 0;

  sub_1C014BF30();
  v15 = &v11[OBJC_IVAR___TPSUserGuide_identifier];
  *v15 = v27;
  v15[1] = v4;
  swift_beginAccess();
  v16 = v13[1];
  *v13 = v25;
  v13[1] = v6;

  v17 = &v11[OBJC_IVAR___TPSUserGuide_text];
  *v17 = v29;
  v17[1] = v7;
  v18 = &v11[OBJC_IVAR___TPSUserGuide_symbol];
  *v18 = v28;
  v18[1] = v8;
  v19 = &v11[OBJC_IVAR___TPSUserGuide_platform];
  *v19 = v26;
  v19[1] = v9;
  v11[OBJC_IVAR___TPSUserGuide_platformIndependent] = v24;
  *&v11[OBJC_IVAR___TPSUserGuide_gradientColorStrings] = v10;
  v20 = objc_allocWithZone(TPSGradient);

  v21 = sub_1C014C3B0();
  v22 = [v20 initWithColorStrings_];

  *&v11[OBJC_IVAR___TPSUserGuide_gradient] = v22;
  v31.receiver = v11;
  v31.super_class = ObjectType;
  result = objc_msgSendSuper2(&v31, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

Swift::Void __swiftcall UserGuide.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___TPSUserGuide_identifier);
  v4 = *(v1 + OBJC_IVAR___TPSUserGuide_identifier + 8);
  v5 = sub_1C014C200();
  v6 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = (v1 + OBJC_IVAR___TPSUserGuide_version);
  swift_beginAccess();
  if (v7[1])
  {
    v8 = *v7;

    v9 = sub_1C014C200();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  v11 = *(v1 + OBJC_IVAR___TPSUserGuide_text);
  v12 = *(v1 + OBJC_IVAR___TPSUserGuide_text + 8);
  v13 = sub_1C014C200();
  v14 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___TPSUserGuide_symbol);
  v16 = *(v1 + OBJC_IVAR___TPSUserGuide_symbol + 8);
  v17 = sub_1C014C200();
  v18 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  if (*(v1 + OBJC_IVAR___TPSUserGuide_platform + 8))
  {
    v19 = *(v1 + OBJC_IVAR___TPSUserGuide_platform);
    v20 = sub_1C014C200();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
  swift_unknownObjectRelease();

  v22 = *(v1 + OBJC_IVAR___TPSUserGuide_platformIndependent);
  v23 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeBool:v22 forKey:v23];

  v24 = *(v1 + OBJC_IVAR___TPSUserGuide_gradientColorStrings);
  v25 = sub_1C014C3B0();
  v26 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
}

id UserGuide.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t UserGuide.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v4 = sub_1C014C5E0();
  if (v4)
  {
    v9 = 0;
    v10 = 0;
    v5 = v4;
    sub_1C014C220();
  }

  swift_getObjectType();
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void UserGuide.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___TPSUserGuide_identifier);
  v2 = *(v0 + OBJC_IVAR___TPSUserGuide_identifier + 8);
  JUMPOUT(0x1C68D6B80);
}

uint64_t UserGuide.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C011C8B0(a1, v7);
  if (!v8)
  {
    sub_1C00F98F4(v7, &qword_1EBE06490, &qword_1C0155FA0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (*(v1 + OBJC_IVAR___TPSUserGuide_identifier) == *&v6[OBJC_IVAR___TPSUserGuide_identifier] && *(v1 + OBJC_IVAR___TPSUserGuide_identifier + 8) == *&v6[OBJC_IVAR___TPSUserGuide_identifier + 8])
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1C014C9F0();
  }

  return v4 & 1;
}

char *_s8TipsCore9UserGuideC03getcD7FromURL0G0ACSg10FoundationAEV_tFZ_0()
{
  v0 = sub_1C014B9A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v66 - v7;
  v9 = sub_1C014BA60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014B9E0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C00F98F4(v8, &qword_1EBE065E0, &unk_1C0157A70);
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  v14 = sub_1C014BA20();
  v16 = v15;
  v17 = sub_1C014C230();
  if (!v16)
  {

    goto LABEL_41;
  }

  if (v14 == v17 && v16 == v18)
  {
  }

  else
  {
    v20 = sub_1C014C9F0();

    if ((v20 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v21 = sub_1C014B9C0();
  if (!v21)
  {
LABEL_41:
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  v70 = v13;
  v22 = *(v21 + 16);
  if (v22)
  {
    v67 = v10;
    v68 = v9;
    v69 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v23 = 0;
    v81 = 0;
    v25 = *(v1 + 16);
    v24 = v1 + 16;
    v79 = v25;
    v26 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v66[1] = v21;
    v27 = v21 + v26;
    v78 = *(v24 + 56);
    v80 = v24;
    v28 = (v24 - 8);
    v25(v4, v21 + v26, v0);
    while (1)
    {
      if (v29 = sub_1C014B990(), v31 = v30, v32 = sub_1C014B980(), v34 = v33, (*v28)(v4, v0), v32 == 1802465122) && v34 == 0xE400000000000000 || (sub_1C014C9F0())
      {

        v23 = v29;
        v81 = v31;
      }

      else if (v32 == 0x6369706F74 && v34 == 0xE500000000000000 || (sub_1C014C9F0() & 1) != 0)
      {

        v76 = v29;
        v77 = v31;
      }

      else if (v32 == 0x726F68636E61 && v34 == 0xE600000000000000 || (sub_1C014C9F0() & 1) != 0)
      {

        v73 = v29;
        v75 = v31;
      }

      else if (v32 == 0x6E6F6973726576 && v34 == 0xE700000000000000 || (sub_1C014C9F0() & 1) != 0)
      {

        v72 = v29;
        v74 = v31;
      }

      else if (v32 == 0x7265727265666572 && v34 == 0xE800000000000000)
      {

        v69 = v29;
        v71 = v31;
      }

      else
      {
        v35 = sub_1C014C9F0();

        v36 = v71;
        v37 = v69;
        if (v35)
        {
          v37 = v29;
        }

        v69 = v37;
        if (v35)
        {
          v36 = v31;
        }

        v71 = v36;
      }

      v27 += v78;
      if (!--v22)
      {
        break;
      }

      v79(v4, v27, v0);
    }

    if (v81)
    {
      v9 = v68;
      v10 = v67;
      v39 = v69;
      v40 = v75;
      v41 = v23;
      v42 = v81;
      goto LABEL_48;
    }

    v9 = v68;
    v10 = v67;
    v39 = v69;
    v40 = v75;
  }

  else
  {

    v39 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v40 = 0;
    v76 = 0;
    v77 = 0;
  }

  v43 = [objc_opt_self() deviceGuideIdentifier];
  v41 = sub_1C014C230();
  v42 = v44;

LABEL_48:
  v45 = type metadata accessor for UserGuide();
  v46 = objc_allocWithZone(v45);
  v47 = &v46[OBJC_IVAR___TPSUserGuide_referrer];
  *v47 = 0;
  v47[1] = 0;
  v48 = &v46[OBJC_IVAR___TPSUserGuide_version];
  *v48 = 0;
  v48[1] = 0;
  v49 = &v46[OBJC_IVAR___TPSUserGuide__topicIdentifier];
  *v49 = 0;
  v49[1] = 0;
  sub_1C014BF30();
  v50 = &v46[OBJC_IVAR___TPSUserGuide_identifier];
  *v50 = v41;
  v50[1] = v42;
  swift_beginAccess();
  v51 = v48[1];
  v52 = v74;
  *v48 = v72;
  v48[1] = v52;

  v53 = &v46[OBJC_IVAR___TPSUserGuide_text];
  *v53 = 0;
  v53[1] = 0xE000000000000000;
  v54 = &v46[OBJC_IVAR___TPSUserGuide_symbol];
  *v54 = 0x6761702E6B6F6F62;
  v54[1] = 0xEA00000000007365;
  v55 = &v46[OBJC_IVAR___TPSUserGuide_platform];
  *v55 = 0;
  v55[1] = 0;
  v46[OBJC_IVAR___TPSUserGuide_platformIndependent] = 0;
  *&v46[OBJC_IVAR___TPSUserGuide_gradientColorStrings] = &unk_1F3F2C6C0;
  v56 = objc_allocWithZone(TPSGradient);
  v57 = sub_1C014C3B0();
  v58 = [v56 initWithColorStrings_];

  *&v46[OBJC_IVAR___TPSUserGuide_gradient] = v58;
  v84.receiver = v46;
  v84.super_class = v45;
  v59 = objc_msgSendSuper2(&v84, sel_init);
  v60 = v77;
  if (!v77)
  {
    v61 = v59;

    v60 = 0;
    goto LABEL_52;
  }

  v61 = v59;
  if (!v40)
  {
LABEL_52:
    v62 = v76;
    goto LABEL_53;
  }

  v82 = v76;
  v83 = v77;
  MEMORY[0x1C68D6B10](35, 0xE100000000000000);
  MEMORY[0x1C68D6B10](v73, v40);

  v62 = v82;
  v60 = v83;
LABEL_53:
  UserGuide.topicIdentifier.setter(v62, v60);
  (*(v10 + 8))(v70, v9);
  v63 = &v61[OBJC_IVAR___TPSUserGuide_referrer];
  swift_beginAccess();
  v64 = v63[1];
  v65 = v71;
  *v63 = v39;
  v63[1] = v65;

  return v61;
}

unint64_t sub_1C011C85C()
{
  result = qword_1EDD446F8[0];
  if (!qword_1EDD446F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD446F8);
  }

  return result;
}

uint64_t sub_1C011C8B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06490, &qword_1C0155FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C011C928()
{
  result = sub_1C014BF40();
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

void *sub_1C011CA3C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1C014C710();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1C0122E6C(&v5, v3, *(a1 + 36), 0, a1);
  }
}

void sub_1C011CABC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  sub_1C014BF00();

  v2 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 identifier];
    sub_1C014C230();

    v6 = *(v1 + OBJC_IVAR___TPSSavedTipsManager_queue);
    MEMORY[0x1EEE9AC00]();
    sub_1C014C5B0();

    v7 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
    swift_beginAccess();
    if (v9 == *(v1 + v7))
    {

      *(v1 + v7) = v9;
    }

    else
    {
      swift_getKeyPath();
      MEMORY[0x1EEE9AC00]();
      sub_1C014BEF0();
    }
  }

  else
  {
    v8 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
    swift_beginAccess();
    if (*(v1 + v8))
    {
      swift_getKeyPath();
      MEMORY[0x1EEE9AC00]();
      sub_1C014BEF0();
    }

    else
    {
      *(v1 + v8) = 0;
    }
  }
}

void (*sub_1C011CD9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C011CE00;
}

void sub_1C011CE00(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1C011CABC();
  }
}

void *sub_1C011CF14()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  sub_1C014BF00();

  v1 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

void sub_1C011D034(void *a1)
{
  v3 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
    sub_1C014BEF0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C010074C(0, &qword_1EBE06988, off_1E8100A20);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C014C610();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;

  sub_1C011CABC();
}

id sub_1C011D1E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  sub_1C014BF00();

  v4 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C011D2B8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C011D034(v2);
}

uint64_t type metadata accessor for TPSSavedTipsManager()
{
  result = qword_1EBE05CF8;
  if (!qword_1EBE05CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C011D334(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___TPSSavedTipsManager__currentTip;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  sub_1C011CABC();
}

void (*sub_1C011D3C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___TPSSavedTipsManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  sub_1C014BF00();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C014BF20();

  v4[7] = sub_1C011CD9C(v4);
  return sub_1C011D500;
}

uint64_t sub_1C011D644()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  sub_1C014BF00();

  v1 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1C011D754(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
    sub_1C014BEF0();
  }

  return result;
}

uint64_t sub_1C011D880@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  sub_1C014BF00();

  v4 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*sub_1C011D984(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___TPSSavedTipsManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C0122EFC(&qword_1EBE06978, type metadata accessor for TPSSavedTipsManager);
  sub_1C014BF00();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C014BF20();

  v4[7] = sub_1C011D50C();
  return sub_1C011DABC;
}

void sub_1C011DAC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C014BF10();

  free(v1);
}

id sub_1C011DB5C()
{
  result = [objc_allocWithZone(type metadata accessor for TPSSavedTipsManager()) init];
  qword_1EDD44AD0 = result;
  return result;
}

id TPSSavedTipsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TPSSavedTipsManager.sharedInstance.getter()
{
  if (qword_1EDD44AC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD44AD0;

  return v1;
}

id TPSSavedTipsManager.init()()
{
  v1 = sub_1C014C580();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v3 = sub_1C014C0D0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1C014C5A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___TPSSavedTipsManager__currentTip] = 0;
  v0[OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved] = 0;
  v10 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  v11 = MEMORY[0x1E69E7CC0];
  *&v0[v10] = sub_1C00F9638(MEMORY[0x1E69E7CC0]);
  v15 = OBJC_IVAR___TPSSavedTipsManager_queue;
  sub_1C010074C(0, &qword_1EDD44B68, 0x1E69E9610);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8098], v5);
  sub_1C014C0B0();
  v17 = v11;
  sub_1C0122EFC(&qword_1EDD44B70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C01115A8();
  sub_1C014C700();
  *&v0[v15] = sub_1C014C5D0();
  sub_1C014BF30();
  v12 = type metadata accessor for TPSSavedTipsManager();
  v16.receiver = v0;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  sub_1C0120874();

  return v13;
}

uint64_t sub_1C011DF68()
{
  v1 = *(v0 + OBJC_IVAR___TPSSavedTipsManager_queue);
  sub_1C014C5B0();
  return v3;
}

uint64_t sub_1C011DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00]();
  v11 = &v23[-v10];
  if (a2)
  {
    v12 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
    swift_beginAccess();
    v13 = *(a3 + v12);

    v15 = sub_1C01234FC(v14, a1, a2);

    sub_1C011CA3C(v15);
    a2 = v16;
    v18 = v17;

    if (a2)
    {

      v19 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
      swift_beginAccess();
      v20 = sub_1C014BD40();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v11, &v18[v19], v20);

      (*(v21 + 56))(v11, 0, 1, v20);
    }

    else
    {
      v22 = sub_1C014BD40();
      (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    }

    LOBYTE(a2) = a2 != 0;
    result = sub_1C012348C(v11);
  }

  *a4 = a2;
  return result;
}

uint64_t sub_1C011E2C0()
{
  v1 = *(v0 + OBJC_IVAR___TPSSavedTipsManager_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  return sub_1C014C5B0();
}

uint64_t sub_1C011E344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_1C012EBF4(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
      swift_beginAccess();
      v14 = sub_1C014BD40();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a4, &v12[v13], v14);

      return (*(v15 + 56))(a4, 0, 1, v14);
    }
  }

  v17 = sub_1C014BD40();
  return (*(*(v17 - 8) + 56))(a4, 1, 1, v17);
}

uint64_t sub_1C011E654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___TPSSavedTipsManager_queue];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C0122F84;
  *(v11 + 24) = v10;
  v16[4] = sub_1C0122F94;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1C011EB80;
  v16[3] = &block_descriptor_4;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1C011E7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v9 = sub_1C014BD40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  if (*(*(a1 + v14) + 16))
  {
    v15 = *(a1 + v14);

    sub_1C012EBF4(a2, a3);
    v17 = v16;

    if (v17)
    {
      swift_beginAccess();

      sub_1C00F7E90(0, a2, a3);
      swift_endAccess();
LABEL_7:
      v34 = objc_opt_self();
      v35 = *(a1 + v14);
      type metadata accessor for TPSSavedTipEntry();

      v36 = sub_1C014C160();

      v37 = sub_1C014C200();
      [v34 archivedDataWithRootObject:v36 forKey:v37];

      return;
    }
  }

  v39 = a3;
  sub_1C014BD30();
  v18 = [objc_opt_self() sharedInstance];
  if (v18)
  {
    v19 = v18;
    v20 = a5;
    v38 = a2;
    v21 = [v18 majorVersion];

    if (v21)
    {
      v22 = sub_1C014C230();
      v24 = v23;

      v25 = type metadata accessor for TPSSavedTipEntry();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR___TPSSavedTipEntry_tipIdentifier];
      *v27 = v40;
      *(v27 + 1) = v20;
      (*(v10 + 16))(&v26[OBJC_IVAR___TPSSavedTipEntry_savedDate], v13, v9);
      v28 = &v26[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
      *v28 = v22;
      v28[1] = v24;
      v42.receiver = v26;
      v42.super_class = v25;

      v29 = objc_msgSendSuper2(&v42, sel_init);
      (*(v10 + 8))(v13, v9);
      swift_beginAccess();
      v30 = v39;

      v31 = v29;
      v32 = *(a1 + v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(a1 + v14);
      *(a1 + v14) = 0x8000000000000000;
      sub_1C00F8AB4(v31, v38, v30, isUniquelyReferenced_nonNull_native);

      *(a1 + v14) = v41;
      swift_endAccess();

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C011EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v28 - v16;
  v31 = *&v7[OBJC_IVAR___TPSSavedTipsManager_queue];
  sub_1C010225C(a5, &v28 - v16);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = a1;
  v20[4] = a2;
  sub_1C0122FD4(v17, v20 + v18);
  v21 = (v20 + v19);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1C0123044;
  *(v24 + 24) = v20;
  aBlock[4] = sub_1C0123B80;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011EB80;
  aBlock[3] = &block_descriptor_17;
  v25 = _Block_copy(aBlock);
  v26 = v7;

  dispatch_sync(v31, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

void sub_1C011EEA0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = a8;
  v91 = a7;
  v86 = a6;
  v85 = a5;
  v98 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v82 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v87 = &v82 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v90 = &v82 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v82 - v24;
  v26 = sub_1C014BD40();
  v97 = *(v26 - 8);
  v27 = *(v97 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v84 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v82 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v82 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v82 - v36;
  v38 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v95 = a3;
  v96 = a1;
  v93 = v38;
  v94 = a2;
  v39 = *(a1 + v38);
  if (*(v39 + 16))
  {

    v40 = sub_1C012EBF4(a2, a3);
    if (v41)
    {
      v42 = *(*(v39 + 56) + 8 * v40);
      v43 = v42;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  sub_1C010225C(v98, v25);
  v44 = v97;
  v45 = *(v97 + 48);
  if (v45(v25, 1, v26) == 1)
  {
    sub_1C012348C(v25);
  }

  else
  {
    (*(v44 + 32))(v37, v25, v26);
    if (!v42)
    {
      v56 = *(v44 + 16);
      v56(v35, v37, v26);
      v57 = v44;
      v58 = type metadata accessor for TPSSavedTipEntry();
      v59 = objc_allocWithZone(v58);
      v60 = &v59[OBJC_IVAR___TPSSavedTipEntry_tipIdentifier];
      v61 = v86;
      *v60 = v85;
      *(v60 + 1) = v61;
      v56(&v59[OBJC_IVAR___TPSSavedTipEntry_savedDate], v35, v26);
      v62 = &v59[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
      v63 = v92;
      *v62 = v91;
      *(v62 + 1) = v63;
      v99.receiver = v59;
      v99.super_class = v58;

      v42 = objc_msgSendSuper2(&v99, sel_init);
      v64 = *(v57 + 8);
      v64(v35, v26);
      v64(v37, v26);
      goto LABEL_23;
    }

    (*(v44 + 8))(v37, v26);
  }

  sub_1C010225C(v98, v23);
  if (v45(v23, 1, v26) == 1)
  {
    sub_1C012348C(v23);
    if (!v42)
    {
      return;
    }

    v42 = 0;
  }

  else
  {
    v46 = *(v44 + 32);
    v46(v32, v23, v26);
    if (!v42)
    {
      (*(v44 + 8))(v32, v26);
      return;
    }

    v47 = v87;
    v46(v87, v32, v26);
    v86 = v44 + 32;
    v48 = *(v44 + 56);
    v48(v47, 0, 1, v26);
    v49 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
    swift_beginAccess();
    v50 = *(v44 + 16);
    v83 = v49;
    v85 = v46;
    v51 = v88;
    v50(v88, &v42[v49], v26);
    v82 = v48;
    v48(v51, 0, 1, v26);
    v52 = v89;
    sub_1C0122FD4(v47, v89);
    v53 = v45(v52, 1, v26);
    v98 = v42;
    if (v53 == 1)
    {
      sub_1C012348C(v52);
      v54 = v90;
      sub_1C0122FD4(v51, v90);
      v55 = v85;
    }

    else
    {
      sub_1C012348C(v51);
      v54 = v90;
      v55 = v85;
      v85(v90, v52, v26);
      v82(v54, 0, 1, v26);
    }

    v65 = v45(v54, 1, v26);
    v66 = v97;
    if (v65 == 1)
    {
      v67 = v98;

      sub_1C012348C(v54);
      v42 = 0;
    }

    else
    {
      v68 = v84;
      v55(v84, v54, v26);
      v69 = v83;
      swift_beginAccess();
      (*(v66 + 24))(&v42[v69], v68, v26);
      swift_endAccess();
      (*(v66 + 8))(v68, v26);
      v70 = v98;
      v71 = &v98[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
      swift_beginAccess();
      v72 = *(v71 + 1);
      v73 = v92;
      *v71 = v91;
      *(v71 + 1) = v73;
    }
  }

LABEL_23:
  v74 = v96;
  v75 = v93;
  swift_beginAccess();
  v76 = v42;
  v77 = v95;

  sub_1C00F7E90(v42, v94, v77);
  swift_endAccess();
  v78 = objc_opt_self();
  v79 = *(v74 + v75);
  type metadata accessor for TPSSavedTipEntry();

  v80 = sub_1C014C160();

  v81 = sub_1C014C200();
  [v78 archivedDataWithRootObject:v80 forKey:v81];
}

uint64_t sub_1C011F888()
{
  v1 = *(v0 + OBJC_IVAR___TPSSavedTipsManager_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  sub_1C014C5B0();
  return v3;
}

uint64_t sub_1C011F908@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1C013C228(*(v4 + 16), 0);
    v7 = sub_1C013D904(&v21, v6 + 4, v5, v4);
    swift_bridgeObjectRetain_n();
    sub_1C0123AC8();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v21 = v6;
  sub_1C0120BF4(&v21);
  if (v20)
  {

    __break(1u);
  }

  else
  {

    v8 = v21;
    v9 = v21[2];
    if (v9)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1C01090B4(0, v9, 0);
      v10 = 6;
      v11 = v22;
      do
      {
        v12 = (v8[v10] + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier);
        swift_beginAccess();
        v13 = *v12;
        v14 = v12[1];
        v22 = v11;
        v15 = *(v11 + 16);
        v16 = *(v11 + 24);

        if (v15 >= v16 >> 1)
        {
          sub_1C01090B4((v16 > 1), v15 + 1, 1);
          v11 = v22;
        }

        *(v11 + 16) = v15 + 1;
        v17 = v11 + 16 * v15;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v10 += 3;
        --v9;
      }

      while (v9);
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v11;
  }

  return result;
}

uint64_t sub_1C011FBC4()
{
  v1 = *&v0[OBJC_IVAR___TPSSavedTipsManager_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C0123114;
  *(v3 + 24) = v2;
  v8[4] = sub_1C0123B80;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C011EB80;
  v8[3] = &block_descriptor_27_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1C011FD18(char *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    goto LABEL_102;
  }

  v3 = v2;
  v4 = [v2 majorVersion];

  if (!v4)
  {
LABEL_103:
    __break(1u);
    return;
  }

  v5 = sub_1C014C230();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  v9 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_95:

    v32 = 0;
    v31 = 1;
    goto LABEL_68;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v71[0] = v5;
      v71[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (v5 == 43)
      {
        if (v8)
        {
          if (--v8)
          {
            v13 = 0;
            v23 = v71 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_101;
      }

      if (v5 != 45)
      {
        if (v8)
        {
          v13 = 0;
          v28 = v71;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v8)
      {
        if (--v8)
        {
          v13 = 0;
          v17 = v71 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v11 = sub_1C014C850();
      }

      v12 = *v11;
      if (v12 == 43)
      {
        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            v13 = 0;
            if (v11)
            {
              v20 = v11 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  goto LABEL_63;
                }

                v22 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_63;
                }

                v13 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_63;
                }

                ++v20;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_100;
      }

      if (v12 != 45)
      {
        if (v9)
        {
          v13 = 0;
          if (v11)
          {
            while (1)
            {
              v26 = *v11 - 48;
              if (v26 > 9)
              {
                goto LABEL_63;
              }

              v27 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_63;
              }

              v13 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_63;
              }

              ++v11;
              if (!--v9)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v13 = 0;
        LOBYTE(v8) = 1;
        goto LABEL_64;
      }

      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          v13 = 0;
          if (v11)
          {
            v14 = v11 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              v16 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_63;
              }

              v13 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v8) = 0;
LABEL_64:
          v31 = v8;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v13 = sub_1C01224E8(v5, v7, 10);
  v31 = v63;
LABEL_65:

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v13;
  }

LABEL_68:
  v68 = MEMORY[0x1E69E7CC0];
  v72 = MEMORY[0x1E69E7CC0];
  v33 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v64 = v33;
  v65 = a1;
  v34 = *&a1[v33];
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v66 = v32 - 2;
  v39 = __OFSUB__(v32, 2);
  v67 = v39;

  v40 = 0;
  v70 = v31;
  while (v37)
  {
    v41 = v37;
LABEL_81:
    v37 = (v41 - 1) & v41;
    if ((v31 & 1) == 0)
    {
      v43 = __clz(__rbit64(v41)) | (v40 << 6);
      v44 = (*(v34 + 48) + 16 * v43);
      v45 = v44[1];
      v69 = *v44;
      v46 = *(*(v34 + 56) + 8 * v43);
      v47 = &v46[OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion];
      swift_beginAccess();
      v48 = *v47;
      v49 = v47[1];

      a1 = v46;

      v50 = sub_1C0120394(v48, v49);
      if (v51)
      {
        goto LABEL_74;
      }

      if (v67)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      if (v66 < v50)
      {
LABEL_74:

        v31 = v70;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1C00FE898(0, *(v68 + 2) + 1, 1, v68);
        }

        v31 = v70;
        v53 = *(v68 + 2);
        v52 = *(v68 + 3);
        if (v53 >= v52 >> 1)
        {
          v68 = sub_1C00FE898((v52 > 1), v53 + 1, 1, v68);
        }

        *(v68 + 2) = v53 + 1;
        v54 = &v68[16 * v53];
        *(v54 + 4) = v69;
        *(v54 + 5) = v45;
        v72 = v68;
      }
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_94;
    }

    if (v42 >= v38)
    {
      break;
    }

    v41 = *(v34 + 64 + 8 * v42);
    ++v40;
    if (v41)
    {
      v40 = v42;
      goto LABEL_81;
    }
  }

  if (*(v68 + 2))
  {
    v55 = *&v65[v64];
    MEMORY[0x1EEE9AC00](v68);

    sub_1C0123928(v56, sub_1C01234F4);
    v58 = v57;

    v59 = *&v65[v64];
    *&v65[v64] = v58;

    v60 = objc_opt_self();
    type metadata accessor for TPSSavedTipEntry();
    v61 = sub_1C014C160();

    v62 = sub_1C014C200();
    [v60 archivedDataWithRootObject:v61 forKey:v62];
  }
}

uint64_t sub_1C0120394(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C014C850();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1C01224E8(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_1C0120694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;

  v5 = sub_1C0140A18(sub_1C0123AA8, v7, v4);

  return (v5 & 1) == 0;
}

uint64_t sub_1C0120874()
{
  sub_1C01403D0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0156A40;
  *(inited + 32) = sub_1C010074C(0, &unk_1EDD44B80, 0x1E695DF20);
  *(inited + 40) = sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  *(inited + 48) = type metadata accessor for TPSSavedTipEntry();
  sub_1C00FA23C(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v3 = sub_1C014C3B0();

  v4 = [v2 initWithArray_];

  sub_1C014C500();
  v5 = objc_opt_self();
  v6 = sub_1C014C4F0();

  v7 = sub_1C014C200();
  v8 = [v5 unarchivedObjectOfClasses:v6 forKey:v7];

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069A8, &qword_1C0157208);
  if (swift_dynamicCast())
  {
    v9 = v13;
  }

  else
  {
    v9 = sub_1C00F9638(MEMORY[0x1E69E7CC0]);
  }

  v10 = OBJC_IVAR___TPSSavedTipsManager_savedTipsMap;
  swift_beginAccess();
  v11 = *(v0 + v10);
  *(v0 + v10) = v9;
}

id TPSSavedTipsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSSavedTipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C0120B80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06740, &qword_1C0156818);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1C0120BF4(void **a1)
{
  v45 = sub_1C014BD40();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v32 - v7;
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1C010697C(v8);
  }

  v9 = v8[2];
  v37 = v8 + 4;
  v51[0] = (v8 + 4);
  v51[1] = v9;
  result = sub_1C014C9B0();
  if (result >= v9)
  {
    if (v9 >= 2)
    {
      v34 = a1;
      v35 = v1;
      v41 = (v3 + 8);
      v42 = (v3 + 16);
      v33 = v8;
      v13 = v8 + 5;
      v14 = -1;
      v15 = 1;
      v36 = v9;
      do
      {
        v38 = v15;
        v39 = v14;
        v16 = &v37[3 * v15];
        v17 = v16[1];
        v18 = v16[2];
        v46 = v14;
        v40 = v13;
        do
        {
          v51[4] = v17;
          v19 = v13[1];
          v48 = *v13;
          v20 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
          swift_beginAccess();
          v21 = v43;
          v22 = *v42;
          v23 = v45;
          (*v42)(v43, &v18[v20], v45);
          v24 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
          swift_beginAccess();
          v25 = v44;
          v22(v44, &v19[v24], v23);

          v47 = v18;

          v26 = v19;
          v27 = sub_1C014BD10();
          v28 = *v41;
          (*v41)(v25, v23);
          v28(v21, v23);

          if (v27 != 1)
          {
            break;
          }

          v29 = v13[2];
          v17 = v13[3];
          v18 = v13[4];
          *(v13 + 1) = *(v13 - 1);
          v13[4] = v13[1];
          *(v13 - 1) = v29;
          *v13 = v17;
          v13[1] = v18;
          v13 -= 3;
        }

        while (!__CFADD__(v46++, 1));
        v15 = v38 + 1;
        v13 = v40 + 3;
        v14 = v39 - 1;
      }

      while (v38 + 1 != v36);
      a1 = v34;
      v8 = v33;
    }
  }

  else
  {
    v11 = result;
    if (v9 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066F0, &qword_1C0157200);
      v12 = sub_1C014C3F0();
      *(v12 + 16) = v9 >> 1;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v50[0] = v12 + 32;
    v50[1] = v9 >> 1;
    v31 = v12;
    sub_1C0120F78(v50, v49, v51, v11);
    *(v31 + 16) = 0;
  }

  *a1 = v8;
  return result;
}