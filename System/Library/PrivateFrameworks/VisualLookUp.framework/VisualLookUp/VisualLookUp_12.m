uint64_t sub_1D9A6F7C8()
{
  v0 = sub_1D9C7CA8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7CC0];
  v4 = sub_1D9C7CF8C();
  v5 = *(v4 + 16);
  if (v5)
  {
    v8 = *(v1 + 16);
    v6 = v1 + 16;
    v7 = v8;
    v9 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v16[2] = v4;
    v10 = v4 + v9;
    v11 = *(v6 + 56);
    v12 = MEMORY[0x1E69E7CC0];
    v8(v3, v4 + v9, v0);
    while (1)
    {
      v13 = sub_1D9A95728(v3);
      (*(v6 - 8))(v3, v0);
      if (v13)
      {
        v14 = v13;
        MEMORY[0x1DA73E0E0]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16[1] = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D9C7DF4C();
        }

        sub_1D9C7DF6C();

        v12 = v17;
      }

      v10 += v11;
      if (!--v5)
      {
        break;
      }

      v7(v3, v10, v0);
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

void sub_1D9A6F98C(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_1D99ED894(0x64695F6D616461, 0xE700000000000000);
    if (v5)
    {
      sub_1D99A579C(*(a1 + 56) + 32 * v4, v27);
      if (swift_dynamicCast())
      {
        v6 = sub_1D9C7DC4C();

        [a2 setStoreIdentifier_];
      }
    }
  }

  if (*(a1 + 16))
  {
    v7 = sub_1D99ED894(0x625F6E6F69746361, 0xED00006E6F747475);
    if (v8)
    {
      sub_1D99A579C(*(a1 + 56) + 32 * v7, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8);
      if (swift_dynamicCast())
      {
        if (*(v26 + 16))
        {
          v9 = [objc_allocWithZone(MEMORY[0x1E69C9E68]) init];
          if (*(v26 + 16))
          {
            v10 = sub_1D99ED894(0x656E7574695F7369, 0xE900000000000073);
            if (v11)
            {
              sub_1D99A579C(*(v26 + 56) + 32 * v10, v27);
              if (swift_dynamicCast())
              {
                [v9 setIsITunes_];
              }
            }
          }

          if (*(v26 + 16))
          {
            v12 = sub_1D99ED894(0x6E696D6165727473, 0xE900000000000067);
            if (v13)
            {
              sub_1D99A579C(*(v26 + 56) + 32 * v12, v27);
              if (swift_dynamicCast())
              {
                [v9 setRequiresLocalMedia_];
              }
            }
          }

          if (*(v26 + 16))
          {
            v14 = sub_1D99ED894(0x7364695F6D616461, 0xE800000000000000);
            if (v15)
            {
              sub_1D99A579C(*(v26 + 56) + 32 * v14, v27);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040);
              if (swift_dynamicCast())
              {
                v16 = sub_1D9C7DF1C();

                [v9 setStoreIdentifiers_];
              }
            }
          }

          if (*(v26 + 16))
          {
            v17 = sub_1D99ED894(1701869940, 0xE400000000000000);
            if (v18)
            {
              sub_1D99A579C(*(v26 + 56) + 32 * v17, v27);
              if (swift_dynamicCast())
              {
                v19 = sub_1D9C7DC4C();

                [v9 setType_];
              }
            }
          }

          if (*(v26 + 16) && (v20 = sub_1D99ED894(0x72656469766F7270, 0xE800000000000000), (v21 & 1) != 0))
          {
            sub_1D99A579C(*(v26 + 56) + 32 * v20, v27);

            if (swift_dynamicCast())
            {
              v22 = sub_1D9C7DC4C();

              [v9 setProvider_];
            }
          }

          else
          {
          }

          [a2 setAction_];
        }

        else
        {
        }
      }
    }
  }

  sub_1D9A0835C(0, &qword_1ECB524B0);

  v24 = sub_1D9B1D4D0(v23);
  if (v24)
  {
    v25 = v24;
    sub_1D9B1DC6C(v24);
  }
}

id sub_1D9A6FDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39[3] = a8;
  v39[4] = a5;
  v40[4] = *MEMORY[0x1E69E9840];
  v9 = sub_1D9C7DCDC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x1E69CA5E0]);
  v14 = sub_1D9C7B86C();
  v15 = [v13 initWithData_];

  if (!v15)
  {
    return 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  sub_1D9C7DCCC();
  v18 = sub_1D9C7DC9C();
  if (!v19)
  {

    return 0;
  }

  v39[1] = v18;
  v39[2] = a6;
  v20 = [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
  [v20 setInlineCard_];
  [v20 setType_];
  v21 = [v17 cardSections];
  if (v21)
  {
    v22 = v21;
    sub_1D9A0835C(0, &qword_1ECB524A0);
    v23 = sub_1D9C7DF2C();

    if (v23 >> 62)
    {
      if (sub_1D9C7E50C())
      {
LABEL_7:
        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA73E610](0, v23);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v24 = *(v23 + 32);
        }

        v25 = v24;

        v26 = [v25 resultIdentifier];

        if (v26)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

LABEL_17:
  v26 = 0;
LABEL_18:
  [v20 setIdentifier_];

  v27 = sub_1D9C7DC4C();
  [v20 setSectionBundleIdentifier_];

  v28 = sub_1D9C7DC4C();

  [v20 setFbr_];

  sub_1D9C7DCBC();
  v29 = sub_1D9C7DC8C();
  v31 = v30;
  (*(v10 + 8))(v12, v9);
  if (v31 >> 60 == 15)
  {
    goto LABEL_22;
  }

  v32 = objc_opt_self();
  v33 = sub_1D9C7B86C();
  v40[0] = 0;
  v34 = [v32 JSONObjectWithData:v33 options:0 error:v40];

  if (!v34)
  {
    v36 = v40[0];
    v37 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99B3C44(v29, v31);

    return v20;
  }

  v35 = v40[0];
  sub_1D9C7E32C();
  sub_1D99B3C44(v29, v31);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
  }

  else
  {
    sub_1D9A6F98C(v39[5], v20);
  }

  return v20;
}

uint64_t sub_1D9A702A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectKnowledge();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A7030C(uint64_t a1)
{
  v2 = type metadata accessor for ObjectKnowledge();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9A70368()
{
  result = qword_1ECB524B8;
  if (!qword_1ECB524B8)
  {
    sub_1D9C7BB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB524B8);
  }

  return result;
}

uint64_t sub_1D9A703C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E92A8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524C8);
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D9A706A0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D9A70528(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E92BC(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_1D9C7E79C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 80;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[56 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 10) >= v11)
          {
            break;
          }

          v14 = *(v13 + 1);
          v15 = *(v13 + 7);
          v16 = *(v13 + 24);
          v17 = *(v13 - 2);
          *(v13 + 8) = *(v13 - 3);
          v18 = *(v13 + 40);
          *(v13 + 24) = v17;
          *(v13 + 40) = *(v13 - 1);
          *(v13 + 7) = *v13;
          *(v13 - 6) = v14;
          *(v13 - 10) = v11;
          *(v13 - 2) = v16;
          *(v13 - 1) = v18;
          *v13 = v15;
          v13 -= 56;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 56;
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
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1D9A70C68(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D9A706A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D99E8FDC(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D9A71264((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 12;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 6;
        v18 = v16 >= v17;
        ++v15;
        v16 = v17;
        if ((((v14 < v9) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v14 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v14 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 2);
            v26 = *(v23 - 24);
            *(v22 + 2) = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1D99E8FF0((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_1D9A71264((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*v33 >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_1D9A70C68(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v101 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D99E8FDC(v7);
      v7 = result;
    }

    v93 = (v7 + 16);
    v94 = *(v7 + 16);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = (v7 + 16 * v94);
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_1D9A714A0((*a3 + 56 * *v95), (*a3 + 56 * *v97), *a3 + 56 * v98, v102);
        if (v4)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_116;
        }

        v94 = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 56 * v6 + 8);
      v10 = *a3 + 56 * v8;
      v11 = *(v10 + 8);
      v12 = v8 + 2;
      v13 = (v10 + 120);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 14;
        v16 = v14 >= v15;
        ++v12;
        v14 = v15;
        if ((((v11 < v9) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 56 * v6 - 24;
        v18 = 56 * v8 + 48;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v31 + v18);
            v22 = *(v31 + v18 - 48);
            v23 = (v31 + v17);
            v24 = *(v21 - 10);
            v25 = *v21;
            v26 = *(v21 - 2);
            v27 = *(v21 - 1);
            v29 = *(v23 - 1);
            v28 = *v23;
            v30 = *(v23 - 2);
            *v21 = *(v23 + 2);
            *(v21 - 2) = v29;
            *(v21 - 1) = v28;
            *(v21 - 3) = v30;
            *(v23 - 4) = v22;
            *(v23 - 6) = v24;
            *(v23 - 1) = v26;
            *v23 = v27;
            *(v23 + 2) = v25;
          }

          ++v20;
          v17 -= 56;
          v18 += 56;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v46 = *(v7 + 16);
    v45 = *(v7 + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1D99E8FF0((v45 > 1), v46 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v47;
    v48 = v7 + 32;
    v49 = (v7 + 32 + 16 * v46);
    *v49 = v8;
    v49[1] = v6;
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v7 + 32);
          v52 = *(v7 + 40);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = (v7 + 16 * v47);
          v69 = *v67;
          v68 = v67[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_106;
          }

          v73 = (v48 + 16 * v50);
          v75 = *v73;
          v74 = v73[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v77 = (v7 + 16 * v47);
        v79 = *v77;
        v78 = v77[1];
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_72:
        if (v72)
        {
          goto LABEL_108;
        }

        v80 = (v48 + 16 * v50);
        v82 = *v80;
        v81 = v80[1];
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_110;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v50 - 1 >= v47)
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

        v88 = (v48 + 16 * (v50 - 1));
        v89 = *v88;
        v90 = (v48 + 16 * v50);
        v91 = v90[1];
        sub_1D9A714A0((*a3 + 56 * *v88), (*a3 + 56 * *v90), *a3 + 56 * v91, v102);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_99;
        }

        if (v50 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *(v7 + 16);
        if (v50 >= v92)
        {
          goto LABEL_101;
        }

        v47 = v92 - 1;
        result = memmove((v48 + 16 * v50), v90 + 2, 16 * (v92 - 1 - v50));
        *(v7 + 16) = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_3;
        }
      }

      v55 = v48 + 16 * v47;
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = (v7 + 16 * v47);
      v64 = *v62;
      v63 = v62[1];
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_107;
      }

      if (v66 >= v58)
      {
        v84 = (v48 + 16 * v50);
        v86 = *v84;
        v85 = v84[1];
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v100;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 56 * v6 - 56;
  v34 = v8 - v6;
LABEL_30:
  v35 = *(v32 + 56 * v6 + 8);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*(v37 + 8) >= v35)
    {
LABEL_29:
      ++v6;
      v33 += 56;
      --v34;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 104);
    v39 = *(v37 + 72);
    v40 = *(v37 + 16);
    v42 = *(v37 + 48);
    v41 = *(v37 + 56);
    *(v37 + 56) = *v37;
    v43 = *(v37 + 88);
    *(v37 + 72) = v40;
    *(v37 + 88) = *(v37 + 32);
    *(v37 + 104) = v42;
    *v37 = v41;
    *(v37 + 8) = v35;
    *(v37 + 16) = v39;
    *(v37 + 32) = v43;
    *(v37 + 48) = v38;
    v37 -= 56;
    if (__CFADD__(v36++, 1))
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

uint64_t sub_1D9A71264(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[6 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[6 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 6;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 6;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[6 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[6 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 6;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (*v16 < v19)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 6, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[6 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1D9A714A0(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[14 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[14 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 14;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 14;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 14;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v17 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[14 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[14 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_20:
    v5 -= 56;
    do
    {
      v18 = (v5 + 56);
      if (*(v6 - 12) < *(v12 - 12))
      {
        v23 = v6 - 14;
        if (v18 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 10);
          v26 = *(v6 - 6);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 14, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v12 - 14;
      if (v18 != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 10);
        v22 = *(v12 - 6);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 14;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_31:
  v27 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v28 = (v27 >> 4) + (v27 >> 63);
  if (v6 != v4 || v6 >= &v4[14 * v28])
  {
    memmove(v6, v4, 56 * v28);
  }

  return 1;
}

uint64_t sub_1D9A71704(char *a1, void *a2)
{
  v48 = a1;

  sub_1D9A703C0(&v48);
  v3 = v48;
  v47 = *(v48 + 2);
  if (v47)
  {
    v4 = 0;
    v5 = v48 + 48;
    v6 = MEMORY[0x1E69E7CC8];
    while (v4 < *(v3 + 2))
    {
      v8 = *(v5 - 4);
      v9 = *(v5 - 1);
      v10 = *v5;
      if (!*(v6 + 2))
      {
        goto LABEL_11;
      }

      sub_1D99F0BB0(*(v5 - 1));
      if ((v11 & 1) == 0)
      {
        goto LABEL_11;
      }

      sub_1D99F0BB0(v9);
      if (v12)
      {
        v13 = sub_1D99F0BB0(v9);
        if ((v14 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (*(*(v6 + 7) + 56 * v13 + 8) < v8)
        {
LABEL_11:
          if ((v10 - 0x2000000000000000) >> 62 != 3)
          {
            goto LABEL_28;
          }

          v15 = [a2 objectAtIndexedSubscript_];
          [v15 doubleValue];
          v17 = v16;

          v18 = [a2 objectAtIndexedSubscript_];
          [v18 doubleValue];
          v20 = v19;

          v21 = [a2 objectAtIndexedSubscript_];
          [v21 doubleValue];
          v23 = v22;

          v24 = [a2 objectAtIndexedSubscript_];
          [v24 doubleValue];
          v26 = v25;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v6;
          v28 = sub_1D99F0BB0(v9);
          v30 = *(v6 + 2);
          v31 = (v29 & 1) == 0;
          v32 = __OFADD__(v30, v31);
          v33 = v30 + v31;
          if (v32)
          {
            goto LABEL_29;
          }

          v34 = v29;
          if (*(v6 + 3) >= v33)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v43 = v28;
              sub_1D9C14F28();
              v28 = v43;
            }
          }

          else
          {
            sub_1D9C0B1F4(v33, isUniquelyReferenced_nonNull_native);
            v28 = sub_1D99F0BB0(v9);
            if ((v34 & 1) != (v35 & 1))
            {
              goto LABEL_33;
            }
          }

          v36 = v20 - v26 * 0.5;
          v37 = v17 - v23 * 0.5;
          v38 = v20 + v26 * 0.5;
          v39 = v17 + v23 * 0.5;
          v6 = v48;
          if (v34)
          {
            v7 = *(v48 + 7) + 56 * v28;
            *v7 = v4;
            *(v7 + 8) = v8;
            *(v7 + 16) = v36;
            *(v7 + 24) = v37;
            *(v7 + 32) = v38;
            *(v7 + 40) = v39;
            *(v7 + 48) = v9;
          }

          else
          {
            *&v48[8 * (v28 >> 6) + 64] |= 1 << v28;
            *(*(v6 + 6) + 8 * v28) = v9;
            v40 = *(v6 + 7) + 56 * v28;
            *v40 = v4;
            *(v40 + 8) = v8;
            *(v40 + 16) = v36;
            *(v40 + 24) = v37;
            *(v40 + 32) = v38;
            *(v40 + 40) = v39;
            *(v40 + 48) = v9;
            v41 = *(v6 + 2);
            v32 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (v32)
            {
              goto LABEL_30;
            }

            *(v6 + 2) = v42;
          }
        }
      }

      ++v4;
      v5 += 24;
      if (v47 == v4)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_22:

  v3 = *(v6 + 2);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v44 = sub_1D9B8E2B0(*(v6 + 2), 0);
  v45 = sub_1D9B8EBB8(&v48, (v44 + 4), v3, v6);

  sub_1D99C74D4();
  if (v45 == v3)
  {

    return v44;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  sub_1D9C7E84C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D9A71AD4@<X0>(id a1@<X3>, char a2@<W0>, uint64_t a3@<X1>, const float *a4@<X2>, char *a5@<X4>, int64_t a6@<X8>)
{
  v7 = v6;
  __I[2] = *MEMORY[0x1E69E9840];
  v12 = [a1 count];
  v13 = v12;
  v14 = v12 + 3;
  if (v12 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v12 + 3;
  }

  v16 = [a5 count];
  if (v14 < 7)
  {
    goto LABEL_70;
  }

  v17 = v16;
  if (v16 != 0x8000000000000000 || (v13 + 7) >= 4)
  {
    v14 = a4;
    v19 = sub_1D9A977FC(0, 0);
    if (v20)
    {
      sub_1D99A182C();
      swift_allocError();
      *v21 = 0xD000000000000019;
      *(v21 + 8) = 0x80000001D9CA6610;
    }

    else
    {
      v76 = a6;
      v81 = v15 >> 2;
      a6 = v17 / (v15 >> 2);
      if (a6 == v19)
      {
        if (*(a3 + 64))
        {
          if (a6 < 0)
          {
            goto LABEL_72;
          }

          if (a6)
          {
            v22 = sub_1D9C7DF5C();
            *(v22 + 16) = a6;
            v15 = v22;
            bzero((v22 + 32), 4 * a6);
          }

          else
          {
            v15 = MEMORY[0x1E69E7CC0];
          }

          v14 = *(a4 + 3);
          if (*(v14 + 16) && (v27 = *(a4 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName), v28 = *(a4 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName + 8), , sub_1D99ED894(v27, v28), v30 = v29, , (v30 & 1) != 0))
          {
          }

          else
          {
            v31 = MEMORY[0x1E69E7CC0];
          }

          a4 = v15;
          v32 = *(v31 + 16);
          if (v32)
          {
            v33 = 32;
            do
            {
              v34 = *(v31 + v33);
              if ((v34 & 0x8000000000000000) != 0)
              {
                goto LABEL_67;
              }

              if (v34 >= *(v15 + 16))
              {
                goto LABEL_68;
              }

              *(v15 + 32 + 4 * v34) = 2139095040;
              v33 += 8;
              --v32;
            }

            while (v32);
          }
        }

        else
        {
          if (a6 < 0)
          {
            goto LABEL_73;
          }

          if (a6)
          {
            a4 = sub_1D9C7DF5C();
            *(a4 + 2) = a6;
            memset_pattern16((a4 + 8), &unk_1D9C8CA70, 4 * a6);
          }

          else
          {
            a4 = MEMORY[0x1E69E7CC0];
          }
        }

        v15 = a5;
        v35 = sub_1D9C7E28C();
        if (v7)
        {

          sub_1D99A182C();
          swift_allocError();
          *v36 = 0xD000000000000023;
          *(v36 + 8) = 0x80000001D9CA6680;
          *(v36 + 16) = 4;
          swift_willThrow();
        }

        a5 = v35;
        v37 = [v15 strides];
        sub_1D99CC024();
        v14 = sub_1D9C7DF2C();

        v75 = 0;
        if ((v14 & 0xC000000000000001) != 0)
        {
          goto LABEL_74;
        }

        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
        {
          v38 = *(v14 + 48);
          goto LABEL_39;
        }

LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
      }

      v23 = v19;
      sub_1D9C7E40C();
      MEMORY[0x1DA73DF90](0xD000000000000042, 0x80000001D9CA6630);
      v24 = sub_1D9C7E7AC();
      MEMORY[0x1DA73DF90](v24);

      MEMORY[0x1DA73DF90](540877088, 0xE400000000000000);
      __C = v23;
      v25 = sub_1D9C7E7AC();
      MEMORY[0x1DA73DF90](v25);

      sub_1D99A182C();
      swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 0xE000000000000000;
    }

    *(v21 + 16) = 5;
    return swift_willThrow();
  }

  while (1)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    v38 = MEMORY[0x1DA73E610](2, v14);
LABEL_39:
    v39 = v38;

    v40 = [v39 integerValue];

    if (v13 < -3)
    {
      __break(1u);
      goto LABEL_76;
    }

    if (a6 < 0)
    {
      goto LABEL_77;
    }

    v74 = v15;
    if (v13 < 4)
    {
      goto LABEL_78;
    }

    v15 = 0;
    v84 = MEMORY[0x1E69E7CC0];
    v85 = (a3 + 48);
    v13 = 0xE000000000000000;
    v14 = *(a3 + 56);
    a3 = 3;
    v83 = MEMORY[0x1E69E7CC0];
    v79 = a5;
    v80 = a4;
    v86 = v14;
    v77 = a6;
LABEL_45:
    LODWORD(__C) = -8388608;
    __I[0] = -1;
    if ((v15 * a6) >> 64 == (v15 * a6) >> 63)
    {
      break;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  v42 = &a5[4 * v15 * a6];
  vDSP_vmin(v42, v40, a4 + 8, 1, v42, v40, a6);
  vDSP_maxvi(v42, v40, &__C, __I, a6);
  if (a2)
  {
    v44 = __C;
    v45 = __I[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_1D9AFA7D8(0, *(v84 + 2) + 1, 1, v84);
    }

    v47 = *(v84 + 2);
    v46 = *(v84 + 3);
    if (v47 >= v46 >> 1)
    {
      v84 = sub_1D9AFA7D8((v46 > 1), v47 + 1, 1, v84);
    }

    *(v84 + 2) = v47 + 1;
    v48 = &v84[24 * v47];
    *(v48 + 8) = v44;
    *(v48 + 5) = v45;
    *(v48 + 6) = v15;
    a5 = v79;
  }

  a4 = __I[0];
  v49 = v85;
  if (*(v14 + 16))
  {
    v50 = sub_1D99F0BB0(__I[0]);
    v49 = v85;
    v14 = v86;
    if (v51)
    {
      v49 = (*(v86 + 56) + 4 * v50);
    }
  }

  v52 = __C;
  if (*v49 < *&__C)
  {
    if (v13 >> 62 != 3)
    {
      goto LABEL_69;
    }

    LODWORD(v43) = *v49;
    v53 = [a1 objectAtIndexedSubscript_];
    [v53 doubleValue];
    v55 = v54;

    v56 = [a1 objectAtIndexedSubscript_];
    [v56 doubleValue];
    v58 = v57;

    v59 = [a1 objectAtIndexedSubscript_];
    [v59 doubleValue];
    v61 = v60;

    v62 = [a1 objectAtIndexedSubscript_];
    [v62 doubleValue];
    v64 = v63;

    v65 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1D9AFA6B4(0, *(v83 + 2) + 1, 1, v83);
    }

    v67 = *(v65 + 2);
    v66 = *(v65 + 3);
    v83 = v65;
    a6 = v77;
    if (v67 >= v66 >> 1)
    {
      v83 = sub_1D9AFA6B4((v66 > 1), v67 + 1, 1, v65);
    }

    v14 = v86;
    *(v83 + 2) = v67 + 1;
    v41 = &v83[56 * v67];
    *(v41 + 4) = v15;
    *(v41 + 10) = v52;
    *(v41 + 6) = v58 - v64 * 0.5;
    *(v41 + 7) = v55 - v61 * 0.5;
    *(v41 + 8) = v58 + v64 * 0.5;
    *(v41 + 9) = v55 + v61 * 0.5;
    *(v41 + 10) = a4;
    a5 = v79;
  }

  ++v15;
  ++v13;
  a3 += 4;
  a4 = v80;
  if (v81 != v15)
  {
    goto LABEL_45;
  }

  __I[0] = v83;

  sub_1D9A70528(__I);
  if (v75)
  {

    __break(1u);
  }

  else
  {

    v68 = __I[0];
    v69 = a1;
    if (a2)
    {
      v70 = sub_1D9A71704(v84, a1);

      v71 = v74;
      v72 = v74;
      v73 = a1;
    }

    else
    {

      v70 = 0;
      v69 = 0;
      v71 = 0;
    }

    *v76 = v68;
    v76[1] = v70;
    v76[2] = v69;
    v76[3] = v71;
    v76[4] = 0;
  }

  return result;
}

uint64_t sub_1D9A72344(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9A72364(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t sub_1D9A723CC(uint64_t result)
{
  v13 = result;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v9 = OBJC_IVAR____TtC12VisualLookUp18EligibilityChecker_config;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      sub_1D99A17C8(v6, v10);
      v7 = v11;
      v8 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v8 + 8))(v13, v1 + v9, v7, v8);
      if (v2)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v10);
      }

      ++v5;
      result = __swift_destroy_boxed_opaque_existential_0Tm(v10);
      v6 += 40;
      if (v4 == v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9A724C4()
{

  sub_1D9A72624(v0 + OBJC_IVAR____TtC12VisualLookUp18EligibilityChecker_config);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EligibilityChecker()
{
  result = qword_1EDD33BE0;
  if (!qword_1EDD33BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A72584()
{
  result = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9A72624(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9A72694()
{
  result = qword_1ECB524D0;
  if (!qword_1ECB524D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB524D0);
  }

  return result;
}

unint64_t sub_1D9A726EC()
{
  result = qword_1ECB524D8;
  if (!qword_1ECB524D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB524D8);
  }

  return result;
}

unint64_t sub_1D9A72740(char a1)
{
  result = 0x38343938333851;
  switch(a1)
  {
    case 1:
      result = 0x363736323251;
      break;
    case 2:
      result = 0x3935373131353651;
      break;
    case 3:
      result = 0x343836323151;
      break;
    case 4:
      result = 0x353437343151;
      break;
    case 5:
      result = 909457233;
      break;
    case 6:
      result = 959592273;
      break;
    case 7:
      result = 875835729;
      break;
    case 8:
      result = 909390161;
      break;
    case 9:
      result = 0x3331313551;
      break;
    case 10:
      result = 0x363038333451;
      break;
    case 11:
      result = 0x313138303151;
      break;
    case 12:
      result = 0x3937343138373551;
      break;
    case 13:
      result = 0x39363130343351;
      break;
    case 14:
      result = 0x3439323551;
      break;
    case 15:
      result = 0x303634313151;
      break;
    case 16:
      result = 825701713;
      break;
    case 17:
      result = 0x39373931313851;
      break;
    case 18:
      result = 0x36323436383351;
      break;
    case 19:
      result = 909457489;
      break;
    case 20:
      result = 0x3331323530333351;
      break;
    case 21:
      result = 0x31393135323151;
      break;
    case 22:
      result = 0x3130303132393251;
      break;
    case 23:
      result = 0x343330313151;
      break;
    case 24:
      result = 0x35383739323451;
      break;
    case 25:
      result = 0x34393538303251;
      break;
    case 26:
      result = 0x31363830363851;
      break;
    case 27:
      result = 0x39343536343751;
      break;
    case 28:
      result = 0x37333835363451;
      break;
    case 29:
      result = 0x3538393839383851;
      break;
    case 30:
      result = 0x3234353231373151;
      break;
    case 31:
      result = 0x3238303539363351;
      break;
    case 32:
      result = 0x303530303451;
      break;
    case 33:
      result = 0xD000000000000011;
      break;
    case 34:
      result = 0x33313138353251;
      break;
    case 35:
      result = 0x3432333338373151;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9A72A60(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D9A72740(*a1);
  v5 = v4;
  if (v3 == sub_1D9A72740(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();
  }

  return v8 & 1;
}

uint64_t sub_1D9A72AE8()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A72740(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A72B4C()
{
  sub_1D9A72740(*v0);
  sub_1D9C7DD6C();
}

uint64_t sub_1D9A72BA0()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9A72740(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A72C00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9A73B40();
  *a1 = result;
  return result;
}

unint64_t sub_1D9A72C30@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D9A72740(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D9A72C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v132 = a4;
  v134[4] = *MEMORY[0x1E69E9840];
  v10 = sub_1D9C7B80C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9C7D8DC();
  v130 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  v131 = v5;
  v18 = (v5 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_defaultMappingName);
  *v18 = a2;
  v18[1] = a3;
  v19 = sub_1D9C7B81C();
  v127 = v11;
  v128 = a1;
  v125 = v16;
  v126 = v10;
  v123 = v14;
  v124 = v13;
  v129 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_1D9B88EB8(v19, v21);
  v25 = v24;
  sub_1D99A5748(v20, v22);
  v26 = objc_opt_self();
  v27 = sub_1D9C7B86C();
  v134[0] = 0;
  v28 = [v26 JSONObjectWithData:v27 options:2 error:v134];

  v29 = v127;
  if (!v28)
  {
    v95 = v25;
    v96 = v134[0];

    v97 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99A5748(v23, v95);

LABEL_42:

    (*(v29 + 8))(v128, v126);
    goto LABEL_43;
  }

  v30 = v134[0];
  sub_1D9C7E32C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1D99A5748(v23, v25);
    goto LABEL_42;
  }

  v104 = v25;
  v103 = v18;
  v31 = v133;
  v33 = *(v29 + 16);
  v32 = v29 + 16;
  v102 = OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_mappingURL;
  v34 = v126;
  v116 = v33;
  v33(v131 + OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_mappingURL, v128, v126);
  v36 = 0;
  v38 = v31 + 64;
  v37 = *(v31 + 64);
  v118 = v31;
  v39 = 1 << *(v31 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v37;
  v42 = (v39 + 63) >> 6;
  v117 = (v32 - 8);
  v43 = MEMORY[0x1E69E7CC8];
  v115 = v130 + 8;
  *&v35 = 136315394;
  v105 = v35;
  v44 = MEMORY[0x1E69E7CC8];
  v114 = v23;
  v113 = v31 + 64;
  v112 = v42;
  v127 = v32;
LABEL_8:
  v52 = v124;
  if (v41)
  {
    v121 = v44;
    v122 = v43;
  }

  else
  {
    do
    {
      v53 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_47;
      }

      if (v53 >= v42)
      {
        (*v117)(v128, v34);

        sub_1D99A5748(v23, v104);

        result = v131;
        *(v131 + 16) = v43;
        *(result + 24) = v44;
        return result;
      }

      v41 = *(v38 + 8 * v53);
      ++v36;
    }

    while (!v41);
    v121 = v44;
    v122 = v43;
    v36 = v53;
  }

  v54 = __clz(__rbit64(v41)) | (v36 << 6);
  v55 = (*(v118 + 48) + 16 * v54);
  v56 = *v55;
  v57 = v55[1];
  v58 = *(*(v118 + 56) + 8 * v54);

  v59 = v125;
  static Logger.argos.getter(v125);
  v116(v52, v128, v34);

  v60 = sub_1D9C7D8BC();
  v61 = v34;
  v62 = sub_1D9C7E09C();

  v63 = os_log_type_enabled(v60, v62);
  v119 = v56;
  v120 = v57;
  if (v63)
  {
    v64 = v61;
    v65 = v56;
    v66 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v134[0] = v130;
    *v66 = v105;
    *(v66 + 4) = sub_1D9A0E224(v65, v57, v134);
    *(v66 + 12) = 2080;
    v67 = sub_1D9C7B76C();
    v69 = v68;
    v106 = *v117;
    v106(v52, v64);
    v70 = sub_1D9A0E224(v67, v69, v134);

    *(v66 + 14) = v70;
    _os_log_impl(&dword_1D9962000, v60, v62, "ObjectOntology: load mapping for mapping name %s from %s", v66, 0x16u);
    v71 = v130;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v71, -1, -1);
    MEMORY[0x1DA7405F0](v66, -1, -1);

    (*v115)(v125, v123);
  }

  else
  {

    v106 = *v117;
    v106(v52, v61);
    (*v115)(v59, v123);
  }

  v72 = *(v58 + 16);
  if (!v72)
  {
    v45 = MEMORY[0x1E69E7CC0];
    v130 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v73 = 0;
  v74 = v58 + 40;
  v110 = v72 - 1;
  v45 = MEMORY[0x1E69E7CC0];
  v130 = MEMORY[0x1E69E7CC0];
  v111 = v58 + 40;
  while (1)
  {
    v75 = (v74 + 16 * v73);
    v76 = v73;
    while (1)
    {
      if (v76 >= *(v58 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v77 = *v75;
      v73 = v76 + 1;
      if (*v75)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1D9AFA8F4(0, v45[2] + 1, 1, v45);
      }

      v79 = v45[2];
      v78 = v45[3];
      if (v79 >= v78 >> 1)
      {
        v45 = sub_1D9AFA8F4((v78 > 1), v79 + 1, 1, v45);
      }

      v45[2] = v79 + 1;
      v80 = &v45[4 * v79];
      *(v80 + 2) = 0u;
      *(v80 + 3) = 0u;
      v75 += 2;
      ++v76;
      if (v72 == v73)
      {
        goto LABEL_7;
      }
    }

    v81 = v129;
    if (!*(v129 + 16))
    {
      break;
    }

    v82 = *(v75 - 1);

    v83 = sub_1D99ED894(v82, v77);
    LODWORD(v109) = v84;

    if ((v109 & 1) == 0)
    {
      break;
    }

    v85 = *(*(v81 + 56) + 8 * v83);
    v86 = v85[3];
    v108 = v85[2];
    v87 = v85[5];
    v107 = v85[4];
    v109 = v86;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1D9AFA8F4(0, v45[2] + 1, 1, v45);
    }

    v89 = v45[2];
    v88 = v45[3];
    if (v89 >= v88 >> 1)
    {
      v45 = sub_1D9AFA8F4((v88 > 1), v89 + 1, 1, v45);
    }

    v45[2] = v89 + 1;
    v90 = &v45[4 * v89];
    v91 = v109;
    v90[4] = v108;
    v90[5] = v91;
    v90[6] = v107;
    v90[7] = v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_1D9AF85BC(0, *(v130 + 2) + 1, 1, v130);
    }

    v93 = *(v130 + 2);
    v92 = *(v130 + 3);
    if (v93 >= v92 >> 1)
    {
      v130 = sub_1D9AF85BC((v92 > 1), v93 + 1, 1, v130);
    }

    v94 = v130;
    *(v130 + 2) = v93 + 1;
    *&v94[8 * v93 + 32] = v76;
    v74 = v111;
    if (v110 == v76)
    {
LABEL_7:
      v41 &= v41 - 1;

      v46 = v120;

      v47 = v122;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134[0] = v47;
      v49 = v119;
      sub_1D9C118C4(v45, v119, v46, isUniquelyReferenced_nonNull_native);

      v43 = v134[0];
      v50 = v121;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v134[0] = v50;
      sub_1D9C11480(v130, v49, v46, v51);

      v44 = v134[0];
      v34 = v126;
      v23 = v114;
      v38 = v113;
      v42 = v112;
      goto LABEL_8;
    }
  }

  sub_1D99A5748(v114, v104);

  v99 = v126;
  v100 = v106;
  v106(v128, v126);

  v100(v131 + v102, v99);
LABEL_43:

  type metadata accessor for ObjectOntology();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1D9A73774()
{

  v1 = OBJC_IVAR____TtC12VisualLookUp14ObjectOntology_mappingURL;
  v2 = sub_1D9C7B80C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ObjectOntology()
{
  result = qword_1EDD340B8;
  if (!qword_1EDD340B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A73888()
{
  result = sub_1D9C7B80C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectOntology.RequiredKGID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectOntology.RequiredKGID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9A73A84()
{
  result = qword_1ECB524E8;
  if (!qword_1ECB524E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB524F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB524E8);
  }

  return result;
}

unint64_t sub_1D9A73AEC()
{
  result = qword_1ECB524F8;
  if (!qword_1ECB524F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB524F8);
  }

  return result;
}

uint64_t sub_1D9A73B40()
{
  v0 = sub_1D9C7E81C();

  if (v0 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D9A73B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D99FE3F8(0, v1, 0);
  v2 = v32;
  v4 = v3 + 64;
  result = sub_1D9C7E35C();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v31 = *v11;
    v13 = *(*(v3 + 56) + 8 * v6);
    v14 = v3;
    v16 = *(v32 + 16);
    v15 = *(v32 + 24);

    if (v16 >= v15 >> 1)
    {
      result = sub_1D99FE3F8((v15 > 1), v16 + 1, 1);
    }

    *(v32 + 16) = v16 + 1;
    v17 = (v32 + 24 * v16);
    v17[4] = v13;
    v17[5] = v31;
    v17[6] = v12;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v29;
    v18 = *(v29 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v14;
    v19 = *(v14 + 36);
    v8 = v28;
    if (v28 != v19)
    {
      goto LABEL_26;
    }

    v20 = v18 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1D99E92E4(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1D99E92E4(v6, v28, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D9A73DEC()
{
  v1 = sub_1D9C7D8DC();
  v98 = *(v1 - 8);
  v99 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v93 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v91 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v91 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v91 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - v15;
  v17 = sub_1D9C7B80C();
  v96 = *(v17 - 8);
  v97 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v91 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v91 - v23;
  v100 = type metadata accessor for StorefrontLabelMapper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_1D9C7DC4C();
  v101 = v26;
  v28 = [v26 URLForResource:v27 withExtension:0];

  if (!v28)
  {
    static Logger.argos.getter(v16);
    v34 = sub_1D9C7D8BC();
    v35 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D9962000, v34, v35, "Error: Unable load StorefrontCategoryLabelMapping", v36, 2u);
      MEMORY[0x1DA7405F0](v36, -1, -1);
    }

    (*(v98 + 8))(v16, v99);
    sub_1D9A74A28();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();

    v38 = v102;
    goto LABEL_35;
  }

  sub_1D9C7B7CC();

  v29 = sub_1D9A74E04(v24, &qword_1ECB52510);
  if (!v29)
  {
    static Logger.argos.getter(v13);
    v39 = sub_1D9C7D8BC();
    v40 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1D9962000, v39, v40, "Error: Unable load StorefrontCategoryLabelMapping", v41, 2u);
      MEMORY[0x1DA7405F0](v41, -1, -1);
    }

    (*(v98 + 8))(v13, v99);
    sub_1D9A74A28();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();

    (*(v96 + 8))(v24, v97);
    v38 = v102;
    goto LABEL_35;
  }

  v102[2] = v29;

  v31 = sub_1D9A73B94(v30);
  if (!v0)
  {
    v32 = v31;

    if (*(v32 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52080);
      v33 = sub_1D9C7E54C();
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC8];
    }

    v92 = v24;
    v103 = v33;

    sub_1D9A74A7C(v43, 1, &v103);

    v38 = v102;
    v102[3] = v103;
    v44 = sub_1D9C7DC4C();
    v45 = v101;
    v46 = [v101 URLForResource:v44 withExtension:0];

    if (v46)
    {
      v47 = v95;
      sub_1D9C7B7CC();

      v48 = sub_1D9A74E04(v47, &qword_1ECB52510);
      v49 = v92;
      if (v48)
      {
        v38[4] = v48;

        v51 = sub_1D9A73B94(v50);

        if (*(v51 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52080);
          v52 = sub_1D9C7E54C();
        }

        else
        {
          v52 = MEMORY[0x1E69E7CC8];
        }

        v103 = v52;

        sub_1D9A74A7C(v66, 1, &v103);

        v38[5] = v103;
        v67 = sub_1D9C7DC4C();
        v68 = v101;
        v69 = [v101 URLForResource:v67 withExtension:0];

        if (v69)
        {
          sub_1D9C7B7CC();

          v70 = sub_1D9A74E04(v19, &qword_1ECB52508);
          if (v70)
          {
            v71 = v70;

            v72 = *(v96 + 8);
            v73 = v19;
            v74 = v97;
            v72(v73, v97);
            v72(v95, v74);
            v72(v92, v74);
            v38[6] = v71;
            return v38;
          }

          v82 = v93;
          static Logger.argos.getter(v93);
          v83 = sub_1D9C7D8BC();
          v84 = sub_1D9C7E0AC();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_1D9962000, v83, v84, "Error: Unable load StorefrontCoarseCategoryLabelMapping", v85, 2u);
            MEMORY[0x1DA7405F0](v85, -1, -1);
          }

          (*(v98 + 8))(v82, v99);
          sub_1D9A74A28();
          swift_allocError();
          v59 = 1;
          *v86 = 1;
          swift_willThrow();

          v87 = *(v96 + 8);
          v88 = v19;
          v89 = v97;
          v87(v88, v97);
          v87(v95, v89);
          v87(v92, v89);
        }

        else
        {
          v75 = v94;
          static Logger.argos.getter(v94);
          v76 = sub_1D9C7D8BC();
          v77 = sub_1D9C7E0AC();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&dword_1D9962000, v76, v77, "Error: Unable load StorefrontCoarseCategoryLabelMapping", v78, 2u);
            MEMORY[0x1DA7405F0](v78, -1, -1);
          }

          (*(v98 + 8))(v75, v99);
          sub_1D9A74A28();
          swift_allocError();
          v59 = 1;
          *v79 = 1;
          swift_willThrow();

          v80 = *(v96 + 8);
          v81 = v97;
          v80(v95, v97);
          v80(v92, v81);
        }
      }

      else
      {
        static Logger.argos.getter(v7);
        v60 = sub_1D9C7D8BC();
        v61 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_1D9962000, v60, v61, "Error: Unable load StorefrontTitleLabelMapping", v62, 2u);
          MEMORY[0x1DA7405F0](v62, -1, -1);
        }

        (*(v98 + 8))(v7, v99);
        sub_1D9A74A28();
        swift_allocError();
        *v63 = 1;
        swift_willThrow();

        v64 = *(v96 + 8);
        v65 = v97;
        v64(v95, v97);
        v64(v49, v65);
        v59 = 0;
      }
    }

    else
    {
      static Logger.argos.getter(v10);
      v53 = sub_1D9C7D8BC();
      v54 = sub_1D9C7E0AC();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v92;
      if (v55)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1D9962000, v53, v54, "Error: Unable load StorefrontTitleLabelMapping", v57, 2u);
        MEMORY[0x1DA7405F0](v57, -1, -1);
      }

      (*(v98 + 8))(v10, v99);
      sub_1D9A74A28();
      swift_allocError();
      *v58 = 1;
      swift_willThrow();

      (*(v96 + 8))(v56, v97);
      v59 = 0;
    }

    if (v59)
    {
    }

LABEL_35:
    swift_deallocPartialClassInstance();
    return v38;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1D9A749AC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D9A74A28()
{
  result = qword_1ECB52500;
  if (!qword_1ECB52500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52500);
  }

  return result;
}

void sub_1D9A74A7C(void *a1, char a2, void *a3)
{
  v46 = a1[2];
  if (!v46)
  {
    goto LABEL_23;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = *a3;
  v9 = sub_1D99F0BB0(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D9C13318();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1D9C07B14(v13, a2 & 1);
  v17 = sub_1D99F0BB0(v6);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1D9C7E84C();
    __break(1u);
LABEL_29:
    sub_1D9C7E40C();
    MEMORY[0x1DA73DF90](0xD00000000000001BLL, 0x80000001D9CA68E0);
    sub_1D9C7E4DC();
    MEMORY[0x1DA73DF90](39, 0xE100000000000000);
    sub_1D9C7E4EC();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v6;
  v22 = (v21[7] + 16 * v14);
  *v22 = v5;
  v22[1] = v7;
  v23 = v21[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v25;
  if (v46 != 1)
  {
    v26 = a1 + 9;
    v27 = 1;
    while (v27 < a1[2])
    {
      v29 = *(v26 - 2);
      v28 = *(v26 - 1);
      v30 = *v26;
      v31 = *a3;
      v32 = sub_1D99F0BB0(v29);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_25;
      }

      v37 = v32;
      v38 = v33;
      v39 = v31[3];

      if (v39 < v36)
      {
        sub_1D9C07B14(v36, 1);
        v40 = sub_1D99F0BB0(v29);
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v37 = v40;
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      *(v42[6] + 8 * v37) = v29;
      v43 = (v42[7] + 16 * v37);
      *v43 = v28;
      v43[1] = v30;
      v44 = v42[2];
      v24 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v45;
      v26 += 3;
      if (v46 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1D9A74E04(uint64_t a1, uint64_t *a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9C7B81C();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = sub_1D9C7B86C();
  v15[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:v15];

  if (v9)
  {
    v10 = v15[0];
    sub_1D9C7E32C();
    sub_1D99A5748(v4, v6);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    if (swift_dynamicCast())
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = v15[0];
    v13 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99A5748(v4, v6);

    return 0;
  }
}

uint64_t sub_1D9A750A0@<X0>(char *a1@<X8>, float a2@<S0>)
{
  v3 = v2;
  v105 = a1;
  v5 = sub_1D9C7C7FC();
  v6 = *(v5 - 8);
  v106 = v5;
  v107 = v6;
  v7 = (MEMORY[0x1EEE9AC00])();
  v100 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  *&v92 = &v86 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v86 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v86 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v86 - v16;
  v18 = sub_1D9C7C06C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v95 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v91 = &v86 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v86 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v86 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v86 - v30;
  sub_1D9C7BE9C();
  sub_1D9C7C05C();
  v103 = *(v19 + 8);
  v104 = v19 + 8;
  v32 = v31;
  v33 = v18;
  v103(v32, v18);
  v34 = sub_1D9C7C7EC();
  v101 = v35;
  v102 = v34;
  v36 = v107 + 8;
  v37 = *(v107 + 8);
  v37(v17, v106);
  v107 = v36;
  v90 = type metadata accessor for ObjectKnowledge();
  v38 = *(v90 + 24);
  v39 = sub_1D9C7B80C();
  (*(*(v39 - 8) + 56))(&v105[v38], 1, 1, v39);
  sub_1D9C7BE9C();
  sub_1D9C7C05C();
  v40 = v33;
  v41 = v33;
  v42 = v103;
  v103(v29, v40);
  v43 = sub_1D9C7C79C();
  v98 = v44;
  v99 = v43;
  v45 = v106;
  v37(v15, v106);
  sub_1D9C7BE9C();
  v46 = v94;
  sub_1D9C7C05C();
  v47 = v41;
  v89 = v41;
  v42(v26, v41);
  v48 = sub_1D9C7C79C();
  v96 = v49;
  v97 = v48;
  v50 = v46;
  v51 = v45;
  v52 = v37;
  v87 = v37;
  v37(v50, v45);
  v88 = v3;
  sub_1D9C7BE8C();
  v53 = v90;
  sub_1D9C7B7EC();

  v93 = sub_1D9A75858();
  v54 = v91;
  sub_1D9C7BE9C();
  v55 = v92;
  sub_1D9C7C05C();
  v56 = v103;
  v103(v54, v47);
  v91 = sub_1D9C7C7EC();
  v94 = v57;
  v52(v55, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52518);
  v58 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0) - 8);
  v59 = (*(*v58 + 80) + 32) & ~*(*v58 + 80);
  v60 = swift_allocObject();
  v92 = xmmword_1D9C85660;
  *(v60 + 16) = xmmword_1D9C85660;
  v61 = v60 + v59;
  v62 = (v61 + v58[14]);
  sub_1D9C7B97C();
  v63 = v95;
  sub_1D9C7BE9C();
  v64 = v100;
  sub_1D9C7C05C();
  v56(v63, v89);
  v65 = sub_1D9C7C7EC();
  v67 = v66;
  v87(v64, v106);
  *v62 = v65;
  v62[1] = v67;
  v68 = sub_1D9A449E0(v60);
  swift_setDeallocating();
  sub_1D99A6AE0(v61, &qword_1ECB520A0);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520);
  v69 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090) - 8);
  v70 = (*(*v69 + 80) + 32) & ~*(*v69 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v92;
  v72 = v71 + v70;
  v73 = v69[14];
  sub_1D9C7B97C();
  *(v72 + v73) = MEMORY[0x1E69E7CD0];
  v74 = sub_1D9A44BD0(v71);
  swift_setDeallocating();
  sub_1D99A6AE0(v72, &qword_1ECB52090);
  swift_deallocClassInstance();
  v75 = v105;
  *v105 = 0;
  v75[1] = 0;
  v76 = v101;
  v75[2] = v102;
  v75[3] = v76;
  *(v75 + v53[7]) = 1065353216;
  v77 = (v75 + v53[8]);
  v78 = v98;
  *v77 = v99;
  v77[1] = v78;
  v79 = (v75 + v53[9]);
  v80 = v96;
  *v79 = v97;
  v79[1] = v80;
  *(v75 + v53[11]) = v93;
  v81 = (v75 + v53[12]);
  v81[2] = 0u;
  v81[3] = 0u;
  *v81 = 0u;
  v81[1] = 0u;
  v82 = v75 + v53[13];
  *v82 = 0;
  v82[8] = 1;
  *(v75 + v53[14]) = xmmword_1D9C8CD70;
  v83 = v75 + v53[15];
  *v83 = 0;
  *(v83 + 4) = 0;
  v84 = v94;
  *(v83 + 2) = v91;
  *(v83 + 3) = v84;
  *(v83 + 4) = v68;
  *(v83 + 5) = 0x3FF0000000000000;
  v83[48] = 0;
  *(v83 + 7) = 0;
  *(v83 + 8) = 0xE000000000000000;
  *(v83 + 9) = 0;
  *(v83 + 10) = 0xE000000000000000;
  *(v83 + 12) = 0;
  *(v83 + 13) = 0;
  *(v83 + 11) = v74;
  *(v83 + 28) = 0;
  *(v75 + v53[16]) = a2;
  return (*(*(v53 - 1) + 56))();
}

char *sub_1D9A75858()
{
  v1 = sub_1D9C7C7CC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9C7C7FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7C06C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1E69E7CC0];
  v46 = v0;
  sub_1D9C7BE9C();
  sub_1D9C7C05C();
  v13 = *(v10 + 8);
  v44 = v12;
  v45 = v10 + 8;
  v43 = v13;
  v13(v12, v9);
  v14 = sub_1D9C7C7DC();
  v17 = *(v6 + 8);
  v16 = v6 + 8;
  v15 = v17;
  v17(v8, v5);
  v18 = *(v14 + 16);
  if (v18)
  {
    v38 = v15;
    v39 = v9;
    v40 = v8;
    v41 = v16;
    v42 = v5;
    v20 = *(v2 + 16);
    v19 = v2 + 16;
    v21 = *(v19 + 64);
    v37 = v14;
    v22 = v14 + ((v21 + 32) & ~v21);
    v48 = *(v19 + 56);
    v49 = v20;
    v23 = (v19 - 8);
    v24 = MEMORY[0x1E69E7CC0];
    v47 = v19;
    v20(v4, v22, v1);
    while (1)
    {
      v25 = sub_1D9C7C7BC();
      v27 = v26;
      (*v23)(v4, v1);
      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D9AF95F4(0, *(v24 + 2) + 1, 1, v24);
        }

        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        if (v30 >= v29 >> 1)
        {
          v24 = sub_1D9AF95F4((v29 > 1), v30 + 1, 1, v24);
        }

        *(v24 + 2) = v30 + 1;
        v31 = &v24[64 * v30];
        *(v31 + 4) = 1852404839;
        *(v31 + 5) = 0xE400000000000000;
        *(v31 + 6) = v25;
        *(v31 + 7) = v27;
        *(v31 + 8) = 0x676E69727473;
        *(v31 + 9) = 0xE600000000000000;
        *(v31 + 10) = 0x676E69727473;
        *(v31 + 11) = 0xE600000000000000;
        v50 = v24;
      }

      else
      {
      }

      v22 += v48;
      if (!--v18)
      {
        break;
      }

      v49(v4, v22, v1);
    }

    v5 = v42;
    v9 = v39;
    v8 = v40;
    v15 = v38;
  }

  else
  {
  }

  v32 = v44;
  sub_1D9C7BE9C();
  sub_1D9C7C05C();
  v43(v32, v9);
  v33 = sub_1D9C7C7AC();
  v35 = v34;
  v15(v8, v5);
  sub_1D9A75C88(&v50, 7695219, 0xE300000000000000, v33, v35);

  return v50;
}

uint64_t sub_1D9A75C88(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v11 = result;
      v12 = *result;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D9AF95F4(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D9AF95F4((v13 > 1), v14 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v14 + 1;
      v15 = (v12 + (v14 << 6));
      v15[4] = a2;
      v15[5] = a3;
      v15[6] = a4;
      v15[7] = a5;
      v15[8] = 0x676E69727473;
      v15[9] = 0xE600000000000000;
      v15[10] = 0x676E69727473;
      v15[11] = 0xE600000000000000;
      *v11 = v12;
    }
  }

  return result;
}

uint64_t sub_1D9A75D94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D9C7DC7C();
    v4 = v3;

    if (v2 == 0xD00000000000002BLL && 0x80000001D9CA3A40 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D9C7E7DC();
    }
  }

  return v1 & 1;
}

uint64_t sub_1D9A75E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A91F08();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D9A75ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A91F5C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void sub_1D9A75F1C(uint64_t a1@<X8>)
{
  sub_1D9A92058();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1D9A75F60(uint64_t a1@<X8>)
{
  sub_1D9A92058();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_1D9A75F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A91FB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D9A75FE4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41DB0);
  __swift_project_value_buffer(v0, qword_1EDD41DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D9C8CD90;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 1;
  *v5 = "domain_configs";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "default_box_score_threshold";
  *(v9 + 8) = 27;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "default_minimum_object_size";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "merge_region_iou_threshold";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 15;
  *v15 = "merge_whole_image_iou_threshold";
  *(v15 + 1) = 31;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "coarse_score_weight";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "detector_score_weight";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "box_score_weight";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 14;
  *v22 = "leaf_domain_boost_score";
  *(v22 + 8) = 23;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "prefer_subregion_over_wholeImage";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "max_num_of_selected_domains_per_region";
  *(v26 + 1) = 38;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "refine_config";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "incompatible_domains";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "safety_config";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "image_resize_config";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "parse_caching_config";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "box_scorer_config";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "max_num_of_regions_with_domain_signals";
  *(v39 + 1) = 38;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "enable_domain_selection_only_for_e5";
  *(v41 + 1) = 35;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "region_selection_config";
  *(v43 + 1) = 23;
  v43[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A76668()
{
  *(v0 + 16) = sub_1D9A46808(MEMORY[0x1E69E7CC0]);
  *(v0 + 60) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v1 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig;
  v2 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  v4 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  v6 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  v10 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  v12 = type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals) = 0;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__enableDomainSelectionOnlyForE5) = 0;
  v13 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig;
  v14 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  return v0;
}

uint64_t sub_1D9A768BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52768);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v84 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v83 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52778);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v76 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v71 = &v68 - v16;
  *(v1 + 16) = sub_1D9A46808(MEMORY[0x1E69E7CC0]);
  *(v1 + 60) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  v17 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig;
  v69 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig;
  v18 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  v70 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  v20 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  v72 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  v22 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  v73 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  v24 = type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  v74 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  v26 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  v75 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  v28 = type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v77 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals) = 0;
  v78 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__enableDomainSelectionOnlyForE5;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__enableDomainSelectionOnlyForE5) = 0;
  v29 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig;
  v79 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig;
  v30 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig(0);
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  swift_beginAccess();
  v31 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v31;

  swift_beginAccess();
  v32 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v32;
  swift_beginAccess();
  v33 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 28) = v33;
  swift_beginAccess();
  v34 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v34;
  swift_beginAccess();
  v35 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 36) = v35;
  swift_beginAccess();
  v36 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v36;
  swift_beginAccess();
  v37 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 44) = v37;
  swift_beginAccess();
  v38 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v38;
  swift_beginAccess();
  v39 = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 52) = v39;
  swift_beginAccess();
  v40 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v40;
  swift_beginAccess();
  v41 = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 60) = v41;
  v42 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig;
  swift_beginAccess();
  v43 = v71;
  sub_1D99AB100(a1 + v42, v71, &qword_1ECB51050);
  v44 = v69;
  swift_beginAccess();
  sub_1D9A91EA0(v43, v1 + v44, &qword_1ECB51050);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  swift_beginAccess();
  v46 = v76;
  sub_1D99AB100(a1 + v45, v76, &qword_1ECB52778);
  v47 = v70;
  swift_beginAccess();
  sub_1D9A91EA0(v46, v1 + v47, &qword_1ECB52778);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  swift_beginAccess();
  v49 = v80;
  sub_1D99AB100(a1 + v48, v80, &qword_1ECB514C8);
  v50 = v72;
  swift_beginAccess();
  sub_1D9A91EA0(v49, v1 + v50, &qword_1ECB514C8);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  swift_beginAccess();
  v52 = v81;
  sub_1D99AB100(a1 + v51, v81, &qword_1ECB52770);
  v53 = v73;
  swift_beginAccess();
  sub_1D9A91EA0(v52, v1 + v53, &qword_1ECB52770);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  swift_beginAccess();
  v55 = v82;
  sub_1D99AB100(a1 + v54, v82, &qword_1ECB512D0);
  v56 = v74;
  swift_beginAccess();
  sub_1D9A91EA0(v55, v1 + v56, &qword_1ECB512D0);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  swift_beginAccess();
  v58 = v83;
  sub_1D99AB100(a1 + v57, v83, &qword_1ECB534F0);
  v59 = v75;
  swift_beginAccess();
  sub_1D9A91EA0(v58, v1 + v59, &qword_1ECB534F0);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals;
  swift_beginAccess();
  LODWORD(v60) = *(a1 + v60);
  v61 = v77;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__enableDomainSelectionOnlyForE5;
  swift_beginAccess();
  LOBYTE(v62) = *(a1 + v62);
  v63 = v78;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig;
  swift_beginAccess();
  v65 = v84;
  sub_1D99AB100(a1 + v64, v84, &qword_1ECB52768);

  v66 = v79;
  swift_beginAccess();
  sub_1D9A91EA0(v65, v1 + v66, &qword_1ECB52768);
  swift_endAccess();
  return v1;
}

uint64_t sub_1D9A7739C()
{

  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig, &qword_1ECB51050);
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains, &qword_1ECB52778);
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig, &qword_1ECB514C8);
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig, &qword_1ECB52770);
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig, &qword_1ECB512D0);
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig, &qword_1ECB534F0);
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig, &qword_1ECB52768);

  return swift_deallocClassInstance();
}

void sub_1D9A77500()
{
  sub_1D9A778AC(319, &qword_1EDD30B00, type metadata accessor for Argos_Protos_Queryflow_RefineConfig, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9A778AC(319, qword_1EDD2EF48, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9A778AC(319, qword_1EDD30890, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D9A778AC(319, qword_1EDD2F6D0, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D9A778AC(319, qword_1EDD2F3B8, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D9A778AC(319, qword_1EDD2FE48, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1D9A778AC(319, qword_1EDD2E5D0, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D9A778AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D9A779B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_1D9A77C98();
          break;
        case 2:
          sub_1D9A77DBC();
          break;
        case 3:
          sub_1D9A77E40();
          break;
        case 4:
          sub_1D9A77EC4();
          break;
        case 5:
          sub_1D9A77F48();
          break;
        case 6:
          sub_1D9A77FCC();
          break;
        case 7:
          sub_1D9A78050();
          break;
        case 8:
          sub_1D9A780D4();
          break;
        case 9:
          sub_1D9A78158();
          break;
        case 10:
          sub_1D9A781DC();
          break;
        case 11:
          sub_1D9A782B8();
          break;
        case 12:
          sub_1D9A78394();
          break;
        case 13:
          sub_1D9A78470();
          break;
        case 14:
          sub_1D9A7854C();
          break;
        case 15:
          sub_1D9A785D0();
          break;
        case 16:
          sub_1D9A78654();
          break;
        case 17:
          sub_1D9A78730();
          break;
        case 18:
          sub_1D9A7F234(a2, a1, a3, a4, &OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals, MEMORY[0x1E69AAC98]);
          break;
        case 19:
          sub_1D9A7F3A8();
          break;
        case 20:
          sub_1D9A7880C();
          break;
        default:
          break;
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A77C98()
{
  swift_beginAccess();
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  sub_1D9A8DB48(&unk_1EDD2F940, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
  sub_1D9A8DB48(&qword_1EDD2F938, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
  sub_1D9C7D4AC();
  return swift_endAccess();
}

uint64_t sub_1D9A77DBC()
{
  swift_beginAccess();
  sub_1D9C7D54C();
  return swift_endAccess();
}

uint64_t sub_1D9A77E40()
{
  swift_beginAccess();
  sub_1D9C7D54C();
  return swift_endAccess();
}

uint64_t sub_1D9A77EC4()
{
  swift_beginAccess();
  sub_1D9C7D54C();
  return swift_endAccess();
}

uint64_t sub_1D9A77F48()
{
  swift_beginAccess();
  sub_1D9C7D54C();
  return swift_endAccess();
}

uint64_t sub_1D9A77FCC()
{
  swift_beginAccess();
  sub_1D9C7D54C();
  return swift_endAccess();
}

uint64_t sub_1D9A78050()
{
  swift_beginAccess();
  sub_1D9C7D54C();
  return swift_endAccess();
}

uint64_t sub_1D9A780D4()
{
  swift_beginAccess();
  sub_1D9C7D4EC();
  return swift_endAccess();
}

uint64_t sub_1D9A78158()
{
  swift_beginAccess();
  sub_1D9C7D55C();
  return swift_endAccess();
}

uint64_t sub_1D9A781DC()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  sub_1D9A8DB48(qword_1EDD30B60, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A782B8()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains(0);
  sub_1D9A8DB48(qword_1EDD2EF90, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A78394()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  sub_1D9A8DB48(&qword_1EDD308F8, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A78470()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig(0);
  sub_1D9A8DB48(&unk_1EDD2F718, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A7854C()
{
  swift_beginAccess();
  sub_1D9C7D54C();
  return swift_endAccess();
}

uint64_t sub_1D9A785D0()
{
  swift_beginAccess();
  sub_1D9C7D54C();
  return swift_endAccess();
}

uint64_t sub_1D9A78654()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  sub_1D9A8DB48(&unk_1EDD2F410, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A78730()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  sub_1D9A8DB48(&qword_1ECB52670, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A7880C()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig(0);
  sub_1D9A8DB48(qword_1EDD2E620, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A788E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    sub_1D9C7D39C();
    type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
    sub_1D9A8DB48(&unk_1EDD2F940, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    sub_1D9A8DB48(&qword_1EDD2F938, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    sub_1D9C7D6DC();
    v5 = v4;
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 24) || (result = sub_1D9C7D77C(), !v5))
  {
    swift_beginAccess();
    if (!*(a1 + 28) || (result = sub_1D9C7D77C(), !v5))
    {
      swift_beginAccess();
      if (!*(a1 + 32) || (result = sub_1D9C7D77C(), !v5))
      {
        swift_beginAccess();
        if (!*(a1 + 40) || (result = sub_1D9C7D77C(), !v5))
        {
          swift_beginAccess();
          if (!*(a1 + 44) || (result = sub_1D9C7D77C(), !v5))
          {
            swift_beginAccess();
            if (!*(a1 + 48) || (result = sub_1D9C7D77C(), !v5))
            {
              swift_beginAccess();
              if (*(a1 + 56) != 1 || (result = sub_1D9C7D74C(), !v5))
              {
                swift_beginAccess();
                if (!*(a1 + 60) || (result = sub_1D9C7D78C(), !v5))
                {
                  result = sub_1D9A78E14(a1, a2, a3, a4);
                  if (!v5)
                  {
                    sub_1D9A79030(a1, a2, a3, a4);
                    sub_1D9A7924C(a1, a2, a3, a4);
                    sub_1D9A79468(a1, a2, a3, a4);
                    swift_beginAccess();
                    if (*(a1 + 52))
                    {
                      sub_1D9C7D77C();
                    }

                    swift_beginAccess();
                    if (*(a1 + 36))
                    {
                      sub_1D9C7D77C();
                    }

                    sub_1D9A79684(a1, a2, a3, a4);
                    v11 = a3;
                    sub_1D9A798A0(a1, a2, a3, a4);
                    v12 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals;
                    swift_beginAccess();
                    if (*(a1 + v12))
                    {
                      sub_1D9C7D78C();
                    }

                    v13 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__enableDomainSelectionOnlyForE5;
                    swift_beginAccess();
                    if (*(a1 + v13) == 1)
                    {
                      sub_1D9C7D74C();
                    }

                    return sub_1D9A79ABC(a1, a2, v11, a4);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A78E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB51050);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51050);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  sub_1D9A8DB48(qword_1EDD30B60, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
}

uint64_t sub_1D9A79030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52778);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB52778);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52778);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  sub_1D9A8DB48(qword_1EDD2EF90, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
}

uint64_t sub_1D9A7924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB514C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB514C8);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  sub_1D9A8DB48(&qword_1EDD308F8, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
}

uint64_t sub_1D9A79468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB52770);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52770);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  sub_1D9A8DB48(&unk_1EDD2F718, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
}

uint64_t sub_1D9A79684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB512D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB512D0);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
  sub_1D9A8DB48(&unk_1EDD2F410, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
}

uint64_t sub_1D9A798A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB534F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB534F0);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  sub_1D9A8DB48(&qword_1ECB52670, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
}

uint64_t sub_1D9A79ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52768);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB52768);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52768);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
  sub_1D9A8DB48(qword_1EDD2E620, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
}

BOOL sub_1D9A79CD8(uint64_t a1, uint64_t a2)
{
  v180 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig(0);
  v178 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v176 = (&v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52780);
  MEMORY[0x1EEE9AC00](v177);
  v183 = &v174 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52768);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v179 = (&v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v181 = &v174 - v9;
  v189 = type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v182 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52788);
  MEMORY[0x1EEE9AC00](v186);
  v193 = &v174 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v185 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v188 = &v174 - v15;
  v196 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  v191 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v184 = (&v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52790);
  MEMORY[0x1EEE9AC00](v190);
  v199 = &v174 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v192 = (&v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v195 = &v174 - v21;
  v201 = type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig(0);
  v203 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v194 = (&v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52798);
  MEMORY[0x1EEE9AC00](v200);
  v202 = &v174 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52770);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v198 = (&v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v204 = &v174 - v27;
  v28 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v207 = *(v28 - 8);
  v208 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v197 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527A0);
  MEMORY[0x1EEE9AC00](v206);
  v209 = &v174 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514C8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v216 = &v174 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v215 = &v174 - v34;
  v35 = type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains(0);
  v212 = *(v35 - 8);
  v213 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v205 = (&v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527A8);
  MEMORY[0x1EEE9AC00](v211);
  v214 = &v174 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52778);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v210 = (&v174 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v217 = &v174 - v41;
  v42 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v218 = *(v42 - 8);
  v219 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v174 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51080);
  MEMORY[0x1EEE9AC00](v45);
  v220 = &v174 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = (&v174 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v174 - v51;
  swift_beginAccess();
  v53 = *(a1 + 16);
  swift_beginAccess();
  v54 = *(a2 + 16);

  sub_1D9A02904(v53, v54);
  v56 = v55;

  if ((v56 & 1) == 0)
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v57 = *(a1 + 24);
  swift_beginAccess();
  if (v57 != *(a2 + 24))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v58 = *(a1 + 28);
  swift_beginAccess();
  if (v58 != *(a2 + 28))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v59 = *(a1 + 32);
  swift_beginAccess();
  if (v59 != *(a2 + 32))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v60 = *(a1 + 36);
  swift_beginAccess();
  if (v60 != *(a2 + 36))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v61 = *(a1 + 40);
  swift_beginAccess();
  if (v61 != *(a2 + 40))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v62 = *(a1 + 44);
  swift_beginAccess();
  if (v62 != *(a2 + 44))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v63 = *(a1 + 48);
  swift_beginAccess();
  if (v63 != *(a2 + 48))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v64 = *(a1 + 52);
  swift_beginAccess();
  if (v64 != *(a2 + 52))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v65 = *(a1 + 56);
  swift_beginAccess();
  if (v65 != *(a2 + 56))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v66 = *(a1 + 60);
  swift_beginAccess();
  if (v66 != *(a2 + 60))
  {
    goto LABEL_15;
  }

  v175 = a2;
  v67 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig;
  swift_beginAccess();
  v174 = a1;
  sub_1D99AB100(a1 + v67, v52, &qword_1ECB51050);
  v68 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__refineConfig;
  swift_beginAccess();
  v69 = *(v45 + 48);
  v70 = v220;
  sub_1D99AB100(v52, v220, &qword_1ECB51050);
  v71 = v175 + v68;
  v72 = v175;
  sub_1D99AB100(v71, v70 + v69, &qword_1ECB51050);
  v73 = v219;
  v74 = *(v218 + 48);
  if (v74(v70, 1, v219) == 1)
  {
    sub_1D99A6AE0(v52, &qword_1ECB51050);
    if (v74(v70 + v69, 1, v73) == 1)
    {
      sub_1D99A6AE0(v70, &qword_1ECB51050);
      goto LABEL_21;
    }

LABEL_19:
    v76 = &qword_1ECB51080;
    v77 = v70;
LABEL_48:
    sub_1D99A6AE0(v77, v76);
    goto LABEL_15;
  }

  sub_1D99AB100(v70, v49, &qword_1ECB51050);
  if (v74(v70 + v69, 1, v73) == 1)
  {
    sub_1D99A6AE0(v52, &qword_1ECB51050);
    sub_1D9A91D4C(v49, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
    goto LABEL_19;
  }

  sub_1D9A91CE4(v70 + v69, v44, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  v78 = sub_1D9A91864(v49, v44);
  sub_1D9A91D4C(v44, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  sub_1D99A6AE0(v52, &qword_1ECB51050);
  sub_1D9A91D4C(v49, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);
  sub_1D99A6AE0(v70, &qword_1ECB51050);
  if ((v78 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_21:
  v79 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  v80 = v174;
  swift_beginAccess();
  v81 = v217;
  sub_1D99AB100(v80 + v79, v217, &qword_1ECB52778);
  v82 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__incompatibleDomains;
  swift_beginAccess();
  v83 = *(v211 + 48);
  v84 = v214;
  sub_1D99AB100(v81, v214, &qword_1ECB52778);
  sub_1D99AB100(v72 + v82, v84 + v83, &qword_1ECB52778);
  v85 = v213;
  v86 = *(v212 + 48);
  if (v86(v84, 1, v213) == 1)
  {
    sub_1D99A6AE0(v81, &qword_1ECB52778);
    v87 = v86(v84 + v83, 1, v85);
    v89 = v215;
    v88 = v216;
    if (v87 == 1)
    {
      sub_1D99A6AE0(v84, &qword_1ECB52778);
      goto LABEL_24;
    }

LABEL_29:
    v76 = &qword_1ECB527A8;
LABEL_47:
    v77 = v84;
    goto LABEL_48;
  }

  v97 = v210;
  sub_1D99AB100(v84, v210, &qword_1ECB52778);
  v98 = v86(v84 + v83, 1, v85);
  v89 = v215;
  v88 = v216;
  if (v98 == 1)
  {
    sub_1D99A6AE0(v217, &qword_1ECB52778);
    sub_1D9A91D4C(v97, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
    goto LABEL_29;
  }

  v99 = v205;
  sub_1D9A91CE4(v84 + v83, v205, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  if ((sub_1D9A257FC(*v97, *v99) & 1) == 0)
  {
    sub_1D99A6AE0(v217, &qword_1ECB52778);
    sub_1D9A91D4C(v99, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
    sub_1D9A91D4C(v97, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
    v77 = v84;
    v76 = &qword_1ECB52778;
    goto LABEL_48;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v100 = sub_1D9C7DC2C();
  sub_1D99A6AE0(v217, &qword_1ECB52778);
  sub_1D9A91D4C(v99, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  sub_1D9A91D4C(v97, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);
  sub_1D99A6AE0(v84, &qword_1ECB52778);
  if ((v100 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_24:
  v90 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  v91 = v174;
  swift_beginAccess();
  sub_1D99AB100(v91 + v90, v89, &qword_1ECB514C8);
  v92 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  swift_beginAccess();
  v93 = *(v206 + 48);
  v84 = v209;
  sub_1D99AB100(v89, v209, &qword_1ECB514C8);
  sub_1D99AB100(v72 + v92, v84 + v93, &qword_1ECB514C8);
  v94 = v208;
  v95 = *(v207 + 48);
  if (v95(v84, 1, v208) == 1)
  {
    sub_1D99A6AE0(v89, &qword_1ECB514C8);
    if (v95(v84 + v93, 1, v94) == 1)
    {
      sub_1D99A6AE0(v84, &qword_1ECB514C8);
      v96 = v203;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  sub_1D99AB100(v84, v88, &qword_1ECB514C8);
  if (v95(v84 + v93, 1, v94) == 1)
  {
    sub_1D99A6AE0(v89, &qword_1ECB514C8);
    sub_1D9A91D4C(v88, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
LABEL_35:
    v76 = &qword_1ECB527A0;
    goto LABEL_47;
  }

  v101 = v84 + v93;
  v102 = v197;
  sub_1D9A91CE4(v101, v197, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  v103 = sub_1D9A91214(v88, v102);
  sub_1D9A91D4C(v102, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  sub_1D99A6AE0(v89, &qword_1ECB514C8);
  sub_1D9A91D4C(v88, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  sub_1D99A6AE0(v84, &qword_1ECB514C8);
  v96 = v203;
  if ((v103 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_38:
  v104 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  v105 = v174;
  swift_beginAccess();
  v106 = v105 + v104;
  v107 = v204;
  sub_1D99AB100(v106, v204, &qword_1ECB52770);
  v108 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__imageResizeConfig;
  swift_beginAccess();
  v109 = *(v200 + 48);
  v110 = v107;
  v84 = v202;
  sub_1D99AB100(v110, v202, &qword_1ECB52770);
  sub_1D99AB100(v72 + v108, v84 + v109, &qword_1ECB52770);
  v111 = *(v96 + 48);
  v112 = v201;
  if (v111(v84, 1, v201) == 1)
  {
    sub_1D99A6AE0(v204, &qword_1ECB52770);
    if (v111(v84 + v109, 1, v112) == 1)
    {
      sub_1D99A6AE0(v84, &qword_1ECB52770);
      goto LABEL_41;
    }

    goto LABEL_46;
  }

  v122 = v198;
  sub_1D99AB100(v84, v198, &qword_1ECB52770);
  if (v111(v84 + v109, 1, v112) == 1)
  {
    sub_1D99A6AE0(v204, &qword_1ECB52770);
    sub_1D9A91D4C(v122, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
LABEL_46:
    v76 = &qword_1ECB52798;
    goto LABEL_47;
  }

  v123 = v194;
  sub_1D9A91CE4(v84 + v109, v194, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  if (*v122 != *v123)
  {
    sub_1D9A91D4C(v194, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    sub_1D99A6AE0(v204, &qword_1ECB52770);
    sub_1D9A91D4C(v198, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
    v129 = v202;
    v128 = &qword_1ECB52770;
    goto LABEL_64;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v124 = v198;
  v125 = v194;
  v126 = sub_1D9C7DC2C();
  sub_1D9A91D4C(v125, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  sub_1D99A6AE0(v204, &qword_1ECB52770);
  sub_1D9A91D4C(v124, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);
  sub_1D99A6AE0(v202, &qword_1ECB52770);
  if ((v126 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_41:
  v113 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  v114 = v174;
  swift_beginAccess();
  v115 = v195;
  sub_1D99AB100(v114 + v113, v195, &qword_1ECB512D0);
  v116 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  v117 = v175;
  swift_beginAccess();
  v118 = *(v190 + 48);
  v119 = v115;
  v120 = v199;
  sub_1D99AB100(v119, v199, &qword_1ECB512D0);
  sub_1D99AB100(v117 + v116, v120 + v118, &qword_1ECB512D0);
  v121 = *(v191 + 48);
  if (v121(v120, 1, v196) == 1)
  {
    sub_1D99A6AE0(v195, &qword_1ECB512D0);
    if (v121(v199 + v118, 1, v196) == 1)
    {
      sub_1D99A6AE0(v199, &qword_1ECB512D0);
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v127 = v199;
  sub_1D99AB100(v199, v192, &qword_1ECB512D0);
  if (v121(v127 + v118, 1, v196) == 1)
  {
    sub_1D99A6AE0(v195, &qword_1ECB512D0);
    sub_1D9A91D4C(v192, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
LABEL_55:
    v128 = &qword_1ECB52790;
    v129 = v199;
LABEL_64:
    sub_1D99A6AE0(v129, v128);
    goto LABEL_15;
  }

  v130 = v199;
  v131 = v199 + v118;
  v132 = v184;
  sub_1D9A91CE4(v131, v184, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
  v133 = v192;
  v134 = sub_1D9A37034(v192, v132);
  sub_1D9A91D4C(v132, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
  sub_1D99A6AE0(v195, &qword_1ECB512D0);
  sub_1D9A91D4C(v133, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
  sub_1D99A6AE0(v130, &qword_1ECB512D0);
  if ((v134 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_58:
  v135 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  v136 = v174;
  swift_beginAccess();
  v137 = v188;
  sub_1D99AB100(v136 + v135, v188, &qword_1ECB534F0);
  v138 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScorerConfig;
  v139 = v175;
  swift_beginAccess();
  v140 = *(v186 + 48);
  v141 = v137;
  v142 = v193;
  sub_1D99AB100(v141, v193, &qword_1ECB534F0);
  sub_1D99AB100(v139 + v138, v142 + v140, &qword_1ECB534F0);
  v143 = *(v187 + 48);
  if (v143(v142, 1, v189) != 1)
  {
    v144 = v193;
    sub_1D99AB100(v193, v185, &qword_1ECB534F0);
    if (v143(v144 + v140, 1, v189) == 1)
    {
      sub_1D99A6AE0(v188, &qword_1ECB534F0);
      sub_1D9A91D4C(v185, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
      goto LABEL_63;
    }

    v145 = v193;
    v146 = v193 + v140;
    v147 = v182;
    sub_1D9A91CE4(v146, v182, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
    v148 = v185;
    v149 = sub_1D9A9113C(v185, v147);
    sub_1D9A91D4C(v147, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
    sub_1D99A6AE0(v188, &qword_1ECB534F0);
    sub_1D9A91D4C(v148, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);
    sub_1D99A6AE0(v145, &qword_1ECB534F0);
    if (v149)
    {
      goto LABEL_67;
    }

LABEL_15:

    return 0;
  }

  sub_1D99A6AE0(v188, &qword_1ECB534F0);
  if (v143(v193 + v140, 1, v189) != 1)
  {
LABEL_63:
    v128 = &qword_1ECB52788;
    v129 = v193;
    goto LABEL_64;
  }

  sub_1D99A6AE0(v193, &qword_1ECB534F0);
LABEL_67:
  v150 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals;
  v151 = v174;
  swift_beginAccess();
  LODWORD(v150) = *(v151 + v150);
  v152 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals;
  v153 = v175;
  swift_beginAccess();
  if (v150 != *(v153 + v152))
  {
    goto LABEL_15;
  }

  v154 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__enableDomainSelectionOnlyForE5;
  v155 = v174;
  swift_beginAccess();
  LODWORD(v154) = *(v155 + v154);
  v156 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__enableDomainSelectionOnlyForE5;
  v157 = v175;
  swift_beginAccess();
  if (v154 != *(v157 + v156))
  {
    goto LABEL_15;
  }

  v158 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig;
  v159 = v174;
  swift_beginAccess();
  v160 = v181;
  sub_1D99AB100(v159 + v158, v181, &qword_1ECB52768);
  v161 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionSelectionConfig;
  v162 = v175;
  swift_beginAccess();
  v163 = *(v177 + 48);
  v164 = v160;
  v165 = v183;
  sub_1D99AB100(v164, v183, &qword_1ECB52768);
  sub_1D99AB100(v162 + v161, v165 + v163, &qword_1ECB52768);
  v166 = *(v178 + 48);
  if (v166(v165, 1, v180) != 1)
  {
    v167 = v183;
    sub_1D99AB100(v183, v179, &qword_1ECB52768);
    if (v166(v167 + v163, 1, v180) == 1)
    {

      sub_1D99A6AE0(v181, &qword_1ECB52768);
      sub_1D9A91D4C(v179, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
      goto LABEL_75;
    }

    v170 = v176;
    sub_1D9A91CE4(v183 + v163, v176, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
    if ((sub_1D9A230F4(*v179, *v170) & 1) == 0 || (sub_1D9A242E0(v179[1], v176[1]) & 1) == 0 || (sub_1D9A24574(v179[2], v176[2]) & 1) == 0)
    {

      sub_1D9A91D4C(v176, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
      sub_1D99A6AE0(v181, &qword_1ECB52768);
      sub_1D9A91D4C(v179, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
      v169 = v183;
      v168 = &qword_1ECB52768;
      goto LABEL_82;
    }

    sub_1D9C7D3CC();
    sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
    v171 = v179;
    v172 = v176;
    v173 = sub_1D9C7DC2C();

    sub_1D9A91D4C(v172, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
    sub_1D99A6AE0(v181, &qword_1ECB52768);
    sub_1D9A91D4C(v171, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);
    sub_1D99A6AE0(v183, &qword_1ECB52768);
    return (v173 & 1) != 0;
  }

  sub_1D99A6AE0(v181, &qword_1ECB52768);
  if (v166(v183 + v163, 1, v180) != 1)
  {
LABEL_75:
    v168 = &qword_1ECB52780;
    v169 = v183;
LABEL_82:
    sub_1D99A6AE0(v169, v168);
    return 0;
  }

  sub_1D99A6AE0(v183, &qword_1ECB52768);
  return 1;
}

uint64_t sub_1D9A7BCB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52760, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A7BD54(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD30CC8, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A7BDC0()
{
  sub_1D9A8DB48(&qword_1EDD30CC8, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A7BE80()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41C70);
  __swift_project_value_buffer(v0, qword_1EDD41C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D9C8CDA0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "domain_assignment_rules";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 12;
  *v9 = "domain_selection_config";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ontology_box_score_thresholds";
  *(v11 + 1) = 29;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "box_score_threshold";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "minimum_object_size";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "use_refined_region_as_object_region";
  *(v17 + 1) = 35;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 5;
  *v19 = "max_num_of_regions";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 6;
  *v21 = "large_region_threshold";
  *(v21 + 1) = 22;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 7;
  *v22 = "overlap_ratio_threshold";
  *(v22 + 8) = 23;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "region_cluster_config";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "region_group_config";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "search_require_ocr";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "search_require_barcode";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "application_identifiers";
  *(v32 + 1) = 23;
  v32[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A7C370(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1D9A7C3C4()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
  v3 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__ontologyBoxScoreThresholds;
  *(v0 + v4) = sub_1D9A441B8(v1);
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold) = 0;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize) = 0;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__useRefinedRegionAsObjectRegion) = 0;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions) = 0;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold) = 0;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold) = 0;
  v5 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig;
  v6 = type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireOcr) = 0;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireBarcode) = 0;
  *(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__applicationIdentifiers) = v1;
  return v0;
}

uint64_t sub_1D9A7C550(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
  v12 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__ontologyBoxScoreThresholds;
  *(v1 + v13) = sub_1D9A441B8(v10);
  v14 = (v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold);
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold) = 0;
  v52 = (v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize);
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize) = 0;
  v53 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__useRefinedRegionAsObjectRegion;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__useRefinedRegionAsObjectRegion) = 0;
  v54 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions) = 0;
  v55 = (v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold);
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold) = 0;
  v56 = (v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold);
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold) = 0;
  v15 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig;
  v57 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig;
  v16 = type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig;
  v58 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig;
  v18 = type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v59 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireOcr;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireOcr) = 0;
  v60 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireBarcode;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireBarcode) = 0;
  v61 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__applicationIdentifiers;
  *(v1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__applicationIdentifiers) = v10;
  swift_beginAccess();
  v19 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v19;

  v20 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v20, v9, &qword_1ECB51B78);
  swift_beginAccess();
  sub_1D9A91EA0(v9, v1 + v11, &qword_1ECB51B78);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__ontologyBoxScoreThresholds;
  swift_beginAccess();
  v22 = *(a1 + v21);
  swift_beginAccess();
  *(v1 + v13) = v22;

  v23 = (a1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold);
  swift_beginAccess();
  v24 = *v23;
  swift_beginAccess();
  *v14 = v24;
  v25 = (a1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize);
  swift_beginAccess();
  v26 = *v25;
  v27 = v52;
  swift_beginAccess();
  *v27 = v26;
  v28 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__useRefinedRegionAsObjectRegion;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + v28);
  v29 = v53;
  swift_beginAccess();
  *(v1 + v29) = v28;
  v30 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions;
  swift_beginAccess();
  LODWORD(v30) = *(a1 + v30);
  v31 = v54;
  swift_beginAccess();
  *(v1 + v31) = v30;
  v32 = (a1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold);
  swift_beginAccess();
  v33 = *v32;
  v34 = v55;
  swift_beginAccess();
  *v34 = v33;
  v35 = (a1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold);
  swift_beginAccess();
  v36 = *v35;
  v37 = v56;
  swift_beginAccess();
  *v37 = v36;
  v38 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig;
  swift_beginAccess();
  v39 = v62;
  sub_1D99AB100(a1 + v38, v62, &qword_1ECB522D8);
  v40 = v57;
  swift_beginAccess();
  sub_1D9A91EA0(v39, v1 + v40, &qword_1ECB522D8);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig;
  swift_beginAccess();
  v42 = v63;
  sub_1D99AB100(a1 + v41, v63, &qword_1ECB527C0);
  v43 = v58;
  swift_beginAccess();
  sub_1D9A91EA0(v42, v1 + v43, &qword_1ECB527C0);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireOcr;
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v59;
  swift_beginAccess();
  *(v1 + v45) = v44;
  v46 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireBarcode;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v60;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__applicationIdentifiers;
  swift_beginAccess();
  v49 = *(a1 + v48);

  v50 = v61;
  swift_beginAccess();
  *(v1 + v50) = v49;

  return v1;
}

uint64_t sub_1D9A7CC64()
{

  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig, &qword_1ECB51B78);

  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig, &qword_1ECB522D8);
  sub_1D99A6AE0(v0 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig, &qword_1ECB527C0);

  return swift_deallocClassInstance();
}

void sub_1D9A7CD68()
{
  sub_1D9A778AC(319, qword_1EDD2EA28, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9A778AC(319, qword_1EDD2EEA8, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D9A778AC(319, qword_1EDD2F5E0, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1D9A7D010()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A7D124()
{
  sub_1D9A778AC(319, &qword_1EDD2C550, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9A778AC(319, &qword_1EDD2C560, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9A778AC(319, &qword_1EDD2C548, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D9C7D3CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D9A7D340()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A7D3F0()
{
  sub_1D9A778AC(319, &qword_1EDD2C558, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9A778AC(319, qword_1EDD2E898, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9A7D588()
{
  sub_1D9A003F4();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9A778AC(319, qword_1EDD2CFA8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_178Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1D9C7D3CC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_179Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1D9C7D3CC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D9A7D7CC()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9A7D868()
{
  sub_1D9A32424(319, &qword_1EDD2C5F8);
  if (v0 <= 0x3F)
  {
    sub_1D9A32424(319, &qword_1EDD2C630);
    if (v1 <= 0x3F)
    {
      sub_1D9A003F4();
      if (v2 <= 0x3F)
      {
        sub_1D9A778AC(319, &qword_1EDD2C598, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1D9C7D3CC();
          if (v4 <= 0x3F)
          {
            sub_1D9A778AC(319, qword_1EDD30988, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D9A7DA44()
{
  sub_1D9A003F4();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9A7DB14()
{
  sub_1D9A003F4();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9A7DC40()
{
  sub_1D9A003F4();
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9A7DD14()
{
  sub_1D9C7D3CC();
  if (v0 <= 0x3F)
  {
    sub_1D9A778AC(319, qword_1EDD30BC0, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_151Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_152Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9C7D3CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D9A7DFC0()
{
  sub_1D9A778AC(319, &qword_1EDD2C568, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Prerequisite, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9A778AC(319, &qword_1EDD2C570, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.Requirement, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9C7D3CC();
      if (v2 <= 0x3F)
      {
        sub_1D9A778AC(319, qword_1EDD2EC60, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig.RichLabelConfig, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9A7E1B4()
{
  sub_1D9A778AC(319, &qword_1EDD2C530, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9A7E2EC()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_142Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D9C7D3CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_143Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9C7D3CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D9A7E4E4()
{
  sub_1D9A778AC(319, &qword_1EDD2C530, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9A778AC(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9A778AC(319, &qword_1EDD2C528, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D9C7D3CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9A7E650()
{
  sub_1D9A778AC(319, &qword_1EDD2C530, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_133Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9C7D3CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_134Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9C7D3CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D9A7E8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1D9C7D3CC();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D9A7E988()
{
  result = qword_1EDD2F050;
  if (!qword_1EDD2F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F050);
  }

  return result;
}

unint64_t sub_1D9A7EA10()
{
  result = qword_1EDD2F058;
  if (!qword_1EDD2F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F058);
  }

  return result;
}

unint64_t sub_1D9A7EA68()
{
  result = qword_1EDD2F048;
  if (!qword_1EDD2F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F048);
  }

  return result;
}

unint64_t sub_1D9A7EAC0()
{
  result = qword_1EDD30908;
  if (!qword_1EDD30908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30908);
  }

  return result;
}

unint64_t sub_1D9A7EB48()
{
  result = qword_1EDD30910;
  if (!qword_1EDD30910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30910);
  }

  return result;
}

unint64_t sub_1D9A7EBA0()
{
  result = qword_1EDD30900;
  if (!qword_1EDD30900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30900);
  }

  return result;
}

unint64_t sub_1D9A7EBF8()
{
  result = qword_1EDD2F658;
  if (!qword_1EDD2F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F658);
  }

  return result;
}

unint64_t sub_1D9A7EC80()
{
  result = qword_1EDD2F660;
  if (!qword_1EDD2F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F660);
  }

  return result;
}

unint64_t sub_1D9A7ECD8()
{
  result = qword_1EDD2F650;
  if (!qword_1EDD2F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F650);
  }

  return result;
}

uint64_t sub_1D9A7ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1D9A7EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_1D9A7F0A8();
          break;
        case 2:
          sub_1D9A7F174();
          break;
        case 3:
          v11 = MEMORY[0x1E69AAC88];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold;
          goto LABEL_5;
        case 4:
          v11 = MEMORY[0x1E69AAC88];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize;
          goto LABEL_5;
        case 5:
          v11 = MEMORY[0x1E69AAC98];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions;
          goto LABEL_5;
        case 6:
          v11 = MEMORY[0x1E69AAC88];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold;
          goto LABEL_5;
        case 7:
          v11 = MEMORY[0x1E69AAC88];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold;
LABEL_5:
          sub_1D9A7F234(v12, v13, v14, v15, v16, v11);
          break;
        case 8:
        case 10:
        case 11:
          sub_1D9A7F3A8();
          break;
        case 9:
          sub_1D9A7F2CC();
          break;
        case 12:
          sub_1D9A7F430();
          break;
        case 13:
          sub_1D9A7F50C();
          break;
        case 14:
          sub_1D9A7F5E8();
          break;
        default:
          break;
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A7F0A8()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0);
  sub_1D9A8DB48(&qword_1EDD2ED68, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
  sub_1D9C7D5FC();
  return swift_endAccess();
}

uint64_t sub_1D9A7F174()
{
  swift_beginAccess();
  sub_1D9C7D39C();
  sub_1D9C7D37C();
  sub_1D9C7D4BC();
  return swift_endAccess();
}

uint64_t sub_1D9A7F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1D9A7F2CC()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
  sub_1D9A8DB48(&qword_1ECB52730, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A7F3A8()
{
  swift_beginAccess();
  sub_1D9C7D4EC();
  return swift_endAccess();
}

uint64_t sub_1D9A7F430()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  sub_1D9A8DB48(&qword_1EDD2EA88, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A7F50C()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
  sub_1D9A8DB48(&unk_1EDD2F638, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
  sub_1D9C7D60C();
  return swift_endAccess();
}

uint64_t sub_1D9A7F5E8()
{
  swift_beginAccess();
  sub_1D9C7D57C();
  return swift_endAccess();
}

uint64_t sub_1D9A7F674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A7F6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0), sub_1D9A8DB48(&qword_1EDD2ED68, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule), , sub_1D9C7D7FC(), result = , !v4))
  {
    v10 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__ontologyBoxScoreThresholds;
    swift_beginAccess();
    if (!*(*(a1 + v10) + 16) || (sub_1D9C7D39C(), sub_1D9C7D37C(), , sub_1D9C7D6EC(), result = , !v4))
    {
      v11 = (a1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold);
      swift_beginAccess();
      if (!*v11 || (result = sub_1D9C7D77C(), !v4))
      {
        v12 = (a1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize);
        swift_beginAccess();
        if (!*v12 || (result = sub_1D9C7D77C(), !v4))
        {
          v13 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions;
          swift_beginAccess();
          if (!*(a1 + v13) || (result = sub_1D9C7D78C(), !v4))
          {
            v14 = (a1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold);
            swift_beginAccess();
            if (!*v14 || (result = sub_1D9C7D77C(), !v4))
            {
              v15 = (a1 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold);
              swift_beginAccess();
              if (!*v15 || (result = sub_1D9C7D77C(), !v4))
              {
                v16 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__useRefinedRegionAsObjectRegion;
                swift_beginAccess();
                if (*(a1 + v16) != 1 || (result = sub_1D9C7D74C(), !v4))
                {
                  result = sub_1D9A7FB50(a1, a2, a3, a4);
                  if (!v4)
                  {
                    v17 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireOcr;
                    swift_beginAccess();
                    if (*(a1 + v17) == 1)
                    {
                      sub_1D9C7D74C();
                    }

                    v18 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireBarcode;
                    swift_beginAccess();
                    if (*(a1 + v18) == 1)
                    {
                      sub_1D9C7D74C();
                    }

                    sub_1D9A7FD6C(a1, a2, a3, a4);
                    sub_1D9A7FF88(a1, a2, a3, a4);
                    v19 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__applicationIdentifiers;
                    result = swift_beginAccess();
                    if (*(*(a1 + v19) + 16))
                    {

                      sub_1D9C7D7AC();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A7FB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB522D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB522D8);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
  sub_1D9A8DB48(&qword_1ECB52730, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
}

uint64_t sub_1D9A7FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB51B78);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51B78);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
  sub_1D9A8DB48(&qword_1EDD2EA88, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
}

uint64_t sub_1D9A7FF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig;
  swift_beginAccess();
  sub_1D99AB100(a1 + v12, v7, &qword_1ECB527C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB527C0);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
  sub_1D9A8DB48(&unk_1EDD2F638, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
}

uint64_t sub_1D9A801A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v108 = (&v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527B8);
  MEMORY[0x1EEE9AC00](v110);
  v7 = &v107 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v119 = (&v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v107 - v11;
  v12 = type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527C8);
  MEMORY[0x1EEE9AC00](v114);
  v117 = &v107 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB522D8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v107 - v18;
  v19 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v124 = *(v19 - 8);
  v125 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB527D0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v107 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B78);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v123 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v107 - v27;
  swift_beginAccess();
  v29 = *(a1 + 16);
  swift_beginAccess();
  v30 = *(a2 + 16);

  v31 = sub_1D9A2A5BC(v29, v30);

  if ((v31 & 1) == 0)
  {
    goto LABEL_40;
  }

  v107 = v7;
  v32 = a2;
  v33 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
  swift_beginAccess();
  v120 = a1;
  sub_1D99AB100(a1 + v33, v28, &qword_1ECB51B78);
  v34 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__domainSelectionConfig;
  swift_beginAccess();
  v35 = *(v21 + 48);
  sub_1D99AB100(v28, v23, &qword_1ECB51B78);
  v36 = v32 + v34;
  v37 = v32;
  sub_1D99AB100(v36, &v23[v35], &qword_1ECB51B78);
  v38 = v125;
  v39 = *(v124 + 48);
  if (v39(v23, 1, v125) == 1)
  {
    sub_1D99A6AE0(v28, &qword_1ECB51B78);
    v40 = v39(&v23[v35], 1, v38);
    v41 = v120;
    if (v40 == 1)
    {
      sub_1D99A6AE0(v23, &qword_1ECB51B78);
      goto LABEL_10;
    }
  }

  else
  {
    v42 = v123;
    sub_1D99AB100(v23, v123, &qword_1ECB51B78);
    if (v39(&v23[v35], 1, v38) != 1)
    {
      v46 = v122;
      sub_1D9A91CE4(&v23[v35], v122, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      v47 = sub_1D9A9071C(v42, v46);
      sub_1D9A91D4C(v46, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      sub_1D99A6AE0(v28, &qword_1ECB51B78);
      sub_1D9A91D4C(v42, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      sub_1D99A6AE0(v23, &qword_1ECB51B78);
      v41 = v120;
      if ((v47 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_10:
      v48 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__ontologyBoxScoreThresholds;
      swift_beginAccess();
      v49 = *(v41 + v48);
      v50 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__ontologyBoxScoreThresholds;
      swift_beginAccess();
      v51 = *(v32 + v50);

      v52 = sub_1D9A01074(v49, v51);

      if ((v52 & 1) == 0)
      {
        goto LABEL_40;
      }

      v53 = (v41 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold);
      swift_beginAccess();
      v54 = *v53;
      v55 = (v32 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__boxScoreThreshold);
      swift_beginAccess();
      if (v54 != *v55)
      {
        goto LABEL_40;
      }

      v56 = (v41 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize);
      swift_beginAccess();
      v57 = *v56;
      v58 = (v32 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__minimumObjectSize);
      swift_beginAccess();
      if (v57 != *v58)
      {
        goto LABEL_40;
      }

      v59 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__useRefinedRegionAsObjectRegion;
      swift_beginAccess();
      LODWORD(v59) = *(v41 + v59);
      v60 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__useRefinedRegionAsObjectRegion;
      swift_beginAccess();
      if (v59 != *(v32 + v60))
      {
        goto LABEL_40;
      }

      v61 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions;
      swift_beginAccess();
      LODWORD(v61) = *(v41 + v61);
      v62 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegions;
      swift_beginAccess();
      if (v61 != *(v32 + v62))
      {
        goto LABEL_40;
      }

      v63 = (v41 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold);
      swift_beginAccess();
      v64 = *v63;
      v65 = (v32 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__largeRegionThreshold);
      swift_beginAccess();
      if (v64 != *v65)
      {
        goto LABEL_40;
      }

      v66 = (v41 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold);
      swift_beginAccess();
      v67 = *v66;
      v68 = (v32 + OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__overlapRatioThreshold);
      swift_beginAccess();
      if (v67 != *v68)
      {
        goto LABEL_40;
      }

      v69 = v41;
      v70 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig;
      swift_beginAccess();
      v71 = v121;
      sub_1D99AB100(v69 + v70, v121, &qword_1ECB522D8);
      v72 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionClusterConfig;
      swift_beginAccess();
      v73 = *(v114 + 48);
      v74 = v117;
      sub_1D99AB100(v71, v117, &qword_1ECB522D8);
      sub_1D99AB100(v37 + v72, v74 + v73, &qword_1ECB522D8);
      v75 = v116;
      v76 = *(v115 + 48);
      if (v76(v74, 1, v116) == 1)
      {
        sub_1D99A6AE0(v71, &qword_1ECB522D8);
        v77 = v76(v74 + v73, 1, v75);
        v79 = v118;
        v78 = v119;
        if (v77 == 1)
        {
          sub_1D99A6AE0(v74, &qword_1ECB522D8);
LABEL_20:
          v80 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig;
          v81 = v120;
          swift_beginAccess();
          sub_1D99AB100(v81 + v80, v79, &qword_1ECB527C0);
          v82 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__regionGroupConfig;
          swift_beginAccess();
          v83 = *(v110 + 48);
          v84 = v107;
          sub_1D99AB100(v79, v107, &qword_1ECB527C0);
          sub_1D99AB100(v37 + v82, v84 + v83, &qword_1ECB527C0);
          v85 = v112;
          v86 = *(v111 + 48);
          if (v86(v84, 1, v112) == 1)
          {
            sub_1D99A6AE0(v79, &qword_1ECB527C0);
            v87 = v86(v84 + v83, 1, v85);
            v88 = v120;
            if (v87 == 1)
            {
              sub_1D99A6AE0(v84, &qword_1ECB527C0);
LABEL_38:
              v99 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireOcr;
              swift_beginAccess();
              LODWORD(v99) = *(v88 + v99);
              v100 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireOcr;
              swift_beginAccess();
              if (v99 == *(v37 + v100))
              {
                v101 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireBarcode;
                swift_beginAccess();
                LODWORD(v101) = *(v88 + v101);
                v102 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__searchRequireBarcode;
                swift_beginAccess();
                if (v101 == *(v37 + v102))
                {
                  v104 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__applicationIdentifiers;
                  swift_beginAccess();
                  v105 = *(v88 + v104);
                  v106 = OBJC_IVAR____TtCV12VisualLookUp40Argos_Protos_Queryflow_DomainParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__applicationIdentifiers;
                  swift_beginAccess();
                  v45 = sub_1D9A1EF04(v105, *(v37 + v106));
                  goto LABEL_41;
                }
              }

              goto LABEL_40;
            }

            goto LABEL_36;
          }

          sub_1D99AB100(v84, v78, &qword_1ECB527C0);
          if (v86(v84 + v83, 1, v85) == 1)
          {
            sub_1D99A6AE0(v79, &qword_1ECB527C0);
            sub_1D9A91D4C(v78, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
LABEL_36:
            v43 = &qword_1ECB527B8;
            v44 = v84;
            goto LABEL_8;
          }

          v96 = v84 + v83;
          v97 = v108;
          sub_1D9A91CE4(v96, v108, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
          v98 = sub_1D9A91020(v78, v97);
          sub_1D9A91D4C(v97, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
          sub_1D99A6AE0(v79, &qword_1ECB527C0);
          sub_1D9A91D4C(v78, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);
          sub_1D99A6AE0(v84, &qword_1ECB527C0);
          v88 = v120;
          if (v98)
          {
            goto LABEL_38;
          }

LABEL_40:
          v45 = 0;
          goto LABEL_41;
        }
      }

      else
      {
        v89 = v113;
        sub_1D99AB100(v74, v113, &qword_1ECB522D8);
        v90 = v76(v74 + v73, 1, v75);
        v79 = v118;
        v78 = v119;
        if (v90 != 1)
        {
          v93 = v74 + v73;
          v94 = v109;
          sub_1D9A91CE4(v93, v109, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
          if (*v89 == *v94 && *(v89 + 4) == *(v94 + 4) && *(v89 + 8) == *(v94 + 8))
          {
            sub_1D9C7D3CC();
            sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
            v95 = sub_1D9C7DC2C();
            sub_1D9A91D4C(v94, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
            sub_1D99A6AE0(v121, &qword_1ECB522D8);
            sub_1D9A91D4C(v89, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
            sub_1D99A6AE0(v74, &qword_1ECB522D8);
            if (v95)
            {
              goto LABEL_20;
            }

LABEL_33:
            v45 = 0;
            goto LABEL_41;
          }

          sub_1D9A91D4C(v94, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
          sub_1D99A6AE0(v121, &qword_1ECB522D8);
          sub_1D9A91D4C(v89, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
          v92 = v74;
          v91 = &qword_1ECB522D8;
LABEL_32:
          sub_1D99A6AE0(v92, v91);
          goto LABEL_33;
        }

        sub_1D99A6AE0(v121, &qword_1ECB522D8);
        sub_1D9A91D4C(v89, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);
      }

      v91 = &qword_1ECB527C8;
      v92 = v74;
      goto LABEL_32;
    }

    sub_1D99A6AE0(v28, &qword_1ECB51B78);
    sub_1D9A91D4C(v42, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
  }

  v43 = &qword_1ECB527D0;
  v44 = v23;
LABEL_8:
  sub_1D99A6AE0(v44, v43);
  v45 = 0;
LABEL_41:

  return v45 & 1;
}

uint64_t sub_1D9A810E8@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D9C7D3BC();
  v8 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1D9A81228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB527E0, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A812C8(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2F940, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A81334()
{
  sub_1D9A8DB48(&unk_1EDD2F940, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A813F4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB70F28);
  __swift_project_value_buffer(v0, qword_1ECB70F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "box_size_threshold";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "box_num_threshold";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "box_distance_threshold";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A81608()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_1D9C7D55C();
        break;
      case 1:
LABEL_8:
        sub_1D9C7D54C();
        break;
    }
  }
}

uint64_t sub_1D9A816A4()
{
  if (!*v0 || (result = sub_1D9C7D77C(), !v1))
  {
    if (!v0[1] || (result = sub_1D9C7D78C(), !v1))
    {
      if (!v0[2] || (result = sub_1D9C7D77C(), !v1))
      {
        type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A81770@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A817E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB527E8, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A81884(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1ECB52730, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A818F0()
{
  sub_1D9A8DB48(&qword_1ECB52730, type metadata accessor for Argos_Protos_Queryflow_RegionClusterConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A81970()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41BF8);
  __swift_project_value_buffer(v0, qword_1EDD41BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "enable_grouping";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "show_corner_glyph";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "should_dedup";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "box_size_threshold_upper";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "sorting_type";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A81C04()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_1D9C7D4EC();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1D9C7D54C();
            break;
          case 4:
            sub_1D9A91F08();
            sub_1D9C7D4FC();
            break;
          case 5:
            goto LABEL_4;
        }
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A81D08()
{
  if (*v0 != 1 || (result = sub_1D9C7D74C(), !v1))
  {
    if (*(v0 + 1) != 1 || (result = sub_1D9C7D74C(), !v1))
    {
      if (!*(v0 + 4) || (result = sub_1D9C7D77C(), !v1))
      {
        if (!*(v0 + 8) || (sub_1D9A91F08(), result = sub_1D9C7D75C(), !v1))
        {
          if (*(v0 + 2) != 1 || (result = sub_1D9C7D74C(), !v1))
          {
            type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig(0);
            return sub_1D9C7D3AC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A81E60@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A81EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB527F0, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A81F84(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2F638, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A81FF0()
{
  sub_1D9A8DB48(&unk_1EDD2F638, type metadata accessor for Argos_Protos_Queryflow_RegionGroupConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A82070()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41C10);
  __swift_project_value_buffer(v0, qword_1EDD41C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SORT_BY_CONFIDENCE";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SORT_BY_POSITION";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A82278()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet(0), sub_1D9A8DB48(&qword_1EDD2F038, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet), result = sub_1D9C7D7FC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A823EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB527F8, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8248C(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2EF90, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A824F8()
{
  sub_1D9A8DB48(qword_1EDD2EF90, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8258C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41B38);
  __swift_project_value_buffer(v0, qword_1EDD41B38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SUPPRESS_SELF_AND_WHOLE_IMAGE";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPRESS_OTHER";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A82778()
{
  result = MEMORY[0x1DA73DF90](0x536E69616D6F442ELL, 0xEA00000000007465);
  qword_1ECB70F40 = 0xD00000000000002ALL;
  *algn_1ECB70F48 = 0x80000001D9CA7400;
  return result;
}

uint64_t sub_1D9A827E8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41B20);
  __swift_project_value_buffer(v0, qword_1EDD41B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domains";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "box_score_threshold";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A82A04()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1D9C7D54C();
          break;
        case 2:
          sub_1D9A91F5C();
          sub_1D9C7D4FC();
          break;
        case 1:
          sub_1D9C7D57C();
          break;
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A82AE0()
{
  if (!*(*v0 + 16) || (result = sub_1D9C7D7AC(), !v1))
  {
    if (!*(v0 + 8) || (sub_1D9A91F5C(), result = sub_1D9C7D75C(), !v1))
    {
      if (!*(v0 + 20) || (result = sub_1D9C7D77C(), !v1))
      {
        type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A82BE4@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A82C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52800, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A82D14(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2F038, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A82D80()
{
  sub_1D9A8DB48(&qword_1EDD2F038, type metadata accessor for Argos_Protos_Queryflow_IncompatibleDomains.DomainSet);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A82E00()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41D38);
  __swift_project_value_buffer(v0, qword_1EDD41D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D9C8CDB0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "enable_pets_human_filter";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "enable_nsfw_filter";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "cc_pets_threshold";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 12;
  *v13 = "nsfw_label_mode";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "face_kg_ids";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "human_kg_ids";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 10;
  *v19 = "corner_glyph_config";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "safe_region_configs";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8314C()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 10)
        {
          if (result == 11)
          {
            type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
            sub_1D9A8DB48(&unk_1EDD30A90, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);
            sub_1D9C7D5FC();
          }

          else if (result == 12)
          {
            sub_1D9A833C0();
          }
        }

        else
        {
          if (result == 7)
          {
            goto LABEL_23;
          }

          if (result == 10)
          {
            sub_1D9A8330C();
          }
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          sub_1D9A327E4();
          goto LABEL_5;
        }

        if (result == 6)
        {
LABEL_23:
          sub_1D9C7D57C();
        }
      }

      else if (result == 1 || result == 3)
      {
        sub_1D9C7D4EC();
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A8330C()
{
  type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
  sub_1D9A8DB48(&qword_1EDD309D8, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A833C0()
{
  sub_1D9C7D39C();
  sub_1D9A91FB0();
  return sub_1D9C7D49C();
}

uint64_t sub_1D9A83440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      if (!*(*(v3 + 8) + 16) || (sub_1D9C7D39C(), sub_1D9C7D37C(), result = sub_1D9C7D6EC(), !v4))
      {
        if (!*(*(v3 + 24) + 16) || (result = sub_1D9C7D7AC(), !v4))
        {
          if (!*(*(v3 + 32) + 16) || (result = sub_1D9C7D7AC(), !v4))
          {
            result = sub_1D9A83694(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(*(v3 + 40) + 16))
              {
                type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
                sub_1D9A8DB48(&unk_1EDD30A90, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);
                sub_1D9C7D7FC();
              }

              if (*(*(v3 + 16) + 16))
              {
                sub_1D9C7D39C();
                sub_1D9A91FB0();
                sub_1D9C7D6CC();
              }

              type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
              return sub_1D9C7D3AC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A83694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52528);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  sub_1D99AB100(a1 + *(v12 + 48), v7, &qword_1ECB52528);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52528);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  sub_1D9A8DB48(&qword_1EDD309D8, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);
}

uint64_t sub_1D9A838A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
  *(a2 + 16) = sub_1D9A445A8(v4);
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  *(a2 + 40) = v4;
  sub_1D9C7D3BC();
  v5 = *(a1 + 48);
  v6 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1D9A83970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A839E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A83AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52808, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A83B4C(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD308F8, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A83BB8()
{
  sub_1D9A8DB48(&qword_1EDD308F8, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A83C38()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000013, 0x80000001D9CA7570);
  qword_1ECB70F50 = 0xD000000000000023;
  *algn_1ECB70F58 = 0x80000001D9CA7480;
  return result;
}

uint64_t sub_1D9A83CAC()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB70F60);
  __swift_project_value_buffer(v0, qword_1ECB70F60);
  return sub_1D9C7D83C();
}

uint64_t sub_1D9A83CF8()
{
  do
  {
    result = sub_1D9C7D4CC();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1D9A83D80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9C7D3CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D9A83DE8(uint64_t a1)
{
  v3 = sub_1D9C7D3CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1D9A83E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52810, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.ClassificationMode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A83F20(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1ECB526D0, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.ClassificationMode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A83F8C()
{
  sub_1D9A8DB48(&qword_1ECB526D0, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.ClassificationMode);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A84008()
{
  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A84090()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41D20);
  __swift_project_value_buffer(v0, qword_1EDD41D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SUPPER_HIGH_PRECISION";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HIGH_PRECISION";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BALANCED";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "HIGH_RECALL";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A842F8()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000012, 0x80000001D9CA75D0);
  qword_1ECB70F78 = 0xD000000000000023;
  unk_1ECB70F80 = 0x80000001D9CA7480;
  return result;
}

uint64_t sub_1D9A8436C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41D50);
  __swift_project_value_buffer(v0, qword_1EDD41D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "enabled";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain_lists";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "glyph_size";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A8458C()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1D9C7D54C();
        break;
      case 2:
        sub_1D9C7D57C();
        break;
      case 1:
        sub_1D9C7D4EC();
        break;
    }
  }

  return result;
}

uint64_t sub_1D9A84638()
{
  if (*v0 != 1 || (result = sub_1D9C7D74C(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (result = sub_1D9C7D7AC(), !v1))
    {
      if (!*(v0 + 16) || (result = sub_1D9C7D77C(), !v1))
      {
        type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9A8470C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A84798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52818, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A84838(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD309D8, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A848A4()
{
  sub_1D9A8DB48(&qword_1EDD309D8, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A84924()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000011, 0x80000001D9CA7610);
  qword_1ECB70F88 = 0xD000000000000023;
  unk_1ECB70F90 = 0x80000001D9CA7480;
  return result;
}

uint64_t sub_1D9A84998()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41D68);
  __swift_project_value_buffer(v0, qword_1EDD41D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D9C86430;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "domain_lists";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "face_ioa_threshold";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "face_iou_threshold";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "body_ioa_threshold";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "body_iou_threshold";
  *(v14 + 8) = 18;
  *(v14 + 16) = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A84C1C()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1D9C7D57C();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
LABEL_2:
      sub_1D9C7D54C();
    }
  }
}

uint64_t sub_1D9A84CE0()
{
  if (!*(*v0 + 16) || (result = sub_1D9C7D7AC(), !v1))
  {
    if (!v0[2] || (result = sub_1D9C7D77C(), !v1))
    {
      if (!v0[3] || (result = sub_1D9C7D77C(), !v1))
      {
        if (!v0[4] || (result = sub_1D9C7D77C(), !v1))
        {
          if (!v0[5] || (result = sub_1D9C7D77C(), !v1))
          {
            type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
            return sub_1D9C7D3AC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A84DF8@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v1;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A84E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52820, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A84F20(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD30A90, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A84F8C()
{
  sub_1D9A8DB48(&unk_1EDD30A90, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8500C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41D98);
  __swift_project_value_buffer(v0, qword_1EDD41D98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D9C8CDC0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "enable_refine_region";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1D9C7D81C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 5;
  *v8 = "coarse_threshold";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 6;
  *v10 = "detector_low_threshold";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "detector_high_threshold";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "suppress_if_not_largest";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "minimum_area";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A852D4()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result == 5)
      {
        sub_1D9A853BC();
      }

      else if (result == 6 || result == 7)
      {
LABEL_2:
        sub_1D9C7D54C();
      }
    }

    else if (result == 1 || result == 3)
    {
      sub_1D9C7D4EC();
    }

    else if (result == 4)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1D9A853BC()
{
  type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
  sub_1D9A8DB48(&qword_1EDD30C10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A85470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    if (*(v3 + 12) != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      if (!*(v3 + 16) || (result = sub_1D9C7D77C(), !v4))
      {
        result = sub_1D9A855A8(v3, a1, a2, a3);
        if (!v4)
        {
          if (*(v3 + 4))
          {
            sub_1D9C7D77C();
          }

          if (*(v3 + 8))
          {
            sub_1D9C7D77C();
          }

          type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A855A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  sub_1D99AB100(a1 + *(v12 + 40), v7, &qword_1ECB52530);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB52530);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
  sub_1D9A8DB48(&qword_1EDD30C10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);
}

uint64_t sub_1D9A857BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 4) = 0;
  *(a2 + 12) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1D9A85898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52828, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A85938(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD30B60, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A859A4()
{
  sub_1D9A8DB48(qword_1EDD30B60, type metadata accessor for Argos_Protos_Queryflow_RefineConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A85A20()
{
  result = MEMORY[0x1DA73DF90](0xD00000000000001ELL, 0x80000001D9CA7790);
  qword_1ECB70F98 = 0xD000000000000023;
  unk_1ECB70FA0 = 0x80000001D9CA76B0;
  return result;
}

uint64_t sub_1D9A85A94()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41D80);
  __swift_project_value_buffer(v0, qword_1EDD41D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A85C5C()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    if (!*(v0 + 16) || (result = sub_1D9C7D77C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A85D14@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A85DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52830, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A85E4C(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD30C10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A85EB8()
{
  sub_1D9A8DB48(&qword_1EDD30C10, type metadata accessor for Argos_Protos_Queryflow_RefineConfig.CoarseClassificationThreshold);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A85F34(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A86000()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB70FA8);
  __swift_project_value_buffer(v0, qword_1ECB70FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "granularity";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "xMean";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "yMean";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "std";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A86250()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_1D9C7D54C();
      }
    }

    else if (result == 1)
    {
      sub_1D9C7D55C();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1D9A86304()
{
  if (!*v0 || (result = sub_1D9C7D78C(), !v1))
  {
    if (!v0[1] || (result = sub_1D9C7D77C(), !v1))
    {
      if (!v0[2] || (result = sub_1D9C7D77C(), !v1))
      {
        if (!v0[3] || (result = sub_1D9C7D77C(), !v1))
        {
          type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A863F4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A86464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52838, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A86504(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1ECB52670, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A86570()
{
  sub_1D9A8DB48(&qword_1ECB52670, type metadata accessor for Argos_Protos_Queryflow_BoxScorerConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A8660C()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      sub_1D9C7D55C();
    }
  }

  return result;
}

uint64_t sub_1D9A8667C()
{
  if (!*v0 || (result = sub_1D9C7D78C(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A8674C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52840, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A867EC(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&unk_1EDD2F718, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A86858()
{
  sub_1D9A8DB48(&unk_1EDD2F718, type metadata accessor for Argos_Protos_Queryflow_ImageResizeConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A868D4(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A8DB48(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A86978()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD418F8);
  __swift_project_value_buffer(v0, qword_1EDD418F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "label_regex";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "threshold";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "is_less_than";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A86BD4()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1D9C7D4EC();
      }

      else if (result == 4)
      {
LABEL_11:
        sub_1D9C7D5CC();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_11;
      }

      if (result == 2)
      {
        sub_1D9C7D54C();
      }
    }
  }
}

uint64_t sub_1D9A86C98()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    if (!*(v0 + 32) || (result = sub_1D9C7D77C(), !v1))
    {
      if (*(v0 + 36) != 1 || (result = sub_1D9C7D74C(), !v1))
      {
        v5 = *(v0 + 24);
        v6 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v6 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
        }

        if (!v6 || (result = sub_1D9C7D7CC(), !v1))
        {
          type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A86DA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A86E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52848, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A86EC8(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A86F34()
{
  sub_1D9A8DB48(&qword_1EDD2DD10, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A86FB4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A60);
  __swift_project_value_buffer(v0, qword_1EDD41A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain_suppression_rules";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "region_suppression_rules";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "person_image_level_supression_rules";
  *(v11 + 8) = 35;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A871C8()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        v3 = v0;
        type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule(0);
        sub_1D9A8DB48(&unk_1EDD2E6C8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = v0;
        type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
        sub_1D9A8DB48(&qword_1EDD2E780, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1D9C7D4CC();
    }

    v3 = v0;
    type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule(0);
    sub_1D9A8DB48(&unk_1EDD2E9B8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
LABEL_5:
    v0 = v3;
    sub_1D9C7D5FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1D9A87364()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
    sub_1D9A8DB48(&qword_1EDD2E780, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
    result = sub_1D9C7D7FC();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule(0);
    sub_1D9A8DB48(&unk_1EDD2E9B8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.RegionSuppressionRule);
    v4 = v2;
    result = sub_1D9C7D7FC();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[2] + 16) || (type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule(0), sub_1D9A8DB48(&unk_1EDD2E6C8, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A8758C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52850, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A8762C(uint64_t a1)
{
  v2 = sub_1D9A8DB48(qword_1EDD2E620, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A87698()
{
  sub_1D9A8DB48(qword_1EDD2E620, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A87780()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000016, 0x80000001D9CA7930);
  qword_1ECB70FC0 = 0xD00000000000002CLL;
  *algn_1ECB70FC8 = 0x80000001D9CA7890;
  return result;
}

uint64_t sub_1D9A877F4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A18);
  __swift_project_value_buffer(v0, qword_1EDD41A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "source_domain_restriction";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suppressed_domain_restriction";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "conditions";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A87A10()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition(0);
          sub_1D9A8DB48(&unk_1EDD2E828, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
          sub_1D9C7D5FC();
          break;
        case 2:
          sub_1D9A87BE8();
          break;
        case 1:
          sub_1D9A87B34();
          break;
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9A87B34()
{
  type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  sub_1D9A8DB48(&qword_1EDD2E8F0, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A87BE8()
{
  type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  sub_1D9A8DB48(&qword_1EDD2E8F0, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A87C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9A87DB0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1D9A87FC0(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition(0);
      sub_1D9A8DB48(&unk_1EDD2E828, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition);
      sub_1D9C7D7FC();
    }

    type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A87DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  sub_1D99AB100(a1 + *(v12 + 24), v7, &qword_1ECB510D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB510D0);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  sub_1D9A8DB48(&qword_1EDD2E8F0, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
}

uint64_t sub_1D9A87FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  sub_1D99AB100(a1 + *(v12 + 28), v7, &qword_1ECB510D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB510D0);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  sub_1D9A8DB48(&qword_1EDD2E8F0, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
}

uint64_t sub_1D9A881D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1D9C7D3BC();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1D9A882F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52858, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A88394(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2E780, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A88400()
{
  sub_1D9A8DB48(&qword_1EDD2E780, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A88480()
{
  if (qword_1ECB50A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECB70FC0;
  v2 = *algn_1ECB70FC8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1DA73DF90](0xD000000000000012, 0x80000001D9CA79A0);

  qword_1ECB70FD0 = v1;
  *algn_1ECB70FD8 = v2;
  return result;
}

uint64_t sub_1D9A88528()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41A48);
  __swift_project_value_buffer(v0, qword_1EDD41A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domains";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "box_score_threshold_upper";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "box_score_threshold_lower";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "detection_threshold";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A88784()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_1D9A8884C();
      }
    }

    else if (result == 1)
    {
      sub_1D9C7D57C();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_1D9C7D54C();
    }
  }
}

uint64_t sub_1D9A8884C()
{
  type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9A8DB48(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9A88900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1D9C7D7AC(), !v4))
  {
    if (!v3[2] || (result = sub_1D9C7D77C(), !v4))
    {
      if (!v3[3] || (result = sub_1D9C7D77C(), !v4))
      {
        result = sub_1D9A889E8(v3, a1, a2, a3);
        if (!v4)
        {
          type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9A889E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  sub_1D99AB100(a1 + *(v12 + 32), v7, &qword_1ECB510C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB510C8);
  }

  sub_1D9A91CE4(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9A8DB48(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9C7D80C();
  return sub_1D9A91D4C(v11, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
}

uint64_t sub_1D9A88BF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D9A88CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A8DB48(&qword_1ECB52860, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A88D7C(uint64_t a1)
{
  v2 = sub_1D9A8DB48(&qword_1EDD2E8F0, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A88DE8()
{
  sub_1D9A8DB48(&qword_1EDD2E8F0, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A88E68()
{
  if (qword_1ECB50A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECB70FC0;
  v2 = *algn_1ECB70FC8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1DA73DF90](0xD000000000000012, 0x80000001D9CA7A20);

  qword_1ECB70FE0 = v1;
  *algn_1ECB70FE8 = v2;
  return result;
}

uint64_t sub_1D9A88F2C()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}