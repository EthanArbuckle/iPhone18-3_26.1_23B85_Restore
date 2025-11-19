uint64_t sub_1BD6726BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;
    result = sub_1BE048C84();
    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v15 = sub_1BE053D64();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_1BE053B84() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

id sub_1BD672898(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v41 = a7;
  v42 = a8;
  v39 = a5;
  v40 = a6;
  v44 = a9;
  v13 = type metadata accessor for TransactionPickerView(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v43 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v38 - v19);
  type metadata accessor for TransactionPickerView.ViewModel(0);
  v21 = swift_allocObject();
  *(v21 + 40) = 0;
  *(v21 + 42) = 0;
  sub_1BE04B5C4();
  *(v21 + 88) = a1;
  v22 = [objc_allocWithZone(MEMORY[0x1E69B92F8]) initWithAccount_];
  *(v21 + 96) = a3;
  *(v21 + 104) = a4;
  v23 = a2;
  v25 = v40;
  v24 = v41;
  *(v21 + 48) = a2;
  *(v21 + 56) = v25;
  v26 = v39;
  *(v21 + 112) = v39;
  *(v21 + 120) = v24;
  *(v21 + 64) = v42;
  *(v21 + 72) = v44;
  *(v21 + 80) = v22;
  v27 = MEMORY[0x1E69E7CD0];
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  *(v21 + 24) = v27;
  *(v21 + 32) = v27;
  v28 = *(v14 + 28);
  *(v20 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  swift_storeEnumTagMultiPayload();
  v45 = v21;
  v29 = v23;
  v30 = a4;
  v31 = v26;
  sub_1BE048C84();
  v32 = v24;
  sub_1BE048964();
  sub_1BE051694();
  v33 = v47;
  *v20 = v46;
  v20[1] = v33;
  sub_1BD6732E8(v20, v43);
  v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EDB8));
  v35 = sub_1BE04F894();
  v36 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  sub_1BD674CD4(v20);
  return v36;
}

uint64_t sub_1BD672B34()
{
  result = sub_1BE04B5D4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1BD672C80()
{
  sub_1BD672D64(319, &qword_1EBD4EA98, type metadata accessor for TransactionPickerView.ViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD672D64(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD672D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD672E14()
{
  result = qword_1EBD4EAA0;
  if (!qword_1EBD4EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EAA0);
  }

  return result;
}

unint64_t sub_1BD672EB0()
{
  result = qword_1EBD4EAB8;
  if (!qword_1EBD4EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EAB8);
  }

  return result;
}

unint64_t sub_1BD672F14()
{
  result = qword_1EBD4EAF8;
  if (!qword_1EBD4EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EAE0);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB08);
    sub_1BD673098();
    swift_getOpaqueTypeConformance2();
    sub_1BD6731E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EAF8);
  }

  return result;
}

unint64_t sub_1BD673098()
{
  result = qword_1EBD4EB10;
  if (!qword_1EBD4EB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB18);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD4EB20, &qword_1EBD4EB18);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EB10);
  }

  return result;
}

unint64_t sub_1BD6731E0()
{
  result = qword_1EBD4EB28;
  if (!qword_1EBD4EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EB08);
    sub_1BD673098();
    sub_1BD0DE4F4(&qword_1EBD4EB30, &qword_1EBD4EB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EB28);
  }

  return result;
}

uint64_t sub_1BD673298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD6732E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD67334C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6733B0()
{
  v2 = *(type metadata accessor for TransactionPickerView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD126968;

  return sub_1BD66AB9C(v4, v5, v0 + v3);
}

uint64_t sub_1BD67348C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TransactionPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD66ACF8(a1, a2, v6);
}

uint64_t sub_1BD67350C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_retain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v103 = *a1;
    if (*a1)
    {
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_91;
    }

    goto LABEL_130;
  }

  v97 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_20;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * v12);
    v106 = *(*a3 + 8 * v9);
    v107 = v14;
    sub_1BE048964();
    sub_1BE048964();
    LODWORD(v103) = sub_1BD6719B4(&v107, &v106, a5);
    if (v6)
    {
LABEL_102:
    }

    v15 = v11 + 2;
    v98 = v11;
    v16 = 8 * v11;
    v17 = (v13 + v16 + 16);
    while (v8 != v15)
    {
      v18 = *v17;
      v106 = *(v17 - 1);
      v107 = v18;
      sub_1BE048964();
      sub_1BE048964();
      v19 = sub_1BD6719B4(&v107, &v106, a5);

      ++v15;
      ++v17;
      if ((v103 ^ v19))
      {
        v8 = v15 - 1;
        break;
      }
    }

    if ((v103 & 1) == 0)
    {
      goto LABEL_18;
    }

    v20 = v98;
    if (v8 < v98)
    {
      goto LABEL_124;
    }

    if (v98 < v8)
    {
      v21 = 8 * v8 - 8;
      v22 = v8;
      do
      {
        if (v20 != --v22)
        {
          v23 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v24 = *(v23 + v16);
          *(v23 + v16) = *(v23 + v21);
          *(v23 + v21) = v24;
        }

        ++v20;
        v21 -= 8;
        v16 += 8;
      }

      while (v20 < v22);
LABEL_18:
      v12 = v8;
      v11 = v98;
      goto LABEL_20;
    }

    v12 = v8;
    v11 = v98;
LABEL_20:
    v25 = a3[1];
    if (v12 >= v25)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_120;
    }

    if (v12 - v11 >= v97)
    {
      goto LABEL_133;
    }

    v26 = v11 + v97;
    if (__OFADD__(v11, v97))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:

      __break(1u);
LABEL_126:

      __break(1u);
      goto LABEL_127;
    }

    if (v26 >= v25)
    {
      v26 = a3[1];
    }

    if (v26 < v11)
    {
      goto LABEL_123;
    }

    if (v12 == v26)
    {
LABEL_133:
      if (v12 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = *a3;
      v78 = (*a3 + 8 * v12 - 8);
      v99 = v11;
      v79 = v11 - v12;
      v96 = v26;
      do
      {
        v102 = v12;
        v103 = v79;
        v80 = *(v77 + 8 * v12);
        v81 = v79;
        v82 = v78;
        do
        {
          v106 = *v78;
          v107 = v80;
          sub_1BE048964();
          sub_1BE048964();
          v83 = sub_1BD6719B4(&v107, &v106, a5);
          if (v6)
          {
            goto LABEL_102;
          }

          v84 = v83;

          if ((v84 & 1) == 0)
          {
            break;
          }

          if (!v77)
          {
            goto LABEL_126;
          }

          v85 = *v78;
          v80 = v78[1];
          *v78 = v80;
          v78[1] = v85;
          --v78;
        }

        while (!__CFADD__(v81++, 1));
        v12 = v102 + 1;
        v78 = v82 + 1;
        v79 = v103 - 1;
      }

      while (v102 + 1 != v96);
      v12 = v96;
      v11 = v99;
      if (v96 < v99)
      {
        goto LABEL_119;
      }
    }

    v101 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BD1D7844(0, *(v10 + 2) + 1, 1, v10);
    }

    v28 = *(v10 + 2);
    v27 = *(v10 + 3);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      v10 = sub_1BD1D7844((v27 > 1), v28 + 1, 1, v10);
    }

    *(v10 + 2) = v29;
    v30 = &v10[16 * v28];
    *(v30 + 4) = v11;
    *(v30 + 5) = v101;
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v28)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v101;
    if (v101 >= v8)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v31 = v29 - 1;
    if (v29 >= 4)
    {
      v36 = &v10[16 * v29 + 32];
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_106;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_107;
      }

      v43 = &v10[16 * v29];
      v45 = *v43;
      v44 = *(v43 + 1);
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_109;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_112;
      }

      if (v47 >= v39)
      {
        v65 = &v10[16 * v31 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_118;
        }

        if (v34 < v68)
        {
          v31 = v29 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

    if (v29 == 3)
    {
      v32 = *(v10 + 4);
      v33 = *(v10 + 5);
      v42 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      v35 = v42;
LABEL_48:
      if (v35)
      {
        goto LABEL_108;
      }

      v48 = &v10[16 * v29];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      v53 = v51;
      if (v51)
      {
        goto LABEL_111;
      }

      v54 = &v10[16 * v31 + 32];
      v56 = *v54;
      v55 = *(v54 + 1);
      v42 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v42)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v52, v57))
      {
        goto LABEL_115;
      }

      if (v52 + v57 >= v34)
      {
        if (v34 < v57)
        {
          v31 = v29 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_62;
    }

    v58 = &v10[16 * v29];
    v60 = *v58;
    v59 = *(v58 + 1);
    v42 = __OFSUB__(v59, v60);
    v52 = v59 - v60;
    v53 = v42;
LABEL_62:
    if (v53)
    {
      goto LABEL_110;
    }

    v61 = &v10[16 * v31];
    v63 = *(v61 + 4);
    v62 = *(v61 + 5);
    v42 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v42)
    {
      goto LABEL_113;
    }

    if (v64 < v52)
    {
      goto LABEL_3;
    }

LABEL_69:
    v69 = v31 - 1;
    if (v31 - 1 >= v29)
    {
      break;
    }

    v70 = *a3;
    if (!*a3)
    {
      goto LABEL_125;
    }

    v71 = *&v10[16 * v69 + 32];
    v72 = *&v10[16 * v31 + 40];
    v73 = (v70 + 8 * v71);
    v74 = (v70 + 8 * *&v10[16 * v31 + 32]);
    v75 = (v70 + 8 * v72);
    sub_1BE048964();
    sub_1BD6722FC(v73, v74, v75, v103, a5);
    if (v6)
    {
    }

    if (v72 < v71)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BD5ED6C8(v10);
    }

    if (v69 >= *(v10 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v10[16 * v69];
    *(v76 + 4) = v71;
    *(v76 + 5) = v72;
    v108 = v10;
    sub_1BD5ED63C(v31);
    v10 = v108;
    v29 = *(v108 + 2);
    if (v29 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v10 = sub_1BD5ED6C8(v10);
LABEL_91:
  v108 = v10;
  v87 = *(v10 + 2);
  if (v87 < 2)
  {
LABEL_99:
  }

  else
  {
    while (1)
    {
      v88 = *a3;
      if (!*a3)
      {
        break;
      }

      v89 = *&v10[16 * v87];
      v90 = *&v10[16 * v87 + 24];
      v91 = (v88 + 8 * v89);
      v92 = (v88 + 8 * *&v10[16 * v87 + 16]);
      v93 = (v88 + 8 * v90);
      sub_1BE048964();
      sub_1BD6722FC(v91, v92, v93, v103, a5);
      if (v6)
      {
        goto LABEL_99;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1BD5ED6C8(v10);
      }

      if (v87 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v94 = &v10[16 * v87];
      *v94 = v89;
      *(v94 + 1) = v90;
      v108 = v10;
      sub_1BD5ED63C(v87 - 1);
      v10 = v108;
      v87 = *(v108 + 2);
      if (v87 <= 1)
      {
        goto LABEL_99;
      }
    }

LABEL_127:

    __break(1u);
LABEL_128:

    __break(1u);
LABEL_129:

    __break(1u);
LABEL_130:

    __break(1u);
  }

  return result;
}

uint64_t sub_1BD673C80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 8 * a3 - 8);
    v10 = result - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v16 = v10;
    v17 = v9;
    while (1)
    {
      v19 = v11;
      v18 = *v9;
      sub_1BE048964();
      sub_1BE048964();
      v12 = sub_1BD6719B4(&v19, &v18, a5);

      if (v5)
      {
        break;
      }

      if (v12)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v13 = *v9;
        v11 = v9[1];
        *v9 = v11;
        v9[1] = v13;
        --v9;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v17 + 1;
      v10 = v16 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1BD673D78(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1BE053B14();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1BE0527B4();
        *(v8 + 16) = v7;
      }

      v9[0] = v8 + 32;
      v9[1] = v7;
      sub_1BE048964();
      sub_1BD67350C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1BE048964();
    sub_1BD673C80(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1BD673EC0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1BD5F0648(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1BE048964();
  sub_1BD673D78(v8, a2);

  sub_1BE0538D4();
}

uint64_t objectdestroy_59Tm_2()
{
  v1 = (type metadata accessor for TransactionPickerView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1BE04E354();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD6740FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD673298(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD6741B0()
{
  result = qword_1EBD4EBD0;
  if (!qword_1EBD4EBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EBD8);
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EBD0);
  }

  return result;
}

uint64_t sub_1BD6742AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransactionPickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD674360()
{
  result = qword_1EBD4EC70;
  if (!qword_1EBD4EC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EC68);
    sub_1BD19D16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EC70);
  }

  return result;
}

unint64_t sub_1BD6743F4()
{
  result = qword_1EBD4ECB0;
  if (!qword_1EBD4ECB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ECA8);
    sub_1BD6740FC(&qword_1EBD4ECB8, &qword_1EBD4ECC0, &unk_1BE0EC9D8, sub_1BD6744A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ECB0);
  }

  return result;
}

unint64_t sub_1BD6744A4()
{
  result = qword_1EBD4ECC8;
  if (!qword_1EBD4ECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ECD0);
    sub_1BD67455C();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ECC8);
  }

  return result;
}

unint64_t sub_1BD67455C()
{
  result = qword_1EBD4ECD8;
  if (!qword_1EBD4ECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ECE0);
    sub_1BD628C9C();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ECD8);
  }

  return result;
}

unint64_t sub_1BD67461C()
{
  result = qword_1EBD4ECF0;
  if (!qword_1EBD4ECF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EC90);
    sub_1BD0DE4F4(&qword_1EBD4ECF8, &qword_1EBD4ED00);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ECF0);
  }

  return result;
}

unint64_t sub_1BD674728()
{
  result = qword_1EBD4ED28;
  if (!qword_1EBD4ED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ED18);
    sub_1BD6747E0();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED28);
  }

  return result;
}

unint64_t sub_1BD6747E0()
{
  result = qword_1EBD4ED30;
  if (!qword_1EBD4ED30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ED38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37358);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);
    sub_1BD67491C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED30);
  }

  return result;
}

unint64_t sub_1BD67491C()
{
  result = qword_1EBD4ED40;
  if (!qword_1EBD4ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED40);
  }

  return result;
}

unint64_t sub_1BD674970()
{
  result = qword_1EBD4ED68;
  if (!qword_1EBD4ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4ED60);
    sub_1BD672E14();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED68);
  }

  return result;
}

unint64_t sub_1BD674A34()
{
  result = qword_1EBD4ED80;
  if (!qword_1EBD4ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED80);
  }

  return result;
}

unint64_t sub_1BD674AC0()
{
  result = qword_1EBD4ED98;
  if (!qword_1EBD4ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4ED98);
  }

  return result;
}

uint64_t sub_1BD674B98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD670D6C(a1, v4, v5, v6);
}

uint64_t sub_1BD674C4C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_1BE048C84();
}

uint64_t sub_1BD674C98()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  sub_1BE048C84();
}

uint64_t sub_1BD674CD4(uint64_t a1)
{
  v2 = type metadata accessor for TransactionPickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD674D98()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v3 = v22[0];
  if (v22[0])
  {
    v4 = [v22[0] currencyCode];
    if (v4)
    {
      v5 = v4;
      sub_1BE052434();
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
    sub_1BE051914();
    v19 = *v22;
    v20 = v23;
    v21 = v24;
    MEMORY[0x1BFB3E970](&v18, v8);
    v9 = sub_1BE053344();
    sub_1BD0DE53C(v22, &unk_1EBD4EED0);
    if (v7)
    {
      v10 = sub_1BE052404();
    }

    else
    {
      v10 = 0;
    }

    v11 = [objc_allocWithZone(PKEnterCurrencyAmountView) initWithCurrency:v10 amount:v9];

    if (v11)
    {
      v12 = [v11 backgroundColor];
      [v11 setKeyboardColor_];

      [v11 setShowsDecimalPointButton_];
      v13 = *MEMORY[0x1E69DB980];
      v14 = PKRoundedSystemFontOfSizeAndWeight(60.0, *MEMORY[0x1E69DB980]);
      v15 = PKRoundedSystemFontOfSizeAndWeight(36.0, v13);
      [v11 setAmountFont_];
      [v11 setCurrencySymbolFont_];
      v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      [v11 setKerning_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF08);
      sub_1BE04FF74();
      v17 = v19;
      [v11 setDelegate_];

      if (*(v1 + 96))
      {
        [v11 setCurrentAmount_];
      }

      sub_1BD6750D4(v11);
    }

    else
    {
      v11 = [objc_allocWithZone(PKEnterCurrencyAmountView) init];
      v15 = v3;
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD6750D4(void *a1)
{
  v13 = *(v1 + 144);
  v14 = v13;
  v15 = *(&v13 + 1);
  sub_1BD0DE19C(&v15, v12, &unk_1EBD4EF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if (v12[0])
  {
    goto LABEL_10;
  }

  v3 = *(v1 + 112);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v4 displayableDenominations];
  if (v5)
  {
    if (PKIsVision())
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1BD677224();
    sub_1BE052744();
    v5 = sub_1BE052724();

    if (PKIsVision())
    {
      goto LABEL_8;
    }
  }

  if (!_UISolariumFeatureFlagEnabled())
  {

    v9 = [objc_allocWithZone(PKNumberPadSuggestionsView) initWithDefaultFrame];
    if (!v9)
    {
      sub_1BD0DE53C(&v14, &qword_1EBD54350);

      return;
    }

    v5 = v9;
    v10 = [v4 displayableDenominations];
    if (!v10)
    {
      sub_1BD677224();
      sub_1BE052744();
      v10 = sub_1BE052724();
    }

    [v5 setSuggestions_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF08);
    sub_1BE04FF74();
    v11 = v13;
    [v5 setDelegate_];

    [a1 setInputAccessoryView_];
    goto LABEL_9;
  }

LABEL_8:
  [a1 setAmountSuggestions_];
LABEL_9:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF08);
  sub_1BE04FF74();
  v6 = v13;
  v7 = *(v13 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_view);
  *(v13 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_view) = a1;
  v8 = a1;

  v13 = v14;
  v12[0] = 1;
  sub_1BE0516B4();

LABEL_10:
  sub_1BD0DE53C(&v14, &qword_1EBD54350);
}

id sub_1BD67536C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF08);
  sub_1BE04FF74();
  v3 = v11;
  v12 = *(v1 + 112);
  v4 = *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration];
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration] = v12;
  sub_1BD0DE19C(&v12, v10, &qword_1EBD4EF00);

  sub_1BE04FF74();
  v5 = v11;
  v6 = *(v1 + 104);
  v7 = *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel];
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel] = v6;
  v8 = v6;

  if (v12)
  {
    sub_1BD6750D4(a1);
    [a1 showKeyboard];
  }

  return [a1 sizeToFit];
}

id sub_1BD675474()
{
  v1 = v0;
  v29 = *(v0 + 120);
  LOBYTE(v30) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  sub_1BE051914();
  v2 = v26;
  v3 = v27;
  v4 = v0[1];
  v26 = *v0;
  v27 = v4;
  v28 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
  sub_1BE051914();
  v5 = *(v0 + 56);
  v26 = *(v0 + 40);
  v27 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
  sub_1BE051914();
  v22 = *v24;
  v6 = *&v24[16];
  v7 = v25;
  v26 = *(v0 + 72);
  *&v27 = *(v0 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EEE0);
  sub_1BE051914();
  v8 = *v24;
  v9 = type metadata accessor for AppleBalanceEnterAmountView.Coordinator();
  v21 = *&v24[8];
  v10 = *(v1 + 13);
  *&v26 = *(v1 + 14);
  v11 = objc_allocWithZone(v9);
  v12 = OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration;
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration] = 0;
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_view] = 0;
  v13 = &v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__addDisabled];
  *v13 = v2;
  v13[16] = v3;
  v14 = &v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount];
  v15 = v29;
  v16 = v30;
  *(v14 + 8) = v31;
  *v14 = v15;
  *(v14 + 1) = v16;
  v17 = &v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide];
  *v17 = v22;
  *(v17 + 2) = v6;
  *(v17 + 3) = v7;
  v18 = &v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor];
  *v18 = v8;
  *(v18 + 8) = v21;
  *&v11[OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel] = v10;
  *&v11[v12] = v26;
  v19 = v10;
  sub_1BD0DE19C(&v26, v24, &qword_1EBD4EF00);
  v23.receiver = v11;
  v23.super_class = v9;
  return objc_msgSendSuper2(&v23, sel_init);
}

void sub_1BD6756EC(void *a1)
{
  if (a1)
  {
    v2 = [a1 currentAmount];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1BE0533F4();
      v6 = v5;
      v8 = v7;

      v9 = (v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
      v10 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 16);
      v20[0] = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
      v20[1] = v10;
      v21 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 32);
      v11 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 16);
      v17 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
      v18 = v11;
      v19 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 32);
      v14 = v4;
      v15 = v6;
      v16 = v8;
      sub_1BD0DE19C(v20, v22, &unk_1EBD4EED0);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
      sub_1BE0518F4();
      v22[0] = v17;
      v22[1] = v18;
      v23 = v19;
      sub_1BD0DE53C(v22, &unk_1EBD4EED0);
      sub_1BD675BA4();
      v13 = v9[1];
      v17 = *v9;
      v18 = v13;
      v19 = *(v9 + 8);
      MEMORY[0x1BFB3E970](&v14, v12);
      sub_1BD675914(v14, v15, v16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD675914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    v10 = v4;
    sub_1BE04D8B4();

    if (v39)
    {
      v11 = [v39 accountSummary];

      if (v11)
      {
        v12 = [v11 currentBalance];

        if (v12)
        {
          v13 = [v10 minAmount];
          v14 = sub_1BE0533F4();
          v16 = v15;
          v18 = v17;

          v19 = [v10 maxAmount];
          v20 = sub_1BE0533F4();
          v37 = v21;
          v38 = v20;
          v36 = v22;

          sub_1BE0533F4();
          v23 = sub_1BE053384();
          v34 = v24;
          v35 = v23;
          v33 = v25;
          v26 = [v10 maxBalance];
          v27 = sub_1BE0533F4();
          v31 = v28;
          v32 = v27;
          v30 = v29;

          if ((MEMORY[0x1BFB403F0](a1, a2, a3, v14, v16, v18) & 1) == 0 && (MEMORY[0x1BFB403F0](v38, v37, v36, a1, a2, a3) & 1) == 0)
          {
            MEMORY[0x1BFB403F0](v32, v31, v30, v35, v34, v33);
          }

          sub_1BE048964();
          sub_1BE048964();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
          sub_1BE0518F4();
        }
      }
    }
  }
}

void sub_1BD675BA4()
{
  v1 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v95 - v8;
  v10 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration);
  if (v10)
  {
    v105 = v7;
    v11 = v10;
    v12 = [v11 minAmount];
    v104 = sub_1BE0533F4();
    v14 = v13;
    v103 = v15;

    v16 = [v11 maxAmount];
    v17 = sub_1BE0533F4();
    v101 = v18;
    v102 = v17;
    v100 = v19;

    v20 = [v11 maxBalance];
    v21 = sub_1BE0533F4();
    v98 = v22;
    v99 = v21;
    v97 = v23;

    v24 = OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel;
    v25 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_accountModel);
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;
    sub_1BE04D8B4();

    v27 = v109;
    if (!v109)
    {
      goto LABEL_12;
    }

    v28 = [v109 accountSummary];

    if (!v28)
    {
      goto LABEL_12;
    }

    v29 = [v28 currentBalance];

    if (!v29)
    {
      goto LABEL_12;
    }

    v96 = v29;
    v30 = *(v0 + v24);
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v30;
    sub_1BE04D8B4();

    v32 = v109;
    if (!v109)
    {
      __break(1u);
      goto LABEL_33;
    }

    v33 = [v109 currencyCode];

    v95 = v0;
    v34 = (v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
    v35 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 16);
    v109 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount);
    v110 = v35;
    v111 = *(v0 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amount + 32);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EED0);
    MEMORY[0x1BFB3E970](&v106);
    if ((sub_1BE053444() & 1) == 0)
    {
      v37 = v34[1];
      v109 = *v34;
      v110 = v37;
      v111 = *(v34 + 8);
      MEMORY[0x1BFB3E970](&v106, v36);
      if ((sub_1BE053414() & 1) == 0)
      {

        return;
      }
    }

    v38 = v34[1];
    v109 = *v34;
    v110 = v38;
    v111 = *(v34 + 8);
    MEMORY[0x1BFB3E970](&v106, v36);
    if (sub_1BE053414())
    {
      (*(v105 + 104))(v9, *MEMORY[0x1E69B8060], v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1BE0B69E0;
      v40 = v96;
      v41 = PKCurrencyAmountMake();

      if (v41)
      {
        v42 = [v41 minimalFormattedStringValue];

        v43 = v95;
        if (v42)
        {
          v44 = sub_1BE052434();
          v46 = v45;

          *(v39 + 56) = MEMORY[0x1E69E6158];
          *(v39 + 64) = sub_1BD110550();
          *(v39 + 32) = v44;
          *(v39 + 40) = v46;
          v47 = sub_1BE04B714();
          v49 = v48;

          (*(v105 + 8))(v9, v1);
          v51 = *(v43 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 16);
          v50 = *(v43 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 24);
          v109 = *(v43 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide);
          *&v110 = v51;
          *(&v110 + 1) = v50;
          v106 = v47;
          v107 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
          sub_1BE0518F4();
          v52 = sub_1BE051494();
          v53 = *(v43 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor + 8);
          v54 = *(v43 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor + 16);
          *&v109 = *(v43 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor);
          *(&v109 + 1) = v53;
          *&v110 = v54;
          v106 = v52;
          sub_1BE048964();
          sub_1BE048964();
          sub_1BE048964();
          sub_1BE048964();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EEE0);
          sub_1BE0518F4();

LABEL_12:
          return;
        }

        goto LABEL_34;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v55 = v34[1];
    v109 = *v34;
    v110 = v55;
    v111 = *(v34 + 8);
    MEMORY[0x1BFB3E970](&v106, v36);
    if (MEMORY[0x1BFB403F0](v106, v107, v108, v104, v14, v103))
    {
      v56 = sub_1BE053344();
      v57 = PKCurrencyAmountMake();

      if (!v57)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v58 = [v57 minimalFormattedStringValue];

      v59 = v95;
      if (v58)
      {
        goto LABEL_22;
      }

LABEL_31:

      return;
    }

    v60 = v34[1];
    v109 = *v34;
    v110 = v60;
    v111 = *(v34 + 8);
    MEMORY[0x1BFB3E970](&v106, v36);
    if (MEMORY[0x1BFB403F0](v102, v101, v100, v106, v107, v108))
    {
      v61 = sub_1BE053344();
      v62 = PKCurrencyAmountMake();

      if (!v62)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v58 = [v62 minimalFormattedStringValue];

      v59 = v95;
      if (!v58)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v76 = v34[1];
      v109 = *v34;
      v110 = v76;
      v111 = *(v34 + 8);
      MEMORY[0x1BFB3E970](&v106, v36);
      sub_1BE0533F4();
      v77 = sub_1BE053384();
      if ((MEMORY[0x1BFB403F0](v99, v98, v97, v77, v78, v79) & 1) == 0)
      {
        v82 = sub_1BE053344();
        v83 = PKCurrencyAmountMake();

        v59 = v95;
        if (!v83)
        {
LABEL_38:
          __break(1u);
          return;
        }

        v84 = [v83 minimalFormattedStringValue];

        if (v84)
        {
          v85 = sub_1BE052434();
          v87 = v86;

          v88 = v105;
          (*(v105 + 104))(v4, *MEMORY[0x1E69B8060], v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v89 = swift_allocObject();
          *(v89 + 16) = xmmword_1BE0B69E0;
          *(v89 + 56) = MEMORY[0x1E69E6158];
          *(v89 + 64) = sub_1BD110550();
          *(v89 + 32) = v85;
          *(v89 + 40) = v87;
          v90 = sub_1BE04B714();
          v92 = v91;

          (*(v88 + 8))(v4, v1);
          v94 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 16);
          v93 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 24);
          v109 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide);
          *&v110 = v94;
          *(&v110 + 1) = v93;
          v106 = v90;
          v107 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
          sub_1BE0518F4();
          v73 = sub_1BE051494();
          goto LABEL_23;
        }

        goto LABEL_31;
      }

      v80 = sub_1BE053344();
      v81 = PKCurrencyAmountMake();

      v59 = v95;
      if (!v81)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v58 = [v81 minimalFormattedStringValue];

      if (!v58)
      {
        goto LABEL_31;
      }
    }

LABEL_22:
    v63 = sub_1BE052434();
    v65 = v64;

    v66 = v105;
    (*(v105 + 104))(v4, *MEMORY[0x1E69B8060], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1BE0B69E0;
    *(v67 + 56) = MEMORY[0x1E69E6158];
    *(v67 + 64) = sub_1BD110550();
    *(v67 + 32) = v63;
    *(v67 + 40) = v65;
    v68 = sub_1BE04B714();
    v70 = v69;

    (*(v66 + 8))(v4, v1);
    v72 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 16);
    v71 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide + 24);
    v109 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuide);
    *&v110 = v72;
    *(&v110 + 1) = v71;
    v106 = v68;
    v107 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70);
    sub_1BE0518F4();
    v73 = sub_1BE051464();
LABEL_23:
    v74 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor + 8);
    v75 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor + 16);
    *&v109 = *(v59 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator__amountGuideColor);
    *(&v109 + 1) = v74;
    *&v110 = v75;
    v106 = v73;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4EEE0);
    sub_1BE0518F4();
  }
}

id sub_1BD676770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleBalanceEnterAmountView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BD67695C@<X0>(void *a1@<X8>)
{
  result = sub_1BD675474();
  *a1 = result;
  return result;
}

uint64_t sub_1BD676984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6771D0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD6769E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6771D0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD676A4C()
{
  sub_1BD6771D0();
  sub_1BE04F964();
  __break(1u);
}

void sub_1BD676A74(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_configuration);
  if (v3)
  {
    if (a2)
    {
      v5 = sub_1BE0533F4();
      v7 = v6;
      v9 = v8;
      v10 = v3;
      v11 = [v10 maxAmount];
      v12 = sub_1BE0533F4();
      v14 = v13;
      v16 = v15;

      sub_1BD675914(v5, v7, v9);
      if (a1)
      {
        v17 = sub_1BE0533F4();
        v19 = v18;
        v21 = v20;
        if (MEMORY[0x1BFB403F0](v12, v14, v16, v5, v7, v9))
        {
          MEMORY[0x1BFB403F0](v12, v14, v16, v17, v19, v21);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BD676B98(void *a1)
{
  if (a1)
  {
    v2 = [a1 value];
    if (v2)
    {
      v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI27AppleBalanceEnterAmountView11Coordinator_view);
      if (v3)
      {
        v6 = v2;
        v4 = v3;
        [v4 setCurrentAmount_];
        v5 = v4;
        sub_1BD6756EC(v3);

        v2 = v5;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t destroy for AppleBalanceEnterAmountView(id *a1)
{
}

uint64_t initializeWithCopy for AppleBalanceEnterAmountView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;
  v7 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v7;
  v8 = *(a2 + 104);
  v14 = *(a2 + 112);
  *(a1 + 104) = v8;
  *(a1 + 112) = v14;
  v9 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v9;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  v10 = v7;
  v11 = v8;
  v12 = v14;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  return a1;
}

uint64_t assignWithCopy for AppleBalanceEnterAmountView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1BE048964();

  *(a1 + 8) = *(a2 + 8);
  sub_1BE048964();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);
  sub_1BE048964();

  *(a1 + 48) = *(a2 + 48);
  sub_1BE048964();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_1BE048C84();

  *(a1 + 72) = *(a2 + 72);
  sub_1BE048964();

  *(a1 + 80) = *(a2 + 80);
  sub_1BE048964();

  *(a1 + 88) = *(a2 + 88);
  sub_1BE048964();

  v4 = *(a1 + 96);
  v5 = *(a2 + 96);
  *(a1 + 96) = v5;
  v6 = v5;

  v7 = *(a2 + 104);
  v8 = *(a1 + 104);
  *(a1 + 104) = v7;
  v9 = v7;

  v10 = *(a1 + 112);
  v11 = *(a2 + 112);
  *(a1 + 112) = v11;
  v12 = v11;

  *(a1 + 120) = *(a2 + 120);
  sub_1BE048964();

  *(a1 + 128) = *(a2 + 128);
  sub_1BE048964();

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  sub_1BE048964();

  return a1;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t assignWithTake for AppleBalanceEnterAmountView(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  v4 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t getEnumTagSinglePayload for AppleBalanceEnterAmountView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for AppleBalanceEnterAmountView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD6771D0()
{
  result = qword_1EBD4EEF8;
  if (!qword_1EBD4EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EEF8);
  }

  return result;
}

unint64_t sub_1BD677224()
{
  result = qword_1EBD4EF20;
  if (!qword_1EBD4EF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4EF20);
  }

  return result;
}

void sub_1BD6772B8()
{
  type metadata accessor for UnifiedMerchantTokenData(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MerchantTokenIconProvider();
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD677404();
        if (v3 <= 0x3F)
        {
          sub_1BD683EFC(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1BD683F4C(319, &qword_1EBD4EF50, type metadata accessor for MerchantTokenDetailView.ImageState, MEMORY[0x1E6981790]);
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

unint64_t sub_1BD677404()
{
  result = qword_1EBD4EF48;
  if (!qword_1EBD4EF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4EF48);
  }

  return result;
}

uint64_t sub_1BD677498()
{
  v0 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1BD6774F0@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  v14 = sub_1BE04AA64();
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v46 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v45 - v19;
  v21 = type metadata accessor for UnifiedMerchantTokenData(0);
  v22 = (v1 + *(v21 + 84));
  v24 = *v22;
  v23 = v22[1];
  if (sub_1BE052434() == v24 && v25 == v23)
  {

    goto LABEL_10;
  }

  v45 = v5;
  v27 = sub_1BE053B84();

  if (v27)
  {
LABEL_10:
    sub_1BD0DE19C(v1 + *(v21 + 44), v13, &unk_1EBD3CF70);
    v29 = v48;
    if ((*(v48 + 48))(v13, 1, v14) != 1)
    {
      v33 = *(v29 + 32);
      v33(v20, v13, v14);
      v34 = sub_1BE04AA44();
      if (v35)
      {
        v51 = v34;
        v52 = v35;
        v49 = 0x7370747468;
        v50 = 0xE500000000000000;
        sub_1BD0DDEBC();
        sub_1BE0535A4();
      }

      v36 = v47;
      v33(v47, v20, v14);
      goto LABEL_22;
    }

    v30 = v13;
    goto LABEL_12;
  }

  if (sub_1BE052434() == v24 && v28 == v23)
  {

    goto LABEL_17;
  }

  v37 = sub_1BE053B84();

  if ((v37 & 1) == 0)
  {
    v39 = v1 + *(v21 + 44);
    v40 = v45;
    sub_1BD0DE19C(v39, v45, &unk_1EBD3CF70);
    v41 = v48;
    if ((*(v48 + 48))(v40, 1, v14) != 1)
    {
      v42 = *(v41 + 32);
      v43 = v46;
      v42(v46, v40, v14);
      v36 = v47;
      v42(v47, v43, v14);
      goto LABEL_22;
    }

    v30 = v40;
LABEL_12:
    sub_1BD0DE53C(v30, &unk_1EBD3CF70);
    v31 = type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0);
    return (*(*(v31 - 8) + 56))(v47, 1, 1, v31);
  }

LABEL_17:
  sub_1BE04AA54();
  v38 = v48;
  result = (*(v48 + 48))(v9, 1, v14);
  if (result != 1)
  {
    v36 = v47;
    (*(v38 + 32))(v47, v9, v14);
LABEL_22:
    v44 = type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v44 - 8) + 56))(v36, 0, 1, v44);
  }

  __break(1u);
  return result;
}

void sub_1BD6779F4(uint64_t a1@<X8>)
{
  v3 = sub_1BE04AA64();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UnifiedMerchantTokenData(0);
  sub_1BD0DE19C(v1 + *(v16 + 40), v10, &qword_1EBD44D48);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_1BD67B8B0(v10, v15, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B8B0(v15, a1, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    (*(v12 + 56))(a1, 0, 1, v11);
    return;
  }

  sub_1BD0DE53C(v10, &qword_1EBD44D48);
  v17 = (v1 + *(v16 + 84));
  v18 = *v17;
  v19 = v17[1];
  if (v18 == sub_1BE052434() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_1BE053B84();

    if ((v21 & 1) == 0)
    {
      (*(v12 + 56))(a1, 1, 1, v11);
      return;
    }
  }

  v22 = PKPassKitUIBundle();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BE052404();
    v25 = sub_1BE052404();
    v26 = [v23 URLForResource:v24 withExtension:v25];

    if (v26)
    {
      sub_1BE04A9F4();

      v27 = sub_1BE04A9C4();
      (*(v31 + 8))(v6, v32);
    }

    else
    {
      v27 = 0;
    }

    v28 = a1;
    v29 = PKUIScreenScale();
    v30 = PKUIImageFromPDF(v27, 80.0, 80.0, v29);

    if (v30)
    {
      *v28 = v30;
      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v28, 0, 1, v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BD677DE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v3 = type metadata accessor for MerchantTokenDetailView(0);
  v96 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v97 = v5;
  v98 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v103 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v76 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF68);
  MEMORY[0x1EEE9AC00](v105, v14);
  v16 = &v76 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF70);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v17);
  v106 = &v76 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF78);
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v19);
  v88 = &v76 - v20;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF80);
  MEMORY[0x1EEE9AC00](v86, v21);
  v95 = &v76 - v22;
  v23 = type metadata accessor for MerchantTokenPresentationModel(0);
  v87 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v91 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v76 - v28;
  sub_1BD67B848(v2, &v76 - v28, type metadata accessor for UnifiedMerchantTokenData);
  v102 = v16;
  v104 = v29;
  sub_1BD6788F4(v2, v29, v16);
  v30 = *(v7 + 104);
  v101 = *MEMORY[0x1E69B8080];
  v100 = v30;
  v30(v13);
  result = PKPassKitBundle();
  if (result)
  {
    v32 = result;
    v33 = sub_1BE04B6F4();
    v35 = v34;
    v85 = v34;

    v36 = *(v7 + 8);
    v82 = v7 + 8;
    v77 = v36;
    v36(v13, v6);
    v117 = v33;
    v118 = v35;
    v83 = v3;
    v37 = *(v3 + 36);
    v84 = v2;
    v38 = (v2 + v37);
    v39 = *v38;
    v40 = *(v38 + 1);
    v115 = v39;
    v116 = v40;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
    v42 = sub_1BD67B68C();
    v43 = sub_1BD0DDEBC();
    v78 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v81 = v43;
    v79 = v42;
    v80 = v41;
    v44 = v102;
    sub_1BE050F34();

    sub_1BD0DE53C(v44, &qword_1EBD4EF68);
    v45 = v103;
    v100(v103, v101, v6);
    result = PKPassKitBundle();
    if (result)
    {
      v46 = result;
      v47 = sub_1BE04B6F4();
      v49 = v48;
      v102 = v48;

      v77(v45, v6);
      v117 = v47;
      v118 = v49;
      v50 = v84;
      v51 = v84 + *(v83 + 44);
      v52 = *v51;
      v53 = *(v51 + 8);
      v115 = v52;
      v116 = v53;
      v54 = sub_1BE0516C4();
      v103 = &v76;
      v100 = v107;
      v101 = v109;
      MEMORY[0x1EEE9AC00](v54, v55);
      MEMORY[0x1EEE9AC00](v56, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
      v107 = v105;
      v108 = MEMORY[0x1E69E6158];
      v109 = v80;
      v110 = MEMORY[0x1E6981148];
      v111 = v79;
      v112 = v81;
      v113 = v78;
      v114 = MEMORY[0x1E6981138];
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
      sub_1BD170E70();
      v58 = v94;
      v59 = v88;
      v60 = v106;
      sub_1BE050F34();

      (*(v93 + 8))(v60, v58);
      v61 = v95;
      (*(v90 + 32))(v95, v59, v92);
      v62 = (v61 + *(v86 + 36));
      *v62 = sub_1BD679F20;
      v62[1] = 0;
      v62[2] = 0;
      v62[3] = 0;
      v64 = *(v50 + 16);
      v63 = *(v50 + 24);
      v65 = v104;
      v66 = v91;
      sub_1BD67B848(v104, v91, type metadata accessor for MerchantTokenPresentationModel);
      v67 = v98;
      sub_1BD67B848(v50, v98, type metadata accessor for MerchantTokenDetailView);
      v68 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v69 = (v89 + *(v96 + 80) + v68) & ~*(v96 + 80);
      v70 = swift_allocObject();
      sub_1BD67B8B0(v66, v70 + v68, type metadata accessor for MerchantTokenPresentationModel);
      sub_1BD67B8B0(v67, v70 + v69, type metadata accessor for MerchantTokenDetailView);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFC0);
      v72 = v99;
      v73 = (v99 + *(v71 + 36));
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFC8);
      sub_1BE048C84();
      sub_1BE0528B4();
      v75 = (v73 + *(v74 + 40));
      *v75 = v64;
      v75[1] = v63;
      *v73 = &unk_1BE0ECE90;
      v73[1] = v70;
      sub_1BD093664(v61, v72);
      return sub_1BD67BA48(v65, type metadata accessor for MerchantTokenPresentationModel);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD6788F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v59 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFB8);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v4);
  v57 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v50 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A98);
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFA0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFE0);
  v55 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v54 = &v50 - v24;
  v25 = (a1 + *(type metadata accessor for MerchantTokenDetailView(0) + 32));
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v62) = v26;
  v63 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  v28 = sub_1BE0516A4();
  if (v61 == 1)
  {
    v56 = v18;
    v57 = v6;
    v58 = v9;
    *v21 = sub_1BE04F7B4();
    *(v21 + 1) = 0;
    v21[16] = 1;
    (*(v11 + 104))(v14, *MEMORY[0x1E69B8080], v10);
    result = PKPassKitBundle();
    if (result)
    {
      v31 = result;
      v32 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFF8) + 44)];
      v33 = sub_1BE04B6F4();
      v35 = v34;

      (*(v11 + 8))(v14, v10);
      v62 = v33;
      v63 = v35;
      sub_1BD0DDEBC();
      v36 = v51;
      sub_1BE04E504();
      v37 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44A88) + 36)];
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
      v39 = *MEMORY[0x1E697DC10];
      v40 = sub_1BE04E364();
      (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
      *v37 = swift_getKeyPath();
      (*(v52 + 32))(v32, v36, v53);
      v41 = sub_1BD0DE4F4(&qword_1EBD4EFA8, &qword_1EBD4EFA0);
      v42 = v54;
      v43 = v56;
      sub_1BE050E74();
      sub_1BD0DE53C(v21, &qword_1EBD4EFA0);
      v44 = v55;
      (*(v55 + 16))(v58, v42, v22);
      swift_storeEnumTagMultiPayload();
      v62 = v43;
      v63 = v41;
      swift_getOpaqueTypeConformance2();
      sub_1BD0DE4F4(&qword_1EBD4EFB0, &qword_1EBD4EFB8);
      sub_1BE04F9A4();
      return (*(v44 + 8))(v42, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28, v29);
    v45 = v56;
    *(&v50 - 2) = a1;
    *(&v50 - 1) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFE8);
    sub_1BD0DE4F4(&qword_1EBD4EFF0, &qword_1EBD4EFE8);
    v46 = v57;
    sub_1BE0504E4();
    v47 = v58;
    v48 = v60;
    (*(v58 + 2))(v9, v46, v60);
    swift_storeEnumTagMultiPayload();
    v49 = sub_1BD0DE4F4(&qword_1EBD4EFA8, &qword_1EBD4EFA0);
    v62 = v18;
    v63 = v49;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4EFB0, &qword_1EBD4EFB8);
    sub_1BE04F9A4();
    return (*(v47 + 1))(v46, v48);
  }

  return result;
}

id sub_1BD67908C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v16 - v2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8080], v4, v7);
  result = PKPassKitBundle();
  if (result)
  {
    v11 = result;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v5 + 8))(v9, v4);
    v16[0] = v12;
    v16[1] = v14;
    sub_1BE04E1B4();
    v15 = sub_1BE04E1D4();
    (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD67929C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B8080], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD679408@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v67 = a1;
  v62 = a2;
  v2 = type metadata accessor for MerchantTokenDetailView(0);
  v65 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v66 = v4;
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v56 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v61 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v60 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v59 = &v56 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v71 = &v56 - v29;
  type metadata accessor for UnifiedMerchantTokenData(0);
  v30 = *(v10 + 104);
  v64 = *MEMORY[0x1E69B8080];
  v70 = v9;
  v63 = v30;
  v30(v16);
  result = PKPassKitBundle();
  if (result)
  {
    v32 = result;
    v33 = sub_1BE04B6F4();
    v35 = v34;

    v36 = v70;
    v58 = *(v10 + 8);
    v58(v16, v70);
    v72 = v33;
    v73 = v35;
    sub_1BE04E194();
    v37 = sub_1BE04E1D4();
    v38 = *(v37 - 8);
    v39 = *(v38 + 56);
    v56 = v38 + 56;
    v57 = v39;
    v39(v8, 0, 1, v37);
    v40 = v68;
    sub_1BD67B848(v67, v68, type metadata accessor for MerchantTokenDetailView);
    v41 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v42 = swift_allocObject();
    sub_1BD67B8B0(v40, v42 + v41, type metadata accessor for MerchantTokenDetailView);
    sub_1BD0DDEBC();
    sub_1BE051724();
    v63(v69, v64, v36);
    result = PKPassKitBundle();
    if (result)
    {
      v43 = result;
      v44 = v69;
      v45 = sub_1BE04B6F4();
      v47 = v46;

      v58(v44, v70);
      v72 = v45;
      v73 = v47;
      sub_1BE04E1B4();
      v57(v8, 0, 1, v37);
      v48 = v59;
      sub_1BE051724();
      v49 = *(v18 + 16);
      v50 = v60;
      v51 = v71;
      v49(v60, v71, v17);
      v52 = v61;
      v49(v61, v48, v17);
      v53 = v62;
      v49(v62, v50, v17);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98);
      v49(&v53[*(v54 + 48)], v52, v17);
      v55 = *(v18 + 8);
      v55(v48, v17);
      v55(v51, v17);
      v55(v52, v17);
      return (v55)(v50, v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD679A40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MerchantTokenDetailView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27[-v12];
  v14 = v2 + *(v5 + 40);
  v15 = *v14;
  v16 = *(v14 + 8);
  v27[16] = v15;
  v28 = v16;
  v27[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v19 = sub_1BE0528D4();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  sub_1BD67B848(v2, v9, type metadata accessor for MerchantTokenDetailView);
  sub_1BE0528A4();
  sub_1BE048C84();
  v20 = sub_1BE052894();
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_1BD67B8B0(v9, v23 + v21, type metadata accessor for MerchantTokenDetailView);
  v25 = (v23 + v22);
  *v25 = v18;
  v25[1] = v17;
  sub_1BD122C00(0, 0, v13, &unk_1BE0ECED8, v23);
}

double sub_1BD679C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 68));
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8080], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B69E0;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1BD110550();
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;
  sub_1BE048C84();
  v13 = sub_1BE04B714();
  v15 = v14;

  (*(v5 + 8))(v8, v4);
  *&v24 = v13;
  *(&v24 + 1) = v15;
  sub_1BD0DDEBC();
  v22[1] = sub_1BE0506C4();
  v22[2] = v16;
  v22[3] = v17 & 1;
  v22[4] = v18;
  v23 = v9 != 1;
  sub_1BE04F9A4();
  result = *&v24;
  v20 = v25;
  v21 = v26;
  *a2 = v24;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  return result;
}

void sub_1BD679F20()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD683C44(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v11 = sub_1BE052224();

  [v0 subject:v1 sendEvent:v11];
}

uint64_t sub_1BD67A0A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  v2[4] = swift_task_alloc();
  sub_1BE0528A4();
  v2[5] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD67A178, v4, v3);
}

uint64_t sub_1BD67A178()
{
  v1 = v0[4];
  sub_1BD6779F4(v1);
  v2 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[3];
    sub_1BD0DE53C(v0[4], &qword_1EBD44D48);
    v4 = *(v3 + *(type metadata accessor for MerchantTokenDetailView(0) + 20));
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1BD67A2E8;
    v6 = v0[3];

    return sub_1BD67A470(v6, v4);
  }

  else
  {
    v8 = v0[4];

    sub_1BD0DE53C(v8, &qword_1EBD44D48);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1BD67A2E8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD67A408, v3, v2);
}

uint64_t sub_1BD67A408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD67A470(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BE04D214();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MerchantTokenDetailView.ImageState(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_1BE0528A4();
  v3[10] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD67A5A0, v6, v5);
}

uint64_t sub_1BD67A5A0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  *(v0 + 104) = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  *(v0 + 112) = v5;
  *(v0 + 120) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 2, 3, v3);
  *(v0 + 160) = *(type metadata accessor for MerchantTokenDetailView(0) + 40);
  sub_1BD67B848(v1, v2, type metadata accessor for MerchantTokenDetailView.ImageState);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);
  sub_1BE0516B4();
  sub_1BD67BA48(v1, type metadata accessor for MerchantTokenDetailView.ImageState);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1BD67A708;
  v7 = *(v0 + 16);

  return sub_1BD98A454(v7);
}

uint64_t sub_1BD67A708(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_1BD67A9B0;
  }

  else
  {
    v7 = sub_1BD67A84C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD67A84C()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 32);
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_1BE051D74();
    sub_1BE04E7D4();
  }

  else
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    (*(v0 + 112))(v5, 3, 3, *(v0 + 104));
    sub_1BD67B848(v5, v6, type metadata accessor for MerchantTokenDetailView.ImageState);
    sub_1BE0516B4();
    sub_1BD67BA48(v5, type metadata accessor for MerchantTokenDetailView.ImageState);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BD67A9B0()
{
  v1 = v0[19];

  sub_1BE04D144();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "Error fetching icon: %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v20 = v0[19];
  v10 = v3;
  v12 = v0[13];
  v11 = v0[14];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[6];
  v16 = v0[7];
  v17 = v0[5];

  (*(v15 + 8))(v16, v17);
  v11(v13, 3, 3, v12);
  sub_1BD67B848(v13, v14, type metadata accessor for MerchantTokenDetailView.ImageState);
  sub_1BE0516B4();

  sub_1BD67BA48(v13, type metadata accessor for MerchantTokenDetailView.ImageState);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1BD67ABDC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  *(&v14 - v9) = a2;
  v11 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v10, 0, 3, v11);
  type metadata accessor for MerchantTokenDetailView(0);
  sub_1BD67B848(v10, v6, type metadata accessor for MerchantTokenDetailView.ImageState);
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);
  sub_1BE0516B4();
  return sub_1BD67BA48(v10, type metadata accessor for MerchantTokenDetailView.ImageState);
}

uint64_t sub_1BD67AD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v6[26] = sub_1BE0528A4();
  v6[27] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[28] = v8;
  v6[29] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD67ADE8, v8, v7);
}

uint64_t sub_1BD67ADE8()
{
  v1 = *(v0 + 200);
  v8 = *(v0 + 184);
  v2 = sub_1BE052894();
  *(v0 + 240) = v2;
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_1BD67AF08;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 272, v2, v5, 0x6F546574656C6564, 0xEF293A5F286E656BLL, sub_1BD682D2C, v3, v6);
}

uint64_t sub_1BD67AF08()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_1BD67B2D8;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_1BD67B02C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD67B02C()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 272);
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = *v8;
  *(inited + 56) = *v8;
  v11 = sub_1BE052434();
  v12 = MEMORY[0x1E69BA440];
  *(inited + 64) = v11;
  *(inited + 72) = v13;
  v14 = *v12;
  *(inited + 80) = *v12;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v15;
  v16 = v6;
  v17 = v10;
  v18 = v14;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD683C44(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v19 = sub_1BE052224();

  [v3 subject:v4 sendEvent:v19];

  v20 = type metadata accessor for MerchantTokenDetailView(0);
  v21 = (v1 + v20[8]);
  v22 = *v21;
  v23 = *(v21 + 1);
  *(v0 + 152) = v22;
  *(v0 + 160) = v23;
  *(v0 + 275) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  v24 = sub_1BE0516B4();
  if (v2 == 1)
  {
    (*(*(v0 + 184) + v20[6]))(v24);
  }

  else
  {
    v25 = (*(v0 + 184) + v20[9]);
    v26 = *v25;
    v27 = *(v25 + 1);
    *(v0 + 168) = v26;
    *(v0 + 176) = v27;
    *(v0 + 276) = 1;
    sub_1BE0516B4();
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1BD67B2D8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 184);

  v3 = type metadata accessor for MerchantTokenDetailView(0);
  v4 = (v2 + *(v3 + 32));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 120) = v5;
  *(v0 + 128) = v6;
  *(v0 + 273) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v7 = v2 + *(v3 + 36);
  v8 = *(v7 + 8);
  *(v0 + 136) = *v7;
  *(v0 + 144) = v8;
  *(v0 + 274) = 1;
  sub_1BE048964();
  sub_1BE0516B4();

  v9 = *(v0 + 8);

  return v9();
}

void sub_1BD67B3FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  v9 = *(a2 + *(type metadata accessor for MerchantTokenDetailView(0) + 28));
  v10 = sub_1BE052404();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_1BD682D38;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3CC8C0;
  aBlock[3] = &block_descriptor_151;
  v13 = _Block_copy(aBlock);

  [v9 revokeMerchantTokenWithIdentifier:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1BD67B5DC(uint64_t result, id a2)
{
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0);
    return sub_1BE052864();
  }

  else if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0);
    return sub_1BE052854();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD67B68C()
{
  result = qword_1EBD4EF88;
  if (!qword_1EBD4EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF68);
    sub_1BD67B710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EF88);
  }

  return result;
}

unint64_t sub_1BD67B710()
{
  result = qword_1EBD4EF90;
  if (!qword_1EBD4EF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EFA0);
    sub_1BD0DE4F4(&qword_1EBD4EFA8, &qword_1EBD4EFA0);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4EFB0, &qword_1EBD4EFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4EF90);
  }

  return result;
}

uint64_t sub_1BD67B848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD67B8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD67B918()
{
  v2 = *(type metadata accessor for MerchantTokenPresentationModel(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for MerchantTokenDetailView(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BD126968;

  return sub_1BD67A0A8(v0 + v3, v0 + v6);
}

uint64_t sub_1BD67BA48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD67BAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F000);
  v78 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v5);
  v69 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v76 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F008);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v77 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F010);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v75 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F018);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v74 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v61 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F020);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v61 - v33;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F028);
  v68 = *(v73 - 8);
  v35 = v68;
  MEMORY[0x1EEE9AC00](v73, v36);
  v72 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v61 - v40;
  *v34 = sub_1BE04F7B4();
  *(v34 + 1) = 0;
  v34[16] = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F030);
  sub_1BD67DC1C(a2, a1, &v34[*(v42 + 44)]);
  sub_1BD0DE4F4(&qword_1EBD4F038, &qword_1EBD4F020);
  v43 = v41;
  v67 = v41;
  sub_1BE051A24();
  v66 = v30;
  sub_1BD67C1F4(a2, v30);
  v65 = v23;
  sub_1BD67C840(a2, v23);
  v64 = v16;
  sub_1BD67CE38(a2, v16);
  v79 = a1;
  v80 = a2;
  sub_1BD681CD4(a2, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F70);
  sub_1BD682DD4();
  sub_1BD4D58A4();
  v44 = v76;
  sub_1BE051A54();
  v62 = *(v35 + 16);
  v45 = v72;
  v46 = v43;
  v47 = v73;
  v62(v72, v46, v73);
  v48 = v74;
  sub_1BD0DE19C(v30, v74, &qword_1EBD4F018);
  v49 = v75;
  sub_1BD0DE19C(v23, v75, &qword_1EBD4F010);
  v50 = v77;
  sub_1BD0DE19C(v16, v77, &qword_1EBD4F008);
  v63 = *(v78 + 16);
  v51 = v69;
  v52 = v44;
  v53 = v70;
  v63(v69, v52, v70);
  v54 = v71;
  v62(v71, v45, v47);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F060);
  sub_1BD0DE19C(v48, &v54[v55[12]], &qword_1EBD4F018);
  sub_1BD0DE19C(v49, &v54[v55[16]], &qword_1EBD4F010);
  sub_1BD0DE19C(v50, &v54[v55[20]], &qword_1EBD4F008);
  v63(&v54[v55[24]], v51, v53);
  v56 = *(v78 + 8);
  v57 = v53;
  v56(v76, v53);
  sub_1BD0DE53C(v64, &qword_1EBD4F008);
  sub_1BD0DE53C(v65, &qword_1EBD4F010);
  sub_1BD0DE53C(v66, &qword_1EBD4F018);
  v58 = *(v68 + 8);
  v59 = v73;
  v58(v67, v73);
  v56(v51, v57);
  sub_1BD0DE53C(v77, &qword_1EBD4F008);
  sub_1BD0DE53C(v75, &qword_1EBD4F010);
  sub_1BD0DE53C(v74, &qword_1EBD4F018);
  return (v58)(v72, v59);
}

id sub_1BD67C1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F108);
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v50 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F110);
  MEMORY[0x1EEE9AC00](v58, v7);
  v9 = &v50 - v8;
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F118);
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v56 = &v50 - v21;
  if (*(*(a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 88)) + 16))
  {
    v52 = &v50;
    v53 = v19;
    v54 = v9;
    v55 = v4;
    v60 = a1;
    v61 = v2;
    v22 = *MEMORY[0x1E69B8080];
    v51 = *(v11 + 104);
    v51(v18, v22, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v24 = result;
      v25 = sub_1BE04B6F4();
      v27 = v26;

      v28 = *(v11 + 8);
      v28(v18, v10);
      v66 = v25;
      v67 = v27;
      sub_1BD0DDEBC();
      v66 = sub_1BE0506C4();
      v67 = v29;
      v68 = v30 & 1;
      v69 = v31;
      v51(v14, v22, v10);
      v32 = sub_1BE04B714();
      v34 = v33;
      v28(v14, v10);
      v62 = v32;
      v63 = v34;
      v62 = sub_1BE0506C4();
      v63 = v35;
      v64 = v36 & 1;
      v65 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F120);
      sub_1BD0DE4F4(&qword_1EBD4F128, &qword_1EBD4F120);
      v38 = v56;
      sub_1BE051A34();
      v39 = v53;
      v40 = v57;
      (*(v57 + 16))(v54, v38, v53);
      swift_storeEnumTagMultiPayload();
      sub_1BD68360C();
      sub_1BD6836C8();
      sub_1BE04F9A4();
      return (*(v40 + 8))(v38, v39);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v60 = v2;
    v61 = a1;
    v41 = v9;
    (*(v11 + 104))(v14, *MEMORY[0x1E69B8080], v10);
    v42 = sub_1BE04B714();
    v44 = v43;
    (*(v11 + 8))(v14, v10);
    v66 = v42;
    v67 = v44;
    sub_1BD0DDEBC();
    v66 = sub_1BE0506C4();
    v67 = v45;
    v68 = v46 & 1;
    v69 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F148);
    sub_1BD683760();
    v48 = v54;
    sub_1BE051A54();
    v49 = v55;
    (*(v55 + 16))(v41, v48, v4);
    swift_storeEnumTagMultiPayload();
    sub_1BD68360C();
    sub_1BD6836C8();
    sub_1BE04F9A4();
    return (*(v49 + 8))(v48, v4);
  }

  return result;
}

id sub_1BD67C840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = sub_1BE04BD74();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v4);
  v60 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0B8);
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v56 - v11;
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MerchantTokenPresentationModel.Card(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v62 = &v56 - v24;
  v25 = type metadata accessor for UnifiedMerchantTokenData(0);
  v26 = *(v25 + 76);
  v65 = a1;
  v27 = (a1 + v26);
  v28 = v27[1];
  if (!v28)
  {
    return (*(v64 + 56))(a2, 1, 1, v6);
  }

  v29 = v25;
  v58 = *v27;
  sub_1BD0DE19C(v65 + *(v25 + 72), v12, &unk_1EBD3CF70);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &unk_1EBD3CF70);
    return (*(v64 + 56))(a2, 1, 1, v6);
  }

  v56 = v6;
  v57 = a2;
  v31 = *(v14 + 32);
  v31(v17, v12, v13);
  v32 = (v65 + *(v29 + 80));
  v34 = *v32;
  v33 = v32[1];
  v35 = *(v18 + 24);
  v31(&v21[v35], v17, v13);
  (*(v14 + 56))(&v21[v35], 0, 1, v13);
  *v21 = v58;
  *(v21 + 1) = v28;
  *(v21 + 2) = v34;
  *(v21 + 3) = v33;
  v36 = v62;
  v37 = sub_1BD67B8B0(v21, v62, type metadata accessor for MerchantTokenPresentationModel.Card);
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v60;
  v41 = v61;
  v42 = v63;
  (*(v61 + 104))(v60, *MEMORY[0x1E69B8080], v63, v39);
  sub_1BE048C84();
  sub_1BE048C84();
  result = PKPassKitBundle();
  if (result)
  {
    v43 = result;
    v44 = v40;
    v45 = sub_1BE04B6F4();
    v47 = v46;

    (*(v41 + 8))(v44, v42);
    v67 = v45;
    v68 = v47;
    sub_1BD0DDEBC();
    v67 = sub_1BE0506C4();
    v68 = v48;
    v69 = v49 & 1;
    v70 = v50;
    sub_1BD68048C(v65, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
    sub_1BD0DE4F4(&qword_1EBD4F0C8, &qword_1EBD4F0C0);
    sub_1BD12E194();
    v51 = v59;
    sub_1BE051A34();
    v52 = v64;
    v53 = v57;
    v54 = v51;
    v55 = v56;
    (*(v64 + 32))(v57, v54, v56);
    (*(v52 + 56))(v53, 0, 1, v55);
    return sub_1BD67BA48(v36, type metadata accessor for MerchantTokenPresentationModel.Card);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD67CE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F070);
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for UnifiedMerchantTokenData(0);
  if (*(*(a1 + *(v13 + 92)) + 16))
  {
    v25 = &v25;
    v15 = MEMORY[0x1EEE9AC00](v13, v14);
    *(&v25 - 2) = a1;
    (*(v5 + 104))(v8, *MEMORY[0x1E69B8080], v4, v15);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v20 = v19;

      (*(v5 + 8))(v8, v4);
      v27 = v18;
      v28 = v20;
      sub_1BD0DDEBC();
      v27 = sub_1BE0506C4();
      v28 = v21;
      v29 = v22 & 1;
      v30 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F078);
      sub_1BD6834F4();
      sub_1BE051A24();
      (*(v26 + 32))(a2, v12, v9);
      return (*(v26 + 56))(a2, 0, 1, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = *(v26 + 56);

    return v24(a2, 1, 1, v9);
  }

  return result;
}

uint64_t sub_1BD67D168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F160);
  MEMORY[0x1EEE9AC00](v56, v3);
  v57 = v44 - v4;
  v5 = sub_1BE04FF64();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v52 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MerchantTokenDetailView(0);
  v44[0] = *(v8 - 8);
  v9 = *(v44[0] + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v11 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v12);
  v14 = v44 - v13;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F168);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v15);
  v46 = v44 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F158);
  MEMORY[0x1EEE9AC00](v55, v17);
  v49 = v44 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F170);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v44 - v21;
  v23 = type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v27 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v44 - v30;
  v51 = a1;
  sub_1BD6774F0(v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1BD0DE53C(v22, &qword_1EBD4F170);
    swift_storeEnumTagMultiPayload();
    sub_1BD6837EC();
    return sub_1BE04F9A4();
  }

  else
  {
    sub_1BD67B8B0(v22, v31, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
    sub_1BD67B848(v44[1], v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenDetailView);
    sub_1BD67B848(v31, v27, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
    v33 = (*(v44[0] + 80) + 16) & ~*(v44[0] + 80);
    v34 = (v9 + *(v24 + 80) + v33) & ~*(v24 + 80);
    v35 = swift_allocObject();
    sub_1BD67B8B0(v11, v35 + v33, type metadata accessor for MerchantTokenDetailView);
    v36 = sub_1BD67B8B0(v27, v35 + v34, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
    MEMORY[0x1EEE9AC00](v36, v37);
    v44[-2] = v51;
    sub_1BE051704();
    v38 = v52;
    sub_1BE04FF44();
    v39 = sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    v41 = v46;
    v40 = v47;
    sub_1BE050D14();
    (*(v53 + 8))(v38, v54);
    (*(v45 + 8))(v14, v40);
    sub_1BE052434();
    v59 = v40;
    v60 = v39;
    swift_getOpaqueTypeConformance2();
    v43 = v49;
    v42 = v50;
    sub_1BE050DE4();

    (*(v48 + 8))(v41, v42);
    sub_1BD0DE19C(v43, v57, &qword_1EBD4F158);
    swift_storeEnumTagMultiPayload();
    sub_1BD6837EC();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v43, &qword_1EBD4F158);
    return sub_1BD67BA48(v31, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
  }
}

uint64_t sub_1BD67D8A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for MerchantTokenDetailView(0) + 48)))
  {
    v13 = MEMORY[0x1E69BB6F8];
  }

  else
  {
    v13 = MEMORY[0x1E69BB718];
  }

  v14 = *v13;
  sub_1BD6B9D70(v14, *(a1 + 64), *(a1 + 72));

  sub_1BD67B848(a2, v12, type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL);
  swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v8, v12, v4);
  v15 = sub_1BE04A9C4();
  PKOpenURL();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BD67DA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x1E69B8080], v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE0B69E0;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1BD110550();
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;
  sub_1BE048C84();
  v13 = sub_1BE04B714();
  v15 = v14;

  (*(v5 + 8))(v9, v4);
  v20[0] = v13;
  v20[1] = v15;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_1BD67DC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F200) - 8;
  MEMORY[0x1EEE9AC00](v76, v5);
  v7 = &v70 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F208) - 8;
  MEMORY[0x1EEE9AC00](v79, v8);
  v80 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v75 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v78 = &v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F210);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v77 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v70 - v22;
  sub_1BD67E31C(a1, a2, &v70 - v22);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F218) + 36);
  v82 = v23;
  v25 = &v23[v24];
  v26 = v84;
  *v25 = v83;
  *(v25 + 1) = v26;
  *(v25 + 2) = v85;
  v27 = &v23[*(v17 + 44)];
  v28 = *(sub_1BE04EDE4() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1BE04F684();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #14.0 }

  *v27 = _Q0;
  *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v74 = v86;
  v73 = v88;
  v72 = v90;
  v71 = v91;
  v101 = 1;
  v100 = v87;
  v99 = v89;
  v36 = *(a1 + 40);
  *&v92 = *(a1 + 32);
  *(&v92 + 1) = v36;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v37 = sub_1BE0506C4();
  v39 = v38;
  v41 = v40;
  sub_1BE050294();
  sub_1BE050364();
  sub_1BE0503F4();

  v42 = sub_1BE0505F4();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  sub_1BD0DDF10(v37, v39, v41 & 1);

  v49 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0) + 36)];
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
  v51 = sub_1BE0505C4();
  (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
  *v49 = swift_getKeyPath();
  *v7 = v42;
  *(v7 + 1) = v44;
  v7[16] = v46 & 1;
  *(v7 + 3) = v48;
  v52 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v54 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F220) + 36)];
  *v54 = KeyPath;
  v54[1] = v52;
  v55 = swift_getKeyPath();
  v56 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F228) + 36)];
  *v56 = v55;
  *(v56 + 1) = 2;
  v56[16] = 0;
  *&v7[*(v76 + 44)] = 256;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v57 = v75;
  sub_1BD0DE204(v7, v75, &qword_1EBD4F200);
  v58 = (v57 + *(v79 + 44));
  v59 = v97;
  v58[4] = v96;
  v58[5] = v59;
  v58[6] = v98;
  v60 = v93;
  *v58 = v92;
  v58[1] = v60;
  v61 = v95;
  v58[2] = v94;
  v58[3] = v61;
  v62 = v78;
  sub_1BD0DE204(v57, v78, &qword_1EBD4F208);
  v63 = v77;
  sub_1BD0DE19C(v82, v77, &qword_1EBD4F210);
  LOBYTE(v57) = v101;
  LOBYTE(KeyPath) = v100;
  LOBYTE(v42) = v99;
  v64 = v80;
  sub_1BD0DE19C(v62, v80, &qword_1EBD4F208);
  v65 = v81;
  sub_1BD0DE19C(v63, v81, &qword_1EBD4F210);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F230);
  v67 = v65 + *(v66 + 48);
  *v67 = 0;
  *(v67 + 8) = v57;
  *(v67 + 16) = v74;
  *(v67 + 24) = KeyPath;
  *(v67 + 32) = v73;
  *(v67 + 40) = v42;
  v68 = v71;
  *(v67 + 48) = v72;
  *(v67 + 56) = v68;
  sub_1BD0DE19C(v64, v65 + *(v66 + 64), &qword_1EBD4F208);
  sub_1BD0DE53C(v62, &qword_1EBD4F208);
  sub_1BD0DE53C(v82, &qword_1EBD4F210);
  sub_1BD0DE53C(v64, &qword_1EBD4F208);
  return sub_1BD0DE53C(v63, &qword_1EBD4F210);
}

uint64_t sub_1BD67E31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v65 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v59 = v56 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F240);
  MEMORY[0x1EEE9AC00](v64, v7);
  v63 = (v56 - v8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F248);
  MEMORY[0x1EEE9AC00](v61, v9);
  v11 = v56 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F250);
  MEMORY[0x1EEE9AC00](v66, v12);
  v62 = v56 - v13;
  v14 = type metadata accessor for MerchantTokenIconView(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = v56 - v24;
  v26 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v57 = v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v56 - v32;
  v58 = a1;
  sub_1BD6779F4(v25);
  v34 = *(v27 + 48);
  if (v34(v25, 1, v26) == 1)
  {
    v56[1] = v14;
    v35 = v62;
    sub_1BD0DE53C(v25, &qword_1EBD44D48);
    type metadata accessor for MerchantTokenDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);
    sub_1BE0516A4();
    if (v34(v21, 3, v26))
    {
      sub_1BD67BA48(v21, type metadata accessor for MerchantTokenDetailView.ImageState);
      v36 = *(v58 + 32);
      v37 = *(v58 + 40);
      sub_1BE048C84();
      sub_1BE050384();
      v38 = sub_1BE050354();
      v39 = v59;
      (*(*(v38 - 8) + 56))(v59, 1, 1, v38);
      sub_1BE048C84();
      v40 = sub_1BE0503B4();
      sub_1BD0DE53C(v39, &qword_1EBD49130);
      sub_1BE0524C4();
      sub_1BE048964();
      v41 = sub_1BD683A34(1);
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v48 = MEMORY[0x1BFB3F570](v41, v43, v45, v47);
      v50 = v49;

      v51 = v63;
      *v63 = v36;
      v51[1] = v37;
      v51[2] = v40;
      v51[3] = 0;
      v51[4] = v48;
      v51[5] = v50;
      swift_storeEnumTagMultiPayload();
      sub_1BD683C8C();
      sub_1BD683D40();
      return sub_1BE04F9A4();
    }

    v55 = v57;
    sub_1BD67B8B0(v21, v57, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v55, v17, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v17, v11, type metadata accessor for MerchantTokenIconView);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C44(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView);
    sub_1BE04F9A4();
    sub_1BD0DE19C(v35, v63, &qword_1EBD4F250);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C8C();
    sub_1BD683D40();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v35, &qword_1EBD4F250);
    sub_1BD67BA48(v17, type metadata accessor for MerchantTokenIconView);
    v54 = v55;
  }

  else
  {
    sub_1BD67B8B0(v25, v33, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v33, v17, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v17, v11, type metadata accessor for MerchantTokenIconView);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C44(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView);
    v53 = v62;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v53, v63, &qword_1EBD4F250);
    swift_storeEnumTagMultiPayload();
    sub_1BD683C8C();
    sub_1BD683D40();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v53, &qword_1EBD4F250);
    sub_1BD67BA48(v17, type metadata accessor for MerchantTokenIconView);
    v54 = v33;
  }

  return sub_1BD67BA48(v54, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
}

uint64_t sub_1BD67EB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v67 = a2;
  v68 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F148);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v69 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v57 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F178);
  v66 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v11);
  v71 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v57 - v15;
  v17 = type metadata accessor for UnifiedMerchantTokenData(0);
  v77[0] = *(a1 + *(v17 + 88));
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F188);
  sub_1BD0DE4F4(&qword_1EBD4F190, &qword_1EBD4F180);
  v18 = a1;
  sub_1BD0DE4F4(&qword_1EBD4F198, &qword_1EBD4F188);
  sub_1BD683C44(&qword_1EBD4F1A0, type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment);
  v19 = v16;
  sub_1BE0519D4();
  v20 = 0;
  if (*(a1 + *(v17 + 52) + 8) && (v21 = sub_1BE052404(), v22 = [v21 pk_stringIfNotEmpty], v21, v22))
  {
    sub_1BE052434();

    sub_1BE050454();
    v23 = sub_1BE0505F4();
    v25 = v24;
    v27 = v26;

    LODWORD(v77[0]) = sub_1BE04FC94();
    v65 = sub_1BE050574();
    v64 = v28;
    v30 = v29;
    v63 = v31;
    sub_1BD0DDF10(v23, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v23) = sub_1BE050234();
    sub_1BE04E1F4();
    v20 = v32;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    LOBYTE(v77[0]) = v30 & 1;
    LOBYTE(v72) = 0;
    v39 = v30 & 1;
    v61 = v23;
  }

  else
  {
    v65 = 0;
    v64 = 0;
    v63 = 0;
    KeyPath = 0;
    v61 = 0;
    v39 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
  }

  v58 = v39;
  sub_1BD67D168(v18, v10);
  v40 = v66;
  v41 = *(v66 + 16);
  v59 = v10;
  v42 = v71;
  v60 = v19;
  v43 = v70;
  v41(v71, v19, v70);
  v44 = v69;
  sub_1BD0DE19C(v10, v69, &qword_1EBD4F148);
  v45 = v68;
  v41(v68, v42, v43);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1A8);
  v47 = &v45[*(v46 + 48)];
  v48 = v65;
  *&v72 = v65;
  v49 = v64;
  *(&v72 + 1) = v64;
  *&v73 = v39;
  v50 = v63;
  *(&v73 + 1) = v63;
  v51 = KeyPath;
  v74 = KeyPath;
  v52 = v61;
  *&v75 = v61;
  *(&v75 + 1) = v20;
  *v76 = v34;
  *&v76[8] = v36;
  *&v76[16] = v38;
  v76[24] = 0;
  v53 = v73;
  *v47 = v72;
  *(v47 + 1) = v53;
  v54 = v75;
  *(v47 + 2) = v74;
  *(v47 + 3) = v54;
  *(v47 + 4) = *v76;
  *(v47 + 73) = *&v76[9];
  sub_1BD0DE19C(v44, &v45[*(v46 + 64)], &qword_1EBD4F148);
  sub_1BD0DE19C(&v72, v77, &qword_1EBD4F1B0);
  sub_1BD0DE53C(v59, &qword_1EBD4F148);
  v55 = *(v40 + 8);
  v55(v60, v43);
  sub_1BD0DE53C(v44, &qword_1EBD4F148);
  v77[0] = v48;
  v77[1] = v49;
  v77[2] = v58;
  v77[3] = v50;
  v77[4] = v51;
  v77[5] = 0;
  v77[6] = v52;
  v77[7] = v20;
  v77[8] = v34;
  v77[9] = v36;
  v77[10] = v38;
  v78 = 0;
  sub_1BD0DE53C(v77, &qword_1EBD4F1B0);
  return (v55)(v71, v43);
}

uint64_t sub_1BD67F1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1C0);
  MEMORY[0x1EEE9AC00](v50, v3);
  v5 = &v48 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1C8);
  MEMORY[0x1EEE9AC00](v49, v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44D48);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1D0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v51 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v48 - v23;
  v25 = *(type metadata accessor for UnifiedMerchantTokenData.PreauthorizedPayment(0) + 24);
  v52 = a1;
  sub_1BD0DE19C(a1 + v25, v12, &qword_1EBD44D48);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BD0DE53C(v12, &qword_1EBD44D48);
    swift_storeEnumTagMultiPayload();
    sub_1BD683AD0();
    sub_1BE04F9A4();
  }

  else
  {
    sub_1BD67B8B0(v12, v17, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BD67B848(v17, v5, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v26 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1E8) + 36)];
    v27 = v65;
    *v26 = v64;
    *(v26 + 1) = v27;
    *(v26 + 2) = v66;
    v28 = &v5[*(v50 + 36)];
    v29 = *(sub_1BE04EDE4() + 20);
    v30 = *MEMORY[0x1E697F468];
    v31 = sub_1BE04F684();
    (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
    __asm { FMOV            V0.2D, #4.0 }

    *v28 = _Q0;
    *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    sub_1BD0DE19C(v5, v8, &qword_1EBD4F1C0);
    swift_storeEnumTagMultiPayload();
    sub_1BD683AD0();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v5, &qword_1EBD4F1C0);
    sub_1BD67BA48(v17, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
  }

  v37 = sub_1BE04F7C4();
  LOBYTE(v58[0]) = 1;
  sub_1BD67F7C8(v55);
  *&v54[7] = v55[0];
  *&v54[23] = v55[1];
  *&v54[39] = v55[2];
  *&v54[55] = v55[3];
  v38 = v58[0];
  v39 = v51;
  sub_1BD0DE19C(v24, v51, &qword_1EBD4F1D0);
  v40 = v53;
  sub_1BD0DE19C(v39, v53, &qword_1EBD4F1D0);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F1F8) + 48);
  v56[0] = v37;
  v56[1] = 0;
  v57[0] = v38;
  *&v57[1] = *v54;
  *&v57[17] = *&v54[16];
  *&v57[33] = *&v54[32];
  *&v57[49] = *&v54[48];
  v42 = *&v54[63];
  *&v57[64] = *&v54[63];
  v43 = *v57;
  *v41 = v37;
  *(v41 + 16) = v43;
  v44 = *&v57[16];
  v45 = *&v57[32];
  v46 = *&v57[48];
  *(v41 + 80) = v42;
  *(v41 + 48) = v45;
  *(v41 + 64) = v46;
  *(v41 + 32) = v44;
  sub_1BD0DE19C(v56, v58, &qword_1EBD3B940);
  sub_1BD0DE53C(v24, &qword_1EBD4F1D0);
  v58[0] = v37;
  v58[1] = 0;
  v59 = v38;
  v61 = *&v54[16];
  v62 = *&v54[32];
  *v63 = *&v54[48];
  *&v63[15] = *&v54[63];
  v60 = *v54;
  sub_1BD0DE53C(v58, &qword_1EBD3B940);
  return sub_1BD0DE53C(v39, &qword_1EBD4F1D0);
}

uint64_t sub_1BD67F7C8@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE050324();
  v7 = sub_1BE0505F4();
  v34 = v8;
  v33 = v9;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BD3D1E44();
  if (v12)
  {
    v13 = sub_1BE0506C4();
    v15 = v14;
    v17 = v16;
    sub_1BE0502A4();
    v18 = sub_1BE0505F4();
    v20 = v19;
    v32 = v11;
    v22 = v21;

    sub_1BD0DDF10(v13, v15, v17 & 1);

    sub_1BE04FC94();
    v23 = sub_1BE050574();
    v25 = v24;
    LOBYTE(v15) = v26;
    v28 = v27;
    v29 = v22 & 1;
    v11 = v32;
    sub_1BD0DDF10(v18, v20, v29);

    v30 = v15 & 1;
    sub_1BD0D7F18(v23, v25, v15 & 1);
    sub_1BE048C84();
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v30 = 0;
    v28 = 0;
  }

  sub_1BD0D7F18(v7, v34, v33 & 1);
  sub_1BE048C84();
  sub_1BD1969AC(v23, v25, v30, v28);
  sub_1BD1969F0(v23, v25, v30, v28);
  *a1 = v7;
  *(a1 + 8) = v34;
  *(a1 + 16) = v33 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v30;
  *(a1 + 56) = v28;
  sub_1BD1969F0(v23, v25, v30, v28);
  sub_1BD0DDF10(v7, v34, v33 & 1);
}

uint64_t sub_1BD67FA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F504();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(a1);
}

uint64_t sub_1BD67FAAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0D8);
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v60 - v10;
  v12 = sub_1BE04AA64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0E0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v64 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v60 - v22;
  v24 = *(type metadata accessor for MerchantTokenPresentationModel.Card(0) + 24);
  v63 = a1;
  sub_1BD0DE19C(a1 + v24, v11, &unk_1EBD3CF70);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &unk_1EBD3CF70);
    v25 = 1;
    v26 = v61;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    (*(v13 + 16))(v7, v16, v12);
    type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
    swift_storeEnumTagMultiPayload();
    v27 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0F0) + 36)];
    *v27 = 0x3FF89DB22D0E5604;
    *(v27 + 4) = 256;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v28 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0F8) + 36)];
    v29 = v77;
    *v28 = v76;
    *(v28 + 1) = v29;
    *(v28 + 2) = v78;
    v30 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F100) + 36)];
    v31 = *(sub_1BE04EDE4() + 20);
    v32 = *MEMORY[0x1E697F468];
    v33 = sub_1BE04F684();
    (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
    __asm { FMOV            V0.2D, #3.0 }

    *v30 = _Q0;
    *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    LOBYTE(v32) = sub_1BE050224();
    sub_1BE04E1F4();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    (*(v13 + 8))(v16, v12);
    v47 = v61;
    v48 = &v7[*(v61 + 36)];
    *v48 = v32;
    *(v48 + 1) = v40;
    *(v48 + 2) = v42;
    *(v48 + 3) = v44;
    *(v48 + 4) = v46;
    v48[40] = 0;
    sub_1BD0DE204(v7, v23, &qword_1EBD4F0D8);
    v25 = 0;
    v26 = v47;
  }

  (*(v62 + 56))(v23, v25, 1, v26);
  v49 = sub_1BE04F7C4();
  LOBYTE(v70[0]) = 1;
  sub_1BD6800A4(v63, v67);
  *&v66[7] = v67[0];
  *&v66[23] = v67[1];
  *&v66[39] = v67[2];
  *&v66[55] = v67[3];
  v50 = v70[0];
  v51 = v64;
  sub_1BD0DE19C(v23, v64, &qword_1EBD4F0E0);
  v52 = v65;
  sub_1BD0DE19C(v51, v65, &qword_1EBD4F0E0);
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F0E8) + 48);
  v68[0] = v49;
  v68[1] = 0;
  v69[0] = v50;
  *&v69[1] = *v66;
  *&v69[17] = *&v66[16];
  *&v69[33] = *&v66[32];
  *&v69[49] = *&v66[48];
  v54 = *&v66[63];
  *&v69[64] = *&v66[63];
  v55 = *v69;
  *v53 = v49;
  *(v53 + 16) = v55;
  v56 = *&v69[16];
  v57 = *&v69[32];
  v58 = *&v69[48];
  *(v53 + 80) = v54;
  *(v53 + 48) = v57;
  *(v53 + 64) = v58;
  *(v53 + 32) = v56;
  sub_1BD0DE19C(v68, v70, &qword_1EBD3B940);
  sub_1BD0DE53C(v23, &qword_1EBD4F0E0);
  v70[0] = v49;
  v70[1] = 0;
  v71 = v50;
  v73 = *&v66[16];
  v74 = *&v66[32];
  *v75 = *&v66[48];
  *&v75[15] = *&v66[63];
  v72 = *v66;
  sub_1BD0DE53C(v70, &qword_1EBD3B940);
  return sub_1BD0DE53C(v51, &qword_1EBD4F0E0);
}

void sub_1BD6800A4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v3 = sub_1BE050404();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v57 = *a1;
  v58 = v6;
  v7 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v52 = v7;
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11;
  sub_1BE050324();
  v13 = sub_1BE0505F4();
  v15 = v14;
  v17 = v16;

  sub_1BD0DDF10(v8, v10, v12 & 1);

  LODWORD(v57) = sub_1BE04FC74();
  v18 = sub_1BE050574();
  v20 = v19;
  LODWORD(v22) = v21;
  v24 = v23;
  sub_1BD0DDF10(v13, v15, v17 & 1);

  if (!a1[3])
  {
    v41 = 0;
    v43 = 0;
    v47 = 0;
    v46 = 0;
    goto LABEL_5;
  }

  HIDWORD(v49) = v22;
  v50 = v18;
  v51 = v24;
  v25 = sub_1BE052404();
  v26 = PKMaskedPaymentPAN();

  if (v26)
  {
    v27 = sub_1BE052434();
    v29 = v28;

    v57 = v27;
    v58 = v29;
    v30 = sub_1BE0506C4();
    v32 = v31;
    v34 = v33;
    sub_1BE050454();
    v36 = v53;
    v35 = v54;
    v37 = v55;
    (*(v54 + 104))(v53, *MEMORY[0x1E6980EA8], v55);
    sub_1BE050434();

    (*(v35 + 8))(v36, v37);
    v38 = sub_1BE0505F4();
    v22 = v39;
    LOBYTE(v37) = v40;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    LODWORD(v57) = sub_1BE04FC94();
    v41 = sub_1BE050574();
    v43 = v42;
    LOBYTE(v30) = v44;
    v46 = v45;
    sub_1BD0DDF10(v38, v22, v37 & 1);

    v47 = v30 & 1;
    sub_1BD0D7F18(v41, v43, v30 & 1);
    sub_1BE048C84();
    v18 = v50;
    v24 = v51;
    LOBYTE(v22) = BYTE4(v49);
LABEL_5:
    sub_1BD0D7F18(v18, v20, v22 & 1);
    sub_1BE048C84();
    sub_1BD1969AC(v41, v43, v47, v46);
    sub_1BD1969F0(v41, v43, v47, v46);
    LOBYTE(v57) = v22 & 1;
    v48 = v56;
    *v56 = v18;
    v48[1] = v20;
    *(v48 + 16) = v22 & 1;
    v48[3] = v24;
    v48[4] = v41;
    v48[5] = v43;
    v48[6] = v47;
    v48[7] = v46;
    sub_1BD1969F0(v41, v43, v47, v46);
    sub_1BD0DDF10(v18, v20, v22 & 1);

    return;
  }

  __break(1u);
}

uint64_t sub_1BD68048C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  v3 = sub_1BE04A564();
  v69 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v68 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BE04A574();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v6);
  v65 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04A594();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v61 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1BE04BD74();
  v11 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v63 = v56 - v17;
  v18 = sub_1BE04A5B4();
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v59 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v60 = v56 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v56 - v30;
  v32 = sub_1BE04AA64();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for UnifiedMerchantTokenData(0);
  v38 = (a1 + *(result + 60));
  v39 = v38[1];
  if (v39)
  {
    v58 = *v38;
    sub_1BD0DE19C(a1 + *(result + 56), v31, &unk_1EBD3CF70);
    if ((*(v33 + 48))(v31, 1, v32) == 1)
    {
      result = sub_1BD0DE53C(v31, &unk_1EBD3CF70);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v39 = 0;
    }

    else
    {
      (*(v33 + 32))(v36, v31, v32);
      v56[1] = "ETAIL_PAYMENT_METHOD";
      (*(v11 + 104))(v14, *MEMORY[0x1E69B8080], v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1BE0B6CA0;
      v57 = v3;
      v41 = MEMORY[0x1E69E6158];
      *(v40 + 56) = MEMORY[0x1E69E6158];
      v42 = sub_1BD110550();
      *(v40 + 64) = v42;
      *(v40 + 32) = v58;
      *(v40 + 40) = v39;
      sub_1BE048C84();
      v43 = sub_1BE04A9B4();
      *(v40 + 96) = v41;
      *(v40 + 104) = v42;
      *(v40 + 72) = v43;
      *(v40 + 80) = v44;
      sub_1BE04B714();

      (*(v11 + 8))(v14, v70);
      (*(v33 + 56))(v27, 1, 1, v32);
      (*(v62 + 104))(v65, *MEMORY[0x1E6968750], v64);
      (*(v69 + 104))(v68, *MEMORY[0x1E6968728], v57);
      sub_1BE04A584();
      v45 = v63;
      sub_1BE04A5A4();
      v51 = v66;
      v50 = v67;
      (*(v66 + 56))(v45, 0, 1, v67);
      v52 = v60;
      (*(v51 + 32))(v60, v45, v50);
      (*(v51 + 16))(v59, v52, v50);
      v46 = sub_1BE0506A4();
      v47 = v53;
      LOBYTE(v45) = v54;
      v39 = v55;
      (*(v51 + 8))(v52, v50);
      result = (*(v33 + 8))(v36, v32);
      v48 = v45 & 1;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  v49 = v71;
  *v71 = v46;
  v49[1] = v47;
  v49[2] = v48;
  v49[3] = v39;
  return result;
}

uint64_t sub_1BD680BE4()
{
  type metadata accessor for UnifiedMerchantTokenData(0);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F090);
  sub_1BD0DE4F4(&qword_1EBD4F0A0, &qword_1EBD4F098);
  sub_1BD0DE4F4(&qword_1EBD4F088, &qword_1EBD4F090);
  sub_1BD683C44(&qword_1EBD4F0A8, type metadata accessor for UnifiedMerchantTokenData.PastPayment);
  return sub_1BE0519D4();
}

double sub_1BD680D4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F504();
  v22 = 1;
  sub_1BD680EF4(a1, &v12);
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_1BD0DE19C(&v23, v11, &qword_1EBD4F0B0);
  sub_1BD0DE53C(v32, &qword_1EBD4F0B0);
  *(&v21[6] + 7) = v29;
  *(&v21[5] + 7) = v28;
  *(&v21[2] + 7) = v25;
  *(&v21[1] + 7) = v24;
  *(&v21[7] + 7) = v30;
  *(&v21[8] + 7) = v31;
  *(&v21[3] + 7) = v26;
  *(&v21[4] + 7) = v27;
  *(v21 + 7) = v23;
  v5 = v21[4];
  *(a2 + 97) = v21[5];
  v6 = v21[7];
  *(a2 + 113) = v21[6];
  *(a2 + 129) = v6;
  *(a2 + 144) = *(&v21[7] + 15);
  v7 = v21[0];
  *(a2 + 33) = v21[1];
  result = *&v21[2];
  v9 = v21[3];
  *(a2 + 49) = v21[2];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_1BD680EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04B0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BE04F7C4();
  LOBYTE(v29) = 1;
  sub_1BD681160(a1, v26);
  *&v25[7] = v26[0];
  *&v25[23] = v26[1];
  *&v25[39] = v26[2];
  *&v25[55] = v26[3];
  v10 = v29;
  type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  sub_1BE04B054();
  v11 = sub_1BE0493E4();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v29 = v11;
  v30 = v13;
  sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v16 = v15;
  v27[0] = v9;
  v27[1] = 0;
  v28[0] = v10;
  *&v28[1] = *v25;
  *&v28[17] = *&v25[16];
  *&v28[33] = *&v25[32];
  *&v28[49] = *&v25[48];
  *&v28[64] = *&v25[63];
  v24[8] = 1;
  LOBYTE(v13) = v17 & 1;
  v24[0] = v17 & 1;
  v18 = *v28;
  *a2 = v9;
  *(a2 + 16) = v18;
  v19 = *&v28[16];
  v20 = *&v28[48];
  v21 = *&v28[64];
  *(a2 + 48) = *&v28[32];
  *(a2 + 64) = v20;
  *(a2 + 32) = v19;
  *(a2 + 80) = v21;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v14;
  *(a2 + 112) = v15;
  *(a2 + 120) = v17 & 1;
  *(a2 + 128) = v22;
  sub_1BD0DE19C(v27, &v29, &qword_1EBD3B890);
  sub_1BD0D7F18(v14, v16, v13);
  sub_1BE048C84();
  sub_1BD0DDF10(v14, v16, v13);

  v29 = v9;
  v30 = 0;
  v31 = v10;
  v33 = *&v25[16];
  v34 = *&v25[32];
  *v35 = *&v25[48];
  *&v35[15] = *&v25[63];
  v32 = *v25;
  return sub_1BD0DE53C(&v29, &qword_1EBD3B890);
}

id sub_1BD681160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1BE050654();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for UnifiedMerchantTokenData.PastPayment(0);
  (*(v12 + 16))(v15, a1 + *(v16 + 24), v11);
  sub_1BE050634();
  v17 = v4;
  v18 = sub_1BE050684();
  v20 = v19;
  v22 = v21;
  sub_1BE050324();
  v23 = sub_1BE0505F4();
  v53 = v24;
  v54 = v23;
  v52 = v25;
  v55 = v26;

  sub_1BD0DDF10(v18, v20, v22 & 1);

  (*(v5 + 104))(v8, *MEMORY[0x1E69B80D8], v17);
  result = PKPassKitBundle();
  if (result)
  {
    v28 = result;
    v29 = sub_1BE04B6F4();
    v31 = v30;

    (*(v5 + 8))(v8, v17);
    v57 = v29;
    v58 = v31;
    sub_1BD0DDEBC();
    v32 = sub_1BE0506C4();
    v34 = v33;
    LOBYTE(v31) = v35;
    sub_1BE050454();
    v36 = sub_1BE0505F4();
    v38 = v37;
    v40 = v39;

    sub_1BD0DDF10(v32, v34, v31 & 1);

    LODWORD(v57) = sub_1BE04FC94();
    v41 = sub_1BE050574();
    v43 = v42;
    LOBYTE(v31) = v44;
    v46 = v45;
    sub_1BD0DDF10(v36, v38, v40 & 1);

    v47 = v52 & 1;
    v56 = v52 & 1;
    LOBYTE(v57) = v52 & 1;
    v48 = v31 & 1;
    v59 = v31 & 1;
    v50 = v53;
    v49 = v54;
    *a2 = v54;
    *(a2 + 8) = v50;
    *(a2 + 16) = v47;
    *(a2 + 24) = v55;
    *(a2 + 32) = v41;
    *(a2 + 40) = v43;
    *(a2 + 48) = v48;
    *(a2 + 56) = v46;
    sub_1BD0D7F18(v49, v50, v47);
    sub_1BE048C84();
    sub_1BD0D7F18(v41, v43, v48);
    sub_1BE048C84();
    sub_1BD0DDF10(v41, v43, v48);

    sub_1BD0DDF10(v49, v50, v56);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD681564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v39 = a3;
  v4 = sub_1BE04FF64();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MerchantTokenDetailView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F050);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - v18;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F068);
  v20 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v21);
  v23 = &v34 - v22;
  sub_1BE04E194();
  v24 = sub_1BE04E1D4();
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  sub_1BD67B848(a1, &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MerchantTokenDetailView);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = swift_allocObject();
  sub_1BD67B8B0(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for MerchantTokenDetailView);
  v27 = v35;
  v40 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
  sub_1BD170E70();
  sub_1BE0516F4();
  LOBYTE(v27) = *(v27 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 64));
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  v30 = &v19[*(v16 + 36)];
  *v30 = KeyPath;
  v30[1] = sub_1BD10DF54;
  v30[2] = v29;
  sub_1BE04FF44();
  v31 = sub_1BD682ECC();
  sub_1BE050D14();
  (*(v37 + 8))(v7, v38);
  sub_1BD0DE53C(v19, &qword_1EBD4F050);
  sub_1BE052434();
  v41 = v16;
  v42 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v36;
  sub_1BE050DE4();

  return (*(v20 + 8))(v23, v32);
}

void sub_1BD6819F8(uint64_t a1)
{
  v2 = type metadata accessor for MerchantTokenDetailView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  if (*(a1 + *(v2 + 48)))
  {
    v3 = MEMORY[0x1E69BB6F8];
  }

  else
  {
    v3 = MEMORY[0x1E69BB718];
  }

  v4 = *v3;
  sub_1BD6B2184(14, 0xBu, v4);
}

double sub_1BD681AB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *(a1 + *(type metadata accessor for UnifiedMerchantTokenData(0) + 68));
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8080], v4);
  v9 = (v5 + 8);
  if (a1 == 1)
  {
    v10 = sub_1BE04B714();
    v12 = v11;
    (*v9)(v8, v4);
    *&v31 = v10;
    *(&v31 + 1) = v12;
    sub_1BD0DDEBC();
    v26 = sub_1BE0506C4();
    v27 = v13;
    v28 = v14 & 1;
    v29 = v15;
    v30 = 0;
  }

  else
  {
    v16 = sub_1BE04B714();
    v18 = v17;
    (*v9)(v8, v4);
    *&v31 = v16;
    *(&v31 + 1) = v18;
    sub_1BD0DDEBC();
    v26 = sub_1BE0506C4();
    v27 = v20;
    v28 = v19 & 1;
    v29 = v21;
    v30 = 1;
  }

  sub_1BE04F9A4();
  result = *&v31;
  v23 = v32;
  v24 = v33;
  *a2 = v31;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  return result;
}

__n128 sub_1BD681CD4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v103 = a2;
  v3 = sub_1BE04A564();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v97 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1BE04A574();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v6);
  v96 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04A594();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v92 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v94 = &v85 - v18;
  v19 = sub_1BE04A5B4();
  v100 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v90 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v91 = &v85 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v85 - v31;
  v33 = sub_1BE04AA64();
  v102 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UnifiedMerchantTokenData(0);
  v38 = v37;
  v39 = MEMORY[0x1E69B8080];
  if (*(a1 + *(v37 + 64)) == 1)
  {
    v101 = v11;
    sub_1BD0DE19C(a1 + *(v37 + 56), v32, &unk_1EBD3CF70);
    v40 = v102;
    if ((*(v102 + 48))(v32, 1, v33) == 1)
    {
      sub_1BD0DE53C(v32, &unk_1EBD3CF70);
    }

    else
    {
      (*(v40 + 32))(v36, v32, v33);
      v41 = (a1 + *(v38 + 60));
      v42 = v41[1];
      if (v42)
      {
        v89 = v19;
        v88 = *v41;
        v87 = "ETAIL_DELETE_DEFERRED_FOOTER";
        v43 = *MEMORY[0x1E69B8080];
        v44 = *(v12 + 104);
        v86 = v42;
        v44(v15, v43, v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v45 = v36;
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1BE0B6CA0;
        *(v46 + 56) = MEMORY[0x1E69E6158];
        v47 = sub_1BD110550();
        *(v46 + 64) = v47;
        v48 = v86;
        *(v46 + 32) = v88;
        *(v46 + 40) = v48;
        sub_1BE048C84();
        v88 = v45;
        v49 = sub_1BE04A9B4();
        *(v46 + 96) = MEMORY[0x1E69E6158];
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        sub_1BE04B714();
        v87 = v51;

        (*(v12 + 8))(v15, v101);
        (*(v102 + 56))(v28, 1, 1, v33);
        (*(v93 + 104))(v96, *MEMORY[0x1E6968750], v95);
        (*(v98 + 104))(v97, *MEMORY[0x1E6968728], v99);
        sub_1BE04A584();
        v52 = v94;
        sub_1BE04A5A4();
        v79 = v100;
        v80 = v89;
        (*(v100 + 56))(v52, 0, 1, v89);
        v81 = v91;
        (*(v79 + 32))(v91, v52, v80);
        (*(v79 + 16))(v90, v81, v80);
        v104.n128_u64[0] = sub_1BE0506A4();
        v104.n128_u64[1] = v82;
        v105.n128_u64[0] = v83 & 1;
        v105.n128_u64[1] = v84;
        v106 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
        sub_1BD170E70();
        sub_1BE04F9A4();
        (*(v79 + 8))(v81, v80);
        (*(v102 + 8))(v88, v33);
        goto LABEL_12;
      }

      (*(v40 + 8))(v36, v33);
    }

    v11 = v101;
    v39 = MEMORY[0x1E69B8080];
  }

  v53 = *(a1 + *(v38 + 68));
  (*(v12 + 104))(v15, *v39, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v54 = v11;
  if (v53 == 1)
  {
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1BE0B6CA0;
    v57 = *(a1 + 32);
    v56 = *(a1 + 40);
    v58 = MEMORY[0x1E69E6158];
    *(v55 + 56) = MEMORY[0x1E69E6158];
    v59 = sub_1BD110550();
    *(v55 + 32) = v57;
    *(v55 + 40) = v56;
    *(v55 + 96) = v58;
    *(v55 + 104) = v59;
    *(v55 + 64) = v59;
    *(v55 + 72) = v57;
    *(v55 + 80) = v56;
    swift_bridgeObjectRetain_n();
    v60 = sub_1BE04B714();
    v62 = v61;

    (*(v12 + 8))(v15, v54);
    v107.n128_u64[0] = v60;
    v107.n128_u64[1] = v62;
    sub_1BD0DDEBC();
    v104.n128_u64[0] = sub_1BE0506C4();
    v104.n128_u64[1] = v63;
    v105.n128_u64[0] = v64 & 1;
    v105.n128_u64[1] = v65;
    LOBYTE(v106) = 0;
  }

  else
  {
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1BE0B69E0;
    v68 = *(a1 + 32);
    v67 = *(a1 + 40);
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = sub_1BD110550();
    *(v66 + 32) = v68;
    *(v66 + 40) = v67;
    sub_1BE048C84();
    v69 = sub_1BE04B714();
    v71 = v70;

    (*(v12 + 8))(v15, v54);
    v107.n128_u64[0] = v69;
    v107.n128_u64[1] = v71;
    sub_1BD0DDEBC();
    v104.n128_u64[0] = sub_1BE0506C4();
    v104.n128_u64[1] = v73;
    v105.n128_u64[0] = v72 & 1;
    v105.n128_u64[1] = v74;
    LOBYTE(v106) = 1;
  }

  sub_1BE04F9A4();
  v104 = v107;
  v105 = v108;
  LOBYTE(v106) = v109;
  HIBYTE(v106) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8);
  sub_1BD170E70();
  sub_1BE04F9A4();
LABEL_12:
  result = v108;
  v76 = v109;
  v77 = v110;
  v78 = v103;
  *v103 = v107;
  v78[1] = result;
  v78[2].n128_u8[0] = v76;
  v78[2].n128_u8[1] = v77;
  return result;
}

uint64_t sub_1BD6827BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F238);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BD0DE19C(a1, &v6 - v4, &qword_1EBD4F238);
  return sub_1BE04F334();
}

uint64_t sub_1BD682864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MerchantTokenDetailView.ImageState(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F268);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1BD67B848(a1, &v23 - v15, type metadata accessor for MerchantTokenDetailView.ImageState);
  sub_1BD67B848(a2, &v16[v18], type metadata accessor for MerchantTokenDetailView.ImageState);
  v19 = *(v5 + 48);
  v20 = v19(v16, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v19(&v16[v18], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v19(&v16[v18], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1BD0DE53C(v16, &qword_1EBD4F268);
    v21 = 0;
    return v21 & 1;
  }

  if (!v20)
  {
    sub_1BD67B848(v16, v12, type metadata accessor for MerchantTokenDetailView.ImageState);
    if (!v19(&v16[v18], 3, v4))
    {
      sub_1BD67B8B0(&v16[v18], v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      v21 = sub_1BD3D8E1C(v12, v8);
      sub_1BD67BA48(v8, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BD67BA48(v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BD67BA48(v16, type metadata accessor for MerchantTokenDetailView.ImageState);
      return v21 & 1;
    }

    sub_1BD67BA48(v12, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1BD67BA48(v16, type metadata accessor for MerchantTokenDetailView.ImageState);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1BD682BFC(uint64_t a1)
{
  v4 = *(type metadata accessor for MerchantTokenDetailView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD67AD48(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1BD682D38(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EFD0);

  return sub_1BD67B5DC(a1, a2);
}

unint64_t sub_1BD682DD4()
{
  result = qword_1EBD4F048;
  if (!qword_1EBD4F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F050);
    sub_1BD682ECC();
    swift_getOpaqueTypeConformance2();
    sub_1BD683C44(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F048);
  }

  return result;
}

unint64_t sub_1BD682ECC()
{
  result = qword_1EBD4F058;
  if (!qword_1EBD4F058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F050);
    sub_1BD0DE4F4(&qword_1EBD46600, &qword_1EBD46608);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F058);
  }

  return result;
}

uint64_t objectdestroy_17Tm_1()
{
  v1 = type metadata accessor for MerchantTokenDetailView(0);
  v22 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v22 + 16) & ~v22);

  v3 = type metadata accessor for UnifiedMerchantTokenData(0);
  v4 = v2 + v3[10];
  v5 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v21 = *(*(v5 - 8) + 48);
  if (!v21(v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v4, *(v4 + 8));
        break;
      case 0:
        v18 = sub_1BE04AA64();
        (*(*(v18 - 8) + 8))(v4, v18);
        break;
    }
  }

  v20 = v5;
  v6 = v3[11];
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v3[12];
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v13 = v3[14];
  if (!v9(v2 + v13, 1, v7))
  {
    (*(v8 + 8))(v2 + v13, v7);
  }

  v14 = v3[18];
  if (!v9(v2 + v14, 1, v7))
  {
    (*(v8 + 8))(v2 + v14, v7);
  }

  v15 = v2 + v1[10];
  if (!v21(v15, 3, v20))
  {
    v19 = swift_getEnumCaseMultiPayload();
    switch(v19)
    {
      case 2:

        break;
      case 1:
        sub_1BD1245AC(*v15, *(v15 + 8));
        break;
      case 0:
        (*(v8 + 8))(v15, v7);
        break;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4EF30);

  return swift_deallocObject();
}

void sub_1BD683484()
{
  v1 = *(type metadata accessor for MerchantTokenDetailView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD6819F8(v2);
}

unint64_t sub_1BD6834F4()
{
  result = qword_1EBD4F080;
  if (!qword_1EBD4F080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F078);
    sub_1BD0DE4F4(&qword_1EBD4F088, &qword_1EBD4F090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F080);
  }

  return result;
}

unint64_t sub_1BD68360C()
{
  result = qword_1EBD4F130;
  if (!qword_1EBD4F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F118);
    sub_1BD0DE4F4(&qword_1EBD4F128, &qword_1EBD4F120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F130);
  }

  return result;
}

unint64_t sub_1BD6836C8()
{
  result = qword_1EBD4F138;
  if (!qword_1EBD4F138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F108);
    sub_1BD683760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F138);
  }

  return result;
}

unint64_t sub_1BD683760()
{
  result = qword_1EBD4F140;
  if (!qword_1EBD4F140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F148);
    sub_1BD6837EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F140);
  }

  return result;
}

unint64_t sub_1BD6837EC()
{
  result = qword_1EBD4F150;
  if (!qword_1EBD4F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    swift_getOpaqueTypeConformance2();
    sub_1BD683C44(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F150);
  }

  return result;
}

uint64_t sub_1BD683960()
{
  v1 = *(type metadata accessor for MerchantTokenDetailView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MerchantTokenPresentationModel.MerchantTokenManagementURL(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD67D8A0(v0 + v2, v5);
}

uint64_t sub_1BD683A34(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BE052544();

    return sub_1BE052654();
  }

  return result;
}

unint64_t sub_1BD683AD0()
{
  result = qword_1EBD4F1D8;
  if (!qword_1EBD4F1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F1C0);
    sub_1BD683B88();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F1D8);
  }

  return result;
}

unint64_t sub_1BD683B88()
{
  result = qword_1EBD4F1E0;
  if (!qword_1EBD4F1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F1E8);
    sub_1BD683C44(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F1E0);
  }

  return result;
}

uint64_t sub_1BD683C44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD683C8C()
{
  result = qword_1EBD4F258;
  if (!qword_1EBD4F258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F250);
    sub_1BD683C44(&qword_1EBD4F1F0, type metadata accessor for MerchantTokenIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F258);
  }

  return result;
}

unint64_t sub_1BD683D40()
{
  result = qword_1EBD4F260;
  if (!qword_1EBD4F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F260);
  }

  return result;
}

uint64_t sub_1BD683D94()
{
  result = sub_1BE04AA64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD683E1C()
{
  sub_1BD683EFC(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BD683F4C(319, &qword_1EBD45140, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD683EFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BD683F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD683FD8()
{
  result = type metadata accessor for UnifiedMerchantTokenData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD684044()
{
  result = qword_1EBD4F2A0;
  if (!qword_1EBD4F2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EFC0);
    sub_1BD6840FC();
    sub_1BD0DE4F4(&qword_1EBD4F2B0, &qword_1EBD4EFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F2A0);
  }

  return result;
}

unint64_t sub_1BD6840FC()
{
  result = qword_1EBD4F2A8;
  if (!qword_1EBD4F2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ABA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4EF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80);
    sub_1BD67B68C();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80);
    sub_1BD170E70();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F2A8);
  }

  return result;
}

uint64_t sub_1BD68436C()
{
  result = type metadata accessor for PassRow.Pass(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BD6843F0()
{
  sub_1BD684464();
  if (v0 <= 0x3F)
  {
    sub_1BD6844EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD684464()
{
  if (!qword_1EBD4F2D8)
  {
    type metadata accessor for AvailablePass(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F2E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD4F2D8);
    }
  }
}

void sub_1BD6844EC()
{
  if (!qword_1EBD4F2E8)
  {
    type metadata accessor for UnavailablePass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD4F2E8);
    }
  }
}

uint64_t sub_1BD684558()
{
  result = sub_1BE051C54();
  v1 = 51.0;
  if (result)
  {
    v1 = 36.0;
  }

  qword_1EBDAB3C8 = *&v1;
  return result;
}

uint64_t sub_1BD684594(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD68C394(v3, v15, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68CEDC(v15, v7, type metadata accessor for UnavailablePass);
    sub_1BD68C394(v7, v19, type metadata accessor for WrappedPass);
    v20 = type metadata accessor for UnavailablePass;
    v21 = v7;
  }

  else
  {

    sub_1BD68CEDC(v15, v11, type metadata accessor for AvailablePass);
    sub_1BD68C394(v11, v19, type metadata accessor for WrappedPass);
    v20 = type metadata accessor for AvailablePass;
    v21 = v11;
  }

  v22 = sub_1BD68C19C(v21, v20);
  v23 = a1(v22);
  sub_1BD68C19C(v19, type metadata accessor for WrappedPass);
  return v23;
}

uint64_t sub_1BD68482C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x72616D6B63656863;
  v4 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v3 = 0x72656E6E697073;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x72616D6B63656863;
  v8 = 0xE90000000000006BLL;
  if (*a2 != 1)
  {
    v7 = 0x72656E6E697073;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE053B84();
  }

  return v11 & 1;
}

uint64_t sub_1BD684930()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD6849D0()
{
  sub_1BE052524();
}

uint64_t sub_1BD684A5C()
{
  sub_1BE053D04();
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD684AF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BD68CF44();
  *a1 = result;
  return result;
}

void sub_1BD684B28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE90000000000006BLL;
  v5 = 0x72616D6B63656863;
  if (v2 != 1)
  {
    v5 = 0x72656E6E697073;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1BD684B88()
{
  result = qword_1EBD4F2F0;
  if (!qword_1EBD4F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F2F0);
  }

  return result;
}

uint64_t sub_1BD684BF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BE04FF64();
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F2F8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F300);
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v15);
  v17 = &v55 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F308);
  MEMORY[0x1EEE9AC00](v57, v18);
  v20 = &v55 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F310);
  MEMORY[0x1EEE9AC00](v60, v21);
  v23 = &v55 - v22;
  v24 = *(v2 + *(type metadata accessor for PassRow(0) + 20));
  v63 = v7;
  v64 = a1;
  v61 = v23;
  v62 = v4;
  if (v24 == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_1BE053B84();
  }

  *v14 = sub_1BE04F504();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F318);
  v27 = v25 & 1;
  sub_1BD685228(v2, v25 & 1, &v14[*(v26 + 44)]);
  sub_1BE04FF44();
  v28 = v2;
  v29 = sub_1BD0DE4F4(&qword_1EBD4F320, &qword_1EBD4F2F8);
  sub_1BE050D14();
  (*(v56 + 8))(v10, v59);
  sub_1BD0DE53C(v14, &qword_1EBD4F2F8);
  sub_1BE052434();
  *&v65[0] = v11;
  *(&v65[0] + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v58;
  sub_1BE050DE4();

  (*(v55 + 8))(v17, v30);
  v31 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F328) + 36)];
  *v31 = 0;
  v31[8] = v27;
  v32 = sub_1BE051DA4();
  sub_1BD689748(v65);
  v33 = v66;
  v34 = &v20[*(v57 + 36)];
  *v34 = v32;
  v35 = v65[1];
  *(v34 + 8) = v65[0];
  *(v34 + 24) = v35;
  v34[40] = v33;
  v36 = v63;
  sub_1BD68C394(v28, v63, type metadata accessor for PassRow.Pass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = type metadata accessor for PassRow.Pass;
  if (EnumCaseMultiPayload != 1)
  {

    v38 = type metadata accessor for AvailablePass;
  }

  v39 = v61;
  v40 = EnumCaseMultiPayload == 1;
  sub_1BD68C19C(v36, v38);
  KeyPath = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  sub_1BD0DE204(v20, v39, &qword_1EBD4F308);
  v43 = (v39 + *(v60 + 36));
  *v43 = KeyPath;
  v43[1] = sub_1BD10DF54;
  v43[2] = v42;
  LOBYTE(KeyPath) = sub_1BE050234();
  sub_1BE04E1F4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v64;
  sub_1BD0DE204(v39, v64, &qword_1EBD4F310);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F330);
  v54 = v52 + *(result + 36);
  *v54 = KeyPath;
  *(v54 + 8) = v45;
  *(v54 + 16) = v47;
  *(v54 + 24) = v49;
  *(v54 + 32) = v51;
  *(v54 + 40) = 0;
  return result;
}

uint64_t sub_1BD685228@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v123 = a3;
  v105 = sub_1BE04F6E4();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v4);
  v102 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8);
  MEMORY[0x1EEE9AC00](v107, v6);
  v104 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v106 = &v100 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4ADC0);
  MEMORY[0x1EEE9AC00](v108, v11);
  v109 = &v100 - v12;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F338);
  MEMORY[0x1EEE9AC00](v118, v13);
  v110 = &v100 - v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F340);
  v112 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v15);
  v111 = &v100 - v16;
  v113 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v113, v17);
  v101 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = &v100 - v21;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F348);
  MEMORY[0x1EEE9AC00](v115, v22);
  v117 = &v100 - v23;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F350);
  MEMORY[0x1EEE9AC00](v116, v24);
  v26 = &v100 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F358);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v122 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v124 = &v100 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F360);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v100 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F368);
  v38 = v37 - 8;
  MEMORY[0x1EEE9AC00](v37, v39);
  v121 = &v100 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v100 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v100 - v47;
  *v36 = sub_1BE04F504();
  *(v36 + 1) = 0x4030000000000000;
  v36[16] = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F370);
  sub_1BD6860A0(a1, &v36[*(v49 + 44)]);
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v36, v44, &qword_1EBD4F360);
  v50 = &v44[*(v38 + 44)];
  v51 = v136;
  *(v50 + 4) = v135;
  *(v50 + 5) = v51;
  *(v50 + 6) = v137;
  v52 = v132;
  *v50 = v131;
  *(v50 + 1) = v52;
  v53 = v134;
  *(v50 + 2) = v133;
  *(v50 + 3) = v53;
  v120 = v48;
  sub_1BD0DE204(v44, v48, &qword_1EBD4F368);
  v54 = type metadata accessor for PassRow(0);
  if (*(a1 + *(v54 + 20)) && *(a1 + *(v54 + 20)) != 1)
  {

    v55 = v124;
    goto LABEL_8;
  }

  v55 = v124;
  v56 = sub_1BE053B84();

  if (v56)
  {
LABEL_8:
    sub_1BE04E4F4();
    v59 = sub_1BE0502D4();
    KeyPath = swift_getKeyPath();
    v61 = &v26[*(v116 + 36)];
    *v61 = KeyPath;
    v61[1] = v59;
    sub_1BD0DE19C(v26, v117, &qword_1EBD4F350);
    swift_storeEnumTagMultiPayload();
    sub_1BD68C2B0();
    v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F388);
    v63 = v55;
    v64 = sub_1BD68C1FC(&qword_1EBD4F390, &qword_1EBD4F338, &unk_1BE0ED410, sub_1BD5717A4);
    v65 = v118;
    v125 = v118;
    v126 = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v125 = v65;
    v126 = MEMORY[0x1E6981CD8];
    v127 = v62;
    v128 = v64;
    v55 = v63;
    v129 = MEMORY[0x1E6981CD0];
    v130 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v26, &qword_1EBD4F350);
    v58 = 0;
    goto LABEL_9;
  }

  if ((v114 & 1) == 0)
  {
    v57 = v100;
    sub_1BD68C394(a1, v100, type metadata accessor for PassRow.Pass);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BD68C19C(v57, type metadata accessor for PassRow.Pass);
      v58 = 1;
LABEL_9:
      v67 = v123;
      goto LABEL_20;
    }

    sub_1BD68C19C(v57, type metadata accessor for AvailablePass);
  }

  v68 = sub_1BE051574();
  v69 = sub_1BE0502D4();
  v70 = swift_getKeyPath();
  v71 = a1;
  v72 = v101;
  sub_1BD68C394(v71, v101, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = type metadata accessor for UnavailablePass;
    v74 = sub_1BE051234();
  }

  else
  {
    v73 = type metadata accessor for PassRow.Pass;
    v74 = sub_1BE0511E4();
  }

  v75 = v74;
  sub_1BD68C19C(v72, v73);
  v76 = swift_getKeyPath();
  v125 = v68;
  v126 = v70;
  v127 = v69;
  v128 = v76;
  v129 = v75;
  v77 = v102;
  sub_1BE04F6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170);
  sub_1BD0F1430();
  v78 = v104;
  sub_1BE050DA4();
  (*(v103 + 8))(v77, v105);

  v79 = v114;
  v80 = ~v114;
  v81 = v106;
  sub_1BE04EBA4();
  sub_1BD0DE53C(v78, &qword_1EBD38BA8);
  if (v79)
  {
    v82 = 1.0;
  }

  else
  {
    v82 = 0.0;
  }

  v83 = v109;
  sub_1BD0DE204(v81, v109, &qword_1EBD38BA8);
  *(v83 + *(v108 + 36)) = v82;
  if ((v80 & 1) == 0)
  {
    sub_1BE052434();
  }

  v67 = v123;
  sub_1BD5717A4();
  v84 = v110;
  sub_1BE050DE4();

  sub_1BD0DE53C(v83, &qword_1EBD4ADC0);
  sub_1BE051C64();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F388);
  v86 = sub_1BD68C1FC(&qword_1EBD4F390, &qword_1EBD4F338, &unk_1BE0ED410, sub_1BD5717A4);
  v87 = v118;
  v125 = v118;
  v126 = v86;
  v99 = swift_getOpaqueTypeConformance2();
  v88 = v111;
  sub_1BE0510C4();
  sub_1BD0DE53C(v84, &qword_1EBD4F338);
  v89 = v112;
  v90 = v119;
  (*(v112 + 16))(v117, v88, v119);
  swift_storeEnumTagMultiPayload();
  sub_1BD68C2B0();
  v125 = v87;
  v126 = MEMORY[0x1E6981CD8];
  v127 = v85;
  v128 = v86;
  v129 = MEMORY[0x1E6981CD0];
  v130 = v99;
  swift_getOpaqueTypeConformance2();
  v55 = v124;
  sub_1BE04F9A4();
  (*(v89 + 8))(v88, v90);
  v58 = 0;
LABEL_20:
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F378);
  (*(*(v91 - 8) + 56))(v55, v58, 1, v91);
  v92 = v120;
  v93 = v121;
  sub_1BD0DE19C(v120, v121, &qword_1EBD4F368);
  v94 = v55;
  v95 = v55;
  v96 = v122;
  sub_1BD094604(v94, v122);
  sub_1BD0DE19C(v93, v67, &qword_1EBD4F368);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F380);
  sub_1BD094604(v96, v67 + *(v97 + 48));
  sub_1BD0DE53C(v95, &qword_1EBD4F358);
  sub_1BD0DE53C(v92, &qword_1EBD4F368);
  sub_1BD0DE53C(v96, &qword_1EBD4F358);
  return sub_1BD0DE53C(v93, &qword_1EBD4F368);
}

uint64_t sub_1BD6860A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v63 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v60 - v7;
  v9 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DDB0);
  MEMORY[0x1EEE9AC00](v61, v29);
  v62 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v60 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v60 - v37;
  sub_1BD68C394(v65, v20, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68CEDC(v20, v12, type metadata accessor for UnavailablePass);
    sub_1BD68C394(v12, v24, type metadata accessor for WrappedPass);
    v39 = type metadata accessor for UnavailablePass;
    v40 = v12;
  }

  else
  {

    sub_1BD68CEDC(v20, v16, type metadata accessor for AvailablePass);
    sub_1BD68C394(v16, v24, type metadata accessor for WrappedPass);
    v39 = type metadata accessor for AvailablePass;
    v40 = v16;
  }

  sub_1BD68C19C(v40, v39);
  if (qword_1EBD36CF0 != -1)
  {
    swift_once();
  }

  v41 = *&qword_1EBDAB3C8;
  PKPassFrontFaceContentSize();
  v28[3] = v41;
  v28[4] = v41 * (v43 / v42);
  sub_1BD68CEDC(v24, v28 + v25[6], type metadata accessor for WrappedPass);
  *v28 = sub_1BD70C870;
  v28[1] = 0.0;
  *(v28 + 16) = 0;
  *(v28 + v25[7]) = 0;
  *(v28 + v25[8]) = 1911;
  v44 = sub_1BE050234();
  sub_1BE04E1F4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_1BD68CEDC(v28, v34, type metadata accessor for PassImage);
  v53 = &v34[*(v61 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  sub_1BD0DE204(v34, v38, &qword_1EBD3DDB0);
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3A8);
  sub_1BD686690(&v8[*(v54 + 44)]);
  v55 = v62;
  sub_1BD0DE19C(v38, v62, &qword_1EBD3DDB0);
  v56 = v64;
  sub_1BD0DE19C(v8, v64, &qword_1EBD4F3A0);
  v57 = v63;
  sub_1BD0DE19C(v55, v63, &qword_1EBD3DDB0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3B0);
  sub_1BD0DE19C(v56, v57 + *(v58 + 48), &qword_1EBD4F3A0);
  sub_1BD0DE53C(v8, &qword_1EBD4F3A0);
  sub_1BD0DE53C(v38, &qword_1EBD3DDB0);
  sub_1BD0DE53C(v56, &qword_1EBD4F3A0);
  return sub_1BD0DE53C(v55, &qword_1EBD3DDB0);
}

uint64_t sub_1BD686690@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3B8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3C8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v38 = &v35 - v19;
  sub_1BD686A84();
  sub_1BD686D78(v4);
  sub_1BE052434();
  sub_1BD68C3FC();
  v36 = v12;
  sub_1BE050DE4();

  sub_1BD0DE53C(v4, &qword_1EBD4F3B8);
  sub_1BD688FB4(v47);
  sub_1BD6892DC(&v51);
  v21 = v51;
  v22 = v52;
  v39 = v16;
  sub_1BD0DE19C(v20, v16, &qword_1EBD4F3C8);
  v37 = v8;
  sub_1BD0DE19C(v12, v8, &qword_1EBD4F3C0);
  v45 = v47[4];
  v46[0] = v48[0];
  *(v46 + 9) = *(v48 + 9);
  v41 = v47[0];
  v42 = v47[1];
  v43 = v47[2];
  v44 = v47[3];
  v23 = v16;
  v24 = v40;
  sub_1BD0DE19C(v23, v40, &qword_1EBD4F3C8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F8);
  sub_1BD0DE19C(v8, v24 + v25[12], &qword_1EBD4F3C0);
  v26 = (v24 + v25[16]);
  v27 = v45;
  v28 = v46[0];
  v49[4] = v45;
  v50[0] = v46[0];
  v29 = *(v46 + 9);
  *(v50 + 9) = *(v46 + 9);
  v30 = v42;
  v49[0] = v41;
  v49[1] = v42;
  v32 = v43;
  v31 = v44;
  v49[2] = v43;
  v49[3] = v44;
  *v26 = v41;
  v26[1] = v30;
  v26[4] = v27;
  v26[5] = v28;
  v26[2] = v32;
  v26[3] = v31;
  *(v26 + 89) = v29;
  v33 = (v24 + v25[20]);
  *v33 = v21;
  v33[1] = v22;
  sub_1BD0DE19C(v49, &v51, &qword_1EBD4F500);
  sub_1BD68CD54(v21, *(&v21 + 1));
  sub_1BD0DE53C(v36, &qword_1EBD4F3C0);
  sub_1BD0DE53C(v38, &qword_1EBD4F3C8);
  sub_1BD27273C(v21, *(&v21 + 1));
  v55 = v45;
  v56[0] = v46[0];
  *(v56 + 9) = *(v46 + 9);
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  sub_1BD0DE53C(&v51, &qword_1EBD4F500);
  sub_1BD0DE53C(v37, &qword_1EBD4F3C0);
  return sub_1BD0DE53C(v39, &qword_1EBD4F3C8);
}

uint64_t sub_1BD686A84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F538);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F540);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - v11;
  if (PKBankConnectEnabled())
  {
    *v12 = sub_1BE04F504();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F550);
    sub_1BD689920(v0, &v12[*(v13 + 44)]);
    sub_1BD0DE19C(v12, v8, &qword_1EBD4F540);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD4F548, &qword_1EBD4F540);
    sub_1BD68C1FC(&qword_1EBD3C0F8, &qword_1EBD3C0E8, &unk_1BE0C4010, sub_1BD1B9C50);
    sub_1BE04F9A4();
    v14 = v12;
    v15 = &qword_1EBD4F540;
  }

  else
  {
    sub_1BD689F58(v4);
    sub_1BD0DE19C(v4, v8, &qword_1EBD3C0E8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD4F548, &qword_1EBD4F540);
    sub_1BD68C1FC(&qword_1EBD3C0F8, &qword_1EBD3C0E8, &unk_1BE0C4010, sub_1BD1B9C50);
    sub_1BE04F9A4();
    v14 = v4;
    v15 = &qword_1EBD3C0E8;
  }

  return sub_1BD0DE53C(v14, v15);
}

uint64_t sub_1BD686D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v272 = a1;
  v267 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v267, v3);
  v269 = &v243 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F510);
  MEMORY[0x1EEE9AC00](v270, v5);
  v271 = (&v243 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v245 = &v243 - v9;
  v10 = type metadata accessor for IdentityCredential(0);
  v243 = *(v10 - 8);
  v244 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v247 = &v243 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4B0);
  MEMORY[0x1EEE9AC00](v259, v13);
  v250 = &v243 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B068);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v243 - v17;
  v19 = type metadata accessor for AppleCardRewardsInfoView();
  v252 = *(v19 - 8);
  v253 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v254 = &v243 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F518);
  MEMORY[0x1EEE9AC00](v264, v22);
  v266 = (&v243 - v23);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F520);
  MEMORY[0x1EEE9AC00](v260, v24);
  v262 = (&v243 - v25);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F528);
  MEMORY[0x1EEE9AC00](v256, v26);
  v257 = (&v243 - v27);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F410);
  MEMORY[0x1EEE9AC00](v261, v28);
  v258 = &v243 - v29;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F400);
  MEMORY[0x1EEE9AC00](v265, v30);
  v263 = &v243 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v243 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v243 - v38;
  v40 = type metadata accessor for BalanceInfo(0);
  v251 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v249 = (&v243 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43, v44);
  v248 = (&v243 - v45);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3E0);
  MEMORY[0x1EEE9AC00](v273, v46);
  v268 = &v243 - v47;
  v48 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v243 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v243 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = v2;
  sub_1BD68C394(v2, v55, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1BD68CEDC(v55, v51, type metadata accessor for AvailablePass);
    v80 = v51[v48[5]];
    v81 = v51;
    v246 = v51;
    if (v80 == 1)
    {
      v82 = *&v51[v48[9]];
      if (v82)
      {
        v83 = v82;
        v84 = [v83 formattedStringValue];
        v269 = v83;
        if (v84)
        {
          v85 = v84;
          v86 = sub_1BE052434();
          v88 = v87;
        }

        else
        {

          v82 = 0;
          v86 = 0;
          v88 = 0;
        }

        v281 = v82;
        *&v282 = v86;
        *(&v282 + 1) = v88;
        LOBYTE(v283) = 0;
        sub_1BD68CE48(v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468);
        sub_1BD68C684(&qword_1EBD4F448, &qword_1EBD4F450, &unk_1BE0ED530, sub_1BD68C870);
        sub_1BD68C684(&qword_1EBD4F460, &qword_1EBD4F468, &unk_1BE0ED538, sub_1BD68C8C4);
        sub_1BE04F9A4();
        v274 = v290;
        v275 = v291;
        LOBYTE(v276) = v292;
        sub_1BD094690(&v274);
        v285 = v278;
        v286 = v279;
        v287[0] = v280[0];
        *(v287 + 11) = *(v280 + 11);
        v281 = v274;
        v282 = v275;
        v283 = v276;
        v284 = v277;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480);
        sub_1BD68C78C();
        sub_1BD68C918();
        sub_1BE04F9A4();

        sub_1BD68CE88(v82);
        v285 = v294;
        v286 = v295;
        v287[0] = v296[0];
LABEL_23:
        *(v287 + 11) = *(v296 + 11);
        v281 = v290;
        v282 = v291;
        v283 = v292;
        v284 = v293;
        PKEdgeInsetsMake(&v281, v140);
        v294 = v285;
        v295 = v286;
        v296[0] = v287[0];
        *(v296 + 11) = *(v287 + 11);
        v290 = v281;
        v291 = v282;
        v292 = v283;
        v293 = v284;
        v141 = v268;
LABEL_24:
        v142 = v295;
        v143 = v257;
        v257[4] = v294;
        v143[5] = v142;
        v143[6] = v296[0];
        *(v143 + 107) = *(v296 + 11);
        v144 = v291;
        *v143 = v290;
        v143[1] = v144;
        v145 = v293;
        v143[2] = v292;
        v143[3] = v145;
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE19C(&v290, &v281, &qword_1EBD4F420);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F420);
        sub_1BD68C684(&qword_1EBD4F418, &qword_1EBD4F420, &unk_1BE0ED518, sub_1BD68C700);
        sub_1BD68CA5C();
        v146 = v258;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v146, v262, &qword_1EBD4F410);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4C0);
        sub_1BD68C5CC();
        sub_1BD68CB60();
        v147 = v263;
        sub_1BE04F9A4();
        sub_1BD0DE53C(v146, &qword_1EBD4F410);
        sub_1BD0DE19C(v147, v266, &qword_1EBD4F400);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
        sub_1BD68C540();
        sub_1BD68CCD0();
        sub_1BE04F9A4();
        sub_1BD0DE53C(&v290, &qword_1EBD4F420);
        sub_1BD0DE53C(v147, &qword_1EBD4F400);
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3F0);
        (*(*(v148 - 8) + 56))(v141, 0, 1, v148);
        v149 = v271;
        v90 = v141;
LABEL_42:
        sub_1BD0DE19C(v90, v149, &qword_1EBD4F3E0);
        swift_storeEnumTagMultiPayload();
        sub_1BD68C684(&qword_1EBD4F3D8, &qword_1EBD4F3E0, &unk_1BE0ED4F8, sub_1BD68C4B4);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v90, &qword_1EBD4F3E0);
        v78 = type metadata accessor for AvailablePass;
        v79 = v246;
        return sub_1BD68C19C(v79, v78);
      }

      v129 = &v51[v48[8]];
      v130 = *(v129 + 1);
      v131 = v268;
      if (v130)
      {
        v132 = *v129;
        v133 = v130;
        v134 = [v133 formattedStringValue];
        v269 = v133;
        if (v134)
        {
          v135 = v134;
          v136 = sub_1BE052434();
          v138 = v137;

          v139 = v132 & 1;
        }

        else
        {

          v139 = 0;
          v130 = 0;
          v136 = 0;
          v138 = 0;
        }

        v267 = v136;
        *&v281 = v139;
        *(&v281 + 1) = v130;
        *&v282 = v136;
        *(&v282 + 1) = v138;
        LOBYTE(v283) = 1;
        sub_1BD68CDC8(v139, v130);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F450);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F468);
        sub_1BD68C684(&qword_1EBD4F448, &qword_1EBD4F450, &unk_1BE0ED530, sub_1BD68C870);
        sub_1BD68C684(&qword_1EBD4F460, &qword_1EBD4F468, &unk_1BE0ED538, sub_1BD68C8C4);
        sub_1BE04F9A4();
        v274 = v290;
        v275 = v291;
        LOBYTE(v276) = v292;
        sub_1BD094690(&v274);
        v285 = v278;
        v286 = v279;
        v287[0] = v280[0];
        *(v287 + 11) = *(v280 + 11);
        v281 = v274;
        v282 = v275;
        v283 = v276;
        v284 = v277;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480);
        sub_1BD68C78C();
        sub_1BD68C918();
        sub_1BE04F9A4();

        sub_1BD68CE08(v139, v130);
        v285 = v294;
        v286 = v295;
        v287[0] = v296[0];
        goto LABEL_23;
      }

      sub_1BD0DE19C(&v81[v48[7]], v39, &qword_1EBD39FF0);
      if ((*(v251 + 48))(v39, 1, v40) == 1)
      {
        sub_1BD0DE53C(v39, &qword_1EBD39FF0);
      }

      else
      {
        v208 = v39;
        v209 = v248;
        sub_1BD68CEDC(v208, v248, type metadata accessor for BalanceInfo);
        v210 = [*v209 formattedStringValue];
        if (v210)
        {
          v211 = v210;
          v212 = sub_1BE052434();
          v214 = v213;

          sub_1BD68A8CC(v209, v212, v214, &v290);

          v278 = v294;
          v279 = v295;
          v280[0] = v296[0];
          *(v280 + 10) = *(v296 + 10);
          v274 = v290;
          v275 = v291;
          v276 = v292;
          v277 = v293;
          sub_1BD094684(&v274);
          v285 = v278;
          v286 = v279;
          v287[0] = v280[0];
          *(v287 + 11) = *(v280 + 11);
          v281 = v274;
          v282 = v275;
          v283 = v276;
          v284 = v277;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F440);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480);
          sub_1BD68C78C();
          sub_1BD68C918();
          sub_1BE04F9A4();
          v285 = v294;
          v286 = v295;
          v287[0] = v296[0];
          *(v287 + 11) = *(v296 + 11);
          v281 = v290;
          v282 = v291;
          v283 = v292;
          v284 = v293;
          PKEdgeInsetsMake(&v281, v215);
          sub_1BD68C19C(v209, type metadata accessor for BalanceInfo);
          v294 = v285;
          v295 = v286;
          v296[0] = v287[0];
          *(v296 + 11) = *(v287 + 11);
          v290 = v281;
          v291 = v282;
          v292 = v283;
          v293 = v284;
LABEL_50:
          v141 = v131;
          goto LABEL_24;
        }

        sub_1BD68C19C(v209, type metadata accessor for BalanceInfo);
      }

      sub_1BD68CDA0(&v290);
      goto LABEL_50;
    }

    sub_1BD68B458(v51, v18);
    if ((*(v252 + 48))(v18, 1, v253) != 1)
    {
      v114 = v254;
      sub_1BD68CEDC(v18, v254, type metadata accessor for AppleCardRewardsInfoView);
      v115 = sub_1BE0501E4();
      sub_1BE04E1F4();
      v117 = v116;
      v119 = v118;
      v121 = v120;
      v123 = v122;
      v124 = v114;
      v125 = v250;
      sub_1BD68C394(v124, v250, type metadata accessor for AppleCardRewardsInfoView);
      v126 = v125 + *(v259 + 36);
      *v126 = v115;
      *(v126 + 8) = v117;
      *(v126 + 16) = v119;
      *(v126 + 24) = v121;
      *(v126 + 32) = v123;
      *(v126 + 40) = 0;
      sub_1BD0DE19C(v125, v257, &qword_1EBD4F4B0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F420);
      sub_1BD68C684(&qword_1EBD4F418, &qword_1EBD4F420, &unk_1BE0ED518, sub_1BD68C700);
      sub_1BD68CA5C();
      v127 = v258;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v127, v262, &qword_1EBD4F410);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4C0);
      sub_1BD68C5CC();
      sub_1BD68CB60();
      v128 = v263;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v127, &qword_1EBD4F410);
      sub_1BD0DE19C(v128, v266, &qword_1EBD4F400);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
      sub_1BD68C540();
      sub_1BD68CCD0();
      v90 = v268;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v128, &qword_1EBD4F400);
      sub_1BD0DE53C(v125, &qword_1EBD4F4B0);
      sub_1BD68C19C(v254, type metadata accessor for AppleCardRewardsInfoView);
      goto LABEL_41;
    }

    sub_1BD0DE53C(v18, &qword_1EBD4B068);
    sub_1BD689748(&v297);
    v89 = v297;
    v90 = v268;
    if (v297)
    {
      v300 = v299;
      if (v299)
      {
        v91 = [v299 primaryTitle];
        if (v91)
        {
          v92 = v91;
          v93 = sub_1BE052434();
          v95 = v94;

          LOBYTE(v92) = sub_1BE0501F4();
          sub_1BE04E1F4();
          v97 = v96;
          v99 = v98;
          v101 = v100;
          v103 = v102;
          LOBYTE(v290) = 0;
          v104 = sub_1BE0501E4();
          sub_1BE04E1F4();
          *&v290 = v93;
          *(&v290 + 1) = v95;
          LOBYTE(v291) = v92;
          *(&v291 + 1) = v97;
          *&v292 = v99;
          *(&v292 + 1) = v101;
          *&v293 = v103;
          BYTE8(v293) = 0;
          LOBYTE(v294) = v104;
          *(&v294 + 1) = v105;
          *&v295 = v106;
          *(&v295 + 1) = v107;
          *&v296[0] = v108;
          BYTE8(v296[0]) = 0;
          sub_1BD094690(&v290);
          v278 = v294;
          v279 = v295;
          v280[0] = v296[0];
          *(v280 + 11) = *(v296 + 11);
          v274 = v290;
          v275 = v291;
          v276 = v292;
          v277 = v293;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480);
          sub_1BD68CF90(&qword_1EBD4F4C8, &qword_1EBD4F4D0, &unk_1BE0ED568, sub_1BD68CC18);
          sub_1BD68C918();
          sub_1BE04F9A4();
          v109 = v286;
          v110 = v262;
          v262[4] = v285;
          v110[5] = v109;
          v110[6] = v287[0];
          *(v110 + 107) = *(v287 + 11);
          v111 = v282;
          *v110 = v281;
          v110[1] = v111;
          v112 = v284;
          v110[2] = v283;
          v110[3] = v112;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4C0);
          sub_1BD68C5CC();
          sub_1BD68CB60();
          v113 = v263;
          sub_1BE04F9A4();
          sub_1BD0DE19C(v113, v266, &qword_1EBD4F400);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
          sub_1BD68C540();
          sub_1BD68CCD0();
          sub_1BE04F9A4();

          v281 = v298;
          sub_1BD1BCDE4(&v281);
          sub_1BD0DE53C(&v300, &qword_1EBD4F530);
          sub_1BD0DE53C(v113, &qword_1EBD4F400);
LABEL_41:
          v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3F0);
          (*(*(v206 - 8) + 56))(v90, 0, 1, v206);
          v149 = v271;
          goto LABEL_42;
        }

        v301[0] = v298;
        sub_1BD1BCDE4(v301);
        sub_1BD0DE53C(&v300, &qword_1EBD4F530);
      }

      else
      {

        v301[0] = v298;
        sub_1BD1BCDE4(v301);
      }
    }

    sub_1BD0DE19C(&v51[v48[7]], v35, &qword_1EBD39FF0);
    if ((*(v251 + 48))(v35, 1, v40) == 1)
    {
      sub_1BD0DE53C(v35, &qword_1EBD39FF0);
    }

    else
    {
      v150 = v35;
      v151 = v249;
      sub_1BD68CEDC(v150, v249, type metadata accessor for BalanceInfo);
      v152 = [*v151 formattedStringValue];
      if (v152)
      {
        v153 = v152;
        v154 = sub_1BE052434();
        v156 = v155;

        sub_1BD68A8CC(v151, v154, v156, &v290);

        v288[4] = v294;
        v288[5] = v295;
        v289[0] = v296[0];
        *(v289 + 10) = *(v296 + 10);
        v288[0] = v290;
        v288[1] = v291;
        v288[2] = v292;
        v288[3] = v293;
        v296[0] = v289[0];
        sub_1BD094684(&v290);
        v278 = v294;
        v279 = v295;
        v280[0] = v296[0];
        *(v280 + 11) = *(v296 + 11);
        v274 = v290;
        v275 = v291;
        v276 = v292;
        v277 = v293;
        sub_1BD0DE19C(v288, &v281, &qword_1EBD4F480);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F480);
        sub_1BD68CF90(&qword_1EBD4F4C8, &qword_1EBD4F4D0, &unk_1BE0ED568, sub_1BD68CC18);
        sub_1BD68C918();
        sub_1BE04F9A4();
        v157 = v286;
        v158 = v262;
        v262[4] = v285;
        v158[5] = v157;
        v158[6] = v287[0];
        *(v158 + 107) = *(v287 + 11);
        v159 = v282;
        *v158 = v281;
        v158[1] = v159;
        v160 = v284;
        v158[2] = v283;
        v158[3] = v160;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4C0);
        sub_1BD68C5CC();
        sub_1BD68CB60();
        v161 = v263;
        sub_1BE04F9A4();
        sub_1BD0DE19C(v161, v266, &qword_1EBD4F400);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
        sub_1BD68C540();
        sub_1BD68CCD0();
        sub_1BE04F9A4();
        sub_1BD0DE53C(v288, &qword_1EBD4F480);
        sub_1BD0DE53C(v161, &qword_1EBD4F400);
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3F0);
        (*(*(v162 - 8) + 56))(v90, 0, 1, v162);
        sub_1BD68C19C(v151, type metadata accessor for BalanceInfo);
        v149 = v271;
        goto LABEL_42;
      }

      sub_1BD68C19C(v151, type metadata accessor for BalanceInfo);
    }

    v163 = sub_1BD494550();
    v149 = v271;
    if (v164)
    {
      v165 = v163;
      v166 = v164;
      if (PKBankConnectEnabled())
      {

        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
      }

      else
      {
        *&v290 = v165;
        *(&v290 + 1) = v166;
        sub_1BD0DDEBC();
        v179 = sub_1BE0506C4();
        v181 = v180;
        v183 = v182;
        sub_1BE0502E4();
        v184 = sub_1BE0505F4();
        v186 = v185;
        v188 = v187;

        sub_1BD0DDF10(v179, v181, v183 & 1);

        sub_1BE051234();
        v167 = sub_1BE050564();
        v168 = v189;
        v191 = v190;
        v170 = v192;

        sub_1BD0DDF10(v184, v186, v188 & 1);

        v169 = (v191 & 1);
        sub_1BD0D7F18(v167, v168, v191 & 1);
        sub_1BE048C84();
      }

      v262 = v170;
      v269 = v169;
      *&v281 = v167;
      *(&v281 + 1) = v168;
      *&v282 = v169;
      *(&v282 + 1) = v170;
      LOBYTE(v283) = 0;
      sub_1BD1969AC(v167, v168, v169, v170);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
      sub_1BD12E194();
      sub_1BE04F9A4();
      v193 = v290;
      v195 = *(&v291 + 1);
      v194 = v291;
      v196 = v292;
      v197 = v266;
      *v266 = v290;
      v267 = v193;
      v197[1] = __PAIR128__(v195, v194);
      v263 = v195;
      *(v197 + 32) = v196;
      swift_storeEnumTagMultiPayload();
      sub_1BD68CD98(v193, *(&v193 + 1), v194, v195);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
      v198 = v167;
      sub_1BD68C540();
      v199 = v168;
      sub_1BD68CCD0();
      v90 = v268;
      sub_1BE04F9A4();
      v200 = v269;
      v201 = v262;
      sub_1BD1969F0(v198, v199, v269, v262);
      sub_1BD68CD9C(v267, *(&v193 + 1), v194, v263);
      v202 = v198;
      v203 = v199;
      v204 = v200;
      v205 = v201;
LABEL_40:
      sub_1BD1969F0(v202, v203, v204, v205);
      goto LABEL_41;
    }

    v171 = WrappedPass.secureElementPass.getter();
    if (v171)
    {
      v172 = v171;
      if ([v171 isIdentityPass])
      {
        v269 = v172;
        v173 = v245;
        sub_1BD0DE19C(&v246[v48[6]], v245, &qword_1EBD3F190);
        v174 = v244;
        if ((*(v243 + 48))(v173, 1, v244) == 1)
        {
          sub_1BD0DE53C(v173, &qword_1EBD3F190);
          v175 = 0;
          v176 = 0;
          v177 = 0;
          v178 = 0;
        }

        else
        {
          v217 = v173;
          v218 = v247;
          sub_1BD68CEDC(v217, v247, type metadata accessor for IdentityCredential);
          v219 = (v218 + *(v174 + 28));
          v220 = v219[1];
          *&v290 = *v219;
          *(&v290 + 1) = v220;
          sub_1BD0DDEBC();
          sub_1BE048C84();
          v221 = sub_1BE0506C4();
          v223 = v222;
          v225 = v224;
          sub_1BE0502C4();
          v226 = sub_1BE0505F4();
          v228 = v227;
          v230 = v229;

          sub_1BD0DDF10(v221, v223, v225 & 1);

          sub_1BE051234();
          v175 = sub_1BE050564();
          v176 = v231;
          v233 = v232;
          v178 = v234;

          sub_1BD0DDF10(v226, v228, v230 & 1);

          sub_1BD68C19C(v247, type metadata accessor for IdentityCredential);
          v177 = v233 & 1;
          sub_1BD0D7F18(v175, v176, v233 & 1);
          sub_1BE048C84();
        }

        v261 = v177;
        v267 = v178;
        *&v281 = v175;
        *(&v281 + 1) = v176;
        *&v282 = v177;
        *(&v282 + 1) = v178;
        LOBYTE(v283) = 1;
        sub_1BD1969AC(v175, v176, v177, v178);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
        sub_1BD12E194();
        sub_1BE04F9A4();
        v235 = v290;
        v236 = v291;
        v237 = v292;
        v238 = v266;
        *v266 = v290;
        v238[1] = v236;
        v263 = v236;
        *(v238 + 32) = v237;
        LODWORD(v262) = v237;
        swift_storeEnumTagMultiPayload();
        sub_1BD68CD98(v235, *(&v235 + 1), v236, *(&v236 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4F0);
        v239 = v175;
        sub_1BD68C540();
        v240 = v176;
        sub_1BD68CCD0();
        v90 = v268;
        sub_1BE04F9A4();

        v241 = v261;
        v242 = v267;
        sub_1BD1969F0(v239, v240, v261, v267);
        sub_1BD68CD9C(v235, *(&v235 + 1), v263, *(&v236 + 1));
        v202 = v239;
        v203 = v240;
        v204 = v241;
        v205 = v242;
        goto LABEL_40;
      }
    }

    v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F3F0);
    (*(*(v216 - 8) + 56))(v90, 1, 1, v216);
    goto LABEL_42;
  }

  v56 = v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E28) + 48)];
  v57 = v55;
  v58 = v269;
  sub_1BD68CEDC(v57, v269, type metadata accessor for UnavailablePass);
  *&v290 = sub_1BD68BA18(*&v58[*(v267 + 28)], *&v58[*(v267 + 28) + 8], v58[*(v267 + 28) + 16], v56);
  *(&v290 + 1) = v59;
  sub_1BD0DDEBC();
  v60 = sub_1BE0506C4();
  v62 = v61;
  v64 = v63;
  sub_1BE0502E4();
  v65 = sub_1BE0505F4();
  v67 = v66;
  v69 = v68;

  sub_1BD0DDF10(v60, v62, v64 & 1);

  sub_1BE051234();
  v70 = sub_1BE050564();
  v72 = v71;
  v74 = v73;
  v76 = v75;

  sub_1BD0DDF10(v65, v67, v69 & 1);

  v77 = v271;
  *v271 = v70;
  v77[1] = v72;
  *(v77 + 16) = v74 & 1;
  v77[3] = v76;
  swift_storeEnumTagMultiPayload();
  sub_1BD68C684(&qword_1EBD4F3D8, &qword_1EBD4F3E0, &unk_1BE0ED4F8, sub_1BD68C4B4);
  sub_1BE04F9A4();
  v78 = type metadata accessor for UnavailablePass;
  v79 = v269;
  return sub_1BD68C19C(v79, v78);
}

uint64_t sub_1BD688FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD68C394(v2, v7, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for PassRow.Pass;
    v13 = v7;
LABEL_6:
    result = sub_1BD68C19C(v13, v12);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v28 = xmmword_1BE0B8E00;
    v29 = 0uLL;
    v30 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    goto LABEL_7;
  }

  sub_1BD68CEDC(v7, v11, type metadata accessor for AvailablePass);
  v14 = &v11[*(v8 + 48)];
  v15 = *(v14 + 1);
  v42 = *v14;
  *v43 = v15;
  *&v43[9] = *(v14 + 25);
  v16 = v42;
  if (!v42)
  {
    v12 = type metadata accessor for AvailablePass;
    v13 = v11;
    goto LABEL_6;
  }

  v17 = *&v43[8];
  v44 = *v43;
  v45 = *&v43[16];
  sub_1BD0DE19C(&v42, v39, &qword_1EBD4F508);
  v18 = v16;
  sub_1BD0DE19C(&v44, v39, &qword_1EBD4C870);
  v19 = v17;
  sub_1BD0DE19C(&v45, v39, &qword_1EBD39330);
  sub_1BD586664(&v42, 0, 0, v39);
  v20 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v35 = v21;
  v36 = v22;
  v34 = v23;
  v37 = v24;

  sub_1BD0DE53C(&v44, &qword_1EBD4C870);
  sub_1BD0DE53C(&v45, &qword_1EBD39330);
  result = sub_1BD68C19C(v11, type metadata accessor for AvailablePass);
  *&v27 = v34;
  *&v26 = v35;
  *(&v26 + 1) = v36;
  *(&v27 + 1) = v37;
  v28 = v39[0];
  v29 = v39[1];
  v30 = v39[2];
  v31 = v40;
  v32 = v41;
  v33 = v20;
  v38 = 0;
LABEL_7:
  *a1 = v28;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  *(a1 + 56) = v32;
  *(a1 + 64) = v33;
  *(a1 + 72) = v26;
  *(a1 + 88) = v27;
  *(a1 + 104) = 0;
  return result;
}

void sub_1BD6892DC(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!PKOslo2024UIUpdatesEnabled())
  {
    goto LABEL_13;
  }

  sub_1BD68C394(v1, v10, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68C19C(v10, type metadata accessor for UnavailablePass);
LABEL_13:
    v20 = 0;
    v22 = 0;
LABEL_14:
    v25 = 0;
    v27 = 0;
    goto LABEL_15;
  }

  sub_1BD68CEDC(v10, v6, type metadata accessor for AvailablePass);
  v11 = &v6[*(v3 + 52)];
  v12 = *v11;
  v13 = v11[3];
  sub_1BD2EE178(*v11, v11[1], v11[2], v13);
  sub_1BD68C19C(v6, type metadata accessor for AvailablePass);
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!v13)
  {
LABEL_12:

    goto LABEL_13;
  }

  v14 = [v13 secondaryOfferItem];
  if (!v14)
  {

    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 merchandisingDynamicContent];
  if (!v16)
  {

    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 title];
  if (!v18)
  {

    goto LABEL_13;
  }

  v19 = v18;
  v20 = sub_1BE052434();
  v22 = v21;

  v23 = [v17 systemIcon];
  if (!v23)
  {

    goto LABEL_14;
  }

  v24 = v23;
  v29 = [v23 imageName];

  v25 = sub_1BE052434();
  v27 = v26;

LABEL_15:
  *a1 = v20;
  a1[1] = v22;
  a1[2] = v25;
  a1[3] = v27;
}

uint64_t sub_1BD6895F4()
{
  v0 = sub_1BE04EB24();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E697E728], v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F338);
  sub_1BD68C1FC(&qword_1EBD4F390, &qword_1EBD4F338, &unk_1BE0ED410, sub_1BD5717A4);
  sub_1BE050B24();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1BD689748@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = PKOslo2024UIUpdatesEnabled();
  if (result)
  {
    sub_1BD68C394(v1, v10, type metadata accessor for PassRow.Pass);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1BD68CEDC(v10, v6, type metadata accessor for AvailablePass);
      v17 = &v6[*(v3 + 52)];
      v12 = *v17;
      v13 = *(v17 + 1);
      v14 = *(v17 + 2);
      v15 = *(v17 + 3);
      v16 = v17[32];
      sub_1BD2EE178(*v17, v13, v14, v15);
      result = sub_1BD68C19C(v6, type metadata accessor for AvailablePass);
      goto LABEL_6;
    }

    result = sub_1BD68C19C(v10, type metadata accessor for UnavailablePass);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
LABEL_6:
  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_1BD689920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB0);
  v3 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v4);
  v72 = &v64[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v71 = &v64[-v12];
  v13 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CB8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v64[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v64[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v64[-v31];
  sub_1BD689F58(&v64[-v31]);
  sub_1BD68C394(a1, v16, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68C19C(v16, type metadata accessor for PassRow.Pass);
    v33 = 1;
  }

  else
  {

    sub_1BD68C19C(v16, type metadata accessor for AvailablePass);
    v34 = sub_1BD684594(sub_1BD494550);
    v33 = 1;
    if (v35)
    {
      v75 = v34;
      v76 = v35;
      sub_1BD0DDEBC();
      v36 = sub_1BE0506C4();
      v38 = v37;
      v70 = v3;
      v40 = v39;
      v68 = v9;
      sub_1BE050324();
      v69 = v20;
      sub_1BE050304();

      v66 = sub_1BE0505F4();
      v67 = v28;
      v42 = v41;
      v44 = v43;

      sub_1BD0DDF10(v36, v38, v40 & 1);

      sub_1BE051224();
      v45 = v32;
      v46 = v24;
      v47 = v44;
      v48 = v66;
      v49 = v42;
      v50 = sub_1BE050564();
      v52 = v51;
      v65 = v53;
      v55 = v54;

      v56 = v47 & 1;
      v24 = v46;
      v32 = v45;
      sub_1BD0DDF10(v48, v49, v56);
      v28 = v67;

      v75 = v50;
      v76 = v52;
      LOBYTE(v45) = v65 & 1;
      v77 = v65 & 1;
      v78 = v55;
      sub_1BE052434();
      v57 = v71;
      sub_1BE050DE4();
      v20 = v69;

      sub_1BD0DDF10(v50, v52, v45);
      v3 = v70;

      v58 = v68;
      sub_1BD0DE19C(v57, v68, &qword_1EBD452C0);
      v59 = v72;
      *v72 = 0;
      *(v59 + 8) = 1;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CF0);
      sub_1BD0DE19C(v58, v59 + *(v60 + 48), &qword_1EBD452C0);
      sub_1BD0DE53C(v57, &qword_1EBD452C0);
      sub_1BD0DE53C(v58, &qword_1EBD452C0);
      sub_1BD0DE204(v59, v24, &qword_1EBD44CB0);
      v33 = 0;
    }
  }

  (*(v3 + 56))(v24, v33, 1, v73);
  sub_1BD0DE19C(v32, v28, &qword_1EBD3C0E8);
  sub_1BD0DE19C(v24, v20, &qword_1EBD44CB8);
  v61 = v74;
  sub_1BD0DE19C(v28, v74, &qword_1EBD3C0E8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F558);
  sub_1BD0DE19C(v20, v61 + *(v62 + 48), &qword_1EBD44CB8);
  sub_1BD0DE53C(v24, &qword_1EBD44CB8);
  sub_1BD0DE53C(v32, &qword_1EBD3C0E8);
  sub_1BD0DE53C(v20, &qword_1EBD44CB8);
  return sub_1BD0DE53C(v28, &qword_1EBD3C0E8);
}

uint64_t sub_1BD689F58@<X0>(uint64_t a1@<X8>)
{
  v30[2] = a1;
  v2 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BD68A214();
  v32 = v6;
  sub_1BD0DDEBC();
  v7 = sub_1BE0506C4();
  v9 = v8;
  v11 = v10;
  sub_1BE050324();
  v30[0] = sub_1BE0505F4();
  v30[1] = v12;
  v14 = v13;
  v16 = v15;

  sub_1BD0DDF10(v7, v9, v11 & 1);

  sub_1BD68C394(v1, v5, type metadata accessor for PassRow.Pass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = type metadata accessor for UnavailablePass;
  if (EnumCaseMultiPayload == 1 || (v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0), *&v5[*(v19 + 48)], v18 = type metadata accessor for AvailablePass, (v5[*(v19 + 64)] & 1) != 0))
  {
    sub_1BD68C19C(v5, v18);
    sub_1BE051234();
  }

  else
  {
    sub_1BE051224();
    sub_1BD68C19C(v5, type metadata accessor for AvailablePass);
  }

  v20 = v30[0];
  v21 = sub_1BE050564();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_1BD0DDF10(v20, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v31 = v21;
  v32 = v23;
  v25 &= 1u;
  v33 = v25;
  v34 = v27;
  v35 = KeyPath;
  v36 = 1;
  v37 = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
  sub_1BD1B9C50();
  sub_1BE050DE4();

  sub_1BD0DDF10(v21, v23, v25);
}

uint64_t sub_1BD68A214()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F190);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v60 = &v54 - v4;
  v5 = type metadata accessor for IdentityCredential(0);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UnavailablePass(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v56, v12);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  v18 = type metadata accessor for PassRow.Pass(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v54 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v54 - v28;
  v30 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BD684594(sub_1BD4943B0);
  v64 = v61;
  v65 = v34;
  sub_1BD68C394(v0, v29, type metadata accessor for PassRow.Pass);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BD68CEDC(v29, v11, type metadata accessor for UnavailablePass);
    sub_1BD68C394(v11, v33, type metadata accessor for WrappedPass);
    v35 = type metadata accessor for UnavailablePass;
    v36 = v11;
  }

  else
  {

    sub_1BD68CEDC(v29, v17, type metadata accessor for AvailablePass);
    sub_1BD68C394(v17, v33, type metadata accessor for WrappedPass);
    v35 = type metadata accessor for AvailablePass;
    v36 = v17;
  }

  sub_1BD68C19C(v36, v35);
  v37 = WrappedPass.secureElementPass.getter();
  sub_1BD68C19C(v33, type metadata accessor for WrappedPass);
  if (v37 && (v38 = [v37 isIdentityPass], v37, v38))
  {
    sub_1BD68C394(v1, v25, type metadata accessor for PassRow.Pass);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = type metadata accessor for PassRow.Pass;
      v40 = v25;
LABEL_10:
      sub_1BD68C19C(v40, v39);
      return v61;
    }

    v48 = v57;
    sub_1BD68CEDC(v25, v57, type metadata accessor for AvailablePass);
    v49 = v60;
    sub_1BD0DE19C(v48 + *(v56 + 24), v60, &qword_1EBD3F190);
    sub_1BD68C19C(v48, type metadata accessor for AvailablePass);
    v50 = v59;
    if ((*(v58 + 48))(v49, 1, v59) == 1)
    {
      sub_1BD0DE53C(v49, &qword_1EBD3F190);
      return v61;
    }

    else
    {

      v51 = v49;
      v52 = v55;
      sub_1BD68CEDC(v51, v55, type metadata accessor for IdentityCredential);
      v53 = *(v52 + *(v50 + 24));
      sub_1BE048C84();
      sub_1BD68C19C(v52, type metadata accessor for IdentityCredential);
      return v53;
    }
  }

  else
  {
    sub_1BD68C394(v1, v21, type metadata accessor for PassRow.Pass);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = type metadata accessor for UnavailablePass;
      v40 = v21;
      goto LABEL_10;
    }

    v42 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0) + 48)];
    sub_1BD68C19C(v21, type metadata accessor for AvailablePass);
    result = v61;
    if (v42)
    {
      v43 = v61;
      v44 = [v42 displayName];

      result = v43;
      if (v44)
      {
        v45 = sub_1BE052434();
        v47 = v46;

        v62 = 10272;
        v63 = 0xE200000000000000;
        MEMORY[0x1BFB3F610](v45, v47);

        MEMORY[0x1BFB3F610](41, 0xE100000000000000);
        MEMORY[0x1BFB3F610](v62, v63);

        return v64;
      }
    }
  }

  return result;
}

id sub_1BD68A8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v111 = a4;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v105 - v14;
  if ((*(a1 + 8) & 1) == 0)
  {
    *&v156 = sub_1BD68B6BC(a1, a2, a3);
    *(&v156 + 1) = v58;
    sub_1BD0DDEBC();
    v59 = sub_1BE0506C4();
    v61 = v60;
    v63 = v62;
    sub_1BE0502E4();
    v64 = sub_1BE0505F4();
    v66 = v65;
    v68 = v67;

    sub_1BD0DDF10(v59, v61, v63 & 1);

    sub_1BE051234();
    v69 = sub_1BE050564();
    v71 = v70;
    v73 = v72;
    v75 = v74;

    sub_1BD0DDF10(v64, v66, v68 & 1);

    KeyPath = swift_getKeyPath();
    v77 = swift_getKeyPath();
    v73 &= 1u;
    LOBYTE(v156) = v73;
    LOBYTE(v142) = 0;
    v78 = swift_getKeyPath();
    *&v142 = v69;
    *(&v142 + 1) = v71;
    LOBYTE(v143) = v73;
    *(&v143 + 1) = v75;
    *&v144 = KeyPath;
    *(&v144 + 1) = 1;
    LOBYTE(v145) = 0;
    *(&v145 + 1) = v77;
    LOBYTE(v146) = 1;
    *(&v146 + 1) = v78;
    *&v147 = 0x3FE999999999999ALL;
    sub_1BD68CED4(&v142);
    v139 = v146;
    v140 = v147;
    v141[0] = v148[0];
    *(v141 + 10) = *(v148 + 10);
    v135 = v142;
    v136 = v143;
    v137 = v144;
    v138 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F490);
    sub_1BD3B15F4();
    sub_1BD68C9A4();
    result = sub_1BE04F9A4();
LABEL_10:
    v101 = v161;
    v102 = v111;
    v111[4] = v160;
    v102[5] = v101;
    v102[6] = *v162;
    *(v102 + 106) = *&v162[10];
    v103 = v157;
    *v102 = v156;
    v102[1] = v103;
    v104 = v159;
    v102[2] = v158;
    v102[3] = v104;
    return result;
  }

  if (*(a1 + 9) == 1 && PKConnectedCardLowBalanceEnabled())
  {
    *&v156 = sub_1BD68B6BC(a1, a2, a3);
    *(&v156 + 1) = v16;
    v105[1] = sub_1BD0DDEBC();
    v17 = sub_1BE0506C4();
    v19 = v18;
    v21 = v20;
    sub_1BE0502E4();
    v22 = sub_1BE0505F4();
    v106 = v23;
    v107 = v22;
    v25 = v24;
    v105[2] = v26;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    sub_1BE051234();
    v28 = v106;
    v27 = v107;
    v29 = sub_1BE050564();
    v109 = v30;
    v110 = v29;
    v32 = v31;
    v108 = v33;

    sub_1BD0DDF10(v27, v28, v25 & 1);

    v34 = swift_getKeyPath();
    v35 = swift_getKeyPath();
    v32 &= 1u;
    LOBYTE(v156) = v32;
    LOBYTE(v142) = 0;
    v36 = swift_getKeyPath();
    *&v129 = v110;
    *(&v129 + 1) = v109;
    LOBYTE(v130) = v32;
    *(&v130 + 1) = v108;
    *&v131 = v34;
    *(&v131 + 1) = 1;
    LOBYTE(v132) = 0;
    *(&v132 + 1) = v35;
    LOBYTE(v133) = 1;
    *(&v133 + 1) = v156;
    DWORD1(v133) = *(&v156 + 3);
    *(&v133 + 1) = v36;
    v134 = 0x3FE999999999999ALL;
    (*(v8 + 104))(v15, *MEMORY[0x1E69B8068], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v38 = result;
      v39 = sub_1BE04B6F4();
      v41 = v40;

      (*(v8 + 8))(v15, v7);
      *&v156 = v39;
      *(&v156 + 1) = v41;
      v42 = sub_1BE0506C4();
      v44 = v43;
      v46 = v45;
      sub_1BE0502E4();
      v47 = sub_1BE0505F4();
      v49 = v48;
      v51 = v50;

      sub_1BD0DDF10(v42, v44, v46 & 1);

      sub_1BE051264();
      v52 = sub_1BE050564();
      v54 = v53;
      LOBYTE(v38) = v55;
      v57 = v56;

      sub_1BD0DDF10(v47, v49, v51 & 1);

      v117 = v133;
      v113 = v129;
      v114 = v130;
      v119[0] = v129;
      v119[1] = v130;
      v115 = v131;
      v116 = v132;
      v119[3] = v132;
      v119[4] = v133;
      v119[2] = v131;
      v118 = v134;
      v120 = v134;
      v121 = v129;
      v122 = v130;
      v126 = v134;
      v124 = v132;
      v125 = v133;
      v123 = v131;
      v112 = v38 & 1;
      sub_1BD0DE19C(&v129, &v156, &qword_1EBD442C8);
      sub_1BD0D7F18(v52, v54, v38 & 1);
      sub_1BE048C84();
      sub_1BD0DE19C(v119, &v156, &qword_1EBD442C8);
      sub_1BD0D7F18(v52, v54, v38 & 1);
      sub_1BE048C84();
      sub_1BD0DDF10(v52, v54, v38 & 1);

      v127[2] = v115;
      v127[3] = v116;
      v127[4] = v117;
      v128 = v118;
      v127[0] = v113;
      v127[1] = v114;
      sub_1BD0DE53C(v127, &qword_1EBD442C8);
      v158 = v123;
      v159 = v124;
      v160 = v125;
      v156 = v121;
      v157 = v122;
      *&v161 = v126;
      *(&v161 + 1) = v52;
      *v162 = v54;
      v162[8] = v38 & 1;
      *&v162[16] = v57;
      sub_1BD55AC90(&v156);
      v139 = v160;
      v140 = v161;
      v141[0] = *v162;
      *(v141 + 9) = *&v162[9];
      v135 = v156;
      v136 = v157;
      v137 = v158;
      v138 = v159;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4A0);
      sub_1BD0DE4F4(&qword_1EBD4F498, &qword_1EBD4F4A0);
      sub_1BE04F9A4();
      sub_1BD0DDF10(v52, v54, v38 & 1);

      sub_1BD0DE53C(&v129, &qword_1EBD442C8);
      v153 = v146;
      v154 = v147;
      v155[0] = v148[0];
      *(v155 + 9) = *(v148 + 9);
      v149 = v142;
      v150 = v143;
      v151 = v144;
      v152 = v145;
LABEL_9:
      v146 = v153;
      v147 = v154;
      v148[0] = v155[0];
      *(v148 + 9) = *(v155 + 9);
      v142 = v149;
      v143 = v150;
      v144 = v151;
      v145 = v152;
      sub_1BD68CEC8(&v142);
      v139 = v146;
      v140 = v147;
      v141[0] = v148[0];
      *(v141 + 10) = *(v148 + 10);
      v135 = v142;
      v136 = v143;
      v137 = v144;
      v138 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD442C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F490);
      sub_1BD3B15F4();
      sub_1BD68C9A4();
      result = sub_1BE04F9A4();
      goto LABEL_10;
    }
  }

  else
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69B8050], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v79 = result;
      sub_1BE04B6F4();

      (*(v8 + 8))(v11, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1BE0B69E0;
      *(v80 + 56) = MEMORY[0x1E69E6158];
      *(v80 + 64) = sub_1BD110550();
      *(v80 + 32) = a2;
      *(v80 + 40) = a3;
      sub_1BE048C84();
      v81 = sub_1BE052454();
      v83 = v82;

      *&v156 = v81;
      *(&v156 + 1) = v83;
      sub_1BD0DDEBC();
      v84 = sub_1BE0506C4();
      v86 = v85;
      v88 = v87;
      sub_1BE0502E4();
      v89 = sub_1BE0505F4();
      v91 = v90;
      v93 = v92;

      sub_1BD0DDF10(v84, v86, v88 & 1);

      sub_1BE051264();
      v94 = sub_1BE050564();
      v96 = v95;
      v98 = v97;
      v100 = v99;

      sub_1BD0DDF10(v89, v91, v93 & 1);

      *&v156 = v94;
      *(&v156 + 1) = v96;
      LOBYTE(v157) = v98 & 1;
      *(&v157 + 1) = v100;
      sub_1BD55AC84(&v156);
      v146 = v160;
      v147 = v161;
      v148[0] = *v162;
      *(v148 + 9) = *&v162[9];
      v142 = v156;
      v143 = v157;
      v144 = v158;
      v145 = v159;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F4A0);
      sub_1BD0DE4F4(&qword_1EBD4F498, &qword_1EBD4F4A0);
      sub_1BE04F9A4();
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD68B458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4C940);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for PassEligibleRewardsInfo();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v20 - v15;
  v17 = type metadata accessor for AvailablePass(0);
  sub_1BD0DE19C(a1 + *(v17 + 40), v7, &unk_1EBD4C940);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BD0DE53C(v7, &unk_1EBD4C940);
  }

  else
  {
    sub_1BD68CEDC(v7, v16, type metadata accessor for PassEligibleRewardsInfo);
    if (sub_1BD57A1B8())
    {
      sub_1BD68C394(v16, v12, type metadata accessor for PassEligibleRewardsInfo);
      sub_1BD38BA78(v12, a2);
      return sub_1BD68C19C(v16, type metadata accessor for PassEligibleRewardsInfo);
    }

    sub_1BD68C19C(v16, type metadata accessor for PassEligibleRewardsInfo);
  }

  v19 = type metadata accessor for AppleCardRewardsInfoView();
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

uint64_t sub_1BD68B6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04BD74();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v30 - v12;
  v14 = sub_1BE04AF64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BalanceInfo(0);
  sub_1BD0DE19C(a1 + *(v19 + 28), v13, &unk_1EBD39970);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD39970);
    sub_1BE048C84();
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v30[1] = "INSUFFICIENT_BALANCE_FMT";
    v20 = v31;
    (*(v31 + 104))(v9, *MEMORY[0x1E69B8040], v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BE0B6CA0;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1BD110550();
    *(v21 + 64) = v22;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    v23 = objc_allocWithZone(type metadata accessor for BankConnectFormatter());
    sub_1BE048C84();
    v24 = [v23 init];
    BankConnectFormatter.formatAsOfDate(_:hasMultipleBalances:)(v18, 0);
    v26 = v25;
    v28 = v27;

    *(v21 + 96) = MEMORY[0x1E69E6158];
    *(v21 + 104) = v22;
    *(v21 + 72) = v26;
    *(v21 + 80) = v28;
    a2 = sub_1BE04B714();

    (*(v20 + 8))(v9, v32);
    (*(v15 + 8))(v18, v14);
  }

  return a2;
}

id sub_1BD68BA18(unint64_t a1, uint64_t a2, unsigned __int8 a3, int a4)
{
  v70[1] = a4;
  v7 = sub_1BE04BD74();
  v71 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v70 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v70 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v70 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v70 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v70 - v29;
  v35.n128_f64[0] = MEMORY[0x1EEE9AC00](v31, v32);
  v36 = v70 - v33;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v40 = v34;
      v41 = [a1 deviceName];
      if (v41)
      {
        v42 = v41;
        v43 = sub_1BE052434();
        v45 = v44;

        v46 = HIBYTE(v45) & 0xF;
        if ((v45 & 0x2000000000000000) == 0)
        {
          v46 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1BE0B69E0;
          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 64) = sub_1BD110550();
          *(v47 + 32) = v43;
          *(v47 + 40) = v45;
          v48 = v71;
          (*(v71 + 104))(v18, *MEMORY[0x1E69B8068], v40);
          v49 = sub_1BE04B714();

          (*(v48 + 8))(v18, v40);
          return v49;
        }
      }

      v62 = v71;
      (*(v71 + 104))(v10, *MEMORY[0x1E69B8068], v40);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v63 = result;
      v49 = sub_1BE04B6F4();

      (*(v62 + 8))(v10, v40);
    }

    else
    {
      if (a1 > 2)
      {
        if (!(a1 ^ 3 | a2))
        {
          v67 = v71;
          v68 = v34;
          (*(v71 + 104))(v22, *MEMORY[0x1E69B8068], v34, v35.n128_f64[0]);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v69 = result;
          v49 = sub_1BE04B6F4();

          (*(v67 + 8))(v22, v68);
          return v49;
        }

        if (!(a1 ^ 4 | a2))
        {
          v56 = v71;
          v57 = v34;
          (*(v71 + 104))(v14, *MEMORY[0x1E69B8068], v34, v35.n128_f64[0]);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_39:
            __break(1u);
            return result;
          }

          v58 = result;
          v49 = sub_1BE04B6F4();

          (*(v56 + 8))(v14, v57);
          return v49;
        }
      }

      else
      {
        if (!(a1 | a2))
        {
          v64 = v71;
          v65 = v34;
          (*(v71 + 104))(v70 - v33, *MEMORY[0x1E69B8050], v34, v35.n128_f64[0]);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v66 = result;
          v49 = sub_1BE04B6F4();

          (*(v64 + 8))(v36, v65);
          return v49;
        }

        if (!(a1 ^ 1 | a2))
        {
          v53 = v71;
          v54 = v34;
          (*(v71 + 104))(v30, *MEMORY[0x1E69B8050], v34, v35.n128_f64[0]);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v55 = result;
          v49 = sub_1BE04B6F4();

          (*(v53 + 8))(v30, v54);
          return v49;
        }
      }

      v59 = v71;
      v60 = v34;
      (*(v71 + 104))(v26, *MEMORY[0x1E69B8050], v34, v35);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v61 = result;
      v49 = sub_1BE04B6F4();

      (*(v59 + 8))(v26, v60);
    }
  }

  else
  {
    if (!a3)
    {
      result = PKDisplayableStringForPaymentApplicationState();
      if (result)
      {
        v38 = result;
        v39 = sub_1BE052434();

        return v39;
      }

      __break(1u);
      goto LABEL_34;
    }

    v50 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1BE0B69E0;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = sub_1BD110550();
    *(v51 + 32) = a1;
    *(v51 + 40) = a2;
    v52 = v71;
    (*(v71 + 104))(v18, *MEMORY[0x1E69B8068], v50);
    sub_1BE048C84();
    v49 = sub_1BE04B714();

    (*(v52 + 8))(v18, v50);
  }

  return v49;
}

uint64_t sub_1BD68C19C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD68C1FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD68CB18(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD68C2B0()
{
  result = qword_1EBD4F398;
  if (!qword_1EBD4F398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F350);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F398);
  }

  return result;
}

uint64_t sub_1BD68C394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD68C3FC()
{
  result = qword_1EBD4F3D0;
  if (!qword_1EBD4F3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F3B8);
    sub_1BD68C684(&qword_1EBD4F3D8, &qword_1EBD4F3E0, &unk_1BE0ED4F8, sub_1BD68C4B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F3D0);
  }

  return result;
}

unint64_t sub_1BD68C4B4()
{
  result = qword_1EBD4F3E8;
  if (!qword_1EBD4F3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F3F0);
    sub_1BD68C540();
    sub_1BD68CCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F3E8);
  }

  return result;
}

unint64_t sub_1BD68C540()
{
  result = qword_1EBD4F3F8;
  if (!qword_1EBD4F3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F400);
    sub_1BD68C5CC();
    sub_1BD68CB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F3F8);
  }

  return result;
}

unint64_t sub_1BD68C5CC()
{
  result = qword_1EBD4F408;
  if (!qword_1EBD4F408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F410);
    sub_1BD68C684(&qword_1EBD4F418, &qword_1EBD4F420, &unk_1BE0ED518, sub_1BD68C700);
    sub_1BD68CA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F408);
  }

  return result;
}

uint64_t sub_1BD68C684(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD68C700()
{
  result = qword_1EBD4F428;
  if (!qword_1EBD4F428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F430);
    sub_1BD68C78C();
    sub_1BD68C918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F428);
  }

  return result;
}

unint64_t sub_1BD68C78C()
{
  result = qword_1EBD4F438;
  if (!qword_1EBD4F438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F440);
    sub_1BD68C684(&qword_1EBD4F448, &qword_1EBD4F450, &unk_1BE0ED530, sub_1BD68C870);
    sub_1BD68C684(&qword_1EBD4F460, &qword_1EBD4F468, &unk_1BE0ED538, sub_1BD68C8C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F438);
  }

  return result;
}

unint64_t sub_1BD68C870()
{
  result = qword_1EBD4F458;
  if (!qword_1EBD4F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F458);
  }

  return result;
}

unint64_t sub_1BD68C8C4()
{
  result = qword_1EBD4F470;
  if (!qword_1EBD4F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F470);
  }

  return result;
}

unint64_t sub_1BD68C918()
{
  result = qword_1EBD4F478;
  if (!qword_1EBD4F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F480);
    sub_1BD3B15F4();
    sub_1BD68C9A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F478);
  }

  return result;
}

unint64_t sub_1BD68C9A4()
{
  result = qword_1EBD4F488;
  if (!qword_1EBD4F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F490);
    sub_1BD0DE4F4(&qword_1EBD4F498, &qword_1EBD4F4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F488);
  }

  return result;
}

unint64_t sub_1BD68CA5C()
{
  result = qword_1EBD4F4A8;
  if (!qword_1EBD4F4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F4B0);
    sub_1BD68CB18(&qword_1EBD4B108, type metadata accessor for AppleCardRewardsInfoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F4A8);
  }

  return result;
}

uint64_t sub_1BD68CB18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD68CB60()
{
  result = qword_1EBD4F4B8;
  if (!qword_1EBD4F4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F4C0);
    sub_1BD68CF90(&qword_1EBD4F4C8, &qword_1EBD4F4D0, &unk_1BE0ED568, sub_1BD68CC18);
    sub_1BD68C918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F4B8);
  }

  return result;
}

unint64_t sub_1BD68CC18()
{
  result = qword_1EBD4F4D8;
  if (!qword_1EBD4F4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F4E0);
    sub_1BD68C684(&qword_1EBD43A18, &qword_1EBD43A20, &unk_1BE0D0318, sub_1BD38C118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F4D8);
  }

  return result;
}

unint64_t sub_1BD68CCD0()
{
  result = qword_1EBD4F4E8;
  if (!qword_1EBD4F4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F4F0);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F4E8);
  }

  return result;
}

uint64_t sub_1BD68CD54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

double sub_1BD68CDA0(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 122) = -1;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1BD68CDC8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD68CE08(uint64_t a1, void *a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1BD68CE48(void *result)
{
  if (result)
  {
    v1 = result;

    return sub_1BE048C84();
  }

  return result;
}

void *sub_1BD68CE88(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BD68CEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD68CF44()
{
  v0 = sub_1BE053A44();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BD68CF90(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD68D014()
{
  result = qword_1EBD4F568;
  if (!qword_1EBD4F568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F310);
    sub_1BD68D0CC();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F568);
  }

  return result;
}

unint64_t sub_1BD68D0CC()
{
  result = qword_1EBD4F570;
  if (!qword_1EBD4F570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F308);
    sub_1BD68D184();
    sub_1BD0DE4F4(&qword_1EBD4F590, &qword_1EBD4F598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F570);
  }

  return result;
}

unint64_t sub_1BD68D184()
{
  result = qword_1EBD4F578;
  if (!qword_1EBD4F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F328);
    sub_1BD68D23C();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F578);
  }

  return result;
}

unint64_t sub_1BD68D23C()
{
  result = qword_1EBD4F580;
  if (!qword_1EBD4F580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F2F8);
    sub_1BD0DE4F4(&qword_1EBD4F320, &qword_1EBD4F2F8);
    swift_getOpaqueTypeConformance2();
    sub_1BD68CB18(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F580);
  }

  return result;
}

void sub_1BD68D44C(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04B944();
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v73 = &v68 - v11;
  v12 = sub_1BE04BDB4();
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v84 = &v68 - v17;
  v18 = sub_1BE04BDF4();
  v85 = *(v18 - 8);
  v86 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v90 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v68 - v23;
  v25 = sub_1BE04BAC4();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_context];
  sub_1BE04BC34();
  v30 = sub_1BE04BA54();
  (*(v26 + 8))(v29, v25);
  if (v30)
  {
    a1(0xD00000000000001BLL, 0x80000001BE134050, 0, 1);
    return;
  }

  v69 = v6;
  v70 = a1;
  v71 = a2;
  v68 = v3;
  v31 = *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_requirements];
  v83 = *(v31 + 16);
  if (!v83)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_16:
    if (*(v33 + 16) && (v47 = sub_1BD68DC7C(v33), v48 != 2))
    {
      v52 = v48;
      v53 = v47;
      v54 = v73;
      sub_1BE04BB94();
      v55 = sub_1BE04B934();
      v56 = *(v74 + 8);
      v57 = v69;
      v56(v54, v69);
      if ([v55 respondsToSelector_])
      {
        v58 = [v55 supportsCheckingProvisioningRequirements];
        swift_unknownObjectRelease();
        if (v58)
        {
          sub_1BD0E5E8C(0, &unk_1EBD444B0);
          v59 = sub_1BE052F24();
          v60 = v72;
          sub_1BE04BB94();
          v61 = sub_1BE04B934();
          v56(v60, v57);
          if ([v61 respondsToSelector_])
          {
            v62 = swift_allocObject();
            v63 = v71;
            *(v62 + 16) = v70;
            *(v62 + 24) = v63;
            v64 = v68;
            *(v62 + 32) = v68;
            *(v62 + 40) = v53;
            *(v62 + 48) = v52 & 1;
            aBlock[4] = sub_1BD68F340;
            aBlock[5] = v62;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD3B6174;
            aBlock[3] = &block_descriptor_28_3;
            v65 = _Block_copy(aBlock);
            v66 = v59;
            sub_1BE048964();
            v67 = v64;
            sub_1BE048964();

            [v61 meetsProvisioningRequirements:v66 completion:v65];
            _Block_release(v65);

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          return;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v50 = 0;
      v49 = 0;
      v51 = 0;
    }

    else
    {

      v49 = 0x80000001BE134030;
      v50 = 0xD000000000000014;
      v51 = 1;
    }

    v70(v50, v49, 0, v51);
    return;
  }

  v32 = 0;
  v81 = v85 + 16;
  v89 = (v88 + 11);
  v80 = *MEMORY[0x1E69B8128];
  v77 = *MEMORY[0x1E69B8118];
  v76 = (v85 + 8);
  v87 = (v85 + 32);
  ++v88;
  v33 = MEMORY[0x1E69E7CC0];
  v79 = v12;
  v34 = v86;
  v82 = v31;
  while (v32 < *(v31 + 16))
  {
    v35 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v36 = *(v85 + 72);
    (*(v85 + 16))(v24, v31 + v35 + v36 * v32, v34);
    v37 = v84;
    sub_1BE04BDE4();
    v38 = *v89;
    v39 = (*v89)(v37, v12);
    v40 = *v88;
    (*v88)(v37, v12);
    if (v39 == v80 || (v41 = v78, sub_1BE04BDE4(), v42 = v38(v41, v12), v40(v41, v12), v42 == v77))
    {
      v34 = v86;
      v43 = *v87;
      (*v87)(v90, v24, v86);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD531998(0, *(v33 + 16) + 1, 1);
        v33 = aBlock[0];
      }

      v46 = *(v33 + 16);
      v45 = *(v33 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1BD531998(v45 > 1, v46 + 1, 1);
        v33 = aBlock[0];
      }

      *(v33 + 16) = v46 + 1;
      v43((v33 + v35 + v46 * v36), v90, v34);
      v12 = v79;
    }

    else
    {
      v34 = v86;
      (*v76)(v24, v86);
    }

    ++v32;
    v31 = v82;
    if (v83 == v32)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1BD68DC7C(uint64_t a1)
{
  v30 = sub_1BE04BDB4();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BDF4();
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v28 = *(v15 + 56);
    v29 = v16;
    v18 = (v2 + 88);
    v27 = *MEMORY[0x1E69B8120];
    v26 = *MEMORY[0x1E69B8128];
    v25 = *MEMORY[0x1E69B8118];
    v24 = *MEMORY[0x1E69B8130];
    v19 = (v15 - 8);
    v23 = (v2 + 8);
    while (1)
    {
      v20 = v15;
      v29(v11, v17, v6, v9);
      sub_1BE04BDE4();
      v21 = (*v18)(v5, v30);
      if (v21 == v27)
      {
        v14 |= 4uLL;
        if (v13)
        {
          goto LABEL_16;
        }
      }

      else if (v21 == v26)
      {
        v14 |= 0x98uLL;
        if (v13)
        {
          goto LABEL_16;
        }
      }

      else if (v21 == v25)
      {
        v14 |= 0x20uLL;
        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v21 != v24)
        {
          (*v19)(v11, v6);
          (*v23)(v5, v30);
          goto LABEL_4;
        }

        v14 |= 0x40uLL;
        if (v13)
        {
LABEL_16:
          (*v19)(v11, v6);
          v13 = 1;
          goto LABEL_4;
        }
      }

      v13 = sub_1BE04BDD4();
      (*v19)(v11, v6);
LABEL_4:
      v17 += v28;
      --v12;
      v15 = v20;
      if (!v12)
      {
        return v14;
      }
    }
  }

  return 0;
}

uint64_t sub_1BD68DF8C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v27 = a7;
  v25 = a3;
  v26 = a6;
  v10 = sub_1BE051F54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v15 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v19 = sub_1BE052D54();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = v26;
  *(v20 + 24) = v25;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = v21;
  *(v20 + 56) = v27;
  aBlock[4] = sub_1BD68F350;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_34_0;
  v22 = _Block_copy(aBlock);
  sub_1BE048964();
  v23 = a5;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v18, v14, v22);
  _Block_release(v22);

  (*(v11 + 8))(v14, v10);
  return (*(v15 + 8))(v18, v28);
}

uint64_t sub_1BD68E24C(char a1, uint64_t (*a2)(unint64_t, unint64_t, void, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE04BAC4();
  v10 = *(v9 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = 0x80000001BE134070;
    v16 = 0xD000000000000017;
    v17 = 1;
  }

  else
  {
    if (*(a4 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature + 8))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a4 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature);
    }

    sub_1BE04BC34();
    v19 = sub_1BE04B9A4();
    (*(v10 + 8))(v14, v9);
    v20 = [objc_allocWithZone(PKSecurityCapabilitiesController) initWithRequirements:a5 feature:v18 context:v19];
    v21 = *(a4 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_securityController);
    *(a4 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_securityController) = v20;

    v16 = 0;
    v15 = 0;
    v17 = 0;
  }

  return a2(v16, v15, 0, v17, v12);
}

uint64_t sub_1BD68E3E8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 32))(v0, &off_1F3BB44C8, ObjectType, v3);
    v7 = v6;
    swift_unknownObjectRelease();
    if (v5)
    {
      v8 = swift_getObjectType();
      v9 = (*(v7 + 56))(v8, v7);
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = *(v1 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_securityController);
        if (v10)
        {
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16[4] = sub_1BD68F288;
          v16[5] = v11;
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 1107296256;
          v16[2] = sub_1BD68F010;
          v16[3] = &block_descriptor_152;
          v12 = _Block_copy(v16);
          v13 = v10;
          v14 = v9;

          [v13 presentSecurityRepairFlowWithPresentingViewController:v14 suppressHSA2Alert:1 completion:v12];
          _Block_release(v12);

          return 1;
        }
      }
    }
  }

  return 2;
}

uint64_t sub_1BD68E5A0(uint64_t a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE051FA4();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1BD68F290;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_10_3;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v20);
}

void sub_1BD68E88C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [*(Strong + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_reporter) reportViewAppeared];
    if (a2 != 3)
    {
      if (!a2)
      {
        v9 = 0u;
        v10 = 0u;
        v7 = -1;
LABEL_8:
        v11 = v7;
        sub_1BD68E968(&v9);

        sub_1BD12FF7C(&v9);
        return;
      }

      if (a3)
      {
        v8 = a3;
        sub_1BD68EA40(a3, a2);

        return;
      }
    }

    v9 = 0u;
    v10 = 0u;
    v7 = 2;
    goto LABEL_8;
  }
}

uint64_t sub_1BD68E968(uint64_t a1)
{
  sub_1BD39F6D4(a1, v9);
  if (v10)
  {
    if (v10 == 255)
    {
      sub_1BD12FF7C(v9);
    }

    else
    {
      sub_1BD39F670(v9);
    }

    v3 = 0;
  }

  else
  {
    sub_1BD39F670(v9);
    v3 = 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_reporter);
  if (v4)
  {
    [v4 reportPageCompleted:v3 context:0];
  }

  v5 = v1 + OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865A00(v1, &off_1F3BB44C8, a1, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD68EA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - v11;
  v13 = *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_reporter];
  if (v13)
  {
    v14 = sub_1BE04A844();
    [v13 reportError:v14 context:0];
  }

  if (v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature + 8])
  {
    v15 = sub_1BE04A844();
    v16 = PKTitleForDisplayableError();

    if (v16)
    {
      v47 = sub_1BE052434();
      v18 = v17;
    }

    else
    {
      v47 = 0;
      v18 = 0;
    }

    v23 = sub_1BE04A844();
    v24 = MEMORY[0x1BFB42D10]();

    if (v24)
    {
      v46 = sub_1BE052434();
      v26 = v25;

      goto LABEL_15;
    }
  }

  else
  {
    v19 = *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_feature];
    v20 = objc_opt_self();
    v21 = sub_1BE04A844();
    v4 = [v20 displayableErrorForError:v21 featureIdentifier:v19 genericErrorTitle:0 genericErrorMessage:0];

    if (v4)
    {
      v22 = v4;
      v12 = sub_1BE04A844();
    }

    else
    {
      v12 = 0;
    }

    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    v52 = sub_1BD68F2F8;
    v53 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1BD126964;
    v51 = &block_descriptor_22_4;
    v18 = _Block_copy(&aBlock);
    v28 = v2;

    v8 = PKAlertForDisplayableErrorWithCancelHandler(v12, 0, v18);
    _Block_release(v18);

    if (v8)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v46 = 0;
  v26 = 0;
LABEL_15:
  v29 = *MEMORY[0x1E69B80D8];
  v30 = *(v5 + 104);
  if (v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_isRequirementOptional] != 1 || a2 == 4)
  {
    v30(v8, v29, v4);
    v32 = PKPassKitBundle();
    if (v32)
    {
      v33 = v32;
      sub_1BE04B6F4();
      v12 = v8;
      goto LABEL_24;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v30(v12, v29, v4);
  v34 = PKPassKitBundle();
  if (!v34)
  {
    goto LABEL_35;
  }

  v33 = v34;
  sub_1BE04B6F4();
LABEL_24:

  (*(v5 + 8))(v12, v4);
  if (!v18)
  {
    v35 = 0;
    if (v26)
    {
      goto LABEL_26;
    }

LABEL_28:
    v36 = 0;
    goto LABEL_29;
  }

  v35 = sub_1BE052404();

  if (!v26)
  {
    goto LABEL_28;
  }

LABEL_26:
  v36 = sub_1BE052404();

LABEL_29:
  v37 = [objc_opt_self() alertControllerWithTitle:v35 message:v36 preferredStyle:1];

  v4 = v37;
  PKApplyDefaultIconToAlertController(v4);
  v38 = swift_allocObject();
  *(v38 + 16) = v2;
  v39 = v2;
  v40 = sub_1BE052404();

  v52 = sub_1BD68F29C;
  v53 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1BD198918;
  v51 = &block_descriptor_16_5;
  v41 = _Block_copy(&aBlock);

  v42 = [objc_opt_self() actionWithTitle:v40 style:1 handler:v41];
  _Block_release(v41);

  [v4 addAction_];
  v8 = v4;
LABEL_30:

  v43 = &v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningManateeSetupFlowItem_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = *(v43 + 1);
    ObjectType = swift_getObjectType();
    (*(v44 + 24))(v8, ObjectType, v44);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}