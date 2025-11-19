uint64_t sub_25F247A70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_25F247AB0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_25F247AF8(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_25F247B30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25F2D89A0(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_25F2480B8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
      result = sub_25F2D89B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_25F2D89B4((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_25F2480B8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
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

uint64_t sub_25F2480B8(char *__dst, char *__src, char *a3, char *a4)
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

      if (*v6 < *v4)
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
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_25F2482BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C00, &qword_25F30F458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F248364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55C18, &unk_25F30F460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F2483CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F248434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_25F248560()
{
  sub_25F2485E4();
  if (v0 <= 0x3F)
  {
    sub_25F30462C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F2485E4()
{
  if (!qword_27FD560A8)
  {
    type metadata accessor for TimingRecordBucket();
    sub_25F248650();
    v0 = sub_25F304B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD560A8);
    }
  }
}

unint64_t sub_25F248650()
{
  result = qword_27FD560B0;
  if (!qword_27FD560B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD560B0);
  }

  return result;
}

unint64_t sub_25F2486B4()
{
  result = qword_27FD560B8;
  if (!qword_27FD560B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD560B8);
  }

  return result;
}

uint64_t sub_25F248708(uint64_t *a1)
{
  v2 = type metadata accessor for TimingRecord.Point(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F30462C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - v12;
  v14 = *(type metadata accessor for TimingRecordKeeper.State() + 20);
  sub_25F3045EC();
  v15 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
  v16 = *(v7 + 8);
  result = v16(v13, v6);
  if ((v15 & 1) == 0)
  {
    return result;
  }

  _s20PreviewsFoundationOS12TimingRecordV2id6parent5start8category3tag7detailsA2C2IDVSg_AlC5PointVAA0dE8CategoryVs6UInt64VSgSSSgtcfcfA1__0();
  (*(v7 + 40))(a1 + v14, v13, v6);
  sub_25F30457C();
  v37 = a1;
  v18 = *a1;
  v19 = *(*a1 + 16);
  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = sub_25F1BAA60(*(*a1 + 16), 0);
  v21 = sub_25F1BEC00(v38, v20 + 4, v19, v18);
  v35[2] = v38[0];
  v36 = v21;
  v35[0] = v38[4];
  v35[1] = v38[3];

  sub_25F1BF034();
  if (v36 != v19)
  {
    __break(1u);
LABEL_5:
    v20 = MEMORY[0x277D84F90];
  }

  v36 = v20;
  v22 = v20[2];
  if (v22)
  {
    v23 = v36 + 4;
    do
    {
      v26 = *v23++;
      v25 = v26;
      sub_25F30457C();
      v27 = _s20PreviewsFoundationOS12TimingRecordV5PointV1loiySbAE_AEtFZ_0();
      v16(v5, v6);
      if (v27)
      {
        v28 = sub_25F21940C(v25);
        if (v29)
        {
          v30 = v28;
          v31 = v37;
          v32 = *v37;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = *v31;
          v38[0] = *v31;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_25F21EAEC();
            v34 = v38[0];
          }

          v24 = *(*(v34 + 56) + 8 * v30);

          sub_25F1BB8C0(v30, v34);
          *v31 = v34;
        }
      }

      --v22;
    }

    while (v22);
  }

  return v16(v11, v6);
}

uint64_t sub_25F2489F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimingRecord(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t WeakArray.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Weak();
  result = sub_25F3052DC();
  *a1 = result;
  return result;
}

uint64_t WeakArray.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v9 = type metadata accessor for Weak();
  v11 = sub_25F2E3888(sub_25F24928C, v13, a3, v9, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v10);
  result = (*(*(a3 - 1) + 8))(a1, a3);
  *a5 = v11;
  return result;
}

uint64_t WeakArray.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a1;
  v5 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  result = WeakArray.init<A>(_:)(&v8, a2, v5, WitnessTable, &v9);
  *a3 = v9;
  return result;
}

uint64_t WeakArray.array.getter(uint64_t a1)
{
  v5 = *v1;
  v4 = *(a1 + 16);
  type metadata accessor for Weak();
  sub_25F30539C();

  swift_getWitnessTable();
  v2 = sub_25F30511C();

  return v2;
}

uint64_t WeakArray.endIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  type metadata accessor for Weak();

  return sub_25F30531C();
}

Swift::Int __swiftcall WeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall WeakArray.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakArray.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  type metadata accessor for Weak();
  sub_25F3053DC();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_25F248DA0(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = *a1;
  v7 = type metadata accessor for WeakArray();
  v8 = swift_unknownObjectRetain();
  return WeakArray.subscript.setter(v8, v5, v7);
}

uint64_t WeakArray.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  type metadata accessor for Weak();
  v6 = sub_25F2E8318();
  sub_25F30539C();
  sub_25F3052CC();
  v7 = *v3;
  sub_25F24933C(a2, *v3);
  swift_unknownObjectRelease();
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = v6;
}

uint64_t (*WeakArray.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  *a1 = WeakArray.subscript.getter(a2, a3);
  return sub_25F248F08;
}

uint64_t sub_25F248F08(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return WeakArray.subscript.setter(*a1, v4, v2);
  }

  v6 = *a1;
  v7 = swift_unknownObjectRetain();
  WeakArray.subscript.setter(v7, v4, v2);

  return swift_unknownObjectRelease();
}

uint64_t WeakArray.append(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  type metadata accessor for Weak();
  sub_25F2E8318();
  sub_25F30539C();
  return sub_25F30533C();
}

uint64_t sub_25F249008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = WeakArray.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_25F249030(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_25F249104(v6, *a2, a3);
  v7[4] = v9;
  v7[5] = v8;
  return sub_25F2490BC;
}

void sub_25F2490BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t (*sub_25F249104(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = *v3;
  a1[1] = WeakArray.subscript.getter(a2, a3);
  return sub_25F24915C;
}

uint64_t sub_25F249164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_25F2491DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F249230()
{
  swift_getWitnessTable();
  v1 = sub_25F2B6F1C();
  v2 = *v0;

  return v1;
}

uint64_t sub_25F24928C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  type metadata accessor for Weak();
  result = sub_25F2E8318();
  *a2 = result;
  return result;
}

uint64_t sub_25F2492E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_25F24933C(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_25F2493AC()
{
  result = qword_27FD560D0;
  if (!qword_27FD560D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD560D0);
  }

  return result;
}

uint64_t sub_25F249500(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD560C8, &qword_25F30FA10);
    sub_25F2493AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F249578()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static MergeOperation.perform<A>(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = QueryManager.allValues<A>(for:)(a1, a4, a6);
  v8 = *(a5 + 24);
  swift_getAssociatedTypeWitness();
  v9 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v8(&v12, v9, WitnessTable, a3, a5);
}

uint64_t static ConcatenationMerge.perform<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F30607C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v5 + 16))(v8, a1, a3);
  swift_getAssociatedTypeWitness();
  v12[1] = sub_25F3052DC();
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F30606C();
  swift_getWitnessTable();
  return sub_25F3053CC();
}

uint64_t sub_25F249944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  result = static ConcatenationMerge.perform<A>(values:)(a1, v6, a2);
  *a4 = result;
  return result;
}

uint64_t static UnionMerge.perform<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F305E4C();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  sub_25F30519C();
  return (*(v9 + 8))(v12, a2);
}

uint64_t sub_25F249AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = *(v5 + 16);
  v10(v13 - v11);
  (v10)(v9, a2, a3);
  return sub_25F305E2C();
}

uint64_t static OrderedUnionMerge.perform<A>(values:)@<X0>(uint64_t *a1@<X8>)
{
  sub_25F30519C();
  v1 = v7[0];
  if (v7[0] < 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = sub_25F3052DC();
    return OrderedSet.init(arrayLiteral:)(v5, AssociatedTypeWitness, a1);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    OrderedSet.init()(v7);
    type metadata accessor for OrderedSet();
    OrderedSet.reserveCapacity(_:)(v1);
    MEMORY[0x28223BE20](v2);
    return sub_25F30518C();
  }
}

uint64_t sub_25F249D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for OrderedSet();
  return OrderedSet.append<A>(contentsOf:)(a2, v5, a3);
}

uint64_t sub_25F249E20@<X0>(uint64_t *a1@<X8>, void *a2@<X3>)
{
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[4];
  return static OrderedUnionMerge.perform<A>(values:)(a1);
}

uint64_t static KeyValueMerge.perform<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getTupleTypeMetadata2();
  v8 = sub_25F3052DC();
  sub_25F1CCBBC(v8, a2, a3, a5);

  sub_25F304B4C();
  sub_25F30518C();
  return v10;
}

uint64_t sub_25F249F24(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_25F304B4C();

  return sub_25F304AFC();
}

uint64_t sub_25F249FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X8>)
{
  result = static KeyValueMerge.perform<A>(values:)(a1, a3[2], a3[3], a2, a3[4]);
  *a4 = result;
  return result;
}

uint64_t static SumMerge.perform<A>(values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[0] = a6;
  v19[1] = a1;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_25F30661C();
  sub_25F30656C();
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  sub_25F30519C();
  return (*(v10 + 8))(v13, a2);
}

uint64_t sub_25F24A254@<X0>(_BYTE *a1@<X8>)
{
  result = static LogicalOrMerge.perform<A>(values:)();
  *a1 = result & 1;
  return result;
}

uint64_t static FutureMerge.perform<A>(values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ValueCombiner.swift";
  *(&v14 + 1) = 125;
  v15 = 2;
  v16 = xmmword_25F30FC80;
  v17 = "perform(values:)";
  v18 = 16;
  v19 = 2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Sequence.invert<A>(callsite:andAccumulateErrors:)(&v14, 0, a3, AssociatedTypeWitness, a5);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  sub_25F30539C();
  v11 = swift_getAssociatedTypeWitness();
  v14 = 0uLL;
  v12 = sub_25F286460("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ValueCombiner.swift", 125, 2, 136, 25, "perform(values:)", 16, 2, &v14, sub_25F24A654, v10, v11);

  sub_25F2033DC(v14);
  return v12;
}

uint64_t sub_25F24A464(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *a1;
  v6 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  return v6(&v10, v7, WitnessTable, a2, a4);
}

uint64_t sub_25F24A524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static FutureMerge.perform<A>(values:)(a1, *(a4 + 16), a2, *(a4 + 24), a3);
  *a5 = result;
  return result;
}

uint64_t sub_25F24A558(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_25F249AAC(a1, a2, v2[2]);
}

uint64_t sub_25F24A578@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *a1;
  result = sub_25F3050EC();
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v6 + result;
  }

  return result;
}

uint64_t sub_25F24A5D4(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  return sub_25F249D94(a1, a2, v2[2]);
}

uint64_t sub_25F24A5F8(uint64_t a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return sub_25F249F24(a1, a2);
}

uint64_t sub_25F24A61C()
{
  v1 = *(*(v0 + 32) + 8);
  v2 = *(v0 + 16);
  return sub_25F30629C();
}

uint64_t AnyComparable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyComparableBoxImpl();
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_25F24A8C8(v9);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t sub_25F24A8C8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 112) - 8) + 32))(v5 + *(*v5 + 128), a1);
  return v5;
}

unint64_t sub_25F24AA3C()
{
  result = qword_27FD56568[0];
  if (!qword_27FD56568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD56568);
  }

  return result;
}

uint64_t sub_25F24ACB8(uint64_t a1)
{
  v1 = *(a1 + 112);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F24ADF0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 120);
  type metadata accessor for AnyComparableBoxImpl();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *(v1 + 128);
    v6 = *(*result + 128);

    v7 = sub_25F304CCC();

    return v7 & 1;
  }

  return result;
}

uint64_t sub_25F24AEE8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 120);
  type metadata accessor for AnyComparableBoxImpl();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *(v1 + 128);
    v6 = *(*result + 128);
    v7 = *(v3 + 8);

    v8 = sub_25F304DCC();

    return v8 & 1;
  }

  return result;
}

uint64_t sub_25F24AFE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 112);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

uint64_t sub_25F24B0D4()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_25F24B184()
{
  result = qword_27FD565F0[0];
  if (!qword_27FD565F0[0])
  {
    type metadata accessor for AnyComparableBox();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD565F0);
  }

  return result;
}

uint64_t GeneratingSequence.init(from:advancingBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F305C1C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for GeneratingSequence();
  v10 = (a4 + *(result + 28));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_25F24B294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeneratingSequence.Iterator.State();
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  v18 = a2;
  v12 = sub_25F305C1C();
  sub_25F20977C(sub_25F24C260, v17, MEMORY[0x277D84A98], v6, v13, v11);
  (*(*(v12 - 8) + 8))(a1, v12);
  v14 = *(v6 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v6) != 1)
  {
    return (*(v14 + 32))(a3, v11, v6);
  }

  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  result = (v15)(v11, 1, v6);
  if (result != 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_25F24B4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v11 + 16))(&v17 - v13, a1, v10);
  sub_25F24B294(v14, a4, a5);
  (*(v11 + 8))(a1, v10);
  result = type metadata accessor for GeneratingSequence.Iterator();
  v16 = (a5 + *(result + 28));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t GeneratingSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  (*(v10 + 16))(&v15 - v8, v2);
  v11 = (v2 + *(a1 + 28));
  v12 = *v11;
  v13 = v11[1];

  return sub_25F24B4C8(v9, v12, v13, v5, a2);
}

uint64_t sub_25F24B6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GeneratingSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t GeneratingSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_25F305C1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GeneratingSequence.Iterator.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  (*(v12 + 16))(&v24 - v17, v3, v11);
  v19 = *(v6 - 8);
  if ((*(v19 + 48))(v18, 1, v6) == 1)
  {
    (*(v12 + 8))(v18, v11);
    v20 = 1;
  }

  else
  {
    (*(v19 + 32))(a2, v18, v6);
    v21 = v3 + *(a1 + 28);
    v22 = *(v21 + 8);
    (*v21)(a2);
    sub_25F24B294(v10, v6, v16);
    (*(v12 + 40))(v3, v16, v11);
    v20 = 0;
  }

  return (*(v19 + 56))(a2, v20, 1, v6);
}

unint64_t sub_25F24B9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = a4(319, *(a1 + 16));
  if (v5 <= 0x3F)
  {
    result = sub_25F1D67AC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F24BA80(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_25F24BBF0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
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

uint64_t sub_25F24BE58(uint64_t a1)
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

uint64_t sub_25F24BEB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_25F24C034(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_25F24C260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t StructuredStringConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  (*(a2 + 16))(&v4, a1);
  v2 = Array<A>.builtDescription.getter(v4);

  return v2;
}

uint64_t Array<A>.builtDescription.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_beginAccess();
  if (v2)
  {
    v4 = 0;
    v25 = a1 + 48;
    v26 = a1 + 32;
    v29 = 1;
    v30 = 0;
    v27 = v2;
LABEL_3:
    v28 = v4;
LABEL_4:
    v5 = (v25 + 24 * v4);
    v6 = v4;
    while (1)
    {
      if (v6 >= v2)
      {
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
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        return result;
      }

      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_64;
      }

      v11 = *(v5 - 2);
      v10 = *(v5 - 1);
      v12 = *v5;
      if (!(v29 & 1 | (v28 != v6)))
      {
        sub_25F24CB7C(*(v5 - 2), *(v5 - 1), *v5);
        result = sub_25F24CB94(v11, v10, v12);
        v29 = 0;
        if (v4 != v2)
        {
          goto LABEL_4;
        }

        goto LABEL_62;
      }

      if (v4 >= v2)
      {
        v15 = 0;
        v14 = 0;
        v16 = 254;
      }

      else
      {
        if (v4 < 0)
        {
          goto LABEL_65;
        }

        v13 = v26 + 24 * v4;
        v15 = *v13;
        v14 = *(v13 + 8);
        v16 = *(v13 + 16);
        sub_25F24CB7C(*v13, v14, *(v13 + 16));
      }

      v17 = v12 >> 6;
      if (v12 >> 6 <= 1)
      {
        if (!v17)
        {
          sub_25F24CB7C(v11, v10, v12);
          sub_25F24CBAC(v15, v14, v16);
          sub_25F24CB7C(v11, v10, v12);
          v20._countAndFlagsBits = sub_25F30507C();
          v21 = String.prefixingEachLine(with:startingOnLine:)(v20, 0);

          swift_beginAccess();
          MEMORY[0x25F8D7130](v21._countAndFlagsBits, v21._object);
          swift_endAccess();

          sub_25F24CB94(v11, v10, v12);
          result = sub_25F24CB94(v11, v10, v12);
          goto LABEL_7;
        }

        if (v16 <= 0xFD)
        {
          if (v16 >= 0xC0 && v15 == 2 && !v14 && v16 == 192)
          {
            sub_25F24CB7C(v11, v10, v12);
            sub_25F24CBAC(2, 0, 0xC0u);
            if (v12)
            {
LABEL_61:
              result = sub_25F24CB94(v11, v10, v12);
              v29 = 0;
              v2 = v27;
              if (v4 != v27)
              {
                goto LABEL_3;
              }

              goto LABEL_62;
            }
          }

          else
          {
            sub_25F24CB7C(v11, v10, v12);
            sub_25F24CBAC(v15, v14, v16);
          }
        }

        else
        {
          sub_25F24CB7C(v11, v10, v12);
        }

        sub_25F24CB7C(v11, v10, v12);
        MEMORY[0x25F8D7130](31520, 0xE200000000000000);
        v7._countAndFlagsBits = sub_25F30507C();
        v8 = String.prefixingEachLine(with:startingOnLine:)(v7, 0);

        swift_beginAccess();
        MEMORY[0x25F8D7130](v8._countAndFlagsBits, v8._object);
        swift_endAccess();

        sub_25F24CB94(v11, v10, v12);

        v9 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      }

      if (v17 == 2)
      {
        if (v16 <= 0xFD)
        {
          if (v16 >= 0xC0 && v15 == 3 && !v14 && v16 == 192)
          {
            sub_25F24CB7C(v11, v10, v12);
            sub_25F24CBAC(3, 0, 0xC0u);
            if (v12)
            {
              goto LABEL_61;
            }
          }

          else
          {
            sub_25F24CB7C(v11, v10, v12);
            sub_25F24CBAC(v15, v14, v16);
          }
        }

        else
        {
          sub_25F24CB7C(v11, v10, v12);
        }

        sub_25F24CB7C(v11, v10, v12);
        MEMORY[0x25F8D7130](23328, 0xE200000000000000);
        v18._countAndFlagsBits = sub_25F30507C();
        v19 = String.prefixingEachLine(with:startingOnLine:)(v18, 0);

        swift_beginAccess();
        MEMORY[0x25F8D7130](v19._countAndFlagsBits, v19._object);
        swift_endAccess();

        sub_25F24CB94(v11, v10, v12);

        v9 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_66;
        }

        goto LABEL_6;
      }

      if (!(v10 | v11) && v12 == 192)
      {
        break;
      }

      if (v11 == 1 && !v10 && v12 == 192)
      {
        sub_25F24CB7C(1, 0, 0xC0u);
        result = sub_25F24CBAC(v15, v14, v16);
        v9 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_69;
        }

        goto LABEL_6;
      }

      if (v11 == 2 && !v10 && v12 == 192)
      {
        sub_25F24CB7C(2, 0, 0xC0u);
        result = sub_25F24CBAC(v15, v14, v16);
        v22 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_71;
        }
      }

      else
      {
        sub_25F24CB7C(3, 0, 0xC0u);
        result = sub_25F24CBAC(v15, v14, v16);
        v22 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_70;
        }
      }

      v23._countAndFlagsBits = sub_25F30507C();
      v24 = String.prefixingEachLine(with:startingOnLine:)(v23, 0);

      swift_beginAccess();
      MEMORY[0x25F8D7130](v24._countAndFlagsBits, v24._object);
      swift_endAccess();

      v30 = v22;
LABEL_7:
      v2 = v27;
      ++v6;
      v5 += 24;
      if (v4 == v27)
      {
        goto LABEL_62;
      }
    }

    sub_25F24CB7C(0, 0, 0xC0u);
    result = sub_25F24CBAC(v15, v14, v16);
    v9 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_68;
    }

LABEL_6:
    v30 = v9;
    goto LABEL_7;
  }

LABEL_62:
  swift_beginAccess();
  return 0;
}

uint64_t sub_25F24CB7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_25F24CB94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_25F24CBAC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_25F24CB94(a1, a2, a3);
  }

  return a1;
}

uint64_t Array<A>.describe<A>(_:)()
{
  v1 = v0;
  v2 = sub_25F3064DC();
  v4 = v3;
  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F2EFA04(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_25F2EFA04((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 24 * v8;
  *(v9 + 32) = v2;
  *(v9 + 40) = v4;
  *(v9 + 48) = 0;
  *v1 = v5;
  return result;
}

double Array<A>.withMap(_:skipEmpty:handler:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(char **))
{
  v5 = v4;
  v10 = *v4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25F2EFA04(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_25F2EFA04((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[24 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v13[48] = a3 & 1 | 0x40;
  *v4 = v10;
  a4(v4);
  v14 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_25F2EFA04(0, *(v14 + 2) + 1, 1, v14);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_25F2EFA04((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[24 * v16];
  *&result = 2;
  *(v17 + 2) = xmmword_25F3101A0;
  v17[48] = -64;
  *v5 = v14;
  return result;
}

double Array<A>.withCollection(_:skipEmpty:handler:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(char **))
{
  v5 = v4;
  v10 = *v4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25F2EFA04(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_25F2EFA04((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[24 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v13[48] = a3 & 1 | 0x80;
  *v4 = v10;
  a4(v4);
  v14 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_25F2EFA04(0, *(v14 + 2) + 1, 1, v14);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_25F2EFA04((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[24 * v16];
  *&result = 3;
  *(v17 + 2) = xmmword_25F3101B0;
  v17[48] = -64;
  *v5 = v14;
  return result;
}

uint64_t Array<A>.print<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a3, v8);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    return (*(v9 + 8))(v13, v8);
  }

  (*(v14 + 32))(v17, v13, a4);
  v29 = a1;
  v30 = a2;

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v19 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v19);

  v20 = v29;
  v21 = v30;
  v22 = v28;
  v23 = *v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_25F2EFA04(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_25F2EFA04((v24 > 1), v25 + 1, 1, v23);
  }

  result = (*(v14 + 8))(v17, a4);
  *(v23 + 2) = v25 + 1;
  v26 = &v23[24 * v25];
  *(v26 + 4) = v20;
  *(v26 + 5) = v21;
  v26[48] = 0;
  *v22 = v23;
  return result;
}

uint64_t Array<A>.print<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a5;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a3, v11);
  if ((*(v17 + 48))(v16, 1, a4) == 1)
  {
    return (*(v12 + 8))(v16, v11);
  }

  (*(v17 + 32))(v20, v16, a4);
  v30 = a1;
  v31 = a2;

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v22 = v30;
  v23 = v31;
  v24 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_25F2EFA04(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_25F2EFA04((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[24 * v26];
  *(v27 + 4) = v22;
  *(v27 + 5) = v23;
  v27[48] = 0;
  *v6 = v24;
  (*(v29 + 16))(v6, a4);
  return (*(v17 + 8))(v20, a4);
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS32StructuredDescriptionBuildActionO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25F24D4F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F24D54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_25F24D5B0(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t static ActorTunnel.create()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F3054AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = sub_25F3054DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  nullsub_2(a3);
  sub_25F1AF2E0(v9);
  sub_25F30547C();
  (*(v6 + 8))(v9, v5);
  return (*(v11 + 32))(a1, v14, v10);
}

uint64_t ActorTunnel.send(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2);
  sub_25F3054DC();
  return sub_25F3054BC();
}

Swift::Void __swiftcall ActorTunnel.invalidate()()
{
  v1 = *(v0 + 16);
  sub_25F3054DC();

  sub_25F3054CC();
}

uint64_t sub_25F24D8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_25F3054DC();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F24D978(uint64_t a1)
{
  v8[3] = &type metadata for InvalidAuditTokenDeserialization;
  v8[0] = a1;
  __swift_project_boxed_opaque_existential_1(v8, &type metadata for InvalidAuditTokenDeserialization);
  swift_getDynamicType();

  v2 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v8);
  v8[0] = v2;
  v8[1] = v4;
  sub_25F305FAC();

  v5 = MEMORY[0x25F8D7420](a1, MEMORY[0x277D84CC0]);
  MEMORY[0x25F8D7130](v5);

  MEMORY[0x25F8D7130](0xD000000000000027, 0x800000025F3181D0);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  sub_25F1BF118();
  v6 = sub_25F305D2C();

  return v6;
}

uint64_t sub_25F24DB00(uint64_t a1, uint64_t a2)
{
  v11 = &type metadata for InvalidUUID;
  v9 = a1;
  v10 = a2;
  __swift_project_boxed_opaque_existential_1(&v9, &type metadata for InvalidUUID);
  swift_getDynamicType();

  v4 = sub_25F30685C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v9);
  v9 = v4;
  v10 = v6;
  sub_25F305FAC();

  MEMORY[0x25F8D7130](a1, a2);
  MEMORY[0x25F8D7130](0xD000000000000015, 0x800000025F318100);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  sub_25F1BF118();
  v7 = sub_25F305D2C();

  return v7;
}

_OWORD *sub_25F24DC78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_25F1B707C(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_25F210778(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD53DF8, &unk_25F30A470);
    v8 = *v2;
    v9 = sub_25F2192AC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_25F21DD68();
        v14 = v16;
      }

      sub_25F1B707C((*(v14 + 56) + 32 * v11), v17);
      sub_25F1BAD28(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_25F1AF698(v17, &qword_27FD53DF8, &unk_25F30A470);
  }

  return result;
}

uint64_t sub_25F24DD7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25F1B707C(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_25F2109F8(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_25F1BF670(a2);
    *v2 = v7;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD53DF8, &unk_25F30A470);
    sub_25F1E4A70(a2, v8);
    sub_25F1BF670(a2);
    return sub_25F1AF698(v8, &qword_27FD53DF8, &unk_25F30A470);
  }

  return result;
}

uint64_t sub_25F24DE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25F1B707C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_25F211070(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD53DF8, &unk_25F30A470);
    sub_25F21052C(a2, a3, v10);

    return sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
  }

  return result;
}

uint64_t sub_25F24DF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{

  v6 = sub_25F3063BC();

  if (!v6)
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    v7 = 1;
LABEL_5:

    *a3 = v7;
    return result;
  }

  sub_25F202604();
  swift_allocError();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56860, &qword_25F310B88);
  *v10 = &type metadata for HumanReadableErrorSeverity;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 24) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 112) = 3;
  return swift_willThrow();
}

uint64_t PropertyListRepresentable<>.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v23 - v8;
  v24 = sub_25F305C1C();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - v12;
  v14 = *(v6 + 16);
  v26 = a1;
  v15 = a1;
  v16 = v14;
  v14(v9, v15, AssociatedTypeWitness);
  sub_25F3051FC();
  v17 = *(a2 - 8);
  if ((*(v17 + 48))(v13, 1, a2) == 1)
  {
    (*(v10 + 8))(v13, v24);
    sub_25F202604();
    swift_allocError();
    v19 = v18;
    *(v18 + 24) = swift_getMetatypeMetadata();
    *v19 = a2;
    *(v19 + 56) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
    v21 = v26;
    v16(boxed_opaque_existential_1, v26, AssociatedTypeWitness);
    *(v19 + 112) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    (*(v6 + 8))(v26, AssociatedTypeWitness);
    return (*(v17 + 32))(v25, v13, a2);
  }
}

{
  return (*(*(a2 - 8) + 32))(a3, a1);
}

uint64_t PropertyListRepresentable.propertyList.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  (*(a2 + 24))(a1, a2);
  (*(v7 + 16))(v11, v13, AssociatedTypeWitness);
  v14 = swift_dynamicCast();
  if (v14)
  {
    *a3 = v16[1];
  }

  else
  {
    MEMORY[0x28223BE20](v14);
    v16[-4] = a1;
    v16[-3] = a2;
    v16[-2] = v13;
    sub_25F251FC4(sub_25F251FB8, a3);
  }

  return (*(v7 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_25F24E4A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  v6 = sub_25F3063BC();

  if (!v6)
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (v6 == 1)
  {
    v7 = 1;
LABEL_5:

    *a2 = v7;
    return result;
  }

  sub_25F202604();
  swift_allocError();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54978, &unk_25F310BC0);
  *v10 = v2;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 24) = v11;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  *(v10 + 112) = 3;
  return swift_willThrow();
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F>(_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v91 = a8;
  v101 = a6;
  v115 = a5;
  v98 = a4;
  v114 = a3;
  v110 = a2;
  v97 = a1;
  v102 = a17;
  v96 = a15;
  v117 = a11;
  v108 = a9;
  v103 = a13;
  v105 = a12;
  v113 = sub_25F305C1C();
  v111 = *(v113 - 8);
  v19 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v104 = &v88 - v20;
  v100 = a10;
  v21 = sub_25F305C1C();
  v107 = *(v21 - 8);
  v22 = *(v107 + 64);
  MEMORY[0x28223BE20](v21);
  v99 = &v88 - v23;
  v24 = sub_25F305C1C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v90 = &v88 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v116 = *(TupleTypeMetadata2 - 8);
  v28 = *(v116 + 64);
  v29 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v106 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v88 - v31;
  v33 = swift_getTupleTypeMetadata2();
  v112 = *(v33 - 8);
  v34 = *(v112 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v94 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v88 - v37;
  v39 = a7;
  v40 = swift_getTupleTypeMetadata2();
  v109 = *(v40 - 8);
  v41 = *(v109 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v88 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v88 - v45;
  v89 = *(v39 - 8);
  (*(v89 + 16))(&v88 - v45, v97, v39);
  (*(v25 + 16))(&v46[*(v40 + 48)], v110, v24);
  v93 = *(v108 - 8);
  (*(v93 + 16))(v38, v114);
  v114 = v33;
  v47 = *(v33 + 48);
  v48 = *(v107 + 16);
  v110 = v38;
  v49 = v98;
  v98 = v21;
  v48(&v38[v47], v49, v21);
  v97 = *(v117 - 8);
  (*(v97 + 16))(v32, v115);
  v50 = *(TupleTypeMetadata2 + 48);
  v51 = *(v111 + 16);
  v115 = v32;
  v51(&v32[v50], v101, v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081F0;
  v53 = *(v103 + 8);
  v92 = v39;
  *(inited + 32) = v53(v39);
  v95 = inited + 32;
  *(inited + 40) = v54;
  v55 = *(v109 + 16);
  v101 = v46;
  v56 = v46;
  v57 = v90;
  v55(v44, v56, v40);
  v103 = v40;
  v58 = *(v40 + 48);
  v59 = v91;
  v60 = v44;
  (*(v25 + 32))(v57, &v44[v58], v24);
  v61 = *(v59 - 8);
  if ((*(v61 + 48))(v57, 1, v59) == 1)
  {
    (*(v89 + 8))(v60, v92);
    (*(v25 + 8))(v57, v24);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v62 = *(a14 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v62(v59, a14);
    (*(v61 + 8))(v57, v59);
    (*(v89 + 8))(v60, v92);
  }

  v63 = v110;
  v64 = v108;
  *(inited + 88) = (*(v96 + 8))(v108);
  *(inited + 96) = v65;
  v66 = v94;
  v67 = v114;
  (*(v112 + 16))(v94, v63, v114);
  v68 = v107;
  v69 = v99;
  v70 = v98;
  (*(v107 + 32))(v99, &v66[*(v67 + 48)], v98);
  v71 = v100;
  v72 = *(v100 - 8);
  v73 = (*(v72 + 48))(v69, 1, v100);
  v74 = v105;
  v75 = TupleTypeMetadata2;
  if (v73 == 1)
  {
    (*(v93 + 8))(v66, v64);
    (*(v68 + 8))(v69, v70);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v107 = *(a16 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    (v107)(v71, a16);
    (*(v72 + 8))(v69, v71);
    v75 = TupleTypeMetadata2;
    (*(v93 + 8))(v66, v64);
  }

  v76 = v117;
  v77 = v106;
  v78 = v115;
  *(inited + 144) = (*(v102 + 8))(v117);
  *(inited + 152) = v79;
  (*(v116 + 16))(v77, v78, v75);
  v80 = v111;
  v81 = v104;
  v82 = v113;
  (*(v111 + 32))(v104, &v77[*(v75 + 48)], v113);
  v83 = *(v74 - 8);
  if ((*(v83 + 48))(v81, 1, v74) == 1)
  {
    (*(v97 + 8))(v77, v76);
    (*(v80 + 8))(v81, v82);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v84 = *(a18 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v84(v74, a18);
    (*(v83 + 8))(v81, v74);
    (*(v97 + 8))(v106, v76);
  }

  v85 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v86 = sub_25F252D8C(v85);

  (*(v116 + 8))(v115, v75);
  (*(v112 + 8))(v110, v114);
  (*(v109 + 8))(v101, v103);
  return v86;
}

uint64_t PropertyList.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1();
  result = sub_25F252514(v3, &v5);
  *a2 = v5;
  return result;
}

uint64_t PropertyList.unarchiveValue<A>(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (*(v9 + 16))
  {
    v14 = sub_25F219234(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_25F1B7118(*(v9 + 56) + 32 * v14, v20);
      sub_25F1B707C(v20, v21);
      *&v20[0] = v9;
      sub_25F253DB0(v21, a1, a2, a3, a4);
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {
  }

  sub_25F202604();
  swift_allocError();
  v19 = v18;
  *v18 = v9;
  sub_25F1BF03C(a1, (v18 + 1));
  *(v19 + 112) = 0;
  swift_willThrow();
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v290 = a8;
  v345 = a7;
  v288 = a6;
  v341 = a5;
  v283 = a4;
  v340 = a3;
  v338 = a2;
  v278 = a1;
  v295 = a45;
  v291 = a43;
  v376 = a39;
  v380 = a37;
  v379 = a35;
  v360 = a33;
  v377 = a31;
  v359 = a29;
  v378 = a27;
  v358 = a25;
  v356 = a23;
  v279 = a22;
  v357 = a21;
  v308 = a41;
  v302 = a20;
  v287 = a19;
  v303 = a18;
  v286 = a17;
  v299 = a16;
  v285 = a15;
  v296 = a14;
  v284 = a13;
  v293 = a12;
  v282 = a11;
  v281 = a10;
  v280 = a9;
  v316 = a40;
  v375 = sub_25F305C1C();
  v355 = *(v375 - 8);
  v60 = *(v355 + 64);
  MEMORY[0x28223BE20](v375);
  v314 = a38;
  v315 = &v271 - v61;
  v353 = sub_25F305C1C();
  v352 = *(v353 - 8);
  v62 = *(v352 + 64);
  MEMORY[0x28223BE20](v353);
  v312 = a36;
  v313 = &v271 - v63;
  v343 = sub_25F305C1C();
  v342 = *(v343 - 8);
  v64 = *(v342 + 64);
  MEMORY[0x28223BE20](v343);
  v310 = a34;
  v311 = &v271 - v65;
  v66 = sub_25F305C1C();
  v334 = *(v66 - 8);
  v335 = v66;
  v67 = *(v334 + 64);
  MEMORY[0x28223BE20](v66);
  v306 = a32;
  v307 = &v271 - v68;
  v69 = sub_25F305C1C();
  v332 = *(v69 - 8);
  v333 = v69;
  v70 = *(v332 + 64);
  MEMORY[0x28223BE20](v69);
  v304 = a30;
  v305 = &v271 - v71;
  v72 = sub_25F305C1C();
  v330 = *(v72 - 8);
  v331 = v72;
  v73 = *(v330 + 64);
  MEMORY[0x28223BE20](v72);
  v300 = &v271 - v74;
  v301 = a28;
  v75 = sub_25F305C1C();
  v328 = *(v75 - 8);
  v329 = v75;
  v76 = *(v328 + 64);
  MEMORY[0x28223BE20](v75);
  v297 = &v271 - v77;
  v298 = a26;
  v78 = sub_25F305C1C();
  v326 = *(v78 - 8);
  v327 = v78;
  v79 = *(v326 + 64);
  MEMORY[0x28223BE20](v78);
  v292 = &v271 - v80;
  v294 = a24;
  v81 = sub_25F305C1C();
  v324 = *(v81 - 8);
  v325 = v81;
  v82 = *(v324 + 64);
  MEMORY[0x28223BE20](v81);
  v289 = &v271 - v83;
  v84 = sub_25F305C1C();
  v273 = *(v84 - 8);
  v85 = *(v273 + 64);
  MEMORY[0x28223BE20](v84);
  v277 = &v271 - v86;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v354 = *(TupleTypeMetadata2 - 8);
  v87 = *(v354 + 64);
  v88 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v323 = &v271 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v373 = &v271 - v90;
  v372 = swift_getTupleTypeMetadata2();
  v351 = *(v372 - 8);
  v91 = *(v351 + 64);
  v92 = MEMORY[0x28223BE20](v372);
  v309 = &v271 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v371 = &v271 - v94;
  v370 = swift_getTupleTypeMetadata2();
  v350 = *(v370 - 8);
  v95 = *(v350 + 64);
  v96 = MEMORY[0x28223BE20](v370);
  v322 = &v271 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v369 = &v271 - v98;
  v368 = swift_getTupleTypeMetadata2();
  v349 = *(v368 - 8);
  v99 = *(v349 + 64);
  v100 = MEMORY[0x28223BE20](v368);
  v321 = &v271 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v367 = &v271 - v102;
  v366 = swift_getTupleTypeMetadata2();
  v348 = *(v366 - 8);
  v103 = *(v348 + 64);
  v104 = MEMORY[0x28223BE20](v366);
  v320 = &v271 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v365 = &v271 - v106;
  v364 = swift_getTupleTypeMetadata2();
  v347 = *(v364 - 8);
  v107 = *(v347 + 64);
  v108 = MEMORY[0x28223BE20](v364);
  v319 = &v271 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108);
  v363 = &v271 - v110;
  v362 = swift_getTupleTypeMetadata2();
  v346 = *(v362 - 8);
  v111 = *(v346 + 64);
  v112 = MEMORY[0x28223BE20](v362);
  v318 = &v271 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  v115 = &v271 - v114;
  v361 = swift_getTupleTypeMetadata2();
  v344 = *(v361 - 8);
  v116 = *(v344 + 64);
  v117 = MEMORY[0x28223BE20](v361);
  v317 = &v271 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v120 = &v271 - v119;
  v121 = v356;
  v122 = swift_getTupleTypeMetadata2();
  v339 = *(v122 - 8);
  v123 = *(v339 + 64);
  v124 = MEMORY[0x28223BE20](v122);
  v276 = &v271 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v124);
  v127 = &v271 - v126;
  v128 = v357;
  v129 = swift_getTupleTypeMetadata2();
  v337 = v129;
  v336 = *(v129 - 8);
  v130 = *(v336 + 64);
  v131 = MEMORY[0x28223BE20](v129);
  v272 = &v271 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v131);
  v134 = &v271 - v133;
  v274 = *(v128 - 8);
  (*(v274 + 16))(&v271 - v133, v278, v128);
  v135 = v273;
  (*(v273 + 16))(&v134[*(v129 + 48)], v338, v84);
  v275 = *(v121 - 8);
  (*(v275 + 16))(v127, v340, v121);
  v340 = v122;
  v136 = *(v122 + 48);
  v137 = *(v324 + 16);
  v338 = v127;
  v137(&v127[v136], v283, v325);
  v278 = *(v358 - 8);
  (*(v278 + 16))(v120, v341);
  v138 = *(v361 + 48);
  v139 = *(v326 + 16);
  v341 = v120;
  v139(&v120[v138], v288, v327);
  v283 = *(v378 - 8);
  (*(v283 + 16))(v115, v345);
  v140 = *(v362 + 48);
  v141 = *(v328 + 16);
  v345 = v115;
  v141(&v115[v140], v290, v329);
  v288 = *(v359 - 8);
  v142 = v363;
  (*(v288 + 16))(v363, v280);
  (*(v330 + 16))(&v142[*(v364 + 48)], v281, v331);
  v290 = *(v377 - 8);
  v143 = v365;
  (*(v290 + 16))(v365, v282);
  (*(v332 + 16))(&v143[*(v366 + 48)], v293, v333);
  v293 = *(v360 - 8);
  v144 = v367;
  (*(v293 + 16))(v367, v284);
  (*(v334 + 16))(&v144[*(v368 + 48)], v296, v335);
  v296 = *(v379 - 1);
  v145 = v369;
  (*(v296 + 16))(v369, v285);
  (*(v342 + 16))(&v145[*(v370 + 48)], v299, v343);
  v299 = *(v380 - 1);
  v146 = v371;
  (*(v299 + 16))(v371, v286);
  (*(v352 + 16))(&v146[*(v372 + 48)], v303, v353);
  v303 = *(v376 - 8);
  v147 = v373;
  (*(v303 + 16))(v373, v287);
  (*(v355 + 16))(&v147[*(TupleTypeMetadata2 + 48)], v302, v375);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F30BAB0;
  *(inited + 32) = (*(v308 + 1))(v357);
  v302 = inited + 32;
  *(inited + 40) = v149;
  v150 = *(v336 + 16);
  v151 = v272;
  v308 = v134;
  v152 = v134;
  v153 = v277;
  v154 = v337;
  v150(v272, v152, v337);
  v155 = *(v154 + 48);
  v156 = v151;
  (*(v135 + 32))(v153, &v151[v155], v84);
  v157 = *(v279 - 8);
  v158 = v279;
  if ((*(v157 + 48))(v153, 1) == 1)
  {
    (*(v274 + 8))(v156, v357);
    (*(v135 + 8))(v153, v84);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v159 = *(a42 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v159(v158, a42);
    (*(v157 + 8))(v153, v158);
    (*(v274 + 8))(v156, v357);
  }

  v357 = a47;
  v160 = v338;
  v161 = v356;
  *(inited + 88) = (*(v291 + 8))(v356);
  *(inited + 96) = v162;
  v163 = v276;
  v164 = v160;
  v165 = v340;
  (*(v339 + 16))(v276, v164, v340);
  v167 = v324;
  v166 = v325;
  v168 = v289;
  (*(v324 + 32))(v289, &v163[*(v165 + 48)], v325);
  v169 = v294;
  v170 = *(v294 - 8);
  if ((*(v170 + 48))(v168, 1, v294) == 1)
  {
    (*(v275 + 8))(v163, v161);
    (*(v167 + 8))(v168, v166);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v171 = *(a44 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v171(v169, a44);
    (*(v170 + 8))(v168, v169);
    (*(v275 + 8))(v163, v356);
  }

  v172 = v292;
  v174 = v326;
  v173 = v327;
  v356 = a49;
  v175 = v341;
  v176 = v358;
  *(inited + 144) = (*(v295 + 8))(v358);
  *(inited + 152) = v177;
  v178 = v317;
  v179 = v175;
  v180 = v361;
  (*(v344 + 16))(v317, v179, v361);
  (*(v174 + 32))(v172, &v178[*(v180 + 48)], v173);
  v181 = v298;
  v182 = *(v298 - 8);
  if ((*(v182 + 48))(v172, 1, v298) == 1)
  {
    (*(v278 + 8))(v178, v176);
    (*(v174 + 8))(v172, v173);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v183 = *(a46 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v183(v181, a46);
    (*(v182 + 8))(v172, v181);
    (*(v278 + 8))(v317, v176);
  }

  v184 = v297;
  v185 = v318;
  v186 = v378;
  v358 = a51;
  v187 = v345;
  *(inited + 200) = (*(v357 + 8))(v378);
  *(inited + 208) = v188;
  v189 = v187;
  v190 = v362;
  (*(v346 + 16))(v185, v189, v362);
  v192 = v328;
  v191 = v329;
  (*(v328 + 32))(v184, &v185[*(v190 + 48)], v329);
  v193 = v301;
  v194 = *(v301 - 8);
  if ((*(v194 + 48))(v184, 1, v301) == 1)
  {
    (*(v283 + 8))(v185, v186);
    (*(v192 + 8))(v184, v191);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v195 = *(a48 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v195(v193, a48);
    (*(v194 + 8))(v184, v193);
    (*(v283 + 8))(v318, v378);
  }

  v196 = v359;
  v198 = v330;
  v197 = v331;
  v199 = v319;
  v359 = a53;
  v200 = v363;
  *(inited + 256) = (*(v356 + 8))(v196);
  *(inited + 264) = v201;
  v202 = v200;
  v203 = v364;
  (*(v347 + 16))(v199, v202, v364);
  v204 = v300;
  (*(v198 + 32))(v300, &v199[*(v203 + 48)], v197);
  v205 = v304;
  v206 = *(v304 - 8);
  if ((*(v206 + 48))(v204, 1, v304) == 1)
  {
    (*(v288 + 8))(v199, v196);
    (*(v198 + 8))(v204, v197);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v207 = *(a50 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v207(v205, a50);
    (*(v206 + 8))(v204, v205);
    (*(v288 + 8))(v319, v196);
  }

  v208 = v305;
  v209 = v320;
  v210 = v377;
  v378 = a55;
  v211 = v365;
  *(inited + 312) = (*(v358 + 8))(v377);
  *(inited + 320) = v212;
  v213 = v211;
  v214 = v366;
  (*(v348 + 16))(v209, v213, v366);
  v216 = v332;
  v215 = v333;
  (*(v332 + 32))(v208, &v209[*(v214 + 48)], v333);
  v217 = v306;
  v218 = *(v306 - 8);
  if ((*(v218 + 48))(v208, 1, v306) == 1)
  {
    (*(v290 + 8))(v209, v210);
    (*(v216 + 8))(v208, v215);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v219 = *(a52 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v219(v217, a52);
    (*(v218 + 8))(v208, v217);
    (*(v290 + 8))(v320, v377);
  }

  v220 = v360;
  v221 = v310;
  v222 = v335;
  v377 = a57;
  v223 = v367;
  *(inited + 368) = (*(v359 + 8))(v360);
  *(inited + 376) = v224;
  v225 = v321;
  v226 = v223;
  v227 = v368;
  (*(v349 + 16))(v321, v226, v368);
  v228 = v334;
  v229 = &v225[*(v227 + 48)];
  v230 = v307;
  (*(v334 + 32))(v307, v229, v222);
  v231 = *(v221 - 8);
  if ((*(v231 + 48))(v230, 1, v221) == 1)
  {
    (*(v293 + 8))(v225, v220);
    (*(v228 + 8))(v230, v222);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v232 = *(a54 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v232(v221, a54);
    (*(v231 + 8))(v230, v221);
    (*(v293 + 8))(v321, v220);
  }

  v233 = v379;
  v234 = v343;
  v235 = v342;
  v360 = a59;
  v236 = v369;
  *(inited + 424) = (*(v378 + 8))(v379);
  *(inited + 432) = v237;
  v238 = v322;
  v239 = v236;
  v240 = v370;
  (*(v350 + 16))(v322, v239, v370);
  v241 = v311;
  (*(v235 + 32))(v311, &v238[*(v240 + 48)], v234);
  v242 = v312;
  v243 = *(v312 - 8);
  if ((*(v243 + 48))(v241, 1, v312) == 1)
  {
    (*(v296 + 8))(v238, v233);
    (*(v235 + 8))(v241, v234);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v244 = *(a56 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    v244(v242, a56);
    (*(v243 + 8))(v241, v242);
    (*(v296 + 8))(v322, v379);
  }

  v245 = v352;
  v246 = v371;
  v247 = v380;
  *(inited + 480) = (*(v377 + 8))(v380);
  *(inited + 488) = v248;
  v249 = v309;
  v250 = v246;
  v251 = v372;
  (*(v351 + 16))(v309, v250, v372);
  v252 = v313;
  v253 = v353;
  (*(v245 + 32))(v313, &v249[*(v251 + 48)], v353);
  v254 = v314;
  v255 = *(v314 - 8);
  if ((*(v255 + 48))(v252, 1, v314) == 1)
  {
    (*(v299 + 8))(v249, v247);
    (*(v245 + 8))(v252, v253);
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    v379 = *(a58 + 24);
    *(inited + 520) = swift_getAssociatedTypeWitness();
    *(inited + 528) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 496));
    (v379)(v254, a58);
    (*(v255 + 8))(v252, v254);
    (*(v299 + 8))(v249, v380);
  }

  v256 = v376;
  v257 = v375;
  v258 = v373;
  *(inited + 536) = (*(v360 + 8))(v376);
  *(inited + 544) = v259;
  v260 = v323;
  v261 = v258;
  v262 = TupleTypeMetadata2;
  (*(v354 + 16))(v323, v261, TupleTypeMetadata2);
  v263 = v355;
  v264 = &v260[*(v262 + 48)];
  v265 = v315;
  (*(v355 + 32))(v315, v264, v257);
  v266 = v316;
  v267 = *(v316 - 8);
  if ((*(v267 + 48))(v265, 1, v316) == 1)
  {
    (*(v303 + 8))(v260, v256);
    (*(v263 + 8))(v265, v257);
    *(inited + 584) = 0;
    *(inited + 552) = 0u;
    *(inited + 568) = 0u;
  }

  else
  {
    v380 = *(a60 + 24);
    *(inited + 576) = swift_getAssociatedTypeWitness();
    *(inited + 584) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 552));
    (v380)(v266, a60);
    (*(v267 + 8))(v265, v266);
    (*(v303 + 8))(v323, v256);
  }

  v268 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v269 = sub_25F252D8C(v268);

  (*(v354 + 8))(v373, TupleTypeMetadata2);
  (*(v351 + 8))(v371, v372);
  (*(v350 + 8))(v369, v370);
  (*(v349 + 8))(v367, v368);
  (*(v348 + 8))(v365, v366);
  (*(v347 + 8))(v363, v364);
  (*(v346 + 8))(v345, v362);
  (*(v344 + 8))(v341, v361);
  (*(v339 + 8))(v338, v340);
  (*(v336 + 8))(v308, v337);
  return v269;
}

uint64_t PropertyList.unarchiveOptionalValue<A>(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (!*(v10 + 16))
  {

    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  v15 = sub_25F219234(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  sub_25F1B7118(*(v10 + 56) + 32 * v15, v19);
  sub_25F1B707C(v19, v20);
  *&v19[0] = v10;
  sub_25F253DB0(v20, a1, a2, a3, a4);
  result = __swift_destroy_boxed_opaque_existential_1(v20);
  if (!v5)
  {
    return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
  }

  return result;
}

uint64_t PropertyListRepresentable.init(propertyList:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v31 = *(a2 - 8);
  v4 = *(v31 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = &v31 - v8;
  v34 = v9;
  v36 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_25F305C1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  v25 = *a1;
  v37[0] = v25;

  if (swift_dynamicCast())
  {

    (*(v18 + 56))(v17, 0, 1, AssociatedTypeWitness);
    (*(v18 + 32))(v24, v17, AssociatedTypeWitness);
    (*(v18 + 16))(v22, v24, AssociatedTypeWitness);
    v26 = v35;
    v27 = v7;
    v28 = v36;
    (*(v34 + 32))(v22, v36);
    if (v26)
    {
      return (*(v18 + 8))(v24, AssociatedTypeWitness);
    }

    (*(v18 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    (*(v18 + 56))(v17, 1, 1, AssociatedTypeWitness);
    (*(v13 + 8))(v17, v12);
    v37[6] = v25;
    v37[3] = MEMORY[0x277D837D0];
    v37[4] = &protocol witness table for String;
    v37[0] = 0x65756C6176;
    v37[1] = 0xE500000000000000;
    v27 = v33;
    v30 = v35;
    v28 = v36;
    PropertyList.unarchiveValue<A>(for:)(v37, v36, v34, v33);
    __swift_destroy_boxed_opaque_existential_1(v37);

    if (v30)
    {
      return result;
    }
  }

  return (*(v31 + 32))(v32, v27, v28);
}

uint64_t sub_25F251ED8(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0x65756C6176;
  a1[1] = 0xE500000000000000;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2[3] = AssociatedTypeWitness;
  a2[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(boxed_opaque_existential_1, a3, AssociatedTypeWitness);
}

uint64_t sub_25F251FB8(void *a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_25F251ED8(a1, a2, v2[4]);
}

uint64_t sub_25F251FC4@<X0>(void (*a1)(void *, uint64_t *)@<X0>, void *a2@<X8>)
{
  a1(v14, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  v4 = v14[1];
  *(inited + 32) = v14[0];
  *(inited + 40) = v4;
  sub_25F1B7174(v14, &v10, &qword_27FD52C88, &qword_25F308140);
  v5 = v13;
  v6 = v12;
  *(inited + 48) = v11;
  *(inited + 64) = v6;
  *(inited + 80) = v5;

  v7 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  sub_25F1AF698(inited + 32, &qword_27FD52C88, &qword_25F308140);
  v8 = sub_25F252D8C(v7);

  sub_25F252514(v8, &v10);
  result = sub_25F1AF698(v14, &qword_27FD52C88, &qword_25F308140);
  *a2 = v10;
  return result;
}

uint64_t PropertyList.init<A>(content:)@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD567F8, &qword_25F3103C0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - v15;
  a1(&v25 - v15, &v25 + *(v14 + 48) - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = (*(a3 + 8))(a2, a3);
  *(inited + 40) = v18;
  (*(v9 + 16))(v13, v16, TupleTypeMetadata2);
  v19 = &v13[*(TupleTypeMetadata2 + 48)];
  v20 = *v19;
  v21 = *(v19 + 1);
  *(inited + 80) = *(v19 + 4);
  *(inited + 48) = v20;
  *(inited + 64) = v21;
  (*(*(a2 - 8) + 8))(v13, a2);
  v22 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  sub_25F1AF698(inited + 32, &qword_27FD52C88, &qword_25F308140);
  v23 = sub_25F252D8C(v22);

  sub_25F252514(v23, &v26);
  result = (*(v9 + 8))(v16, TupleTypeMetadata2);
  *a4 = v26;
  return result;
}

uint64_t sub_25F2523C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_25F2523D4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_25F2523E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_25F1B70AC(v2, v3);
}

__n128 sub_25F2523EC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_25F2523F8@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

float sub_25F252404@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_25F252410@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t static PropertyList.empty.getter@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F1B5EF0(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_25F252514@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C90, &qword_25F308148);
  result = sub_25F30632C();
  v4 = result;
  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v30 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = v15[1];
      v31 = *v15;
      sub_25F1BF03C(*(a1 + 56) + 40 * v14, v40);
      sub_25F1BF03C(v40, &v35);
      v32 = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56800, &qword_25F3103C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
      if (swift_dynamicCast())
      {
        sub_25F1A42F8(v33, v37);
        v17 = v4;
        v18 = a1;
        v20 = v38;
        v19 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v21 = v20;
        a1 = v18;
        v4 = v17;
        (*(v19 + 8))(&v35, v21, v19);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        sub_25F1AF698(v33, &qword_27FD56808, &qword_25F3103D0);
        v22 = v41;
        v23 = __swift_project_boxed_opaque_existential_1(v40, v41);
        v36 = v22;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
        (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v23, v22);
      }

      __swift_destroy_boxed_opaque_existential_1(v40);
      *(v30 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v25 = (v4[6] + 16 * v14);
      *v25 = v31;
      v25[1] = v32;
      result = sub_25F1B707C(&v35, (v4[7] + 32 * v14));
      v26 = v4[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v4[2] = v28;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        *a2 = v4;
        return result;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PropertyList.init<A, B>(content:)@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v51 = a4;
  v49 = a6;
  v10 = sub_25F305C1C();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = *(TupleTypeMetadata2 - 8);
  v15 = *(v52 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  a1(&v41 - v20, &v41 + *(v19 + 48) - v20);
  v50 = a5;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = sub_25F305C1C();
  v23 = swift_getTupleTypeMetadata2();
  sub_25F3064EC();
  v24 = *(*(v23 - 8) + 72);
  v25 = *(*(v23 - 8) + 80);
  swift_allocObject();
  v26 = sub_25F30527C();
  v28 = v27;
  v42 = *(v23 + 48);
  v43 = v26;
  v29 = *(v51 + 8);
  v47 = a2;
  v30 = v29(a2);
  v31 = v44;
  *v28 = v30;
  v28[1] = v32;
  (*(v52 + 16))(v18, v21, TupleTypeMetadata2);
  v48 = TupleTypeMetadata2;
  (*(v31 + 32))(v13, &v18[*(TupleTypeMetadata2 + 48)], v10);
  v33 = *(v22 - 8);
  if ((*(v33 + 48))(v13, 1, v22) == 1)
  {
    v34 = v47;
    (*(*(v47 - 8) + 8))(v18, v47);
    (*(v31 + 8))(v13, v10);
    (*(*(AssociatedTypeWitness - 8) + 56))(v28 + v42, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v35 = v42;
    (*(v50 + 24))(v22);
    (*(v33 + 8))(v13, v22);
    (*(*(AssociatedTypeWitness - 8) + 56))(v28 + v35, 0, 1, AssociatedTypeWitness);
    v34 = v47;
    (*(*(v47 - 8) + 8))(v18, v47);
  }

  v36 = v43;
  sub_25F1F7314();
  sub_25F1CCBBC(v36, MEMORY[0x277D837D0], v46, MEMORY[0x277D837E0]);

  MEMORY[0x28223BE20](v37);
  *(&v41 - 4) = v34;
  *(&v41 - 3) = v22;
  v38 = v50;
  *(&v41 - 2) = v51;
  *(&v41 - 1) = v38;
  sub_25F304ABC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56800, &qword_25F3103C8);
  v39 = sub_25F30628C();

  sub_25F252514(v39, &v53);
  result = (*(v52 + 8))(v21, v48);
  *v49 = v53;
  return result;
}

uint64_t sub_25F252D8C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_25F1B7174(*(a1 + 56) + 40 * v11, v40, &qword_27FD567F8, &qword_25F3103C0);
      *&v39 = v14;
      *(&v39 + 1) = v13;
      v35 = v39;
      v36 = v40[0];
      v37 = v40[1];
      v38 = v41;
      sub_25F1B7174(&v36, &v28, &qword_27FD567F8, &qword_25F3103C0);
      if (v29)
      {
        break;
      }

      sub_25F1AF698(&v35, &qword_27FD56868, &qword_25F310B90);
      result = sub_25F1AF698(&v28, &qword_27FD567F8, &qword_25F3103C0);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    sub_25F1A42F8(&v28, v34);
    v31 = v35;
    v32[0] = v36;
    v32[1] = v37;
    v33 = v38;
    sub_25F1A42F8(v34, v30);
    v15 = *(v1 + 16);
    if (*(v1 + 24) <= v15)
    {

      sub_25F21A1F4(v15 + 1, 1);
      v1 = v42;
    }

    else
    {
    }

    v16 = v31;
    v17 = *(v1 + 40);
    sub_25F30671C();
    sub_25F304F0C();
    result = sub_25F30676C();
    v18 = v1 + 64;
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v18 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v1 + 48) + 16 * v22) = v16;
    sub_25F1A42F8(v30, *(v1 + 56) + 40 * v22);
    ++*(v1 + 16);
    result = sub_25F1AF698(v32, &qword_27FD567F8, &qword_25F3103C0);
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25F2530B0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(*(a1 + 56) + 8 * v11);
        if (v12)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v14 = (*(a1 + 48) + 16 * v11);
      v28 = v14[1];
      v29 = *v14;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_25F21A4B8(v15 + 1, 1);
        v2 = v30;
      }

      else
      {
      }

      v16 = *(v2 + 40);
      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v28;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (*(v2 + 48) + 16 * v21);
      *v27 = v29;
      v27[1] = v22;
      *(*(v2 + 56) + 8 * v21) = v12;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v28;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25F253300(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550E8, &unk_25F310BB0);
    v2 = sub_25F30634C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56878, &qword_25F310B98);
        v27 = sub_25F267BBC();
        *&v25 = v19;
        sub_25F1A42F8(&v25, v29);
        sub_25F1A42F8(v29, v30);
        sub_25F1A42F8(v30, &v28);

        result = sub_25F219234(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_25F1A42F8(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_25F1A42F8(&v28, v2[7] + 40 * result);
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t PropertyList.archiveValue<A>(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_25F305C1C();
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v47 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  (*(v8 + 16))(v11, a1, v7);
  v22 = *(a3 - 8);
  v23 = 1;
  if ((*(v22 + 48))(v11, 1, a3) == 1)
  {
    a3 = v7;
  }

  else
  {
    (*(a4 + 24))(a3, a4);
    v23 = 0;
    v8 = v22;
  }

  (*(v8 + 8))(v11, a3);
  v24 = *(AssociatedTypeWitness - 8);
  v24[7](v21, v23, 1, AssociatedTypeWitness);
  v26 = v49;
  v25 = v50;
  v27 = *(v49 + 16);
  v27(v19, v21, v50);
  v28 = v24[6];
  if ((v28)(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v26 + 8))(v19, v25);
LABEL_9:
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v29 = v47;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v29 = v47;
  if (*(&v52 + 1))
  {
    sub_25F1A42F8(&v51, &v54);
    v30 = v48[3];
    v31 = v48[4];
    __swift_project_boxed_opaque_existential_1(v48, v30);
    v32 = (*(v31 + 8))(v30, v31);
    v34 = v33;
    v35 = *(&v55 + 1);
    v36 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    (*(v36 + 8))(&v51, v35, v36);
    sub_25F24DE38(&v51, v32, v34);
    (*(v49 + 8))(v21, v50);
    return __swift_destroy_boxed_opaque_existential_1(&v54);
  }

LABEL_10:
  v47 = v24;
  sub_25F1AF698(&v51, &qword_27FD56808, &qword_25F3103D0);
  v38 = v48[3];
  v39 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v38);
  v40 = (*(v39 + 8))(v38, v39);
  v42 = v41;
  v43 = v50;
  v27(v29, v21, v50);
  if ((v28)(v29, 1, AssociatedTypeWitness) == 1)
  {
    v44 = v49;
    (*(v49 + 8))(v29, v43);
    v54 = 0u;
    v55 = 0u;
  }

  else
  {
    *(&v55 + 1) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
    v47[4](boxed_opaque_existential_1, v29, AssociatedTypeWitness);
    v44 = v49;
  }

  sub_25F24DE38(&v54, v40, v42);
  return (*(v44 + 8))(v21, v43);
}

uint64_t PropertyList.merging(_:uniquingKeysWith:)@<X0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr, id *, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  v10 = *v4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F266750(v9, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, a2, a3);
  result = v10;
  if (v5)
  {
  }

  *a4 = v10;
  return result;
}

PreviewsFoundationOS::PropertyList __swiftcall PropertyList.confidentlyMerging(_:)(PreviewsFoundationOS::PropertyList a1)
{
  v3 = v1;
  v4 = *a1.serializableDictionary._rawValue;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_25F2670B8(v4, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, &v8, xmmword_25F310320, v5, v4, "confidentlyMerging(_:)", 22);

  result.serializableDictionary._rawValue = v8;
  *v3 = v8;
  return result;
}

uint64_t PropertyList.merge(_:uniquingKeysWith:)(uint64_t *a1, void (*a2)(_OWORD *__return_ptr, id *, uint64_t *), uint64_t a3)
{
  v6 = *a1;

  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  *v3 = 0x8000000000000000;
  sub_25F266750(v6, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, a2, a3);
  v9 = *v3;

  *v3 = v11;
  return result;
}

Swift::Void __swiftcall PropertyList.confidentlyMerge(_:)(PreviewsFoundationOS::PropertyList a1)
{
  v2 = *a1.serializableDictionary._rawValue;
  v3 = *v1;
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  *v1 = 0x8000000000000000;
  sub_25F2670B8(v2, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, &v7, xmmword_25F310330, v3, v2, "confidentlyMerge(_:)", 20);

  v5 = v7;
  v6 = *v1;

  *v1 = v5;
}

uint64_t *sub_25F253DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  v19 = *v5;
  v20 = swift_conformsToProtocol2();
  if (AssociatedTypeWitness && (v21 = v20) != 0)
  {
    v30 = a3;
    v31 = a4;
    sub_25F1BF03C(a2, &v36);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    sub_25F1A42F8(&v36, v22 + 24);
    v23 = sub_25F1B7118(a1, v35);
    MEMORY[0x28223BE20](v23);
    *(&v30 - 2) = sub_25F202658;
    *(&v30 - 1) = v22;
    v24 = *(v21 + 16);
    v37 = AssociatedTypeWitness;
    v38 = v21;
    __swift_allocate_boxed_opaque_existential_1(&v36);

    v25 = v39;
    v24(v35, sub_25F267CC4, &v30 - 4, AssociatedTypeWitness, v21);

    if (v25)
    {
      return __swift_deallocate_boxed_opaque_existential_1(&v36);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
    swift_dynamicCast();
    a3 = v30;
    a4 = v31;
    v28 = v34;
  }

  else
  {
    *&v36 = v19;
    v27 = v39;
    result = sub_25F2541EC(a1, a2, AssociatedTypeWitness, v16);
    if (v27)
    {
      return result;
    }

    v28 = v34;
    (*(v34 + 32))(v18, v16, AssociatedTypeWitness);
  }

  v29 = v32;
  (*(v28 + 16))(v32, v18, AssociatedTypeWitness);
  (*(a4 + 32))(v29, a3, a4);
  return (*(v28 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_25F2540F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  sub_25F1BF03C(a4, a5 + 8);
  sub_25F1B7118(a1, a5 + 48);
  sub_25F1B7118(a2, a5 + 80);
  *(a5 + 112) = 2;
}

__n128 sub_25F254168(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr))
{
  a3(v10);
  sub_25F202604();
  swift_allocError();
  v3 = v10[3];
  v4 = v10[1];
  v5 = v10[0];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = v3;
  *v6 = v5;
  *(v6 + 16) = v4;
  result = v10[6];
  v8 = v10[5];
  v9 = v10[4];
  *(v6 + 112) = v11;
  *(v6 + 80) = v8;
  *(v6 + 96) = result;
  *(v6 + 64) = v9;
  return result;
}

uint64_t sub_25F2541EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-v11];
  v13 = *v4;
  sub_25F1B7118(a1, v20);
  v14 = swift_dynamicCast();
  v15 = *(*(a3 - 8) + 56);
  if (v14)
  {
    v16 = *(a3 - 8);
    v15(v12, 0, 1, a3);
    return (*(v16 + 32))(a4, v12, a3);
  }

  else
  {
    v15(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    sub_25F202604();
    swift_allocError();
    v19 = v18;
    *v18 = v13;
    sub_25F1BF03C(v21, (v18 + 1));
    sub_25F1B7118(a1, (v19 + 6));
    v19[13] = swift_getMetatypeMetadata();
    v19[10] = a3;
    *(v19 + 112) = 1;
    swift_willThrow();
  }
}

uint64_t sub_25F254428()
{
  sub_25F267A3C(v0, v17);
  if (v21 > 1u)
  {
    if (v21 != 2)
    {
      sub_25F1B707C(v17, v14);
      sub_25F1B707C(&v18, &v15);
      *&v13[0] = 0;
      *(&v13[0] + 1) = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0xD000000000000044, 0x800000025F3195B0);
      sub_25F30619C();
      MEMORY[0x25F8D7130](0x6D656D206F6E203ALL, 0xAF9D80E220726562);
      sub_25F30619C();
      MEMORY[0x25F8D7130](10322146, 0xA300000000000000);
      v4 = 0;
      goto LABEL_9;
    }

    sub_25F1A42F8((v17 + 8), v14);
    sub_25F1B707C(v19, &v15);
    sub_25F1B707C(v20, v13);
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0x100000000000002ALL, 0x800000025F319600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56848, &qword_25F310B78);
    sub_25F30619C();
    MEMORY[0x25F8D7130](0x9D80E2203A9D80E2, 0xA800000000000000);
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    swift_getDynamicType();
    v5 = sub_25F30685C();
    MEMORY[0x25F8D7130](v5);

    v6 = 0x1000000000000022;
    v7 = 0x800000025F319630;
LABEL_7:
    MEMORY[0x25F8D7130](v6, v7);
    sub_25F30619C();
    MEMORY[0x25F8D7130](0xD000000000000010, 0x800000025F319660);
    v9 = sub_25F304A7C();
    v11 = v10;

    MEMORY[0x25F8D7130](v9, v11);

    v4 = 0;
    __swift_destroy_boxed_opaque_existential_1(v13);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(&v15);
    goto LABEL_10;
  }

  if (v21)
  {
    sub_25F1A42F8((v17 + 8), v14);
    sub_25F1B707C(v19, &v15);
    sub_25F1B707C(v20, v13);
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0x1000000000000031, 0x800000025F319680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56848, &qword_25F310B78);
    sub_25F30619C();
    MEMORY[0x25F8D7130](0x6C6176203A9D80E2, 0xAF20736177206575);
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    swift_getDynamicType();
    v8 = sub_25F30685C();
    MEMORY[0x25F8D7130](v8);

    v6 = 0x746365707865202CLL;
    v7 = 0xEB00000000206465;
    goto LABEL_7;
  }

  sub_25F1A42F8((v17 + 8), v14);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0x1000000000000030, 0x800000025F3196C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56848, &qword_25F310B78);
  sub_25F30619C();
  MEMORY[0x25F8D7130](0x1000000000000013, 0x800000025F319700);
  v1 = sub_25F304A7C();
  v3 = v2;

  MEMORY[0x25F8D7130](v1, v3);

  v4 = v15;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v4;
}

uint64_t sub_25F254958@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *, uint64_t *)@<X1>, void *a3@<X8>)
{
  sub_25F1B7118(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a3 = v7[5];
  }

  else
  {
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54970, &unk_25F30C4E0);
    v7[0] = &type metadata for PropertyList;
    a2(a1, v7);
    __swift_destroy_boxed_opaque_existential_1(v7);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_25F254A4C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
  *a1 = v3;
}

uint64_t sub_25F254AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[5] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v5 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_25F1C1AC4(sub_25F267B48, v10, v5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56850, &qword_25F310B80);
  a4[3] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_25F254B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = *(v6 + 16);
  v9(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
  if (swift_dynamicCast())
  {
    sub_25F1A42F8(v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v11 + 8))(v10, v11);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_25F1AF698(v14, &qword_27FD56808, &qword_25F3103D0);
    a3[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v9)(boxed_opaque_existential_1, a1, a2);
  }
}

uint64_t sub_25F254D18(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  sub_25F1B7118(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56850, &qword_25F310B80);
  if (!swift_dynamicCast())
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56878, &qword_25F310B98);
    v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56880, &qword_25F310BA0);
    v42[0] = v15;
    a2(&v34, a1, v42);
    sub_25F202604();
    swift_allocError();
    v16 = v37;
    v18 = v34;
    v17 = v35;
    *(v19 + 32) = v36;
    *(v19 + 48) = v16;
    *v19 = v18;
    *(v19 + 16) = v17;
    v20 = v40;
    v22 = v38;
    v21 = v39;
    *(v19 + 112) = v41;
    *(v19 + 80) = v21;
    *(v19 + 96) = v20;
    *(v19 + 64) = v22;
    __swift_destroy_boxed_opaque_existential_1(v42);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_13:

    return v3;
  }

  v7 = v42[0];
  v8 = *(v42[0] + 16);
  if (!v8)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);

    return MEMORY[0x277D84F90];
  }

  v30 = a2;
  v31 = a1;
  v42[6] = a3;
  v33 = MEMORY[0x277D84F90];
  result = sub_25F1BD028(0, v8, 0);
  v10 = 0;
  v3 = v33;
  v11 = v7 + 32;
  while (v10 < *(v7 + 16))
  {
    sub_25F1B7118(v11, v42);
    sub_25F1B7118(v42, &v34);
    if (!swift_dynamicCast())
    {
      v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56888, &qword_25F310BA8);
      v32[0] = MEMORY[0x277D84CC0];
      v30(&v34, v42, v32);
      sub_25F202604();
      swift_allocError();
      v23 = v37;
      v25 = v34;
      v24 = v35;
      *(v26 + 32) = v36;
      *(v26 + 48) = v23;
      *v26 = v25;
      *(v26 + 16) = v24;
      v27 = v40;
      v29 = v38;
      v28 = v39;
      *(v26 + 112) = v41;
      *(v26 + 80) = v28;
      *(v26 + 96) = v27;
      *(v26 + 64) = v29;
      __swift_destroy_boxed_opaque_existential_1(v32);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v42);

      goto LABEL_13;
    }

    v12 = v32[0];
    result = __swift_destroy_boxed_opaque_existential_1(v42);
    v33 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_25F1BD028((v13 > 1), v14 + 1, 1);
      v3 = v33;
    }

    ++v10;
    *(v3 + 16) = v14 + 1;
    *(v3 + 4 * v14 + 32) = v12;
    v11 += 32;
    if (v8 == v10)
    {

      __swift_destroy_boxed_opaque_existential_1(v31);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F25506C(uint64_t *a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25F1B7118(a1, v18);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56850, &qword_25F310B80);
  v11 = swift_dynamicCast();
  if (v11)
  {
    v17[1] = v17;
    v18[0] = v19;
    MEMORY[0x28223BE20](v11);
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a2;
    v16[5] = a3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    v13 = sub_25F267AE4();
    v14 = sub_25F1C1AC4(sub_25F267AC0, v16, v10, a4, v12, v13, MEMORY[0x277D84950], &v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = sub_25F30539C();
    v18[3] = swift_getMetatypeMetadata();
    v18[0] = v14;
    a2(a1, v18);
    __swift_destroy_boxed_opaque_existential_1(v18);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

uint64_t sub_25F255224@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a5;
  v29 = a2;
  v7 = v6;
  v34 = a3;
  v27 = a6;
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  v16 = *(a4 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v13);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_conformsToProtocol2();
  if (!v20 || !a4)
  {
    sub_25F1B7118(a1, v31);
    v24 = swift_dynamicCast();
    v25 = v16[7];
    if (v24)
    {
      v25(v15, 0, 1, a4);
      v26 = v16[4];
      v26(v19, v15, a4);
      return (v26)(v27, v19, a4);
    }

    v25(v15, 1, 1, a4);
    (*(v11 + 8))(v15, v10);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v31[0] = a4;
    v7 = v29(a1, v31);
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = swift_willThrow();
    goto LABEL_8;
  }

  v21 = v20;
  sub_25F1B7118(a1, v30);
  v22 = *(v21 + 16);
  MetatypeMetadata = a4;
  v33 = v21;
  __swift_allocate_boxed_opaque_existential_1(v31);
  v22(v30, v29, v34, a4, v21);
  if (v6)
  {
    result = __swift_deallocate_boxed_opaque_existential_1(v31);
LABEL_8:
    *v28 = v7;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
  return swift_dynamicCast();
}

uint64_t sub_25F255538@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_25F25506C(a1, a2, a3, *(a4 + 16), *(a5 - 8));
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_25F25556C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F304B2C();
  result = sub_25F304B4C();
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_25F255614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = *(v6 + 16);
  v9(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
  if (swift_dynamicCast())
  {
    sub_25F1A42F8(v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v11 + 8))(v10, v11);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_25F1AF698(v14, &qword_27FD56808, &qword_25F3103D0);
    a3[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v9)(boxed_opaque_existential_1, a1, a2);
  }
}

uint64_t sub_25F2557A8(uint64_t *a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[1] = a8;
  sub_25F1B7118(a1, v15);
  v10 = MEMORY[0x277D84F70];
  sub_25F304B4C();
  v11 = swift_dynamicCast();
  if (v11)
  {
    v14[0] = v14;
    MEMORY[0x28223BE20](v11);
    v10 = sub_25F304B2C();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = sub_25F304B4C();
    v15[3] = swift_getMetatypeMetadata();
    v15[0] = v12;
    a2(a1, v15);
    __swift_destroy_boxed_opaque_existential_1(v15);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t *sub_25F255944@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a3;
  v26 = a5;
  v27 = a2;
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  v14 = *(a4 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_conformsToProtocol2();
  if (v18 && a4)
  {
    v19 = v18;
    sub_25F1B7118(a1, v28);
    v20 = *(v19 + 16);
    MetatypeMetadata = a4;
    v31 = v19;
    __swift_allocate_boxed_opaque_existential_1(v29);
    v20(v28, v27, v32, a4, v19);
    if (v5)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v29);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
      return swift_dynamicCast();
    }
  }

  else
  {
    sub_25F1B7118(a1, v29);
    v22 = swift_dynamicCast();
    v23 = v14[7];
    if (v22)
    {
      v23(v13, 0, 1, a4);
      v24 = v14[4];
      v24(v17, v13, a4);
      return (v24)(v26, v17, a4);
    }

    else
    {
      v23(v13, 1, 1, a4);
      (*(v9 + 8))(v13, v8);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v29[0] = a4;
      v27(a1, v29);
      __swift_destroy_boxed_opaque_existential_1(v29);
      return swift_willThrow();
    }
  }
}

uint64_t sub_25F255C34@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  v6 = *v3;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  return sub_25F25556C(a1);
}

uint64_t sub_25F255C4C@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_25F2557A8(a1, a2, a3, a4[2], a4[3], *(a5 - 8), a4[4], *(a5 - 16));
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_25F255C88(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25F1BD028(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25F1BD028((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t Array<A>.propertyListValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v3 = sub_25F30539C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return sub_25F1C1AC4(sub_25F267450, v8, v3, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
}

uint64_t Array<A>.init(propertyListValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25F266CCC(a1, a2, a3);

  return v3;
}

uint64_t sub_25F255E50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1);
  result = (*(a3 + 32))(v12, a2, a3);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_25F255F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array<A>.propertyListValue.getter(*v3, *(a1 + 16), *(a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_25F255FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_25F266CCC(*a1, *(a2 + 16), *(a3 - 8));

  if (!v4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t Set<>.propertyListValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a1;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v4 = sub_25F3056FC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return sub_25F1C1AC4(sub_25F267FA4, v9, v4, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
}

uint64_t Set<>.init(propertyListValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  swift_getAssociatedTypeWitness();
  v6 = sub_25F30539C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25F1C1AC4(sub_25F267494, v11, v6, a2, v7, WitnessTable, MEMORY[0x277D84950], &v12);

  if (!v4)
  {
    v13 = v9;
    sub_25F30539C();
    swift_getWitnessTable();
    return sub_25F30570C();
  }

  return result;
}

uint64_t sub_25F256230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v14 + 16))(v16 - v12, a1);
  result = (*(a3 + 32))(v13, a2, a3);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_25F256358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Set<>.propertyListValue.getter(*v3, *(a1 + 16), *(a2 - 8), *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t sub_25F256390@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.init(propertyListValue:)(*a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Dictionary<>.propertyListValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a7;
  v13[8] = sub_25F2674B8;
  v13[9] = &v14;
  v8 = sub_25F304B4C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return Sequence.keyedMap<A, B>(_:)(sub_25F26753C, v13, v8, AssociatedTypeWitness, v10, WitnessTable, a7);
}

uint64_t Dictionary<>.init(propertyListValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_25F266B8C(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

uint64_t sub_25F256538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a4;
  v25 = a2;
  v26 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v13 = *(v23 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v23 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  (*(v20 + 16))(&v23 - v18, a3);
  v21 = v27;
  result = (*(a7 + 32))(v19, a5, a7);
  if (!v21)
  {
    (*(v23 + 16))(v15, v24, AssociatedTypeWitness);
    return (*(a9 + 32))(v15);
  }

  return result;
}

uint64_t sub_25F256780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a4(a1, a2, a3, a3 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_25F256868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Dictionary<>.propertyListValue.getter(*v3, a1[2], a1[3], *(a2 - 8), a1[4], *(a2 - 16), *(a2 - 24));
  *a3 = result;
  return result;
}

uint64_t sub_25F2568A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_25F266B8C(*a1, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16), *(a3 - 24));

  if (!v4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t sub_25F25690C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 121;
  }

  else
  {
    v2 = 120;
  }

  if (*a2)
  {
    v3 = 121;
  }

  else
  {
    v3 = 120;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F30659C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F256978()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F2569D4()
{
  *v0;
  sub_25F304F0C();
}

uint64_t sub_25F256A14()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

void sub_25F256A78(uint64_t *a1@<X8>)
{
  v2 = 120;
  if (*v1)
  {
    v2 = 121;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_25F256A94()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v62 = a6;
  v68 = a4;
  v78 = a3;
  v74 = a2;
  v73 = a1;
  v66 = a11;
  v69 = a9;
  v72 = a8;
  v14 = sub_25F305C1C();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x28223BE20](v14);
  v70 = &v59 - v16;
  v17 = sub_25F305C1C();
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v17);
  v61 = &v59 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = *(TupleTypeMetadata2 - 8);
  v21 = *(v71 + 64);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v75 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v59 - v24;
  v26 = swift_getTupleTypeMetadata2();
  v77 = *(v26 - 8);
  v27 = *(v77 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v59 - v31;
  v63 = *(a5 - 8);
  (*(v63 + 16))(&v59 - v31, v73, a5);
  v33 = v60;
  (*(v60 + 16))(&v32[*(v26 + 48)], v74, v17);
  v65 = *(a7 - 8);
  v34 = *(v65 + 16);
  v74 = a7;
  v34(v25, v78, a7);
  v73 = TupleTypeMetadata2;
  v35 = *(TupleTypeMetadata2 + 48);
  v36 = *(v76 + 16);
  v78 = v25;
  v37 = v68;
  v68 = v14;
  v36(&v25[v35], v37, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081E0;
  *(inited + 32) = (*(v69 + 8))(a5);
  v64 = inited + 32;
  *(inited + 40) = v39;
  v40 = v62;
  v41 = *(v77 + 16);
  v67 = v32;
  v41(v30, v32, v26);
  v69 = v26;
  v42 = v61;
  (*(v33 + 32))(v61, &v30[*(v26 + 48)], v17);
  v43 = *(v40 - 8);
  if ((*(v43 + 48))(v42, 1, v40) == 1)
  {
    (*(v63 + 8))(v30, a5);
    (*(v33 + 8))(v42, v17);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v44 = *(a10 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v44(v40, a10);
    (*(v43 + 8))(v42, v40);
    (*(v63 + 8))(v30, a5);
  }

  v45 = v78;
  v46 = v74;
  *(inited + 88) = (*(v66 + 8))(v74);
  *(inited + 96) = v47;
  v48 = v71;
  v49 = v75;
  v50 = v73;
  (*(v71 + 16))(v75, v45, v73);
  v51 = v76;
  v52 = v70;
  v53 = v68;
  (*(v76 + 32))(v70, &v49[*(v50 + 48)], v68);
  v54 = v72;
  v55 = *(v72 - 8);
  if ((*(v55 + 48))(v52, 1, v72) == 1)
  {
    (*(v65 + 8))(v49, v46);
    (*(v51 + 8))(v52, v53);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v76 = *(a12 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    (v76)(v54, a12);
    (*(v55 + 8))(v52, v54);
    (*(v65 + 8))(v75, v46);
  }

  v56 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v57 = sub_25F252D8C(v56);

  (*(v48 + 8))(v78, v50);
  (*(v77 + 8))(v67, v69);
  return v57;
}

CGPoint __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGPoint.init(propertyListValue:)(PreviewsFoundationOS::PropertyList propertyListValue)
{
  sub_25F266FF4(propertyListValue.serializableDictionary._rawValue, &_s3KeyON_0, &off_287164628);
  result.y = v2;
  result.x = v1;
  return result;
}

uint64_t sub_25F2573C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746867696568;
  }

  else
  {
    v4 = 0x6874646977;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x746867696568;
  }

  else
  {
    v6 = 0x6874646977;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F30659C();
  }

  return v9 & 1;
}

uint64_t sub_25F257460()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F2574DC()
{
  *v0;
  sub_25F304F0C();
}

uint64_t sub_25F257544()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

void sub_25F2575C8(uint64_t *a1@<X8>)
{
  v2 = 0x6874646977;
  if (*v1)
  {
    v2 = 0x746867696568;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F257600()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_25F257658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = sub_25F257694(a1, a2, a3, a4, a6, a7);
  result = sub_25F252514(v8, &v10);
  *a5 = v10;
  return result;
}

uint64_t sub_25F257694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v13 = MEMORY[0x277D85048];
  *(inited + 72) = MEMORY[0x277D85048];
  *(inited + 80) = &protocol witness table for CGFloat;
  *(inited + 48) = a5;
  *(inited + 88) = a3;
  *(inited + 96) = a4;
  *(inited + 128) = v13;
  *(inited + 136) = &protocol witness table for CGFloat;
  *(inited + 104) = a6;
  v14 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v15 = sub_25F252D8C(v14);

  return v15;
}

CGSize __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGSize.init(propertyListValue:)(PreviewsFoundationOS::PropertyList propertyListValue)
{
  sub_25F266FF4(propertyListValue.serializableDictionary._rawValue, &_s3KeyON, &off_287164618);
  result.height = v2;
  result.width = v1;
  return result;
}

uint64_t sub_25F2577E0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v7 = sub_25F257694(a1, a2, a3, a4, *v5, v5[1]);
  result = sub_25F252514(v7, &v9);
  *a5 = v9;
  return result;
}

uint64_t sub_25F257858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  result = sub_25F266FF4(a1, a2, a3);
  if (!v4)
  {
    *a4 = v7;
    a4[1] = v8;
  }

  return result;
}

uint64_t CGRect.propertyListValue.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v8 = sub_25F257694(120, 0xE100000000000000, 121, 0xE100000000000000, a2, a3);
  sub_25F252514(v8, &v14);
  v9 = v14;
  v10 = sub_25F257694(0x6874646977, 0xE500000000000000, 0x746867696568, 0xE600000000000000, a4, a5);
  sub_25F252514(v10, &v14);
  v11 = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_25F2670B8(v11, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, &v14, xmmword_25F310320, v9, v11, "confidentlyMerging(_:)", 22);

  result = swift_bridgeObjectRelease_n();
  *a1 = v14;
  return result;
}

__C::CGRect __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGRect.init(propertyListValue:)(PreviewsFoundationOS::PropertyList propertyListValue)
{
  sub_25F266E90(propertyListValue.serializableDictionary._rawValue);
  if (v1)
  {
    v3 = v2;
    v4 = v2;
    v5 = v2;
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t sub_25F2579F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_25F266E90(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_25F257A28()
{
  sub_25F30671C();
  sub_25F304F0C();
  return sub_25F30676C();
}

uint64_t sub_25F257A84()
{
  sub_25F30671C();
  sub_25F304F0C();
  return sub_25F30676C();
}

uint64_t sub_25F257ACC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F3063BC();

  *a2 = v5 != 0;
  return result;
}

uint64_t audit_token_t.propertyListValue.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v10 = HIDWORD(a1);
  v11 = HIDWORD(a2);
  v12 = HIDWORD(a3);
  v13 = HIDWORD(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E00, &qword_25F308450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310340;
  *(inited + 32) = v8;
  *(inited + 36) = v10;
  *(inited + 40) = v7;
  *(inited + 44) = v11;
  *(inited + 48) = v6;
  *(inited + 52) = v12;
  *(inited + 56) = v5;
  *(inited + 60) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56818, &qword_25F3103E0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_25F3077D0;
  *(v15 + 32) = 7102838;
  *(v15 + 40) = 0xE300000000000000;
  *(v15 + 48) = sub_25F255C88(inited);
  v16 = sub_25F1B5BC8(v15);
  swift_setDeallocating();
  sub_25F1AF698(v15 + 32, &qword_27FD56820, &qword_25F3103E8);
  v17 = sub_25F2530B0(v16);

  v18 = sub_25F253300(v17);

  sub_25F252514(v18, &v20);
  result = swift_setDeallocating();
  *a5 = v20;
  return result;
}

uint64_t sub_25F257CE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25F266DBC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_25F257D2C()
{
  v1 = *v0;
  sub_25F305FAC();

  v2 = MEMORY[0x25F8D7420](v1, MEMORY[0x277D84CC0]);
  MEMORY[0x25F8D7130](v2);

  return 0xD000000000000027;
}

uint64_t UUID.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56828, &qword_25F3103F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  sub_25F30463C();
  v10 = sub_25F30467C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25F1AF698(v9, &qword_27FD56828, &qword_25F3103F0);
    sub_25F2675B4();
    swift_allocError();
    *v12 = a1;
    v12[1] = a2;
    return swift_willThrow();
  }

  else
  {

    return (*(v11 + 32))(a3, v9, v10);
  }
}

uint64_t sub_25F257F30@<X0>(uint64_t *a1@<X8>)
{
  result = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F257F58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56828, &qword_25F3103F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v11 = *a1;
  v10 = a1[1];
  sub_25F30463C();
  v12 = *(a2 - 8);
  if ((*(v12 + 48))(v9, 1, a2) == 1)
  {
    sub_25F1AF698(v9, &qword_27FD56828, &qword_25F3103F0);
    sub_25F2675B4();
    swift_allocError();
    *v13 = v11;
    v13[1] = v10;
    return swift_willThrow();
  }

  else
  {

    return (*(v12 + 32))(a3, v9, a2);
  }
}

unint64_t sub_25F2580C0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F305FAC();

  MEMORY[0x25F8D7130](v1, v2);
  return 0xD000000000000015;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H>(_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v130 = a8;
  v147 = a7;
  v124 = a4;
  v125 = a6;
  v144 = a3;
  v145 = a5;
  v142 = a2;
  v121 = a1;
  v128 = a21;
  v122 = a19;
  v151 = a15;
  v154 = a13;
  v139 = a11;
  v118 = a10;
  v132 = a17;
  v134 = a16;
  v24 = sub_25F305C1C();
  v148 = *(v24 - 8);
  v149 = v24;
  v25 = *(v148 + 64);
  MEMORY[0x28223BE20](v24);
  v133 = &v115 - v26;
  v131 = a14;
  v153 = sub_25F305C1C();
  v140 = *(v153 - 1);
  v27 = *(v140 + 64);
  MEMORY[0x28223BE20](v153);
  v129 = &v115 - v28;
  v127 = a12;
  v152 = sub_25F305C1C();
  v138 = *(v152 - 8);
  v29 = *(v138 + 64);
  MEMORY[0x28223BE20](v152);
  v123 = &v115 - v30;
  v31 = sub_25F305C1C();
  v137 = *(v31 - 8);
  v32 = *(v137 + 64);
  MEMORY[0x28223BE20](v31);
  v117 = &v115 - v33;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v150 = *(TupleTypeMetadata2 - 8);
  v34 = *(v150 + 64);
  v35 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v136 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v115 - v37;
  v155 = swift_getTupleTypeMetadata2();
  v146 = *(v155 - 8);
  v39 = *(v146 + 64);
  v40 = MEMORY[0x28223BE20](v155);
  v126 = &v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v115 - v42;
  v44 = swift_getTupleTypeMetadata2();
  v143 = *(v44 - 8);
  v45 = *(v143 + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v135 = &v115 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v115 - v48;
  v50 = swift_getTupleTypeMetadata2();
  v141 = *(v50 - 8);
  v51 = *(v141 + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v115 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v115 - v55;
  v115 = *(a9 - 8);
  (*(v115 + 16))(&v115 - v55, v121, a9);
  (*(v137 + 16))(&v56[*(v50 + 48)], v142, v31);
  v119 = *(v139 - 8);
  (*(v119 + 16))(v49, v144);
  v144 = v44;
  v57 = *(v44 + 48);
  v58 = *(v138 + 16);
  v142 = v49;
  v58(&v49[v57], v124, v152);
  v121 = *(v154 - 8);
  (*(v121 + 16))(v43, v145);
  v59 = *(v155 + 48);
  v60 = *(v140 + 16);
  v145 = v43;
  v61 = v151;
  v60(&v43[v59], v125, v153);
  v124 = *(v61 - 8);
  (*(v124 + 16))(v38, v147, v61);
  v62 = *(TupleTypeMetadata2 + 48);
  v63 = *(v148 + 16);
  v147 = v38;
  v63(&v38[v62], v130, v149);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F30B760;
  v65 = *(v132 + 8);
  v120 = a9;
  *(inited + 32) = v65(a9);
  v125 = inited + 32;
  *(inited + 40) = v66;
  v67 = *(v141 + 16);
  v130 = v56;
  v67(v54, v56, v50);
  v132 = v50;
  v68 = *(v50 + 48);
  v69 = v31;
  v70 = v137;
  v71 = *(v137 + 32);
  v116 = v54;
  v72 = v117;
  v71(v117, &v54[v68], v31);
  v73 = *(v118 - 8);
  v74 = v118;
  if ((*(v73 + 48))(v72, 1) == 1)
  {
    (*(v115 + 8))(v116, v120);
    (*(v70 + 8))(v72, v69);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v75 = *(a18 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v75(v74, a18);
    (*(v73 + 8))(v72, v74);
    (*(v115 + 8))(v116, v120);
  }

  v137 = a23;
  v76 = v142;
  v77 = v139;
  *(inited + 88) = (*(v122 + 8))(v139);
  *(inited + 96) = v78;
  v79 = v135;
  v80 = v76;
  v81 = v144;
  (*(v143 + 16))(v135, v80, v144);
  v82 = v138;
  v83 = v123;
  (*(v138 + 32))(v123, &v79[*(v81 + 48)], v152);
  v84 = v127;
  v85 = *(v127 - 8);
  v86 = (*(v85 + 48))(v83, 1, v127);
  v88 = v153;
  v87 = v154;
  if (v86 == 1)
  {
    (*(v119 + 8))(v79, v77);
    (*(v82 + 8))(v83, v152);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v89 = *(a20 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v89(v84, a20);
    v88 = v153;
    v87 = v154;
    (*(v85 + 8))(v83, v84);
    (*(v119 + 8))(v135, v77);
  }

  v90 = v129;
  v91 = v140;
  v92 = v126;
  v93 = v145;
  *(inited + 144) = (*(v128 + 8))(v87);
  *(inited + 152) = v94;
  v95 = v93;
  v96 = v155;
  (*(v146 + 16))(v92, v95, v155);
  (*(v91 + 32))(v90, &v92[*(v96 + 48)], v88);
  v97 = v131;
  v98 = *(v131 - 8);
  if ((*(v98 + 48))(v90, 1, v131) == 1)
  {
    (*(v121 + 8))(v92, v87);
    (*(v91 + 8))(v90, v88);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v153 = *(a22 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    (v153)(v97, a22);
    (*(v98 + 8))(v90, v97);
    (*(v121 + 8))(v92, v154);
  }

  v99 = v151;
  v100 = v147;
  v101 = v148;
  v102 = v133;
  *(inited + 200) = (*(v137 + 8))(v151);
  *(inited + 208) = v103;
  v104 = v136;
  v105 = v100;
  v106 = TupleTypeMetadata2;
  (*(v150 + 16))(v136, v105, TupleTypeMetadata2);
  v107 = &v104[*(v106 + 48)];
  v108 = v149;
  (*(v101 + 32))(v102, v107, v149);
  v109 = v134;
  v110 = *(v134 - 8);
  if ((*(v110 + 48))(v102, 1, v134) == 1)
  {
    (*(v124 + 8))(v104, v99);
    (*(v101 + 8))(v102, v108);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v111 = *(a24 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v111(v109, a24);
    (*(v110 + 8))(v102, v109);
    (*(v124 + 8))(v136, v99);
  }

  v112 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v113 = sub_25F252D8C(v112);

  (*(v150 + 8))(v147, TupleTypeMetadata2);
  (*(v146 + 8))(v145, v155);
  (*(v143 + 8))(v142, v144);
  (*(v141 + 8))(v130, v132);
  return v113;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v155 = a8;
  v151 = a7;
  v147 = a6;
  v174 = a3;
  v175 = a5;
  v144 = a4;
  v172 = a2;
  v142 = a1;
  v152 = a25;
  v146 = a23;
  v181 = a19;
  v183 = a17;
  v168 = a15;
  v189 = a13;
  v140 = a12;
  v164 = a11;
  v157 = a21;
  v150 = a10;
  v143 = a9;
  v161 = a20;
  v30 = sub_25F305C1C();
  v179 = *(v30 - 8);
  v180 = v30;
  v31 = *(v179 + 64);
  MEMORY[0x28223BE20](v30);
  v159 = a18;
  v160 = &v139 - v32;
  v33 = sub_25F305C1C();
  v169 = *(v33 - 8);
  v170 = v33;
  v34 = *(v169 + 64);
  MEMORY[0x28223BE20](v33);
  v156 = &v139 - v35;
  v154 = a16;
  v182 = sub_25F305C1C();
  v167 = *(v182 - 1);
  v36 = *(v167 + 64);
  MEMORY[0x28223BE20](v182);
  v153 = &v139 - v37;
  v149 = a14;
  v38 = sub_25F305C1C();
  v165 = *(v38 - 8);
  v166 = v38;
  v39 = *(v165 + 64);
  MEMORY[0x28223BE20](v38);
  v145 = &v139 - v40;
  v41 = sub_25F305C1C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v141 = &v139 - v44;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v178 = *(TupleTypeMetadata2 - 8);
  v45 = *(v178 + 64);
  v46 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v158 = &v139 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v187 = &v139 - v48;
  v186 = swift_getTupleTypeMetadata2();
  v177 = *(v186 - 8);
  v49 = *(v177 + 64);
  v50 = MEMORY[0x28223BE20](v186);
  v163 = &v139 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v185 = &v139 - v52;
  v184 = swift_getTupleTypeMetadata2();
  v176 = *(v184 - 8);
  v53 = *(v176 + 64);
  v54 = MEMORY[0x28223BE20](v184);
  v148 = &v139 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v57 = &v139 - v56;
  v58 = swift_getTupleTypeMetadata2();
  v173 = *(v58 - 8);
  v59 = *(v173 + 64);
  v60 = MEMORY[0x28223BE20](v58);
  v162 = &v139 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v63 = &v139 - v62;
  v64 = v164;
  v65 = swift_getTupleTypeMetadata2();
  v171 = *(v65 - 8);
  v66 = *(v171 + 64);
  v67 = MEMORY[0x28223BE20](v65);
  v69 = &v139 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v71 = &v139 - v70;
  v139 = *(v64 - 8);
  (*(v139 + 16))(&v139 - v70, v142, v64);
  (*(v42 + 16))(&v71[*(v65 + 48)], v172, v41);
  v142 = *(v189 - 8);
  (*(v142 + 16))(v63, v174);
  v174 = v58;
  v72 = *(v58 + 48);
  v73 = *(v165 + 16);
  v172 = v63;
  v73(&v63[v72], v144, v166);
  v144 = *(v168 - 8);
  (*(v144 + 16))(v57, v175);
  v74 = *(v184 + 48);
  v75 = *(v167 + 16);
  v175 = v57;
  v76 = v64;
  v75(&v57[v74], v147, v182);
  v147 = *(v183 - 8);
  v77 = v185;
  (*(v147 + 16))(v185, v151);
  (*(v169 + 16))(&v77[*(v186 + 48)], v155, v170);
  v151 = *(v181 - 8);
  v78 = v187;
  (*(v151 + 16))(v187, v143);
  v79 = v140;
  (*(v179 + 16))(&v78[*(TupleTypeMetadata2 + 48)], v150, v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310350;
  v81 = v76;
  v82 = v41;
  *(inited + 32) = (*(v157 + 8))(v81);
  v150 = inited + 32;
  *(inited + 40) = v83;
  v84 = *(v171 + 16);
  v155 = v71;
  v84(v69, v71, v65);
  v157 = v65;
  v85 = v141;
  (*(v42 + 32))(v141, &v69[*(v65 + 48)], v41);
  v86 = *(v79 - 8);
  if ((*(v86 + 48))(v85, 1, v79) == 1)
  {
    (*(v139 + 8))(v69, v164);
    (*(v42 + 8))(v85, v82);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v87 = *(a22 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v87(v79, a22);
    (*(v86 + 8))(v85, v79);
    (*(v139 + 8))(v69, v164);
  }

  v164 = a27;
  v88 = v172;
  v89 = v189;
  *(inited + 88) = (*(v146 + 8))(v189);
  *(inited + 96) = v90;
  v91 = v162;
  v92 = v88;
  v93 = v174;
  (*(v173 + 16))(v162, v92, v174);
  v95 = v165;
  v94 = v166;
  v96 = v145;
  (*(v165 + 32))(v145, &v91[*(v93 + 48)], v166);
  v97 = v149;
  v98 = *(v149 - 8);
  v99 = (*(v98 + 48))(v96, 1, v149);
  v100 = v154;
  if (v99 == 1)
  {
    (*(v142 + 8))(v91, v89);
    (*(v95 + 8))(v96, v94);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v101 = *(a24 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v101(v97, a24);
    (*(v98 + 8))(v96, v97);
    (*(v142 + 8))(v162, v189);
  }

  v103 = v167;
  v102 = v168;
  v104 = v148;
  v189 = a29;
  v105 = v175;
  *(inited + 144) = (*(v152 + 8))(v168);
  *(inited + 152) = v106;
  v107 = v105;
  v108 = v184;
  (*(v176 + 16))(v104, v107, v184);
  v109 = &v104[*(v108 + 48)];
  v110 = v153;
  (*(v103 + 32))(v153, v109, v182);
  v111 = *(v100 - 8);
  if ((*(v111 + 48))(v110, 1, v100) == 1)
  {
    (*(v144 + 8))(v104, v102);
    (*(v103 + 8))(v110, v182);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v182 = *(a26 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v182(v100, a26);
    (*(v111 + 8))(v110, v100);
    (*(v144 + 8))(v104, v102);
  }

  v112 = v161;
  v114 = v169;
  v113 = v170;
  v115 = v185;
  v116 = v183;
  *(inited + 200) = (*(v164 + 8))(v183);
  *(inited + 208) = v117;
  v118 = v163;
  v119 = v115;
  v120 = v186;
  (*(v177 + 16))(v163, v119, v186);
  v121 = v156;
  (*(v114 + 32))(v156, &v118[*(v120 + 48)], v113);
  v122 = v159;
  v123 = *(v159 - 8);
  if ((*(v123 + 48))(v121, 1, v159) == 1)
  {
    (*(v147 + 8))(v118, v116);
    (*(v114 + 8))(v121, v113);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v124 = *(a28 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v124(v122, a28);
    (*(v123 + 8))(v121, v122);
    (*(v147 + 8))(v163, v183);
  }

  v125 = v181;
  v126 = v179;
  v127 = v158;
  v128 = v187;
  *(inited + 256) = (*(v189 + 8))(v181);
  *(inited + 264) = v129;
  v130 = v128;
  v131 = TupleTypeMetadata2;
  (*(v178 + 16))(v127, v130, TupleTypeMetadata2);
  v132 = &v127[*(v131 + 48)];
  v133 = v160;
  v134 = v180;
  (*(v126 + 32))(v160, v132, v180);
  v135 = *(v112 - 8);
  if ((*(v135 + 48))(v133, 1, v112) == 1)
  {
    (*(v151 + 8))(v127, v125);
    (*(v126 + 8))(v133, v134);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v189 = *(a30 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    (v189)(v112, a30);
    (*(v135 + 8))(v133, v112);
    (*(v151 + 8))(v127, v125);
  }

  v136 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v137 = sub_25F252D8C(v136);

  (*(v178 + 8))(v187, TupleTypeMetadata2);
  (*(v177 + 8))(v185, v186);
  (*(v176 + 8))(v175, v184);
  (*(v173 + 8))(v172, v174);
  (*(v171 + 8))(v155, v157);
  return v137;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v193 = a8;
  v188 = a7;
  v183 = a4;
  v184 = a6;
  v217 = a3;
  v218 = a5;
  v213 = a2;
  v177 = a1;
  v191 = a29;
  v187 = a27;
  v226 = a23;
  v236 = a21;
  v235 = a19;
  v237 = a17;
  v225 = a15;
  v179 = a14;
  v227 = a13;
  v199 = a25;
  v198 = a12;
  v192 = a11;
  v182 = a10;
  v180 = a9;
  v204 = a24;
  v36 = sub_25F305C1C();
  v223 = *(v36 - 8);
  v224 = v36;
  v37 = *(v223 + 64);
  MEMORY[0x28223BE20](v36);
  v202 = a22;
  v203 = &v174 - v38;
  v39 = sub_25F305C1C();
  v214 = *(v39 - 8);
  v215 = v39;
  v40 = *(v214 + 64);
  MEMORY[0x28223BE20](v39);
  v200 = &v174 - v41;
  v197 = a20;
  v42 = sub_25F305C1C();
  v210 = *(v42 - 8);
  v211 = v42;
  v43 = *(v210 + 64);
  MEMORY[0x28223BE20](v42);
  v194 = a18;
  v195 = &v174 - v44;
  v45 = sub_25F305C1C();
  v208 = *(v45 - 8);
  v209 = v45;
  v46 = *(v208 + 64);
  MEMORY[0x28223BE20](v45);
  v189 = a16;
  v190 = &v174 - v47;
  v48 = sub_25F305C1C();
  v206 = *(v48 - 8);
  v207 = v48;
  v49 = *(v206 + 64);
  MEMORY[0x28223BE20](v48);
  v186 = &v174 - v50;
  v51 = sub_25F305C1C();
  v175 = *(v51 - 8);
  v52 = *(v175 + 64);
  MEMORY[0x28223BE20](v51);
  v178 = &v174 - v53;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v222 = *(TupleTypeMetadata2 - 8);
  v54 = *(v222 + 64);
  v55 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v201 = &v174 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v233 = &v174 - v57;
  v232 = swift_getTupleTypeMetadata2();
  v221 = *(v232 - 8);
  v58 = *(v221 + 64);
  v59 = MEMORY[0x28223BE20](v232);
  v196 = &v174 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v231 = &v174 - v61;
  v230 = swift_getTupleTypeMetadata2();
  v220 = *(v230 - 8);
  v62 = *(v220 + 64);
  v63 = MEMORY[0x28223BE20](v230);
  v205 = &v174 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v229 = &v174 - v65;
  v228 = swift_getTupleTypeMetadata2();
  v219 = *(v228 - 8);
  v66 = *(v219 + 64);
  v67 = MEMORY[0x28223BE20](v228);
  v185 = &v174 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v70 = &v174 - v69;
  v71 = v225;
  v72 = swift_getTupleTypeMetadata2();
  v216 = *(v72 - 8);
  v73 = *(v216 + 64);
  v74 = MEMORY[0x28223BE20](v72);
  v181 = &v174 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v77 = &v174 - v76;
  v78 = v227;
  v79 = swift_getTupleTypeMetadata2();
  v212 = *(v79 - 8);
  v80 = *(v212 + 64);
  v81 = MEMORY[0x28223BE20](v79);
  v174 = &v174 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v84 = &v174 - v83;
  v176 = *(v78 - 8);
  (*(v176 + 16))(&v174 - v83, v177, v78);
  v85 = v175;
  (*(v175 + 16))(&v84[*(v79 + 48)], v213, v51);
  v177 = *(v71 - 8);
  (*(v177 + 16))(v77, v217, v71);
  v217 = v72;
  v86 = *(v72 + 48);
  v87 = *(v206 + 16);
  v213 = v77;
  v87(&v77[v86], v183, v207);
  v183 = *(v237 - 8);
  (*(v183 + 16))(v70, v218);
  v88 = *(v228 + 48);
  v89 = *(v208 + 16);
  v218 = v70;
  v89(&v70[v88], v184, v209);
  v184 = *(v235 - 8);
  v90 = v229;
  (*(v184 + 16))(v229, v188);
  (*(v210 + 16))(&v90[*(v230 + 48)], v193, v211);
  v188 = *(v236 - 8);
  v91 = v231;
  (*(v188 + 16))(v231, v180);
  v92 = &v91[*(v232 + 48)];
  v93 = v224;
  (*(v214 + 16))(v92, v182, v215);
  v193 = *(v226 - 8);
  v94 = v233;
  (*(v193 + 16))(v233, v192);
  (*(v223 + 16))(&v94[*(TupleTypeMetadata2 + 48)], v198, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310360;
  *(inited + 32) = (*(v199 + 8))(v227);
  v192 = inited + 32;
  *(inited + 40) = v96;
  v97 = *(v212 + 16);
  v98 = v174;
  v198 = v84;
  v97(v174, v84, v79);
  v199 = v79;
  v99 = *(v79 + 48);
  v100 = v178;
  v101 = v179;
  v102 = v85;
  v103 = *(v85 + 32);
  v104 = v98;
  v105 = &v98[v99];
  v106 = v51;
  v103(v178, v105, v51);
  v107 = *(v101 - 8);
  if ((*(v107 + 48))(v100, 1, v101) == 1)
  {
    (*(v176 + 8))(v104, v227);
    (*(v102 + 8))(v100, v106);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v108 = *(a26 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v108(v101, a26);
    (*(v107 + 8))(v100, v101);
    (*(v176 + 8))(v104, v227);
  }

  v227 = a31;
  v109 = v213;
  v110 = v225;
  *(inited + 88) = (*(v187 + 8))(v225);
  *(inited + 96) = v111;
  v112 = v181;
  v113 = v109;
  v114 = v217;
  (*(v216 + 16))(v181, v113, v217);
  v116 = v206;
  v115 = v207;
  v117 = v186;
  (*(v206 + 32))(v186, &v112[*(v114 + 48)], v207);
  v118 = v189;
  v119 = *(v189 - 8);
  v120 = (*(v119 + 48))(v117, 1, v189);
  v121 = v237;
  if (v120 == 1)
  {
    (*(v177 + 8))(v112, v110);
    (*(v116 + 8))(v117, v115);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v122 = *(a28 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v122(v118, a28);
    v121 = v237;
    (*(v119 + 8))(v117, v118);
    (*(v177 + 8))(v112, v225);
  }

  v123 = v194;
  v125 = v208;
  v124 = v209;
  v225 = a33;
  v126 = v218;
  *(inited + 144) = (*(v191 + 8))(v121);
  *(inited + 152) = v127;
  v128 = v185;
  v129 = v126;
  v130 = v228;
  (*(v219 + 16))(v185, v129, v228);
  v131 = &v128[*(v130 + 48)];
  v132 = v190;
  (*(v125 + 32))(v190, v131, v124);
  v133 = *(v123 - 8);
  if ((*(v133 + 48))(v132, 1, v123) == 1)
  {
    (*(v183 + 8))(v128, v121);
    (*(v125 + 8))(v132, v124);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v134 = *(a30 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v134(v123, a30);
    (*(v133 + 8))(v132, v123);
    (*(v183 + 8))(v128, v237);
  }

  v135 = v200;
  v137 = v210;
  v136 = v211;
  v138 = v205;
  v139 = v235;
  v237 = a35;
  v140 = v229;
  *(inited + 200) = (*(v227 + 8))(v235);
  *(inited + 208) = v141;
  v142 = v140;
  v143 = v230;
  (*(v220 + 16))(v138, v142, v230);
  v144 = v195;
  (*(v137 + 32))(v195, &v138[*(v143 + 48)], v136);
  v145 = v197;
  v146 = *(v197 - 8);
  if ((*(v146 + 48))(v144, 1, v197) == 1)
  {
    (*(v184 + 8))(v138, v139);
    (*(v137 + 8))(v144, v136);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v147 = *(a32 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v147(v145, a32);
    (*(v146 + 8))(v144, v145);
    (*(v184 + 8))(v205, v235);
  }

  v148 = v236;
  v149 = v214;
  v150 = v196;
  v151 = v231;
  *(inited + 256) = (*(v225 + 8))(v236);
  *(inited + 264) = v152;
  v153 = v151;
  v154 = v232;
  (*(v221 + 16))(v150, v153, v232);
  v155 = v215;
  (*(v149 + 32))(v135, &v150[*(v154 + 48)], v215);
  v156 = v202;
  v157 = *(v202 - 8);
  if ((*(v157 + 48))(v135, 1, v202) == 1)
  {
    (*(v188 + 8))(v150, v148);
    (*(v149 + 8))(v135, v155);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v158 = *(a34 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v158(v156, a34);
    (*(v157 + 8))(v135, v156);
    (*(v188 + 8))(v150, v236);
  }

  v159 = v223;
  v160 = v201;
  v161 = v233;
  v162 = v226;
  *(inited + 312) = (*(v237 + 8))(v226);
  *(inited + 320) = v163;
  v164 = v161;
  v165 = TupleTypeMetadata2;
  (*(v222 + 16))(v160, v164, TupleTypeMetadata2);
  v166 = &v160[*(v165 + 48)];
  v167 = v203;
  v168 = v224;
  (*(v159 + 32))(v203, v166, v224);
  v169 = v204;
  v170 = *(v204 - 8);
  if ((*(v170 + 48))(v167, 1, v204) == 1)
  {
    (*(v193 + 8))(v160, v162);
    (*(v159 + 8))(v167, v168);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v237 = *(a36 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    (v237)(v169, a36);
    (*(v170 + 8))(v167, v169);
    (*(v193 + 8))(v160, v226);
  }

  v171 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v172 = sub_25F252D8C(v171);

  (*(v222 + 8))(v233, TupleTypeMetadata2);
  (*(v221 + 8))(v231, v232);
  (*(v220 + 8))(v229, v230);
  (*(v219 + 8))(v218, v228);
  (*(v216 + 8))(v213, v217);
  (*(v212 + 8))(v198, v199);
  return v172;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v215 = a8;
  v210 = a7;
  v208 = a6;
  v245 = a3;
  v246 = a5;
  v206 = a4;
  v243 = a2;
  v201 = a1;
  v216 = a33;
  v211 = a31;
  v269 = a27;
  v271 = a25;
  v259 = a23;
  v270 = a21;
  v258 = a19;
  v257 = a17;
  v202 = a16;
  v256 = a15;
  v224 = a29;
  v223 = a14;
  v217 = a13;
  v219 = a12;
  v207 = a11;
  v205 = a10;
  v204 = a9;
  v230 = a28;
  v42 = sub_25F305C1C();
  v252 = *(v42 - 8);
  v253 = v42;
  v43 = *(v252 + 64);
  MEMORY[0x28223BE20](v42);
  v229 = &v195 - v44;
  v227 = a26;
  v255 = sub_25F305C1C();
  v248 = *(v255 - 8);
  v45 = *(v248 + 64);
  MEMORY[0x28223BE20](v255);
  v225 = a24;
  v226 = &v195 - v46;
  v241 = sub_25F305C1C();
  v254 = *(v241 - 8);
  v47 = *(v254 + 64);
  MEMORY[0x28223BE20](v241);
  v221 = a22;
  v222 = &v195 - v48;
  v49 = sub_25F305C1C();
  v239 = *(v49 - 8);
  v240 = v49;
  v50 = *(v239 + 64);
  MEMORY[0x28223BE20](v49);
  v220 = &v195 - v51;
  v218 = a20;
  v52 = sub_25F305C1C();
  v237 = *(v52 - 8);
  v238 = v52;
  v53 = *(v237 + 64);
  MEMORY[0x28223BE20](v52);
  v213 = a18;
  v214 = &v195 - v54;
  v55 = sub_25F305C1C();
  v235 = *(v55 - 8);
  v236 = v55;
  v56 = *(v235 + 64);
  MEMORY[0x28223BE20](v55);
  v209 = &v195 - v57;
  v58 = sub_25F305C1C();
  v59 = *(v58 - 8);
  v197 = v58;
  v198 = v59;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v200 = &v195 - v61;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v228 = *(TupleTypeMetadata2 - 8);
  v62 = *(v228 + 64);
  v63 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v234 = &v195 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v267 = &v195 - v65;
  v266 = swift_getTupleTypeMetadata2();
  v251 = *(v266 - 8);
  v66 = *(v251 + 64);
  v67 = MEMORY[0x28223BE20](v266);
  v233 = &v195 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v265 = &v195 - v69;
  v264 = swift_getTupleTypeMetadata2();
  v250 = *(v264 - 8);
  v70 = *(v250 + 64);
  v71 = MEMORY[0x28223BE20](v264);
  v232 = &v195 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v263 = &v195 - v73;
  v262 = swift_getTupleTypeMetadata2();
  v249 = *(v262 - 8);
  v74 = *(v249 + 64);
  v75 = MEMORY[0x28223BE20](v262);
  v212 = &v195 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v261 = &v195 - v77;
  v260 = swift_getTupleTypeMetadata2();
  v247 = *(v260 - 8);
  v78 = *(v247 + 64);
  v79 = MEMORY[0x28223BE20](v260);
  v231 = &v195 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v82 = &v195 - v81;
  v83 = v257;
  v84 = swift_getTupleTypeMetadata2();
  v244 = *(v84 - 8);
  v85 = *(v244 + 64);
  v86 = MEMORY[0x28223BE20](v84);
  v203 = &v195 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v89 = &v195 - v88;
  v90 = v256;
  v91 = v197;
  v92 = swift_getTupleTypeMetadata2();
  v242 = *(v92 - 8);
  v93 = *(v242 + 64);
  v94 = MEMORY[0x28223BE20](v92);
  v196 = &v195 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v97 = &v195 - v96;
  v199 = *(v90 - 8);
  (*(v199 + 16))(&v195 - v96, v201, v90);
  v98 = v198;
  v99 = v91;
  (*(v198 + 16))(&v97[*(v92 + 48)], v243, v91);
  v201 = *(v83 - 8);
  (*(v201 + 16))(v89, v245, v83);
  v245 = v84;
  v100 = *(v84 + 48);
  v101 = *(v235 + 16);
  v243 = v89;
  v101(&v89[v100], v206, v236);
  v206 = *(v258 - 8);
  (*(v206 + 16))(v82, v246);
  v102 = *(v260 + 48);
  v103 = *(v237 + 16);
  v246 = v82;
  v103(&v82[v102], v208, v238);
  v208 = *(v270 - 8);
  v104 = v261;
  (*(v208 + 16))(v261, v210);
  v105 = &v104[*(v262 + 48)];
  v106 = v99;
  (*(v239 + 16))(v105, v215, v240);
  v210 = *(v259 - 8);
  v107 = v263;
  (*(v210 + 16))(v263, v204);
  (*(v254 + 16))(&v107[*(v264 + 48)], v205, v241);
  v215 = *(v271 - 8);
  v108 = v265;
  (*(v215 + 16))(v265, v207);
  (*(v248 + 16))(&v108[*(v266 + 48)], v219, v255);
  v219 = *(v269 - 8);
  v109 = v267;
  (*(v219 + 16))(v267, v217);
  (*(v252 + 16))(&v109[*(TupleTypeMetadata2 + 48)], v223, v253);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310370;
  *(inited + 32) = (*(v224 + 8))(v256);
  v217 = inited + 32;
  *(inited + 40) = v111;
  v112 = *(v242 + 16);
  v113 = v196;
  v223 = v97;
  v114 = v97;
  v115 = v200;
  v112(v196, v114, v92);
  v224 = v92;
  v116 = *(v92 + 48);
  v117 = v202;
  (*(v98 + 32))(v115, &v113[v116], v106);
  v118 = *(v117 - 8);
  if ((*(v118 + 48))(v115, 1, v117) == 1)
  {
    (*(v199 + 8))(v113, v256);
    (*(v98 + 8))(v115, v106);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v119 = *(a30 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v119(v117, a30);
    (*(v118 + 8))(v115, v117);
    (*(v199 + 8))(v113, v256);
  }

  v256 = a35;
  v120 = v243;
  *(inited + 88) = (*(v211 + 8))(v257);
  *(inited + 96) = v121;
  v122 = v203;
  v123 = v120;
  v124 = v245;
  (*(v244 + 16))(v203, v123, v245);
  v126 = v235;
  v125 = v236;
  v127 = v209;
  (*(v235 + 32))(v209, &v122[*(v124 + 48)], v236);
  v128 = v213;
  v129 = *(v213 - 8);
  v130 = (*(v129 + 48))(v127, 1, v213);
  v131 = v218;
  if (v130 == 1)
  {
    (*(v201 + 8))(v122, v257);
    (*(v126 + 8))(v127, v125);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v236 = *(a32 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v236(v128, a32);
    (*(v129 + 8))(v127, v128);
    (*(v201 + 8))(v122, v257);
  }

  v132 = v258;
  v258 = a37;
  v133 = v246;
  *(inited + 144) = (*(v216 + 8))(v132);
  *(inited + 152) = v134;
  v135 = v231;
  v136 = v133;
  v137 = v260;
  (*(v247 + 16))(v231, v136, v260);
  v139 = v237;
  v138 = v238;
  v140 = &v135[*(v137 + 48)];
  v141 = v214;
  (*(v237 + 32))(v214, v140, v238);
  v142 = *(v131 - 8);
  if ((*(v142 + 48))(v141, 1, v131) == 1)
  {
    (*(v206 + 8))(v135, v132);
    (*(v139 + 8))(v141, v138);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v143 = *(a34 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v143(v131, a34);
    (*(v142 + 8))(v141, v131);
    (*(v206 + 8))(v231, v132);
  }

  v144 = v270;
  v145 = v239;
  v146 = v212;
  v257 = a39;
  v147 = v261;
  *(inited + 200) = (*(v256 + 8))(v270);
  *(inited + 208) = v148;
  v149 = v147;
  v150 = v262;
  (*(v249 + 16))(v146, v149, v262);
  v151 = v220;
  v152 = v240;
  (*(v145 + 32))(v220, &v146[*(v150 + 48)], v240);
  v153 = v221;
  v154 = *(v221 - 8);
  if ((*(v154 + 48))(v151, 1, v221) == 1)
  {
    (*(v208 + 8))(v146, v144);
    (*(v145 + 8))(v151, v152);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v155 = *(a36 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v155(v153, a36);
    (*(v154 + 8))(v151, v153);
    (*(v208 + 8))(v146, v270);
  }

  v156 = v255;
  v157 = v259;
  v270 = a41;
  v158 = v263;
  *(inited + 256) = (*(v258 + 8))(v259);
  *(inited + 264) = v159;
  v160 = v232;
  v161 = v158;
  v162 = v264;
  (*(v250 + 16))(v232, v161, v264);
  v163 = v222;
  v164 = v241;
  (*(v254 + 32))(v222, &v160[*(v162 + 48)], v241);
  v165 = v225;
  v166 = *(v225 - 8);
  if ((*(v166 + 48))(v163, 1, v225) == 1)
  {
    (*(v210 + 8))(v160, v157);
    (*(v254 + 8))(v163, v164);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v167 = *(a38 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v167(v165, a38);
    (*(v166 + 8))(v163, v165);
    v156 = v255;
    (*(v210 + 8))(v232, v157);
  }

  v168 = v271;
  v169 = v233;
  v170 = v248;
  v171 = v265;
  *(inited + 312) = (*(v257 + 8))(v271);
  *(inited + 320) = v172;
  v173 = v171;
  v174 = v266;
  (*(v251 + 16))(v169, v173, v266);
  v175 = v226;
  (*(v170 + 32))(v226, &v169[*(v174 + 48)], v156);
  v176 = v227;
  v177 = *(v227 - 8);
  if ((*(v177 + 48))(v175, 1, v227) == 1)
  {
    (*(v215 + 8))(v169, v168);
    (*(v170 + 8))(v175, v156);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v178 = *(a40 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v178(v176, a40);
    (*(v177 + 8))(v175, v176);
    (*(v215 + 8))(v233, v271);
  }

  v180 = v229;
  v179 = v230;
  v181 = v228;
  v182 = v267;
  *(inited + 368) = (*(v270 + 8))(v269);
  *(inited + 376) = v183;
  v184 = v234;
  v185 = v182;
  v186 = TupleTypeMetadata2;
  (*(v181 + 16))(v234, v185, TupleTypeMetadata2);
  v187 = *(v186 + 48);
  v189 = v252;
  v188 = v253;
  (*(v252 + 32))(v180, &v184[v187], v253);
  v190 = *(v179 - 8);
  if ((*(v190 + 48))(v180, 1, v179) == 1)
  {
    (*(v219 + 8))(v184, v269);
    (*(v189 + 8))(v180, v188);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v191 = *(a42 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v191(v179, a42);
    (*(v190 + 8))(v180, v179);
    (*(v219 + 8))(v234, v269);
  }

  v192 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v193 = sub_25F252D8C(v192);

  (*(v181 + 8))(v267, TupleTypeMetadata2);
  (*(v251 + 8))(v265, v266);
  (*(v250 + 8))(v263, v264);
  (*(v249 + 8))(v261, v262);
  (*(v247 + 8))(v246, v260);
  (*(v244 + 8))(v243, v245);
  (*(v242 + 8))(v223, v224);
  return v193;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v243 = a8;
  v285 = a7;
  v241 = a6;
  v282 = a3;
  v283 = a5;
  v238 = a4;
  v280 = a2;
  v232 = a1;
  v246 = a37;
  v242 = a35;
  v295 = a31;
  v312 = a29;
  v310 = a27;
  v299 = a25;
  v298 = a23;
  v311 = a21;
  v271 = a19;
  v231 = a18;
  v296 = a17;
  v255 = a33;
  v250 = a16;
  v237 = a15;
  v251 = a14;
  v236 = a13;
  v247 = a12;
  v235 = a11;
  v234 = a10;
  v233 = a9;
  v261 = a32;
  v294 = sub_25F305C1C();
  v293 = *(v294 - 8);
  v48 = *(v293 + 64);
  MEMORY[0x28223BE20](v294);
  v259 = a30;
  v260 = &v225 - v49;
  v50 = sub_25F305C1C();
  v288 = *(v50 - 8);
  v289 = v50;
  v51 = *(v288 + 64);
  MEMORY[0x28223BE20](v50);
  v257 = a28;
  v258 = &v225 - v52;
  v53 = sub_25F305C1C();
  v276 = *(v53 - 8);
  v277 = v53;
  v54 = *(v276 + 64);
  MEMORY[0x28223BE20](v53);
  v256 = &v225 - v55;
  v254 = a26;
  v56 = sub_25F305C1C();
  v274 = *(v56 - 8);
  v275 = v56;
  v57 = *(v274 + 64);
  MEMORY[0x28223BE20](v56);
  v252 = a24;
  v253 = &v225 - v58;
  v59 = sub_25F305C1C();
  v272 = *(v59 - 8);
  v273 = v59;
  v60 = *(v272 + 64);
  MEMORY[0x28223BE20](v59);
  v248 = a22;
  v249 = &v225 - v61;
  v62 = sub_25F305C1C();
  v269 = *(v62 - 8);
  v270 = v62;
  v63 = *(v269 + 64);
  MEMORY[0x28223BE20](v62);
  v244 = &v225 - v64;
  v245 = a20;
  v297 = sub_25F305C1C();
  v268 = *(v297 - 8);
  v65 = *(v268 + 64);
  MEMORY[0x28223BE20](v297);
  v240 = &v225 - v66;
  v67 = sub_25F305C1C();
  v68 = *(v67 - 8);
  v226 = v67;
  v227 = v68;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  v230 = &v225 - v70;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v292 = *(TupleTypeMetadata2 - 8);
  v71 = *(v292 + 64);
  v72 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v267 = &v225 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v308 = &v225 - v74;
  v307 = swift_getTupleTypeMetadata2();
  v291 = *(v307 - 8);
  v75 = *(v291 + 64);
  v76 = MEMORY[0x28223BE20](v307);
  v266 = &v225 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v306 = &v225 - v78;
  v305 = swift_getTupleTypeMetadata2();
  v290 = *(v305 - 8);
  v79 = *(v290 + 64);
  v80 = MEMORY[0x28223BE20](v305);
  v265 = &v225 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v304 = &v225 - v82;
  v303 = swift_getTupleTypeMetadata2();
  v287 = *(v303 - 8);
  v83 = *(v287 + 64);
  v84 = MEMORY[0x28223BE20](v303);
  v264 = &v225 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v302 = &v225 - v86;
  v301 = swift_getTupleTypeMetadata2();
  v286 = *(v301 - 8);
  v87 = *(v286 + 64);
  v88 = MEMORY[0x28223BE20](v301);
  v263 = &v225 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v91 = &v225 - v90;
  v300 = swift_getTupleTypeMetadata2();
  v284 = *(v300 - 8);
  v92 = *(v284 + 64);
  v93 = MEMORY[0x28223BE20](v300);
  v239 = &v225 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v96 = &v225 - v95;
  v97 = v271;
  v98 = swift_getTupleTypeMetadata2();
  v281 = *(v98 - 8);
  v99 = *(v281 + 64);
  v100 = MEMORY[0x28223BE20](v98);
  v262 = &v225 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v103 = &v225 - v102;
  v104 = v296;
  v105 = v226;
  v106 = swift_getTupleTypeMetadata2();
  v278 = *(v106 - 8);
  v279 = v106;
  v107 = *(v278 + 64);
  v108 = MEMORY[0x28223BE20](v106);
  v225 = &v225 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108);
  v111 = &v225 - v110;
  v228 = *(v104 - 8);
  (*(v228 + 16))(&v225 - v110, v232, v104);
  v112 = *(v106 + 48);
  v113 = v227;
  (*(v227 + 16))(&v111[v112], v280, v105);
  v229 = *(v97 - 8);
  (*(v229 + 16))(v103, v282, v97);
  v282 = v98;
  v114 = *(v98 + 48);
  v115 = *(v268 + 16);
  v280 = v103;
  v116 = &v103[v114];
  v117 = v299;
  v115(v116, v238, v297);
  v232 = *(v311 - 8);
  (*(v232 + 16))(v96, v283);
  v118 = *(v300 + 48);
  v119 = *(v269 + 16);
  v283 = v96;
  v119(&v96[v118], v241, v270);
  v238 = *(v298 - 8);
  (*(v238 + 16))(v91, v285);
  v120 = *(v301 + 48);
  v121 = *(v272 + 16);
  v285 = v91;
  v121(&v91[v120], v243, v273);
  v241 = *(v117 - 8);
  v122 = v302;
  v123 = v117;
  v124 = v225;
  (*(v241 + 16))(v302, v233, v123);
  v125 = v105;
  (*(v274 + 16))(&v122[*(v303 + 48)], v234, v275);
  v243 = *(v310 - 8);
  v126 = v304;
  (*(v243 + 16))(v304, v235);
  (*(v276 + 16))(&v126[*(v305 + 48)], v247, v277);
  v247 = *(v312 - 1);
  v127 = v306;
  (*(v247 + 16))(v306, v236);
  (*(v288 + 16))(&v127[*(v307 + 48)], v251, v289);
  v251 = *(v295 - 8);
  v128 = v308;
  (*(v251 + 16))(v308, v237);
  (*(v293 + 16))(&v128[*(TupleTypeMetadata2 + 48)], v250, v294);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310340;
  *(inited + 32) = (*(v255 + 1))(v296);
  v250 = inited + 32;
  *(inited + 40) = v130;
  v131 = *(v278 + 16);
  v255 = v111;
  v132 = v111;
  v133 = v279;
  v131(v124, v132, v279);
  v134 = *(v133 + 48);
  v135 = v230;
  v136 = v231;
  (*(v113 + 32))(v230, &v124[v134], v125);
  v137 = *(v136 - 8);
  if ((*(v137 + 48))(v135, 1, v136) == 1)
  {
    (*(v228 + 8))(v124, v296);
    (*(v113 + 8))(v135, v125);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v138 = *(a34 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v138(v136, a34);
    (*(v137 + 8))(v135, v136);
    (*(v228 + 8))(v124, v296);
  }

  v296 = a39;
  v139 = v280;
  v140 = v271;
  *(inited + 88) = (*(v242 + 8))(v271);
  *(inited + 96) = v141;
  v142 = v262;
  v143 = v139;
  v144 = v282;
  (*(v281 + 16))(v262, v143, v282);
  v145 = v268;
  v146 = v240;
  v147 = v297;
  (*(v268 + 32))(v240, &v142[*(v144 + 48)], v297);
  v148 = v245;
  v149 = *(v245 - 8);
  if ((*(v149 + 48))(v146, 1, v245) == 1)
  {
    (*(v229 + 8))(v142, v140);
    (*(v145 + 8))(v146, v147);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v150 = *(a36 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v150(v148, a36);
    (*(v149 + 8))(v146, v148);
    (*(v229 + 8))(v262, v140);
  }

  v151 = v311;
  v152 = v270;
  v153 = v239;
  v297 = a41;
  v154 = v283;
  *(inited + 144) = (*(v246 + 8))(v311);
  *(inited + 152) = v155;
  v156 = v154;
  v157 = v300;
  (*(v284 + 16))(v153, v156, v300);
  v158 = v269;
  v159 = v244;
  (*(v269 + 32))(v244, &v153[*(v157 + 48)], v152);
  v160 = v248;
  v161 = *(v248 - 8);
  if ((*(v161 + 48))(v159, 1, v248) == 1)
  {
    (*(v232 + 8))(v153, v151);
    (*(v158 + 8))(v159, v152);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v162 = *(a38 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v162(v160, a38);
    (*(v161 + 8))(v159, v160);
    (*(v232 + 8))(v153, v311);
  }

  v163 = v298;
  v165 = v272;
  v164 = v273;
  v311 = a43;
  v166 = v285;
  *(inited + 200) = (*(v296 + 8))(v298);
  *(inited + 208) = v167;
  v168 = v263;
  v169 = v166;
  v170 = v301;
  (*(v286 + 16))(v263, v169, v301);
  v171 = &v168[*(v170 + 48)];
  v172 = v249;
  (*(v165 + 32))(v249, v171, v164);
  v173 = v252;
  v174 = *(v252 - 8);
  if ((*(v174 + 48))(v172, 1, v252) == 1)
  {
    (*(v238 + 8))(v168, v163);
    (*(v165 + 8))(v172, v164);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v175 = *(a40 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v175(v173, a40);
    (*(v174 + 8))(v172, v173);
    (*(v238 + 8))(v263, v163);
  }

  v176 = v299;
  v178 = v274;
  v177 = v275;
  v179 = v264;
  v299 = a45;
  v180 = v302;
  *(inited + 256) = (*(v297 + 8))(v176);
  *(inited + 264) = v181;
  v182 = v180;
  v183 = v303;
  (*(v287 + 16))(v179, v182, v303);
  v184 = v253;
  (*(v178 + 32))(v253, &v179[*(v183 + 48)], v177);
  v185 = v254;
  v186 = *(v254 - 8);
  if ((*(v186 + 48))(v184, 1, v254) == 1)
  {
    (*(v241 + 8))(v179, v176);
    (*(v178 + 8))(v184, v177);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v187 = *(a42 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v187(v185, a42);
    (*(v186 + 8))(v184, v185);
    (*(v241 + 8))(v264, v176);
  }

  v189 = v276;
  v188 = v277;
  v190 = v265;
  v191 = v310;
  v298 = a47;
  v192 = v304;
  *(inited + 312) = (*(v311 + 8))(v310);
  *(inited + 320) = v193;
  v194 = v192;
  v195 = v305;
  (*(v290 + 16))(v190, v194, v305);
  v196 = v256;
  (*(v189 + 32))(v256, &v190[*(v195 + 48)], v188);
  v197 = v257;
  v198 = *(v257 - 8);
  if ((*(v198 + 48))(v196, 1, v257) == 1)
  {
    (*(v243 + 8))(v190, v191);
    (*(v189 + 8))(v196, v188);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v199 = *(a44 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v199(v197, a44);
    (*(v198 + 8))(v196, v197);
    (*(v243 + 8))(v265, v310);
  }

  v200 = v295;
  v201 = v312;
  v202 = v306;
  *(inited + 368) = (*(v299 + 8))(v312);
  *(inited + 376) = v203;
  v204 = v266;
  v205 = v202;
  v206 = v307;
  (*(v291 + 16))(v266, v205, v307);
  v207 = v288;
  v208 = v289;
  v209 = v258;
  (*(v288 + 32))(v258, &v204[*(v206 + 48)], v289);
  v210 = v259;
  v211 = *(v259 - 8);
  if ((*(v211 + 48))(v209, 1, v259) == 1)
  {
    (*(v247 + 8))(v204, v201);
    (*(v207 + 8))(v209, v208);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v212 = *(a46 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v212(v210, a46);
    (*(v211 + 8))(v209, v210);
    (*(v247 + 8))(v266, v312);
  }

  v213 = v294;
  v214 = TupleTypeMetadata2;
  v215 = v267;
  v216 = v308;
  *(inited + 424) = (*(v298 + 8))(v200);
  *(inited + 432) = v217;
  (*(v292 + 16))(v215, v216, v214);
  v218 = v293;
  v219 = v260;
  (*(v293 + 32))(v260, &v215[*(v214 + 48)], v213);
  v220 = v261;
  v221 = *(v261 - 8);
  if ((*(v221 + 48))(v219, 1, v261) == 1)
  {
    (*(v251 + 8))(v215, v200);
    (*(v218 + 8))(v219, v213);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v312 = *(a48 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    (v312)(v220, a48);
    (*(v221 + 8))(v219, v220);
    (*(v251 + 8))(v267, v200);
  }

  v222 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v223 = sub_25F252D8C(v222);

  (*(v292 + 8))(v308, TupleTypeMetadata2);
  (*(v291 + 8))(v306, v307);
  (*(v290 + 8))(v304, v305);
  (*(v287 + 8))(v302, v303);
  (*(v286 + 8))(v285, v301);
  (*(v284 + 8))(v283, v300);
  (*(v281 + 8))(v280, v282);
  (*(v278 + 8))(v255, v279);
  return v223;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(_:_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v263 = a8;
  v312 = a7;
  v260 = a6;
  v309 = a3;
  v310 = a5;
  v258 = a4;
  v307 = a2;
  v252 = a1;
  v268 = a41;
  v264 = a39;
  v338 = a35;
  v342 = a33;
  v341 = a31;
  v325 = a29;
  v343 = a27;
  v340 = a25;
  v339 = a23;
  v297 = a21;
  v253 = a20;
  v323 = a19;
  v280 = a37;
  v278 = a18;
  v272 = a17;
  v273 = a16;
  v259 = a15;
  v271 = a14;
  v257 = a13;
  v267 = a12;
  v256 = a11;
  v255 = a10;
  v254 = a9;
  v286 = a36;
  v322 = sub_25F305C1C();
  v321 = *(v322 - 8);
  v54 = *(v321 + 64);
  MEMORY[0x28223BE20](v322);
  v284 = a34;
  v285 = &v247 - v55;
  v318 = sub_25F305C1C();
  v317 = *(v318 - 8);
  v56 = *(v317 + 64);
  MEMORY[0x28223BE20](v318);
  v282 = a32;
  v283 = &v247 - v57;
  v58 = sub_25F305C1C();
  v305 = *(v58 - 8);
  v306 = v58;
  v59 = *(v305 + 64);
  MEMORY[0x28223BE20](v58);
  v281 = &v247 - v60;
  v279 = a30;
  v61 = sub_25F305C1C();
  v302 = *(v61 - 8);
  v303 = v61;
  v62 = *(v302 + 64);
  MEMORY[0x28223BE20](v61);
  v276 = a28;
  v277 = &v247 - v63;
  v64 = sub_25F305C1C();
  v300 = *(v64 - 8);
  v301 = v64;
  v65 = *(v300 + 64);
  MEMORY[0x28223BE20](v64);
  v274 = a26;
  v275 = &v247 - v66;
  v67 = sub_25F305C1C();
  v298 = *(v67 - 8);
  v299 = v67;
  v68 = *(v298 + 64);
  MEMORY[0x28223BE20](v67);
  v269 = &v247 - v69;
  v270 = a24;
  v324 = sub_25F305C1C();
  v296 = *(v324 - 8);
  v70 = *(v296 + 64);
  MEMORY[0x28223BE20](v324);
  v265 = &v247 - v71;
  v266 = a22;
  v72 = sub_25F305C1C();
  v294 = *(v72 - 8);
  v295 = v72;
  v73 = *(v294 + 64);
  MEMORY[0x28223BE20](v72);
  v261 = &v247 - v74;
  v75 = sub_25F305C1C();
  v248 = *(v75 - 8);
  v76 = *(v248 + 64);
  MEMORY[0x28223BE20](v75);
  v251 = &v247 - v77;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v320 = *(TupleTypeMetadata2 - 8);
  v78 = *(v320 + 64);
  v79 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v293 = &v247 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v336 = &v247 - v81;
  v335 = swift_getTupleTypeMetadata2();
  v319 = *(v335 - 8);
  v82 = *(v319 + 64);
  v83 = MEMORY[0x28223BE20](v335);
  v292 = &v247 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v334 = &v247 - v85;
  v333 = swift_getTupleTypeMetadata2();
  v316 = *(v333 - 8);
  v86 = *(v316 + 64);
  v87 = MEMORY[0x28223BE20](v333);
  v291 = &v247 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v332 = &v247 - v89;
  v331 = swift_getTupleTypeMetadata2();
  v315 = *(v331 - 8);
  v90 = *(v315 + 64);
  v91 = MEMORY[0x28223BE20](v331);
  v290 = &v247 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v330 = &v247 - v93;
  v329 = swift_getTupleTypeMetadata2();
  v314 = *(v329 - 8);
  v94 = *(v314 + 64);
  v95 = MEMORY[0x28223BE20](v329);
  v289 = &v247 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v328 = &v247 - v97;
  v327 = swift_getTupleTypeMetadata2();
  v313 = *(v327 - 8);
  v98 = *(v313 + 64);
  v99 = MEMORY[0x28223BE20](v327);
  v262 = &v247 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v102 = &v247 - v101;
  v326 = swift_getTupleTypeMetadata2();
  v311 = *(v326 - 8);
  v103 = *(v311 + 64);
  v104 = MEMORY[0x28223BE20](v326);
  v288 = &v247 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v107 = &v247 - v106;
  v108 = v297;
  v109 = swift_getTupleTypeMetadata2();
  v308 = *(v109 - 8);
  v110 = *(v308 + 64);
  v111 = MEMORY[0x28223BE20](v109);
  v287 = &v247 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v114 = &v247 - v113;
  v115 = v323;
  v116 = swift_getTupleTypeMetadata2();
  v304 = *(v116 - 8);
  v117 = *(v304 + 64);
  v118 = MEMORY[0x28223BE20](v116);
  v247 = &v247 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v118);
  v121 = &v247 - v120;
  v249 = *(v115 - 8);
  (*(v249 + 16))(&v247 - v120, v252, v115);
  v122 = v248;
  (*(v248 + 16))(&v121[*(v116 + 48)], v307, v75);
  v250 = *(v108 - 8);
  (*(v250 + 16))(v114, v309, v108);
  v309 = v109;
  v123 = *(v109 + 48);
  v124 = v325;
  v125 = *(v294 + 16);
  v307 = v114;
  v125(&v114[v123], v258, v295);
  v252 = *(v339 - 8);
  (*(v252 + 16))(v107, v310);
  v126 = *(v326 + 48);
  v127 = v343;
  v128 = *(v296 + 16);
  v310 = v107;
  v128(&v107[v126], v260, v324);
  v258 = *(v340 - 8);
  (*(v258 + 16))(v102, v312);
  v129 = *(v327 + 48);
  v130 = *(v298 + 16);
  v312 = v102;
  v131 = &v102[v129];
  v132 = v75;
  v130(v131, v263, v299);
  v260 = *(v127 - 8);
  v133 = v328;
  (*(v260 + 16))(v328, v254, v127);
  (*(v300 + 16))(&v133[*(v329 + 48)], v255, v301);
  v263 = *(v124 - 8);
  v134 = v330;
  v135 = v124;
  v136 = v247;
  (*(v263 + 16))(v330, v256, v135);
  (*(v302 + 16))(&v134[*(v331 + 48)], v267, v303);
  v267 = *(v341 - 8);
  v137 = v332;
  (*(v267 + 16))(v332, v257);
  (*(v305 + 16))(&v137[*(v333 + 48)], v271, v306);
  v271 = *(v342 - 8);
  v138 = v334;
  (*(v271 + 16))(v334, v259);
  (*(v317 + 16))(&v138[*(v335 + 48)], v273, v318);
  v273 = *(v338 - 8);
  v139 = v336;
  (*(v273 + 16))(v336, v272);
  (*(v321 + 16))(&v139[*(TupleTypeMetadata2 + 48)], v278, v322);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310380;
  v141 = (*(v280 + 8))(v323);
  v142 = v251;
  *(inited + 32) = v141;
  v272 = inited + 32;
  *(inited + 40) = v143;
  v144 = *(v304 + 16);
  v278 = v121;
  v144(v136, v121, v116);
  v280 = v116;
  v145 = v253;
  (*(v122 + 32))(v142, &v136[*(v116 + 48)], v132);
  v146 = *(v145 - 8);
  if ((*(v146 + 48))(v142, 1, v145) == 1)
  {
    (*(v249 + 8))(v136, v323);
    (*(v122 + 8))(v142, v132);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v147 = *(a38 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v147(v145, a38);
    (*(v146 + 8))(v142, v145);
    (*(v249 + 8))(v136, v323);
  }

  v323 = a43;
  v148 = v307;
  v149 = v297;
  *(inited + 88) = (*(v264 + 8))(v297);
  *(inited + 96) = v150;
  v151 = v287;
  v152 = v148;
  v153 = v309;
  (*(v308 + 16))(v287, v152, v309);
  v155 = v294;
  v154 = v295;
  v156 = v261;
  (*(v294 + 32))(v261, &v151[*(v153 + 48)], v295);
  v157 = v266;
  v158 = *(v266 - 8);
  if ((*(v158 + 48))(v156, 1, v266) == 1)
  {
    (*(v250 + 8))(v151, v149);
    (*(v155 + 8))(v156, v154);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v159 = *(a40 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v159(v157, a40);
    (*(v158 + 8))(v156, v157);
    (*(v250 + 8))(v287, v149);
  }

  v160 = v298;
  v161 = v265;
  v162 = v296;
  v298 = a45;
  v163 = v310;
  v164 = v339;
  *(inited + 144) = (*(v268 + 8))(v339);
  *(inited + 152) = v165;
  v166 = v288;
  v167 = v163;
  v168 = v326;
  (*(v311 + 16))(v288, v167, v326);
  v169 = v324;
  (*(v162 + 32))(v161, &v166[*(v168 + 48)], v324);
  v170 = v270;
  v171 = *(v270 - 8);
  if ((*(v171 + 48))(v161, 1, v270) == 1)
  {
    (*(v252 + 8))(v166, v164);
    (*(v162 + 8))(v161, v169);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v172 = *(a42 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v172(v170, a42);
    (*(v171 + 8))(v161, v170);
    (*(v252 + 8))(v288, v339);
  }

  v173 = v269;
  v339 = a47;
  v174 = v312;
  v175 = v340;
  *(inited + 200) = (*(v323 + 8))(v340);
  *(inited + 208) = v176;
  v177 = v262;
  v178 = v174;
  v179 = v327;
  (*(v313 + 16))(v262, v178, v327);
  v180 = v299;
  (*(v160 + 32))(v173, &v177[*(v179 + 48)], v299);
  v181 = v274;
  v182 = *(v274 - 8);
  if ((*(v182 + 48))(v173, 1, v274) == 1)
  {
    (*(v258 + 8))(v177, v175);
    (*(v160 + 8))(v173, v180);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v183 = *(a44 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v183(v181, a44);
    (*(v182 + 8))(v173, v181);
    (*(v258 + 8))(v177, v340);
  }

  v184 = v276;
  v185 = v301;
  v186 = v289;
  v340 = a49;
  v187 = v328;
  *(inited + 256) = (*(v298 + 8))(v343);
  *(inited + 264) = v188;
  v189 = v187;
  v190 = v329;
  (*(v314 + 16))(v186, v189, v329);
  v191 = v300;
  v192 = &v186[*(v190 + 48)];
  v193 = v275;
  (*(v300 + 32))(v275, v192, v185);
  v194 = *(v184 - 8);
  v195 = (*(v194 + 48))(v193, 1, v184);
  v196 = v290;
  if (v195 == 1)
  {
    (*(v260 + 8))(v186, v343);
    (*(v191 + 8))(v193, v185);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v197 = *(a46 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v197(v184, a46);
    (*(v194 + 8))(v193, v184);
    (*(v260 + 8))(v289, v343);
  }

  v198 = v325;
  v200 = v302;
  v199 = v303;
  v343 = a51;
  v201 = v330;
  *(inited + 312) = (*(v339 + 8))(v325);
  *(inited + 320) = v202;
  v203 = v201;
  v204 = v331;
  (*(v315 + 16))(v196, v203, v331);
  v205 = v277;
  (*(v200 + 32))(v277, &v196[*(v204 + 48)], v199);
  v206 = v279;
  v207 = *(v279 - 8);
  if ((*(v207 + 48))(v205, 1, v279) == 1)
  {
    (*(v263 + 8))(v196, v198);
    (*(v200 + 8))(v205, v199);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v339 = *(a48 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    (v339)(v206, a48);
    (*(v207 + 8))(v205, v206);
    (*(v263 + 8))(v290, v198);
  }

  v208 = v283;
  v210 = v305;
  v209 = v306;
  v211 = v291;
  v339 = a53;
  v212 = v332;
  v213 = v341;
  *(inited + 368) = (*(v340 + 8))(v341);
  *(inited + 376) = v214;
  v215 = v212;
  v216 = v333;
  (*(v316 + 16))(v211, v215, v333);
  v217 = v281;
  (*(v210 + 32))(v281, &v211[*(v216 + 48)], v209);
  v218 = v282;
  v219 = *(v282 - 8);
  if ((*(v219 + 48))(v217, 1, v282) == 1)
  {
    (*(v267 + 8))(v211, v213);
    (*(v210 + 8))(v217, v209);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v220 = *(a50 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v220(v218, a50);
    (*(v219 + 8))(v217, v218);
    (*(v267 + 8))(v291, v341);
  }

  v221 = v342;
  v222 = v317;
  v223 = v292;
  v224 = v334;
  *(inited + 424) = (*(v343 + 8))(v342);
  *(inited + 432) = v225;
  v226 = v224;
  v227 = v335;
  (*(v319 + 16))(v223, v226, v335);
  v228 = v318;
  (*(v222 + 32))(v208, &v223[*(v227 + 48)], v318);
  v229 = v284;
  v230 = *(v284 - 8);
  if ((*(v230 + 48))(v208, 1, v284) == 1)
  {
    (*(v271 + 8))(v223, v221);
    (*(v222 + 8))(v208, v228);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v231 = *(a52 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    v231(v229, a52);
    (*(v230 + 8))(v208, v229);
    (*(v271 + 8))(v292, v342);
  }

  v232 = v338;
  v233 = v336;
  *(inited + 480) = (*(v339 + 8))(v338);
  *(inited + 488) = v234;
  v235 = v293;
  v236 = v233;
  v237 = TupleTypeMetadata2;
  (*(v320 + 16))(v293, v236, TupleTypeMetadata2);
  v238 = v321;
  v239 = &v235[*(v237 + 48)];
  v240 = v285;
  v241 = v322;
  (*(v321 + 32))(v285, v239, v322);
  v242 = v286;
  v243 = *(v286 - 8);
  if ((*(v243 + 48))(v240, 1, v286) == 1)
  {
    (*(v273 + 8))(v235, v232);
    (*(v238 + 8))(v240, v241);
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    v343 = *(a54 + 24);
    *(inited + 520) = swift_getAssociatedTypeWitness();
    *(inited + 528) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 496));
    (v343)(v242, a54);
    (*(v243 + 8))(v240, v242);
    (*(v273 + 8))(v293, v232);
  }

  v244 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v245 = sub_25F252D8C(v244);

  (*(v320 + 8))(v336, TupleTypeMetadata2);
  (*(v319 + 8))(v334, v335);
  (*(v316 + 8))(v332, v333);
  (*(v315 + 8))(v330, v331);
  (*(v314 + 8))(v328, v329);
  (*(v313 + 8))(v312, v327);
  (*(v311 + 8))(v310, v326);
  (*(v308 + 8))(v307, v309);
  (*(v304 + 8))(v278, v280);
  return v245;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V>(_:_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v309 = a8;
  v305 = a7;
  v298 = a6;
  v368 = a5;
  v295 = a1;
  v296 = a4;
  v367 = a3;
  v365 = a2;
  v315 = a49;
  v312 = a47;
  v403 = a43;
  v408 = a41;
  v407 = a39;
  v406 = a37;
  v384 = a35;
  v404 = a33;
  v405 = a31;
  v383 = a29;
  v409 = a27;
  v352 = a25;
  v349 = a24;
  v346 = a23;
  v331 = a45;
  v322 = a22;
  v307 = a21;
  v323 = a20;
  v306 = a19;
  v320 = a18;
  v304 = a17;
  v318 = a16;
  v303 = a15;
  v314 = a14;
  v302 = a13;
  v310 = a12;
  v301 = a11;
  v299 = a10;
  v297 = a9;
  v339 = a44;
  v402 = sub_25F305C1C();
  v382 = *(v402 - 8);
  v66 = *(v382 + 64);
  MEMORY[0x28223BE20](v402);
  v337 = a42;
  v338 = &v289 - v67;
  v381 = sub_25F305C1C();
  v379 = *(v381 - 8);
  v68 = *(v379 + 64);
  MEMORY[0x28223BE20](v381);
  v335 = a40;
  v336 = &v289 - v69;
  v372 = sub_25F305C1C();
  v371 = *(v372 - 8);
  v70 = *(v371 + 64);
  MEMORY[0x28223BE20](v372);
  v333 = a38;
  v334 = &v289 - v71;
  v362 = sub_25F305C1C();
  v361 = *(v362 - 8);
  v72 = *(v361 + 64);
  MEMORY[0x28223BE20](v362);
  v329 = a36;
  v330 = &v289 - v73;
  v360 = sub_25F305C1C();
  v359 = *(v360 - 8);
  v74 = *(v359 + 64);
  MEMORY[0x28223BE20](v360);
  v326 = a34;
  v327 = &v289 - v75;
  v358 = sub_25F305C1C();
  v357 = *(v358 - 8);
  v76 = *(v357 + 64);
  MEMORY[0x28223BE20](v358);
  v324 = &v289 - v77;
  v325 = a32;
  v356 = sub_25F305C1C();
  v355 = *(v356 - 8);
  v78 = *(v355 + 64);
  MEMORY[0x28223BE20](v356);
  v319 = &v289 - v79;
  v321 = a30;
  v354 = sub_25F305C1C();
  v353 = *(v354 - 8);
  v80 = *(v353 + 64);
  MEMORY[0x28223BE20](v354);
  v316 = &v289 - v81;
  v317 = a28;
  v82 = sub_25F305C1C();
  v350 = *(v82 - 8);
  v351 = v82;
  v83 = *(v350 + 64);
  MEMORY[0x28223BE20](v82);
  v311 = &v289 - v84;
  v313 = a26;
  v85 = sub_25F305C1C();
  v347 = *(v85 - 8);
  v348 = v85;
  v86 = *(v347 + 64);
  MEMORY[0x28223BE20](v85);
  v308 = &v289 - v87;
  v290 = sub_25F305C1C();
  v292 = *(v290 - 8);
  v88 = *(v292 + 64);
  MEMORY[0x28223BE20](v290);
  v294 = &v289 - v89;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v380 = *(TupleTypeMetadata2 - 8);
  v90 = *(v380 + 64);
  v91 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v345 = &v289 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v400 = &v289 - v93;
  v399 = swift_getTupleTypeMetadata2();
  v378 = *(v399 - 8);
  v94 = *(v378 + 64);
  v95 = MEMORY[0x28223BE20](v399);
  v332 = &v289 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v398 = &v289 - v97;
  v397 = swift_getTupleTypeMetadata2();
  v377 = *(v397 - 8);
  v98 = *(v377 + 64);
  v99 = MEMORY[0x28223BE20](v397);
  v328 = &v289 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v396 = &v289 - v101;
  v395 = swift_getTupleTypeMetadata2();
  v376 = *(v395 - 8);
  v102 = *(v376 + 64);
  v103 = MEMORY[0x28223BE20](v395);
  v344 = &v289 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v394 = &v289 - v105;
  v393 = swift_getTupleTypeMetadata2();
  v375 = *(v393 - 8);
  v106 = *(v375 + 64);
  v107 = MEMORY[0x28223BE20](v393);
  v343 = &v289 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v392 = &v289 - v109;
  v391 = swift_getTupleTypeMetadata2();
  v374 = *(v391 - 8);
  v110 = *(v374 + 64);
  v111 = MEMORY[0x28223BE20](v391);
  v342 = &v289 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v390 = &v289 - v113;
  v389 = swift_getTupleTypeMetadata2();
  v373 = *(v389 - 8);
  v114 = *(v373 + 64);
  v115 = MEMORY[0x28223BE20](v389);
  v341 = &v289 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v115);
  v388 = &v289 - v117;
  v387 = swift_getTupleTypeMetadata2();
  v370 = *(v387 - 8);
  v118 = *(v370 + 64);
  v119 = MEMORY[0x28223BE20](v387);
  v340 = &v289 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119);
  v386 = &v289 - v121;
  v385 = swift_getTupleTypeMetadata2();
  v369 = *(v385 - 8);
  v122 = *(v369 + 64);
  v123 = MEMORY[0x28223BE20](v385);
  v300 = &v289 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v123);
  v126 = &v289 - v125;
  v127 = v352;
  v128 = swift_getTupleTypeMetadata2();
  v366 = *(v128 - 8);
  v129 = *(v366 + 64);
  v130 = MEMORY[0x28223BE20](v128);
  v293 = &v289 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v130);
  v133 = &v289 - v132;
  v134 = v346;
  v135 = v290;
  v136 = swift_getTupleTypeMetadata2();
  v364 = v136;
  v363 = *(v136 - 8);
  v137 = *(v363 + 64);
  v138 = MEMORY[0x28223BE20](v136);
  v289 = &v289 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v138);
  v141 = &v289 - v140;
  v291 = *(v134 - 8);
  (*(v291 + 16))(&v289 - v140, v295, v134);
  v142 = v292;
  (*(v292 + 16))(&v141[*(v136 + 48)], v365, v135);
  v295 = *(v127 - 8);
  (*(v295 + 16))(v133, v367, v127);
  v367 = v128;
  v143 = *(v128 + 48);
  v144 = v409;
  v145 = *(v347 + 16);
  v365 = v133;
  v145(&v133[v143], v296, v348);
  v296 = *(v144 - 8);
  v146 = v134;
  (*(v296 + 16))(v126, v368, v144);
  v147 = *(v385 + 48);
  v148 = *(v350 + 16);
  v368 = v126;
  v148(&v126[v147], v298, v351);
  v298 = *(v383 - 8);
  v149 = v386;
  (*(v298 + 16))(v386, v305);
  v150 = v405;
  (*(v353 + 16))(&v149[*(v387 + 48)], v309, v354);
  v305 = *(v150 - 8);
  v151 = v388;
  (*(v305 + 16))(v388, v297, v150);
  (*(v355 + 16))(&v151[*(v389 + 48)], v299, v356);
  v309 = *(v404 - 8);
  v152 = v390;
  (*(v309 + 16))(v390, v301);
  (*(v357 + 16))(&v152[*(v391 + 48)], v310, v358);
  v310 = *(v384 - 8);
  v153 = v392;
  (*(v310 + 16))(v392, v302);
  (*(v359 + 16))(&v153[*(v393 + 48)], v314, v360);
  v314 = *(v406 - 1);
  v154 = v394;
  (*(v314 + 16))(v394, v303);
  (*(v361 + 16))(&v154[*(v395 + 48)], v318, v362);
  v318 = *(v407 - 1);
  v155 = v396;
  (*(v318 + 16))(v396, v304);
  (*(v371 + 16))(&v155[*(v397 + 48)], v320, v372);
  v320 = *(v408 - 8);
  v156 = v398;
  (*(v320 + 16))(v398, v306);
  (*(v379 + 16))(&v156[*(v399 + 48)], v323, v381);
  v323 = *(v403 - 8);
  v157 = v400;
  (*(v323 + 16))(v400, v307);
  (*(v382 + 16))(&v157[*(TupleTypeMetadata2 + 48)], v322, v402);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310390;
  *(inited + 32) = (*(v331 + 1))(v146);
  v322 = inited + 32;
  *(inited + 40) = v159;
  v160 = *(v363 + 16);
  v161 = v289;
  v331 = v141;
  v162 = v364;
  v160(v289, v141, v364);
  v163 = *(v162 + 48);
  v164 = v294;
  v165 = v161;
  (*(v142 + 32))(v294, &v161[v163], v135);
  v166 = *(v349 - 8);
  v167 = v349;
  if ((*(v166 + 48))(v164, 1) == 1)
  {
    (*(v291 + 8))(v165, v346);
    (*(v142 + 8))(v164, v135);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v168 = *(a46 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v168(v167, a46);
    (*(v166 + 8))(v164, v167);
    (*(v291 + 8))(v165, v346);
  }

  v349 = a51;
  v169 = v365;
  v170 = v352;
  *(inited + 88) = (*(v312 + 8))(v352);
  *(inited + 96) = v171;
  v172 = v293;
  v173 = v169;
  v174 = v367;
  (*(v366 + 16))(v293, v173, v367);
  v176 = v347;
  v175 = v348;
  v177 = v308;
  (*(v347 + 32))(v308, &v172[*(v174 + 48)], v348);
  v178 = v313;
  v179 = *(v313 - 8);
  if ((*(v179 + 48))(v177, 1, v313) == 1)
  {
    (*(v295 + 8))(v172, v170);
    (*(v176 + 8))(v177, v175);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v348 = *(a48 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v348(v178, a48);
    (*(v179 + 8))(v177, v178);
    (*(v295 + 8))(v172, v170);
  }

  v180 = v311;
  v182 = v350;
  v181 = v351;
  v183 = v300;
  v352 = a53;
  v184 = v368;
  *(inited + 144) = (*(v315 + 8))(v409);
  *(inited + 152) = v185;
  v186 = v184;
  v187 = v385;
  (*(v369 + 16))(v183, v186, v385);
  (*(v182 + 32))(v180, &v183[*(v187 + 48)], v181);
  v188 = v317;
  v189 = *(v317 - 8);
  if ((*(v189 + 48))(v180, 1, v317) == 1)
  {
    (*(v296 + 8))(v183, v409);
    (*(v182 + 8))(v180, v181);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v190 = *(a50 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v190(v188, a50);
    (*(v189 + 8))(v180, v188);
    (*(v296 + 8))(v183, v409);
  }

  v191 = v383;
  v192 = v316;
  v193 = v340;
  v383 = a55;
  v194 = v386;
  *(inited + 200) = (*(v349 + 8))(v191);
  *(inited + 208) = v195;
  v196 = v194;
  v197 = v387;
  (*(v370 + 16))(v193, v196, v387);
  v198 = v353;
  v199 = v354;
  (*(v353 + 32))(v192, &v193[*(v197 + 48)], v354);
  v200 = v321;
  v201 = *(v321 - 8);
  if ((*(v201 + 48))(v192, 1, v321) == 1)
  {
    (*(v298 + 8))(v193, v191);
    (*(v198 + 8))(v192, v199);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v202 = *(a52 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v202(v200, a52);
    (*(v201 + 8))(v192, v200);
    (*(v298 + 8))(v340, v191);
  }

  v203 = v405;
  v204 = v357;
  v357 = a57;
  v205 = v388;
  *(inited + 256) = (*(v352 + 8))(v405);
  *(inited + 264) = v206;
  v207 = v341;
  v208 = v205;
  v209 = v389;
  (*(v373 + 16))(v341, v208, v389);
  v210 = v355;
  v211 = v319;
  v212 = v356;
  (*(v355 + 32))(v319, &v207[*(v209 + 48)], v356);
  v213 = v325;
  v214 = *(v325 - 8);
  if ((*(v214 + 48))(v211, 1, v325) == 1)
  {
    (*(v305 + 8))(v207, v203);
    (*(v210 + 8))(v211, v212);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v215 = *(a54 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v215(v213, a54);
    (*(v214 + 8))(v211, v213);
    (*(v305 + 8))(v341, v405);
  }

  v216 = v324;
  v217 = v358;
  v409 = a59;
  v218 = v390;
  v219 = v404;
  *(inited + 312) = (*(v383 + 8))(v404);
  *(inited + 320) = v220;
  v221 = v342;
  v222 = v218;
  v223 = v391;
  (*(v374 + 16))(v342, v222, v391);
  (*(v204 + 32))(v216, &v221[*(v223 + 48)], v217);
  v224 = v326;
  v225 = *(v326 - 8);
  if ((*(v225 + 48))(v216, 1, v326) == 1)
  {
    (*(v309 + 8))(v221, v219);
    (*(v204 + 8))(v216, v217);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v226 = *(a56 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v226(v224, a56);
    (*(v225 + 8))(v216, v224);
    (*(v309 + 8))(v342, v404);
  }

  v227 = v384;
  v228 = v329;
  v229 = v327;
  v405 = a61;
  v230 = v392;
  *(inited + 368) = (*(v357 + 8))(v384);
  *(inited + 376) = v231;
  v232 = v343;
  v233 = v230;
  v234 = v393;
  (*(v375 + 16))(v343, v233, v393);
  v235 = v359;
  v236 = &v232[*(v234 + 48)];
  v237 = v360;
  (*(v359 + 32))(v229, v236, v360);
  v238 = *(v228 - 8);
  if ((*(v238 + 48))(v229, 1, v228) == 1)
  {
    (*(v310 + 8))(v232, v227);
    (*(v235 + 8))(v229, v237);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v239 = *(a58 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v239(v228, a58);
    (*(v238 + 8))(v229, v228);
    (*(v310 + 8))(v343, v227);
  }

  v240 = v406;
  v241 = v362;
  v242 = v361;
  v404 = a63;
  v243 = v394;
  *(inited + 424) = (*(v409 + 8))(v406);
  *(inited + 432) = v244;
  v245 = v344;
  v246 = v243;
  v247 = v395;
  (*(v376 + 16))(v344, v246, v395);
  v248 = v330;
  (*(v242 + 32))(v330, &v245[*(v247 + 48)], v241);
  v249 = v333;
  v250 = *(v333 - 8);
  if ((*(v250 + 48))(v248, 1, v333) == 1)
  {
    (*(v314 + 8))(v245, v240);
    (*(v242 + 8))(v248, v241);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v251 = *(a60 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    v251(v249, a60);
    (*(v250 + 8))(v248, v249);
    (*(v314 + 8))(v344, v406);
  }

  v252 = v407;
  v253 = v371;
  v409 = a65;
  v254 = v396;
  *(inited + 480) = (*(v405 + 8))(v407);
  *(inited + 488) = v255;
  v256 = v328;
  v257 = v254;
  v258 = v397;
  (*(v377 + 16))(v328, v257, v397);
  v259 = v334;
  v260 = v372;
  (*(v253 + 32))(v334, &v256[*(v258 + 48)], v372);
  v261 = v335;
  v262 = *(v335 - 8);
  if ((*(v262 + 48))(v259, 1, v335) == 1)
  {
    (*(v318 + 8))(v256, v252);
    (*(v253 + 8))(v259, v260);
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    v406 = *(a62 + 24);
    *(inited + 520) = swift_getAssociatedTypeWitness();
    *(inited + 528) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 496));
    (v406)(v261, a62);
    (*(v262 + 8))(v259, v261);
    (*(v318 + 8))(v256, v407);
  }

  v263 = v408;
  v264 = v398;
  *(inited + 536) = (*(v404 + 8))(v408);
  *(inited + 544) = v265;
  v266 = v332;
  v267 = v264;
  v268 = v399;
  (*(v378 + 16))(v332, v267, v399);
  v269 = v379;
  v270 = v336;
  v271 = v381;
  (*(v379 + 32))(v336, &v266[*(v268 + 48)], v381);
  v272 = v337;
  v273 = *(v337 - 8);
  if ((*(v273 + 48))(v270, 1, v337) == 1)
  {
    (*(v320 + 8))(v266, v263);
    (*(v269 + 8))(v270, v271);
    *(inited + 584) = 0;
    *(inited + 552) = 0u;
    *(inited + 568) = 0u;
  }

  else
  {
    v407 = *(a64 + 24);
    *(inited + 576) = swift_getAssociatedTypeWitness();
    *(inited + 584) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 552));
    (v407)(v272, a64);
    (*(v273 + 8))(v270, v272);
    (*(v320 + 8))(v266, v408);
  }

  v274 = v403;
  v275 = v402;
  v276 = v400;
  *(inited + 592) = (*(v409 + 8))(v403);
  *(inited + 600) = v277;
  v278 = v345;
  v279 = v276;
  v280 = TupleTypeMetadata2;
  (*(v380 + 16))(v345, v279, TupleTypeMetadata2);
  v281 = v382;
  v282 = &v278[*(v280 + 48)];
  v283 = v338;
  (*(v382 + 32))(v338, v282, v275);
  v284 = v339;
  v285 = *(v339 - 8);
  if ((*(v285 + 48))(v283, 1, v339) == 1)
  {
    (*(v323 + 8))(v278, v274);
    (*(v281 + 8))(v283, v275);
    *(inited + 640) = 0;
    *(inited + 608) = 0u;
    *(inited + 624) = 0u;
  }

  else
  {
    v409 = *(a66 + 24);
    *(inited + 632) = swift_getAssociatedTypeWitness();
    *(inited + 640) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 608));
    (v409)(v284, a66);
    (*(v285 + 8))(v283, v284);
    (*(v323 + 8))(v345, v274);
  }

  v286 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v287 = sub_25F252D8C(v286);

  (*(v380 + 8))(v400, TupleTypeMetadata2);
  (*(v378 + 8))(v398, v399);
  (*(v377 + 8))(v396, v397);
  (*(v376 + 8))(v394, v395);
  (*(v375 + 8))(v392, v393);
  (*(v374 + 8))(v390, v391);
  (*(v373 + 8))(v388, v389);
  (*(v370 + 8))(v386, v387);
  (*(v369 + 8))(v368, v385);
  (*(v366 + 8))(v365, v367);
  (*(v363 + 8))(v331, v364);
  return v287;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X>(_:_:_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v344 = a6;
  v345 = a8;
  v412 = a7;
  v410 = a5;
  v337 = a4;
  v409 = a3;
  v407 = a2;
  v330 = a1;
  v350 = a53;
  v347 = a51;
  v450 = a47;
  v457 = a45;
  v456 = a43;
  v455 = a41;
  v454 = a39;
  v430 = a37;
  v451 = a35;
  v453 = a33;
  v429 = a31;
  v452 = a29;
  v390 = a28;
  v391 = a27;
  v387 = a26;
  v427 = a25;
  v360 = a49;
  v342 = a24;
  v341 = a23;
  v361 = a22;
  v340 = a21;
  v356 = a20;
  v339 = a19;
  v353 = a18;
  v338 = a17;
  v351 = a16;
  v336 = a15;
  v348 = a14;
  v335 = a13;
  v334 = a12;
  v333 = a11;
  v332 = a10;
  v331 = a9;
  v375 = a48;
  v449 = sub_25F305C1C();
  v426 = *(v449 - 8);
  v72 = *(v426 + 64);
  MEMORY[0x28223BE20](v449);
  v373 = a46;
  v374 = &v324 - v73;
  v425 = sub_25F305C1C();
  v424 = *(v425 - 8);
  v74 = *(v424 + 64);
  MEMORY[0x28223BE20](v425);
  v371 = a44;
  v372 = &v324 - v75;
  v417 = sub_25F305C1C();
  v416 = *(v417 - 8);
  v76 = *(v416 + 64);
  MEMORY[0x28223BE20](v417);
  v369 = a42;
  v370 = &v324 - v77;
  v404 = sub_25F305C1C();
  v403 = *(v404 - 8);
  v78 = *(v403 + 64);
  MEMORY[0x28223BE20](v404);
  v366 = a40;
  v367 = &v324 - v79;
  v401 = sub_25F305C1C();
  v400 = *(v401 - 8);
  v80 = *(v400 + 64);
  MEMORY[0x28223BE20](v401);
  v364 = a38;
  v365 = &v324 - v81;
  v399 = sub_25F305C1C();
  v398 = *(v399 - 8);
  v82 = *(v398 + 64);
  MEMORY[0x28223BE20](v399);
  v362 = &v324 - v83;
  v363 = a36;
  v397 = sub_25F305C1C();
  v396 = *(v397 - 8);
  v84 = *(v396 + 64);
  MEMORY[0x28223BE20](v397);
  v357 = &v324 - v85;
  v359 = a34;
  v395 = sub_25F305C1C();
  v394 = *(v395 - 8);
  v86 = *(v394 + 64);
  MEMORY[0x28223BE20](v395);
  v354 = &v324 - v87;
  v355 = a32;
  v393 = sub_25F305C1C();
  v392 = *(v393 - 8);
  v88 = *(v392 + 64);
  MEMORY[0x28223BE20](v393);
  v349 = &v324 - v89;
  v352 = a30;
  v389 = sub_25F305C1C();
  v388 = *(v389 - 8);
  v90 = *(v388 + 64);
  MEMORY[0x28223BE20](v389);
  v346 = &v324 - v91;
  v428 = sub_25F305C1C();
  v386 = *(v428 - 8);
  v92 = *(v386 + 64);
  MEMORY[0x28223BE20](v428);
  v343 = &v324 - v93;
  v385 = sub_25F305C1C();
  v326 = *(v385 - 8);
  v94 = *(v326 + 64);
  MEMORY[0x28223BE20](v385);
  v329 = &v324 - v95;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v423 = *(TupleTypeMetadata2 - 8);
  v96 = *(v423 + 64);
  v97 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v384 = &v324 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v447 = &v324 - v99;
  v446 = swift_getTupleTypeMetadata2();
  v422 = *(v446 - 8);
  v100 = *(v422 + 64);
  v101 = MEMORY[0x28223BE20](v446);
  v368 = &v324 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101);
  v445 = &v324 - v103;
  v444 = swift_getTupleTypeMetadata2();
  v421 = *(v444 - 8);
  v104 = *(v421 + 64);
  v105 = MEMORY[0x28223BE20](v444);
  v383 = &v324 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v105);
  v443 = &v324 - v107;
  v442 = swift_getTupleTypeMetadata2();
  v420 = *(v442 - 8);
  v108 = *(v420 + 64);
  v109 = MEMORY[0x28223BE20](v442);
  v382 = &v324 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v441 = &v324 - v111;
  v440 = swift_getTupleTypeMetadata2();
  v419 = *(v440 - 8);
  v112 = *(v419 + 64);
  v113 = MEMORY[0x28223BE20](v440);
  v358 = &v324 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113);
  v439 = &v324 - v115;
  v438 = swift_getTupleTypeMetadata2();
  v418 = *(v438 - 8);
  v116 = *(v418 + 64);
  v117 = MEMORY[0x28223BE20](v438);
  v381 = &v324 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v437 = &v324 - v119;
  v436 = swift_getTupleTypeMetadata2();
  v415 = *(v436 - 8);
  v120 = *(v415 + 64);
  v121 = MEMORY[0x28223BE20](v436);
  v380 = &v324 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v121);
  v435 = &v324 - v123;
  v434 = swift_getTupleTypeMetadata2();
  v414 = *(v434 - 8);
  v124 = *(v414 + 64);
  v125 = MEMORY[0x28223BE20](v434);
  v379 = &v324 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v125);
  v433 = &v324 - v127;
  v432 = swift_getTupleTypeMetadata2();
  v413 = *(v432 - 8);
  v128 = *(v413 + 64);
  v129 = MEMORY[0x28223BE20](v432);
  v378 = &v324 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v129);
  v132 = &v324 - v131;
  v431 = swift_getTupleTypeMetadata2();
  v411 = *(v431 - 8);
  v133 = *(v411 + 64);
  v134 = MEMORY[0x28223BE20](v431);
  v377 = &v324 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v134);
  v137 = &v324 - v136;
  v138 = v391;
  v139 = swift_getTupleTypeMetadata2();
  v408 = *(v139 - 8);
  v140 = *(v408 + 64);
  v141 = MEMORY[0x28223BE20](v139);
  v376 = &v324 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v141);
  v144 = &v324 - v143;
  v145 = v427;
  v146 = v385;
  v147 = swift_getTupleTypeMetadata2();
  v406 = v147;
  v405 = *(v147 - 8);
  v148 = *(v405 + 64);
  v149 = MEMORY[0x28223BE20](v147);
  v324 = &v324 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v149);
  v152 = &v324 - v151;
  v325 = *(v145 - 8);
  v153 = *(v325 + 16);
  v402 = &v324 - v151;
  v153(&v324 - v151, v330, v145);
  v154 = v326;
  (*(v326 + 16))(&v152[*(v147 + 48)], v407, v146);
  v327 = *(v138 - 8);
  (*(v327 + 16))(v144, v409, v138);
  v409 = v139;
  v155 = *(v139 + 48);
  v156 = *(v386 + 16);
  v407 = v144;
  v156(&v144[v155], v337, v428);
  v328 = *(v452 - 8);
  (*(v328 + 16))(v137, v410);
  v157 = *(v431 + 48);
  v158 = *(v388 + 16);
  v410 = v137;
  v159 = v400;
  v158(&v137[v157], v344, v389);
  v330 = *(v429 - 8);
  (*(v330 + 16))(v132, v412);
  v160 = *(v432 + 48);
  v161 = *(v392 + 16);
  v412 = v132;
  v162 = v454;
  v161(&v132[v160], v345, v393);
  v337 = *(v453 - 8);
  v163 = v433;
  (*(v337 + 16))(v433, v331);
  v164 = v154;
  (*(v394 + 16))(&v163[*(v434 + 48)], v332, v395);
  v344 = *(v451 - 8);
  v165 = v435;
  (*(v344 + 16))(v435, v333);
  (*(v396 + 16))(&v165[*(v436 + 48)], v334, v397);
  v345 = *(v430 - 8);
  v166 = v437;
  (*(v345 + 16))(v437, v335);
  v167 = v416;
  (*(v398 + 16))(&v166[*(v438 + 48)], v348, v399);
  v348 = *(v162 - 8);
  v168 = v439;
  (*(v348 + 16))(v439, v336, v162);
  (*(v159 + 16))(&v168[*(v440 + 48)], v351, v401);
  v351 = *(v455 - 8);
  v169 = v441;
  (*(v351 + 16))(v441, v338);
  v170 = &v169[*(v442 + 48)];
  v171 = v417;
  (*(v403 + 16))(v170, v353, v404);
  v353 = *(v456 - 1);
  v172 = v443;
  (*(v353 + 16))(v443, v339);
  (*(v167 + 16))(&v172[*(v444 + 48)], v356, v171);
  v356 = *(v457 - 1);
  v173 = v445;
  (*(v356 + 16))(v445, v340);
  (*(v424 + 16))(&v173[*(v446 + 48)], v361, v425);
  v361 = *(v450 - 8);
  v174 = v447;
  (*(v361 + 16))(v447, v341);
  (*(v426 + 16))(&v174[*(TupleTypeMetadata2 + 48)], v342, v449);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3103A0;
  v176 = v402;
  *(inited + 32) = (*(v360 + 8))(v427);
  v360 = inited + 32;
  *(inited + 40) = v177;
  v178 = v324;
  v179 = v176;
  v180 = v329;
  v181 = v406;
  (*(v405 + 16))(v324, v179, v406);
  v182 = v387;
  v183 = v178;
  v184 = &v178[*(v181 + 48)];
  v185 = v385;
  (*(v164 + 32))(v180, v184);
  v186 = *(v182 - 8);
  if ((*(v186 + 48))(v180, 1, v182) == 1)
  {
    (*(v325 + 8))(v183, v427);
    (*(v164 + 8))(v180, v185);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v187 = *(a50 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v187(v182, a50);
    (*(v186 + 8))(v180, v182);
    (*(v325 + 8))(v183, v427);
  }

  v188 = a55;
  v189 = v407;
  v190 = v391;
  *(inited + 88) = (*(v347 + 8))(v391);
  *(inited + 96) = v191;
  v192 = v376;
  v193 = v189;
  v194 = v409;
  (*(v408 + 16))(v376, v193, v409);
  v195 = v386;
  v196 = v343;
  v197 = v428;
  (*(v386 + 32))(v343, &v192[*(v194 + 48)], v428);
  v198 = v390;
  v199 = *(v390 - 8);
  if ((*(v199 + 48))(v196, 1, v390) == 1)
  {
    (*(v327 + 8))(v192, v190);
    (*(v195 + 8))(v196, v197);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v428 = a55;
    v200 = *(a52 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v200(v198, a52);
    v188 = v428;
    (*(v199 + 8))(v196, v198);
    (*(v327 + 8))(v376, v190);
  }

  v201 = v346;
  v202 = v388;
  v427 = a57;
  v203 = v410;
  v204 = v452;
  *(inited + 144) = (*(v350 + 8))(v452);
  *(inited + 152) = v205;
  v206 = v377;
  v207 = v203;
  v208 = v431;
  (*(v411 + 16))(v377, v207, v431);
  v209 = v389;
  (*(v202 + 32))(v201, &v206[*(v208 + 48)], v389);
  v210 = v352;
  v211 = *(v352 - 8);
  if ((*(v211 + 48))(v201, 1, v352) == 1)
  {
    (*(v328 + 8))(v206, v204);
    (*(v202 + 8))(v201, v209);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v212 = *(a54 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v212(v210, a54);
    (*(v211 + 8))(v201, v210);
    (*(v328 + 8))(v377, v452);
  }

  v213 = v349;
  v428 = a59;
  v214 = v412;
  v215 = v429;
  *(inited + 200) = (*(v188 + 8))(v429, v188);
  *(inited + 208) = v216;
  v217 = v378;
  v218 = v214;
  v219 = v432;
  (*(v413 + 16))(v378, v218, v432);
  v220 = v392;
  v221 = &v217[*(v219 + 48)];
  v222 = v393;
  (*(v392 + 32))(v213, v221, v393);
  v223 = v355;
  v224 = *(v355 - 8);
  if ((*(v224 + 48))(v213, 1, v355) == 1)
  {
    (*(v330 + 8))(v217, v215);
    (*(v220 + 8))(v213, v222);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v225 = *(a56 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v225(v223, a56);
    (*(v224 + 8))(v213, v223);
    (*(v330 + 8))(v378, v215);
  }

  v226 = v453;
  v227 = v396;
  v228 = v395;
  v229 = v394;
  v429 = a61;
  v230 = v433;
  *(inited + 256) = (*(v427 + 8))(v453);
  *(inited + 264) = v231;
  v232 = v379;
  v233 = v230;
  v234 = v434;
  (*(v414 + 16))(v379, v233, v434);
  v235 = v354;
  (*(v229 + 32))(v354, &v232[*(v234 + 48)], v228);
  v236 = v359;
  v237 = *(v359 - 8);
  if ((*(v237 + 48))(v235, 1, v359) == 1)
  {
    (*(v337 + 8))(v232, v226);
    (*(v229 + 8))(v235, v228);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v238 = *(a58 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v238(v236, a58);
    (*(v237 + 8))(v235, v236);
    (*(v337 + 8))(v379, v453);
  }

  v239 = v357;
  v452 = a63;
  v240 = v435;
  v241 = v451;
  *(inited + 312) = (*(v428 + 8))(v451);
  *(inited + 320) = v242;
  v243 = v380;
  v244 = v240;
  v245 = v436;
  (*(v415 + 16))(v380, v244, v436);
  v246 = v397;
  (*(v227 + 32))(v239, &v243[*(v245 + 48)], v397);
  v247 = v363;
  v248 = *(v363 - 8);
  if ((*(v248 + 48))(v239, 1, v363) == 1)
  {
    (*(v344 + 8))(v243, v241);
    (*(v227 + 8))(v239, v246);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v249 = *(a60 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v249(v247, a60);
    (*(v248 + 8))(v239, v247);
    (*(v344 + 8))(v380, v451);
  }

  v250 = v364;
  v251 = v362;
  v252 = v398;
  v451 = a65;
  v253 = v437;
  v254 = v430;
  *(inited + 368) = (*(v429 + 8))(v430);
  *(inited + 376) = v255;
  v256 = v381;
  v257 = v253;
  v258 = v438;
  (*(v418 + 16))(v381, v257, v438);
  v259 = &v256[*(v258 + 48)];
  v260 = v399;
  (*(v252 + 32))(v251, v259, v399);
  v261 = *(v250 - 8);
  if ((*(v261 + 48))(v251, 1, v250) == 1)
  {
    (*(v345 + 8))(v256, v254);
    (*(v252 + 8))(v251, v260);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v262 = *(a62 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v262(v250, a62);
    (*(v261 + 8))(v251, v250);
    (*(v345 + 8))(v381, v254);
  }

  v263 = v454;
  v264 = v358;
  v453 = a67;
  v265 = v439;
  *(inited + 424) = (*(v452 + 8))(v454);
  *(inited + 432) = v266;
  v267 = v265;
  v268 = v440;
  (*(v419 + 16))(v264, v267, v440);
  v269 = v400;
  v270 = v365;
  v271 = v401;
  (*(v400 + 32))(v365, &v264[*(v268 + 48)], v401);
  v272 = v366;
  v273 = *(v366 - 8);
  if ((*(v273 + 48))(v270, 1, v366) == 1)
  {
    (*(v348 + 8))(v264, v263);
    (*(v269 + 8))(v270, v271);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v452 = *(a64 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    (v452)(v272, a64);
    (*(v273 + 8))(v270, v272);
    (*(v348 + 8))(v264, v454);
  }

  v274 = v455;
  v275 = v404;
  v276 = v403;
  v454 = a69;
  v277 = v441;
  *(inited + 480) = (*(v451 + 8))(v455);
  *(inited + 488) = v278;
  v279 = v382;
  v280 = v277;
  v281 = v442;
  (*(v420 + 16))(v382, v280, v442);
  v282 = v367;
  (*(v276 + 32))(v367, &v279[*(v281 + 48)], v275);
  v283 = v369;
  v284 = *(v369 - 8);
  if ((*(v284 + 48))(v282, 1, v369) == 1)
  {
    (*(v351 + 8))(v279, v274);
    (*(v276 + 8))(v282, v275);
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    v285 = *(a66 + 24);
    *(inited + 520) = swift_getAssociatedTypeWitness();
    *(inited + 528) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 496));
    v285(v283, a66);
    (*(v284 + 8))(v282, v283);
    (*(v351 + 8))(v382, v455);
  }

  v286 = v456;
  v287 = v416;
  v455 = a71;
  v288 = v443;
  *(inited + 536) = (*(v453 + 8))(v456);
  *(inited + 544) = v289;
  v290 = v383;
  v291 = v288;
  v292 = v444;
  (*(v421 + 16))(v383, v291, v444);
  v293 = v370;
  v294 = v417;
  (*(v287 + 32))(v370, &v290[*(v292 + 48)], v417);
  v295 = v371;
  v296 = *(v371 - 8);
  if ((*(v296 + 48))(v293, 1, v371) == 1)
  {
    (*(v353 + 8))(v290, v286);
    (*(v287 + 8))(v293, v294);
    *(inited + 584) = 0;
    *(inited + 552) = 0u;
    *(inited + 568) = 0u;
  }

  else
  {
    v297 = *(a68 + 24);
    *(inited + 576) = swift_getAssociatedTypeWitness();
    *(inited + 584) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 552));
    v297(v295, a68);
    (*(v296 + 8))(v293, v295);
    (*(v353 + 8))(v383, v456);
  }

  v298 = v424;
  v299 = v445;
  v300 = v457;
  *(inited + 592) = (*(v454 + 8))(v457);
  *(inited + 600) = v301;
  v302 = v368;
  v303 = v299;
  v304 = v446;
  (*(v422 + 16))(v368, v303, v446);
  v305 = v372;
  v306 = v425;
  (*(v298 + 32))(v372, &v302[*(v304 + 48)], v425);
  v307 = v373;
  v308 = *(v373 - 8);
  if ((*(v308 + 48))(v305, 1, v373) == 1)
  {
    (*(v356 + 8))(v302, v300);
    (*(v298 + 8))(v305, v306);
    *(inited + 640) = 0;
    *(inited + 608) = 0u;
    *(inited + 624) = 0u;
  }

  else
  {
    v456 = *(a70 + 24);
    *(inited + 632) = swift_getAssociatedTypeWitness();
    *(inited + 640) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 608));
    (v456)(v307, a70);
    (*(v308 + 8))(v305, v307);
    (*(v356 + 8))(v302, v457);
  }

  v309 = v450;
  v310 = v449;
  v311 = v447;
  *(inited + 648) = (*(v455 + 8))(v450);
  *(inited + 656) = v312;
  v313 = v384;
  v314 = v311;
  v315 = TupleTypeMetadata2;
  (*(v423 + 16))(v384, v314, TupleTypeMetadata2);
  v316 = v426;
  v317 = &v313[*(v315 + 48)];
  v318 = v374;
  (*(v426 + 32))(v374, v317, v310);
  v319 = v375;
  v320 = *(v375 - 8);
  if ((*(v320 + 48))(v318, 1, v375) == 1)
  {
    (*(v361 + 8))(v313, v309);
    (*(v316 + 8))(v318, v310);
    *(inited + 696) = 0;
    *(inited + 664) = 0u;
    *(inited + 680) = 0u;
  }

  else
  {
    v457 = *(a72 + 24);
    *(inited + 688) = swift_getAssociatedTypeWitness();
    *(inited + 696) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 664));
    (v457)(v319, a72);
    (*(v320 + 8))(v318, v319);
    (*(v361 + 8))(v384, v309);
  }

  v321 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v322 = sub_25F252D8C(v321);

  (*(v423 + 8))(v447, TupleTypeMetadata2);
  (*(v422 + 8))(v445, v446);
  (*(v421 + 8))(v443, v444);
  (*(v420 + 8))(v441, v442);
  (*(v419 + 8))(v439, v440);
  (*(v418 + 8))(v437, v438);
  (*(v415 + 8))(v435, v436);
  (*(v414 + 8))(v433, v434);
  (*(v413 + 8))(v412, v432);
  (*(v411 + 8))(v410, v431);
  (*(v408 + 8))(v407, v409);
  (*(v405 + 8))(v402, v406);
  return v322;
}