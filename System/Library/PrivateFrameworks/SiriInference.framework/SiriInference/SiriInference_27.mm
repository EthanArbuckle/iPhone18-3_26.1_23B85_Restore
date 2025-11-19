void sub_1DD56D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  a31 = v33;
  a32 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v105 = v32;
  v43 = *v32;
  v44 = *(*v32 + 40);
  sub_1DD640E28();
  sub_1DD57F364(&a12, v40, v45, v46, v47, v48, v49, v50);
  v106 = v42;
  if (v36 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v36)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v51 = OUTLINED_FUNCTION_5_9();
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v51 = v38;
      v52 = 0;
    }

    sub_1DD3EB430(v51, v52);
  }

  sub_1DD640E78();
  v53 = *(v43 + 32);
  OUTLINED_FUNCTION_23_18();
  v56 = v55 & ~v54;
  if (((*(v43 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
  {
LABEL_30:
    v85 = *v105;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a12 = *v105;

    v87 = OUTLINED_FUNCTION_5_9();
    sub_1DD3EB41C(v87, v88);
    sub_1DD574290(v40, v38, v36, v56, isUniquelyReferenced_nonNull_native);
    *v105 = a12;
    *v106 = v40;
    v106[1] = v38;
    v106[2] = v36;
    goto LABEL_31;
  }

  v57 = ~v54;
  while (1)
  {
    v58 = (*(v43 + 48) + 24 * v56);
    v59 = *v58;
    v60 = v58[1];
    v61 = v58[2];

    v62 = OUTLINED_FUNCTION_15_1();
    sub_1DD3EB41C(v62, v63);
    if (sub_1DD57D274(v59, v40))
    {
      break;
    }

LABEL_29:

    v83 = OUTLINED_FUNCTION_15_1();
    sub_1DD3EB430(v83, v84);
    v56 = (v56 + 1) & v57;
    if (((*(v43 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v61 == 1)
  {
    if (v36 == 1)
    {
      sub_1DD3EB41C(v38, 1);
      sub_1DD3EB41C(v60, 1);
      sub_1DD3EB430(v60, 1);

      v89 = v60;
      v90 = 1;
      goto LABEL_35;
    }

    goto LABEL_14;
  }

  if (v36 == 1)
  {
LABEL_14:
    v64 = OUTLINED_FUNCTION_5_9();
    sub_1DD3EB41C(v64, v65);
    v66 = OUTLINED_FUNCTION_15_1();
    sub_1DD3EB41C(v66, v67);
    v68 = OUTLINED_FUNCTION_15_1();
    sub_1DD3EB430(v68, v69);
    v70 = OUTLINED_FUNCTION_5_9();
LABEL_28:
    sub_1DD3EB430(v70, v71);
    goto LABEL_29;
  }

  if (v61)
  {
    if (v36)
    {
      if (v60 == v38 && v61 == v36)
      {
        v91 = OUTLINED_FUNCTION_5_9();
        sub_1DD3EB41C(v91, v92);
        v93 = OUTLINED_FUNCTION_5_9();
        sub_1DD3EB41C(v93, v94);
        v95 = OUTLINED_FUNCTION_5_9();
        sub_1DD3EB41C(v95, v96);

        goto LABEL_34;
      }

      OUTLINED_FUNCTION_15_1();
      v104 = OUTLINED_FUNCTION_82_2();
      v73 = OUTLINED_FUNCTION_5_9();
      sub_1DD3EB41C(v73, v74);
      v75 = OUTLINED_FUNCTION_15_1();
      sub_1DD3EB41C(v75, v76);
      v77 = OUTLINED_FUNCTION_15_1();
      sub_1DD3EB41C(v77, v78);

      if (v104)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    sub_1DD3EB41C(v38, 0);
    v79 = OUTLINED_FUNCTION_15_1();
    sub_1DD3EB41C(v79, v80);
    v81 = OUTLINED_FUNCTION_15_1();
    sub_1DD3EB41C(v81, v82);

LABEL_26:

LABEL_27:
    v70 = OUTLINED_FUNCTION_15_1();
    goto LABEL_28;
  }

  if (v36)
  {
    sub_1DD3EB41C(v38, v36);
    sub_1DD3EB41C(v60, 0);

    goto LABEL_26;
  }

  sub_1DD3EB41C(v38, 0);
  sub_1DD3EB41C(v60, 0);
  swift_bridgeObjectRelease_n();
LABEL_34:
  v97 = OUTLINED_FUNCTION_15_1();
  sub_1DD3EB430(v97, v98);

  v89 = OUTLINED_FUNCTION_15_1();
LABEL_35:
  sub_1DD3EB430(v89, v90);

  v99 = OUTLINED_FUNCTION_5_9();
  sub_1DD3EB430(v99, v100);
  v101 = (*(v43 + 48) + 24 * v56);
  v102 = v101[1];
  v103 = v101[2];
  *v106 = *v101;
  v106[1] = v102;
  v106[2] = v103;

  sub_1DD3EB41C(v102, v103);
LABEL_31:
  OUTLINED_FUNCTION_54_8();
}

void sub_1DD56DD54()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_35_14(v4);
  v5 = sub_1DD63D078();
  v6 = OUTLINED_FUNCTION_2_89(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_5_74();
  sub_1DD57AFAC(v9, v10);
  OUTLINED_FUNCTION_22_28();
  OUTLINED_FUNCTION_0_119();
  while (1)
  {
    OUTLINED_FUNCTION_3_74(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_81_2();
      v16 = OUTLINED_FUNCTION_12_35();
      v17(v16);
      v18 = OUTLINED_FUNCTION_10_48();
      sub_1DD574678(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_9_48();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_104();
    v3(v13);
    OUTLINED_FUNCTION_5_74();
    sub_1DD57AFAC(&qword_1EE166050, v14);
    OUTLINED_FUNCTION_23_30();
    v15 = OUTLINED_FUNCTION_15_40();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = OUTLINED_FUNCTION_34_16();
  v1(v23);
  v24 = OUTLINED_FUNCTION_11_43();
  v3(v24);
LABEL_7:
  OUTLINED_FUNCTION_17();
}

BOOL sub_1DD56DEC0(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = *(v7 + 40);
  sub_1DD640E18();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_27_23();
  while (1)
  {
    OUTLINED_FUNCTION_33_13(v10, v11);
    v14 = v13 & v12;
    if ((v13 & v12) == 0)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }

    v10 = v3 + 1;
  }

  v15 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_26_25();
  v17 = sub_1DD574928(a2, v3, v16);
  OUTLINED_FUNCTION_60_6(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
LABEL_6:
  result = v14 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1DD56E030(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DD6407C8();

    if (v9)
    {

      sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
    }

    else
    {
      result = sub_1DD6407B8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = sub_1DD56F4DC(v7, result + 1);
        v20 = *(v19 + 16);
        if (*(v19 + 24) <= v20)
        {
          sub_1DD571408(v20 + 1);
        }

        v21 = v8;
        sub_1DD5731C0(v21, v19);

        *v3 = v19;
LABEL_16:
        *a1 = v21;
        return 1;
      }
    }
  }

  else
  {
    sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    v11 = *(v6 + 40);
    sub_1DD6405A8();
    v12 = *(v6 + 32);
    OUTLINED_FUNCTION_23_18();
    v15 = ~v14;
    while (1)
    {
      v16 = v13 & v15;
      if (((*(v6 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v15)) & 1) == 0)
      {
        v22 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v3;
        v21 = a2;
        sub_1DD574B94(v21, v16, isUniquelyReferenced_nonNull_native);
        *v3 = v27;
        goto LABEL_16;
      }

      v17 = *(*(v6 + 48) + 8 * v16);
      v18 = sub_1DD6405B8();

      if (v18)
      {
        break;
      }

      v13 = v16 + 1;
    }

    v24 = *(*(v6 + 48) + 8 * v16);
    *a1 = v24;
    v25 = v24;
    return 0;
  }

  return result;
}

void sub_1DD56E62C()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v2;
  v34 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v32 - v14;
  v33 = v0;
  OUTLINED_FUNCTION_89_1();
  sub_1DD640E28();
  sub_1DD63D078();
  OUTLINED_FUNCTION_5_74();
  sub_1DD57AFAC(v15, v16);
  sub_1DD63FCF8();
  v17 = *(v5 + 36);
  v38 = v3;
  v35 = v17;
  v36 = v5;
  sub_1DD63FCF8();
  sub_1DD640E78();
  v37 = v1;
  v18 = *(v1 + 32);
  OUTLINED_FUNCTION_23_18();
  v21 = v20 & ~v19;
  if (((*(v1 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
LABEL_8:
    v27 = v33;
    v28 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v38;
    v31 = v32;
    sub_1DD4A0930(v38, v32);
    v39 = *v27;
    sub_1DD575078(v31, v21, isUniquelyReferenced_nonNull_native);
    *v27 = v39;
    sub_1DD4A09A0(v30, v34);
    goto LABEL_9;
  }

  v22 = ~v19;
  v23 = *(v8 + 72);
  while (1)
  {
    sub_1DD4A0930(*(v37 + 48) + v23 * v21, v12);
    OUTLINED_FUNCTION_5_74();
    sub_1DD57AFAC(&qword_1EE166050, v24);
    if ((sub_1DD63FD98() & 1) == 0)
    {
      sub_1DD3ADFD0(v12, &qword_1ECCDD4F0, &unk_1DD651E10);
      goto LABEL_7;
    }

    v25 = &v12[*(v36 + 36)];
    v26 = sub_1DD63FD98();
    sub_1DD3ADFD0(v12, &qword_1ECCDD4F0, &unk_1DD651E10);
    if (v26)
    {
      break;
    }

LABEL_7:
    v21 = (v21 + 1) & v22;
    if (((*(v1 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_1DD3ADFD0(v38, &qword_1ECCDD4F0, &unk_1DD651E10);
  sub_1DD4A0930(*(v37 + 48) + v23 * v21, v34);
LABEL_9:
  OUTLINED_FUNCTION_17();
}

BOOL sub_1DD56E934(_DWORD *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  MEMORY[0x1E12B3110](*(v7 + 40), a2, 4);
  v8 = *(v7 + 32);
  OUTLINED_FUNCTION_27_23();
  while (1)
  {
    OUTLINED_FUNCTION_33_13(v9, v10);
    v13 = v12 & v11;
    if ((v12 & v11) == 0)
    {
      break;
    }

    if (*(*(v7 + 48) + 4 * v3) == a2)
    {
      goto LABEL_6;
    }

    v9 = v3 + 1;
  }

  v14 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_26_25();
  v16 = sub_1DD5754BC(a2, v3, v15);
  OUTLINED_FUNCTION_60_6(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
LABEL_6:
  result = v13 == 0;
  *a1 = a2;
  return result;
}

void sub_1DD56E9E0()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_35_14(v4);
  v5 = sub_1DD63D0F8();
  v6 = OUTLINED_FUNCTION_2_89(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_47_11();
  sub_1DD57AFAC(v9, v10);
  OUTLINED_FUNCTION_22_28();
  OUTLINED_FUNCTION_0_119();
  while (1)
  {
    OUTLINED_FUNCTION_3_74(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_81_2();
      v16 = OUTLINED_FUNCTION_12_35();
      v17(v16);
      v18 = OUTLINED_FUNCTION_10_48();
      sub_1DD5755C4(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_9_48();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_104();
    v3(v13);
    OUTLINED_FUNCTION_47_11();
    sub_1DD57AFAC(&qword_1ECCDBF70, v14);
    OUTLINED_FUNCTION_23_30();
    v15 = OUTLINED_FUNCTION_15_40();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = OUTLINED_FUNCTION_34_16();
  v1(v23);
  v24 = OUTLINED_FUNCTION_11_43();
  v3(v24);
LABEL_7:
  OUTLINED_FUNCTION_17();
}

void sub_1DD56EB4C()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_35_14(v4);
  v5 = sub_1DD63F8B8();
  v6 = OUTLINED_FUNCTION_2_89(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_6_64();
  sub_1DD57AFAC(v9, v10);
  OUTLINED_FUNCTION_22_28();
  OUTLINED_FUNCTION_0_119();
  while (1)
  {
    OUTLINED_FUNCTION_3_74(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_81_2();
      v16 = OUTLINED_FUNCTION_12_35();
      v17(v16);
      v18 = OUTLINED_FUNCTION_10_48();
      sub_1DD575874(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_9_48();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_104();
    v3(v13);
    OUTLINED_FUNCTION_6_64();
    sub_1DD57AFAC(&qword_1ECCDD278, v14);
    OUTLINED_FUNCTION_23_30();
    v15 = OUTLINED_FUNCTION_15_40();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = OUTLINED_FUNCTION_34_16();
  v1(v23);
  v24 = OUTLINED_FUNCTION_11_43();
  v3(v24);
LABEL_7:
  OUTLINED_FUNCTION_17();
}

void sub_1DD56EDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  a31 = v34;
  a32 = v35;
  v37 = v36;
  v54 = v38;
  OUTLINED_FUNCTION_89_1();
  sub_1DD640E28();
  sub_1DD416068(&a12, v37);
  sub_1DD640E78();
  v39 = *(v33 + 32);
  OUTLINED_FUNCTION_23_18();
  v42 = v41 & ~v40;
  if ((*(v33 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
  {
    v53 = ~v40;
    v43 = *(v37 + 16);
    v44 = *(v33 + 48);
    do
    {
      v45 = *(v44 + 8 * v42);
      if (*(v45 + 16) == v43)
      {
        if (!v43 || v45 == v37)
        {
LABEL_16:

          *v54 = *(*(v33 + 48) + 8 * v42);

          goto LABEL_17;
        }

        v46 = (v45 + 40);
        v47 = (v37 + 40);
        v48 = v43;
        while (1)
        {
          v49 = *(v46 - 1) == *(v47 - 1) && *v46 == *v47;
          if (!v49 && (sub_1DD640CD8() & 1) == 0)
          {
            break;
          }

          v46 += 2;
          v47 += 2;
          if (!--v48)
          {
            goto LABEL_16;
          }
        }
      }

      v42 = (v42 + 1) & v53;
    }

    while (((*(v33 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0);
  }

  v50 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a12 = *v32;

  sub_1DD575B24(v52, v42, isUniquelyReferenced_nonNull_native);
  *v32 = a12;
  *v54 = v37;
LABEL_17:
  OUTLINED_FUNCTION_54_8();
}

uint64_t sub_1DD56EF28(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89_1();
  sub_1DD640E28();
  sub_1DD60ACB0();
  sub_1DD640E78();
  v4 = v2 + 56;
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_23_18();
  v8 = v7 & ~v6;
  if ((*(v2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v6;
    v40 = v2;
    v10 = *(v2 + 48);
    do
    {
      v11 = (v10 + 48 * v8);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      if (*(v11 + 40))
      {
        if (*(v11 + 40) != 1)
        {
          if (*(a2 + 40) != 2)
          {
            goto LABEL_38;
          }

          v25 = *(a2 + 16);
          v26 = *(a2 + 24);
          v27 = v12 == *a2 && v13 == *(a2 + 8);
          if (!v27 && (sub_1DD640CD8() & 1) == 0)
          {
            goto LABEL_38;
          }

          if (v14 == v25 && v15 == v26)
          {
            goto LABEL_41;
          }

LABEL_37:
          if (sub_1DD640CD8())
          {
            goto LABEL_41;
          }

          goto LABEL_38;
        }

        if (*(a2 + 40) == 1)
        {
          v16 = *(a2 + 16);
          v17 = v12 == *a2 && v13 == *(a2 + 8);
          if (v17 || (sub_1DD640CD8()) && v14 == v16)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        if (*(a2 + 40))
        {
          goto LABEL_38;
        }

        v18 = v11[4];
        v20 = *(a2 + 16);
        v19 = *(a2 + 24);
        v21 = *(a2 + 32);
        if (v12 != *a2 || v13 != *(a2 + 8))
        {
          v41 = *(a2 + 24);
          v42 = v18;
          v23 = sub_1DD640CD8();
          v19 = v41;
          v18 = v42;
          if ((v23 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        if (v14 != v20)
        {
          goto LABEL_38;
        }

        if (v18)
        {
          if (!v21)
          {
            goto LABEL_38;
          }

          if (v15 == v19 && v18 == v21)
          {
LABEL_41:
            sub_1DD57ADE4(a2);
            v29 = *(v40 + 48) + 48 * v8;
            v30 = *v29;
            v31 = *(v29 + 8);
            v32 = *(v29 + 16);
            v33 = *(v29 + 24);
            v34 = *(v29 + 32);
            *a1 = *v29;
            *(a1 + 8) = v31;
            *(a1 + 16) = v32;
            *(a1 + 24) = v33;
            *(a1 + 32) = v34;
            v35 = *(v29 + 40);
            *(a1 + 40) = v35;
            sub_1DD57AE38(v30, v31, v32, v33, v34, v35);
            return 0;
          }

          goto LABEL_37;
        }

        if (!v21)
        {
          goto LABEL_41;
        }
      }

LABEL_38:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  v37 = *v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v43;
  sub_1DD41B16C(a2, v46);
  sub_1DD575CE8(a2, v8, isUniquelyReferenced_nonNull_native);
  *v43 = v45;
  v39 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v39;
  *(a1 + 25) = *(a2 + 25);
  return 1;
}

void sub_1DD56F194()
{
  OUTLINED_FUNCTION_53_7();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v28 = v0;
  v29 = v9;
  v10 = *v0;
  v11 = *(*v0 + 40);
  sub_1DD640E28();
  sub_1DD63FD28();
  if (v2)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  sub_1DD640E78();
  v12 = *(v10 + 32);
  OUTLINED_FUNCTION_23_18();
  v15 = v14 & ~v13;
  if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_22:
    v22 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v28;

    sub_1DD575F6C(v8, v6, v4, v2, v15, isUniquelyReferenced_nonNull_native);
    *v28 = v30;
    *v29 = v8;
    v29[1] = v6;
    v29[2] = v4;
    v29[3] = v2;
    goto LABEL_26;
  }

  v16 = ~v13;
  while (1)
  {
    v17 = (*(v10 + 48) + 32 * v15);
    v19 = v17[2];
    v18 = v17[3];
    v20 = *v17 == v8 && v17[1] == v6;
    if (!v20 && (OUTLINED_FUNCTION_82_2() & 1) == 0)
    {
      goto LABEL_21;
    }

    if (!v18)
    {
      break;
    }

    if (!v2)
    {
      goto LABEL_20;
    }

    v21 = v19 == v4 && v18 == v2;
    if (v21 || (sub_1DD640CD8() & 1) != 0)
    {

      goto LABEL_25;
    }

LABEL_21:
    v15 = (v15 + 1) & v16;
    if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (v2)
  {
LABEL_20:

    goto LABEL_21;
  }

  swift_bridgeObjectRelease_n();
LABEL_25:

  v24 = (*(v10 + 48) + 32 * v15);
  v25 = v24[1];
  v27 = v24[2];
  v26 = v24[3];
  *v29 = *v24;
  v29[1] = v25;
  v29[2] = v27;
  v29[3] = v26;

LABEL_26:
  OUTLINED_FUNCTION_54_8();
}

void sub_1DD56F38C()
{
  OUTLINED_FUNCTION_53_7();
  v2 = v1;
  v19 = v3;
  v4 = *v0;
  v5 = *(*v0 + 40);
  sub_1DD640E28();
  sub_1DD538ED0(v2);
  sub_1DD63FD28();

  sub_1DD640E78();
  v6 = *(v4 + 32);
  OUTLINED_FUNCTION_23_18();
  v9 = ~v8;
  while (1)
  {
    v10 = v7 & v9;
    if (((1 << (v7 & v9)) & *(v4 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v17 = *v0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v0;
      sub_1DD57618C(v2, v10, isUniquelyReferenced_nonNull_native);
      *v0 = v20;
      goto LABEL_12;
    }

    v11 = sub_1DD538ED0(*(*(v4 + 48) + 2 * v10));
    v13 = v12;
    if (v11 == sub_1DD538ED0(v2) && v13 == v14)
    {
      break;
    }

    v16 = OUTLINED_FUNCTION_80_1();

    if (v16)
    {
      goto LABEL_11;
    }

    v7 = v10 + 1;
  }

LABEL_11:
  LOWORD(v2) = *(*(v4 + 48) + 2 * v10);
LABEL_12:
  *v19 = v2;
  OUTLINED_FUNCTION_54_8();
}

uint64_t sub_1DD56F4DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF98, &qword_1DD65CE80);
    v2 = sub_1DD640878();
    v16 = v2;
    sub_1DD640778();
    while (1)
    {
      if (!sub_1DD6407F8())
      {

        return v2;
      }

      sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1DD571408(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_1DD6405A8();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DD56F838(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF020, &qword_1DD65CF08);
    v2 = sub_1DD640878();
    v24 = v2;
    sub_1DD640778();
    while (1)
    {
      v3 = sub_1DD6407F8();
      if (!v3)
      {
        break;
      }

      v15[0] = v3;
      type metadata accessor for DateTime();
      swift_dynamicCast();
      v8 = *(v2 + 16);
      if (*(v2 + 24) <= v8)
      {
        sub_1DD571654(v8 + 1, &qword_1ECCDF020, &qword_1DD65CF08, sub_1DD489FC8, v4, v5, v6, v7, v14, v15[0], v15[1], v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, vars0, vars8);
      }

      v9 = v23;
      v2 = v24;
      v10 = *(v24 + 40);
      sub_1DD640E28();
      sub_1DD489FC8(v15);
      sub_1DD640E78();
      v11 = -1 << *(v2 + 32);
      v12 = sub_1DD640758();
      *(v2 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v9;
      ++*(v2 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DD56F9D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE400, &unk_1DD6575E0);
  result = sub_1DD640868();
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
      sub_1DD57634C(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_1DD640E28();
    sub_1DD63FD28();
    result = sub_1DD640E78();
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

uint64_t sub_1DD56FC2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD8, &qword_1DD65CEC0);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1DD57634C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1DD640E28();
    MEMORY[0x1E12B3140](v17);
    result = sub_1DD640E78();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD56FE78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF028, &unk_1DD65CF10);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

  v37 = v2;
  v38 = v3;
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
        goto LABEL_34;
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
        v41 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      sub_1DD57634C(0, (v36 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v41 = (v11 - 1) & v11;
LABEL_14:
    v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v6;
    v22 = *(v6 + 40);
    sub_1DD640E28();
    v39 = v19;
    v40 = v18;
    sub_1DD63FD28();
    MEMORY[0x1E12B3140](*(v20 + 16));
    v23 = *(v20 + 16);
    if (v23)
    {
      v24 = (v20 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;

        sub_1DD63FD28();

        v24 += 2;
        --v23;
      }

      while (v23);
    }

    result = sub_1DD640E78();
    v6 = v21;
    v27 = -1 << *(v21 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v21 + 48) + 24 * v30);
    v11 = v41;
    *v35 = v40;
    v3 = v38;
    v35[1] = v39;
    v35[2] = v20;
    ++*(v21 + 16);
    if (!v41)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v13 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1DD570148(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DD63D2B8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF70, &qword_1DD65CE58);
  result = sub_1DD640868();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1DD57634C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1DD57AFAC(&qword_1EE1637E0, MEMORY[0x1E6969AD0]);
    result = sub_1DD63FCE8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD5704A0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DD63C868();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE418, &qword_1DD657608);
  result = sub_1DD640868();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1DD57634C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1DD57AFAC(&qword_1ECCDC180, MEMORY[0x1E6968130]);
    result = sub_1DD63FCE8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD5707F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFE8, &qword_1DD65CED0);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DD57307C(__dst, v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      memcpy(__dst, (*(v3 + 48) + 104 * (v13 | (v7 << 6))), 0x62uLL);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      sub_1DD57634C(0, (v16 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DD570978(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFF0, &qword_1DD65CED8);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_34:

    *v2 = v6;
    return result;
  }

  v38 = v2;
  v39 = v3;
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
        goto LABEL_36;
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

    v37 = 1 << *(v3 + 32);
    if (v37 >= 64)
    {
      sub_1DD57634C(0, (v37 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v37;
    }

    v2 = v38;
    *(v3 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v6 + 40);
    sub_1DD640E28();
    sub_1DD57F364(v40, v18, v22, v23, v24, v25, v26, v27);
    if (v20 == 1)
    {
      sub_1DD640E48();
    }

    else
    {
      sub_1DD640E48();
      if (v20)
      {
        MEMORY[0x1E12B3140](1);
        sub_1DD63FD28();
      }

      else
      {
        MEMORY[0x1E12B3140](0);
      }
    }

    result = sub_1DD640E78();
    v28 = -1 << *(v6 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = (*(v6 + 48) + 24 * v31);
    *v36 = v18;
    v36[1] = v19;
    v36[2] = v20;
    ++*(v6 + 16);
    v3 = v39;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v13 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_28;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1DD570C30(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DD63D078();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA8, &qword_1DD65CE90);
  result = sub_1DD640868();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1DD57634C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530]);
    result = sub_1DD63FCE8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD570F88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF88, &qword_1DD65CE70);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
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

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_1DD57634C(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1DD640E18();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD5711AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF90, &qword_1DD65CE78);
  result = sub_1DD640868();
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
      sub_1DD57634C(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_1DD640E28();
    sub_1DD63FD28();
    result = sub_1DD640E78();
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

uint64_t sub_1DD571408(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF98, &qword_1DD65CE80);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1DD57634C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_1DD6405A8();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1DD571654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  a31 = v34;
  a32 = v35;
  v69 = v36;
  OUTLINED_FUNCTION_32_17(v37, v38, v39);
  OUTLINED_FUNCTION_70_2();
  v40 = sub_1DD640868();
  if (!*(v33 + 16))
  {
LABEL_25:

    *v32 = v40;
    OUTLINED_FUNCTION_54_8();
    return;
  }

  v68 = v32;
  v41 = 0;
  v43 = (v33 + 56);
  v42 = *(v33 + 56);
  v44 = *(v33 + 32);
  OUTLINED_FUNCTION_65_6();
  v47 = v46 & v45;
  v49 = (v48 + 63) >> 6;
  v50 = v40 + 56;
  if ((v46 & v45) == 0)
  {
LABEL_4:
    v52 = v41;
    while (1)
    {
      v41 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v41 >= v49)
      {
        break;
      }

      ++v52;
      if (v43[v41])
      {
        OUTLINED_FUNCTION_14_3();
        v47 = v54 & v53;
        goto LABEL_9;
      }
    }

    v65 = *(v33 + 32);
    OUTLINED_FUNCTION_52_10();
    if (v66 >= 64)
    {
      sub_1DD57634C(0, (v66 + 63) >> 6, v33 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_23_18();
      *v43 = v67;
    }

    v32 = v68;
    *(v33 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    v51 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
LABEL_9:
    v55 = *(*(v33 + 48) + 8 * (v51 | (v41 << 6)));
    v56 = *(v40 + 40);
    sub_1DD640E28();
    v69(&a12);
    v57 = sub_1DD640E78();
    OUTLINED_FUNCTION_64_5(v57, *(v40 + 32));
    if (v58)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_19:
    OUTLINED_FUNCTION_7_39();
    *(v50 + v62) |= v63;
    *(*(v40 + 48) + 8 * v64) = v55;
    OUTLINED_FUNCTION_46_3();
    if (!v47)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v58)
    {
      if (v60)
      {
        break;
      }
    }

    if (v59 == v61)
    {
      v59 = 0;
    }

    if (*(v50 + 8 * v59) != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1DD5717F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF018, &qword_1DD65CF00);
  result = sub_1DD640868();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v7 + 32);
    if (v34 >= 64)
    {
      sub_1DD57634C(0, (v34 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48);
    v22 = *(v37 + 72);
    v23 = v39;
    sub_1DD4A09A0(v21 + v22 * (v18 | (v11 << 6)), v39);
    v24 = *(v10 + 40);
    sub_1DD640E28();
    sub_1DD63D078();
    sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530]);
    sub_1DD63FCF8();
    v25 = v23 + *(v38 + 36);
    sub_1DD63FCF8();
    result = sub_1DD640E78();
    v26 = -1 << *(v10 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = sub_1DD4A09A0(v39, *(v10 + 48) + v29 * v22);
    ++*(v10 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v17 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD571B4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD0, &qword_1DD65CEB8);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v26 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
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

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_1DD57634C(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
    result = MEMORY[0x1E12B3110](*(v6 + 40), v17, 4);
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 4 * v21) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD571D74(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DD63D0F8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB0, &qword_1DD65CE98);
  result = sub_1DD640868();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1DD57634C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1DD57AFAC(&qword_1EE163810, MEMORY[0x1E69695A8]);
    result = sub_1DD63FCE8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD5720CC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1DD63F8B8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF80, &qword_1DD65CE68);
  result = sub_1DD640868();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1DD57634C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1DD57AFAC(&qword_1EE160338, MEMORY[0x1E69D27B0]);
    result = sub_1DD63FCE8();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1DD572424()
{
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_32_17(v4, v5, v6);
  OUTLINED_FUNCTION_70_2();
  v7 = sub_1DD640868();
  if (!*(v1 + 16))
  {
LABEL_25:

    *v0 = v7;
    OUTLINED_FUNCTION_41_13();
    return;
  }

  v28 = v0;
  v8 = 0;
  v10 = (v1 + 56);
  v9 = *(v1 + 56);
  v11 = *(v1 + 32);
  OUTLINED_FUNCTION_48_15();
  if (!v0)
  {
LABEL_4:
    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v8 >= v3)
      {
        break;
      }

      ++v13;
      if (v10[v8])
      {
        OUTLINED_FUNCTION_14_3();
        v0 = (v15 & v14);
        goto LABEL_9;
      }
    }

    v25 = *(v1 + 32);
    OUTLINED_FUNCTION_52_10();
    if (v26 >= 64)
    {
      sub_1DD57634C(0, (v26 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_23_18();
      *v10 = v27;
    }

    v0 = v28;
    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_88();
LABEL_9:
    v16 = *(*(v1 + 48) + (v12 | (v8 << 6)));
    v17 = *(v7 + 40);
    sub_1DD640E28();
    MEMORY[0x1E12B3140](v16);
    v18 = sub_1DD640E78();
    OUTLINED_FUNCTION_57_12(v18);
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_19:
    OUTLINED_FUNCTION_7_39();
    OUTLINED_FUNCTION_86_2();
    *(v24 + v23) = v16;
    OUTLINED_FUNCTION_46_3();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (*(v2 + 8 * v20) != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1DD57258C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA0, &qword_1DD65CE88);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

  v33 = v2;
  v34 = v3;
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
        goto LABEL_34;
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
        v35 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_1DD57634C(0, (v32 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v35 = (v11 - 1) & v11;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = v6;
    v19 = *(v6 + 40);
    sub_1DD640E28();
    MEMORY[0x1E12B3140](*(v17 + 16));
    v20 = *(v17 + 16);
    if (v20)
    {
      v21 = (v17 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;

        sub_1DD63FD28();

        v21 += 2;
        --v20;
      }

      while (v20);
    }

    result = sub_1DD640E78();
    v6 = v18;
    v24 = -1 << *(v18 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v18 + 48) + 8 * v27) = v17;
    ++*(v18 + 16);
    v3 = v34;
    v11 = v35;
    if (!v35)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v13 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1DD57282C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_35:

    *v2 = v6;
    return result;
  }

  v32 = v2;
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
  v33 = v3;
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
        goto LABEL_37;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1DD57634C(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 48 * (v14 | (v7 << 6));
    v18 = *(v17 + 8);
    v35 = *(v17 + 16);
    v36 = *v17;
    v34 = *(v17 + 24);
    v19 = *(v17 + 32);
    v20 = *(v17 + 40);
    v21 = *(v6 + 40);
    sub_1DD640E28();
    if (v20)
    {
      if (v20 == 1)
      {
        MEMORY[0x1E12B3140](1);
        sub_1DD63FD28();
        MEMORY[0x1E12B3140](v35);
      }

      else
      {
        MEMORY[0x1E12B3140](2);
        sub_1DD63FD28();
        sub_1DD63FD28();
      }
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      sub_1DD63FD28();
      MEMORY[0x1E12B3140](v35);
      sub_1DD640E48();
      if (v19)
      {
        sub_1DD63FD28();
      }
    }

    result = sub_1DD640E78();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 48 * v25;
    *v30 = v36;
    *(v30 + 8) = v18;
    *(v30 + 16) = v35;
    *(v30 + 24) = v34;
    *(v30 + 32) = v19;
    *(v30 + 40) = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_29;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1DD572B6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFC0, &qword_1DD65CEA8);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

  v34 = v2;
  v35 = v3;
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
        goto LABEL_34;
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

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      sub_1DD57634C(0, (v33 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v6 + 40);
    sub_1DD640E28();
    v36 = v19;
    sub_1DD63FD28();
    if (v21)
    {
      MEMORY[0x1E12B3140](1);
      v23 = v20;
      sub_1DD63FD28();
    }

    else
    {
      v23 = v20;
      MEMORY[0x1E12B3140](0);
    }

    result = sub_1DD640E78();
    v24 = -1 << *(v6 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v6 + 48) + 32 * v27);
    *v32 = v18;
    v32[1] = v36;
    v32[2] = v23;
    v32[3] = v21;
    ++*(v6 + 16);
    v3 = v35;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v13 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1DD572E14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB8, &qword_1DD65CEA0);
  result = sub_1DD640868();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1DD57634C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1DD640E28();
    sub_1DD538ED0(v17);
    sub_1DD63FD28();

    result = sub_1DD640E78();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 2 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void *sub_1DD57307C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DD640E28();
  v5 = a1[1];
  v6 = a1[2];
  sub_1DD57F364(v19, *a1, v7, v8, v9, v10, v11, v12);
  if (v6 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v6)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v13 = v5;
      v14 = v6;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v13 = v5;
      v14 = 0;
    }

    sub_1DD3EB430(v13, v14);
  }

  memcpy(__dst, a1 + 3, sizeof(__dst));
  ContactHandle.hash(into:)();
  sub_1DD640E78();
  v15 = -1 << *(a2 + 32);
  v16 = sub_1DD640758();
  *(a2 + 56 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
  result = memcpy((*(a2 + 48) + 104 * v16), a1, 0x62uLL);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DD5731C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DD6405A8();
  v5 = -1 << *(a2 + 32);
  result = sub_1DD640758();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DD573244(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v6 = *(a2 + 40);
  sub_1DD640E28();
  a3(v9);
  sub_1DD640E78();
  v7 = *(a2 + 32);
  OUTLINED_FUNCTION_23_18();
  result = sub_1DD640758();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1DD5732EC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DD56F9D0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DD577AA8(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1DD640E28();
      sub_1DD63FD28();
      v17 = sub_1DD640E78();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_1DD640CD8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_1DD5763B0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1DD573454(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD56FC2C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD577CDC(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1DD640E28();
      MEMORY[0x1E12B3140](v5);
      result = sub_1DD640E78();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD576494();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DD57358C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a5)
  {
    sub_1DD56FE78(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1DD5765D4();
      goto LABEL_30;
    }

    sub_1DD577EF8(v10 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD416068(v32, a3);
  result = sub_1DD640E78();
  v14 = v12 + 56;
  v15 = -1 << *(v12 + 32);
  a4 = result & ~v15;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
LABEL_30:
    v26 = *v31;
    *(*v31 + 8 * (a4 >> 6) + 56) |= 1 << a4;
    v27 = (*(v26 + 48) + 24 * a4);
    *v27 = v9;
    v27[1] = a2;
    v27[2] = a3;
    v28 = *(v26 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *(v26 + 16) = v30;
      return result;
    }

    goto LABEL_33;
  }

  v16 = ~v15;
  v17 = *(v12 + 48);
  while (1)
  {
    v18 = (v17 + 24 * a4);
    result = *v18;
    v19 = v18[2];
    v20 = *v18 == v9 && v18[1] == a2;
    if (v20 || (result = sub_1DD640CD8(), (result & 1) != 0))
    {
      v21 = *(v19 + 16);
      if (v21 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_29:
    a4 = (a4 + 1) & v16;
    if (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v21)
  {
    v22 = v19 == a3;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    goto LABEL_34;
  }

  v23 = (v19 + 40);
  v24 = (a3 + 40);
  while (v21)
  {
    if (*(v23 - 1) != *(v24 - 1) || *v23 != *v24)
    {
      result = sub_1DD640CD8();
      if ((result & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v23 += 2;
    v24 += 2;
    if (!--v21)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1DD640D48();
  __break(1u);
  return result;
}

uint64_t sub_1DD573794(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1DD63D2B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD570148(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD5781A8(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1DD57AFAC(&qword_1EE1637E0, MEMORY[0x1E6969AD0]);
      v15 = sub_1DD63FCE8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&unk_1ECCDC350, MEMORY[0x1E6969AD0]);
        v17 = sub_1DD63FD98();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1DD573A44(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1DD63C868();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD5704A0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD5784C0(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1DD57AFAC(&qword_1ECCDC180, MEMORY[0x1E6968130]);
      v15 = sub_1DD63FCE8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&qword_1ECCDF030, MEMORY[0x1E6968130]);
        v17 = sub_1DD63FD98();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void *sub_1DD573CF4(unsigned __int8 *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    sub_1DD5707F8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DD576740();
      goto LABEL_72;
    }

    sub_1DD5787D8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DD640E28();
  v64 = *a1;
  v65 = *(a1 + 2);
  v10 = v65;
  v11 = v64;
  sub_1DD57F364(v62, v64, v12, v13, v14, v15, v16, v17);
  if (v10 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v10)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v18 = *(&v11 + 1);
      v19 = v10;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v18 = *(&v11 + 1);
      v19 = 0;
    }

    sub_1DD3EB430(v18, v19);
  }

  v20 = a1[40];
  v21 = *(a1 + 6);
  v22 = *(a1 + 7);
  v23 = *(a1 + 8);
  v24 = *(a1 + 9);
  v25 = *(a1 + 10);
  v26 = *(a1 + 11);
  v27 = a1[96];
  v28 = a1[97];
  v58 = *(a1 + 4);
  v59 = *(a1 + 3);
  __dst[0] = v59;
  __dst[1] = v58;
  v57 = v20;
  LOBYTE(__dst[2]) = v20;
  *(&__dst[2] + 1) = *(a1 + 41);
  HIDWORD(__dst[2]) = *(a1 + 11);
  v55 = v22;
  v56 = v21;
  __dst[3] = v21;
  __dst[4] = v22;
  v53 = v24;
  v54 = v23;
  __dst[5] = v23;
  __dst[6] = v24;
  v51 = v26;
  v52 = v25;
  __dst[7] = v25;
  __dst[8] = v26;
  v49 = v28;
  v50 = v27;
  LOBYTE(__dst[9]) = v27;
  BYTE1(__dst[9]) = v28;
  ContactHandle.hash(into:)();
  v29 = sub_1DD640E78();
  v30 = -1 << *(v8 + 32);
  a2 = v29 & ~v30;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v30;
    do
    {
      memcpy(__dst, (*(v8 + 48) + 104 * a2), 0x62uLL);
      v33 = __dst[0];
      v32 = __dst[1];
      v34 = __dst[2];
      sub_1DD57AEA0(__dst, v62);

      sub_1DD3EB41C(v32, v34);
      sub_1DD57AEFC(&v64, v62);
      if ((sub_1DD57D274(v33, v11) & 1) == 0)
      {
        goto LABEL_59;
      }

      if (v34 == 1)
      {
        if (v10 != 1)
        {
          goto LABEL_44;
        }

        sub_1DD3EB41C(*(&v11 + 1), 1);
        sub_1DD3EB41C(v32, 1);
        v34 = 1;
      }

      else
      {
        if (v10 == 1)
        {
LABEL_44:
          sub_1DD3EB41C(*(&v11 + 1), v10);
          sub_1DD3EB41C(v32, v34);
          sub_1DD3EB430(v32, v34);
          v40 = *(&v11 + 1);
          v41 = v10;
          goto LABEL_58;
        }

        if (v34)
        {
          if (!v10)
          {
            sub_1DD3EB41C(*(&v11 + 1), 0);
            sub_1DD3EB41C(v32, v34);
            sub_1DD3EB41C(v32, v34);

            goto LABEL_56;
          }

          if (v32 == *(&v11 + 1) && v34 == v10)
          {
            sub_1DD3EB41C(*(&v11 + 1), v10);
            sub_1DD3EB41C(*(&v11 + 1), v10);
            sub_1DD3EB41C(*(&v11 + 1), v10);
          }

          else
          {
            v48 = sub_1DD640CD8();
            sub_1DD3EB41C(*(&v11 + 1), v10);
            sub_1DD3EB41C(v32, v34);
            sub_1DD3EB41C(v32, v34);

            if ((v48 & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          if (v10)
          {
            sub_1DD3EB41C(*(&v11 + 1), v10);
            sub_1DD3EB41C(v32, 0);

LABEL_56:

LABEL_57:
            v40 = v32;
            v41 = v34;
LABEL_58:
            sub_1DD3EB430(v40, v41);
LABEL_59:
            sub_1DD57AF58(&v64);

            sub_1DD3EB430(v32, v34);
LABEL_60:
            sub_1DD3EB488(__dst);
            goto LABEL_61;
          }

          sub_1DD3EB41C(*(&v11 + 1), 0);
          sub_1DD3EB41C(v32, 0);
          swift_bridgeObjectRelease_n();
        }
      }

      sub_1DD3EB430(v32, v34);
      sub_1DD57AF58(&v64);

      sub_1DD3EB430(v32, v34);
      v35 = __dst[3] == v59 && __dst[4] == v58;
      if (!v35 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_60;
      }

      if (LOBYTE(__dst[5]) != v57)
      {
        goto LABEL_60;
      }

      v36 = __dst[6] == v56 && __dst[7] == v55;
      if (!v36 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_60;
      }

      v37 = __dst[8] == v54 && __dst[9] == v53;
      if (!v37 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_60;
      }

      if (__dst[10] == v52 && __dst[11] == v51)
      {
        sub_1DD3EB488(__dst);
        if (LOBYTE(__dst[12]) != (v50 & 1))
        {
          goto LABEL_61;
        }
      }

      else
      {
        v39 = sub_1DD640CD8();
        sub_1DD3EB488(__dst);
        if (v39 & 1) == 0 || ((LOBYTE(__dst[12]) ^ v50))
        {
          goto LABEL_61;
        }
      }

      if (BYTE1(__dst[12]) == 2)
      {
        if (v49 == 2)
        {
          goto LABEL_71;
        }
      }

      else if (v49 != 2 && ((BYTE1(__dst[12]) ^ v49) & 1) == 0)
      {
LABEL_71:
        sub_1DD640D48();
        __break(1u);
        break;
      }

LABEL_61:
      a2 = (a2 + 1) & v31;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v43 = *v60;
  *(*v60 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v43 + 48) + 104 * a2), a1, 0x62uLL);
  v45 = *(v43 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v47;
  }

  return result;
}

uint64_t sub_1DD574290(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1DD570978(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        result = sub_1DD5768C8();
        goto LABEL_37;
      }

      sub_1DD578930(v11 + 1);
    }

    v13 = *v5;
    v14 = *(*v5 + 40);
    sub_1DD640E28();
    sub_1DD57F364(v38, v10, v15, v16, v17, v18, v19, v20);
    if (a3 == 1)
    {
      sub_1DD640E48();
    }

    else
    {
      sub_1DD640E48();
      if (a3)
      {
        MEMORY[0x1E12B3140](1);

        sub_1DD63FD28();
        v21 = a2;
        v22 = a3;
      }

      else
      {
        MEMORY[0x1E12B3140](0);
        v21 = a2;
        v22 = 0;
      }

      sub_1DD3EB430(v21, v22);
    }

    result = sub_1DD640E78();
    v23 = -1 << *(v13 + 32);
    a4 = result & ~v23;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v24 = ~v23;
      while (1)
      {
        v25 = (*(v13 + 48) + 24 * a4);
        v26 = *v25;
        v6 = v25[1];
        v27 = v25[2];

        sub_1DD3EB41C(v6, v27);
        if (sub_1DD57D274(v26, v10))
        {
          break;
        }

LABEL_36:

        result = sub_1DD3EB430(v6, v27);
        a4 = (a4 + 1) & v24;
        if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      if (v27 == 1)
      {
        if (a3 == 1)
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      if (a3 == 1)
      {
LABEL_21:
        sub_1DD3EB41C(a2, a3);
        sub_1DD3EB41C(v6, v27);
        sub_1DD3EB430(v6, v27);
        v28 = a2;
        v29 = a3;
LABEL_35:
        sub_1DD3EB430(v28, v29);
        goto LABEL_36;
      }

      if (v27)
      {
        if (a3)
        {
          if (v6 == a2 && v27 == a3)
          {
            sub_1DD3EB41C(a2, a3);
            sub_1DD3EB41C(a2, a3);
            sub_1DD3EB41C(a2, a3);

            v6 = a2;
            goto LABEL_43;
          }

          v36 = sub_1DD640CD8();
          sub_1DD3EB41C(a2, a3);
          sub_1DD3EB41C(v6, v27);
          sub_1DD3EB41C(v6, v27);

          if (v36)
          {
            a3 = v27;
            goto LABEL_43;
          }

          goto LABEL_34;
        }

        sub_1DD3EB41C(a2, 0);
        sub_1DD3EB41C(v6, v27);
        sub_1DD3EB41C(v6, v27);
      }

      else
      {
        if (!a3)
        {
          sub_1DD3EB41C(a2, 0);
          sub_1DD3EB41C(v6, 0);
          swift_bridgeObjectRelease_n();
          goto LABEL_43;
        }

        sub_1DD3EB41C(a2, a3);
        sub_1DD3EB41C(v6, 0);
      }

LABEL_34:
      v28 = v6;
      v29 = v27;
      goto LABEL_35;
    }
  }

LABEL_37:
  v31 = *v37;
  *(*v37 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v32 = (*(v31 + 48) + 24 * a4);
  *v32 = v10;
  v32[1] = a2;
  v32[2] = a3;
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_40:
    sub_1DD3EB41C(a2, 1);
    sub_1DD3EB41C(v6, 1);
LABEL_43:
    sub_1DD3EB430(v6, a3);

    sub_1DD3EB430(v6, a3);
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }

  return result;
}

uint64_t sub_1DD574678(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1DD63D078();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD570C30(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD578BCC(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530]);
      v15 = sub_1DD63FCE8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&qword_1EE166050, MEMORY[0x1E6969530]);
        v17 = sub_1DD63FD98();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1DD574928(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD570F88(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD578EE4(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_1DD640E18();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD576A40();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DD574A2C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DD5711AC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DD5790D0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1DD640E28();
      sub_1DD63FD28();
      result = sub_1DD640E78();
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
        if (v19 || (sub_1DD640CD8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DD576B80();
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
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1DD574B94(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD571408(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1DD579304(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      result = sub_1DD6405A8();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_1DD6405B8();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD576CD8();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_1DD575078(uint64_t a1, unint64_t a2, char a3)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v26 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v27 = v7;
  v28 = v3;
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD5717F4(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_1DD576F08();
        goto LABEL_15;
      }

      sub_1DD5796C0(v11 + 1);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    sub_1DD640E28();
    sub_1DD63D078();
    sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530]);
    sub_1DD63FCF8();
    v29 = *(v30 + 36);
    sub_1DD63FCF8();
    v15 = sub_1DD640E78();
    v16 = -1 << *(v13 + 32);
    a2 = v15 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v18 = *(v7 + 72);
      do
      {
        sub_1DD4A0930(*(v13 + 48) + v18 * a2, v10);
        sub_1DD57AFAC(&qword_1EE166050, MEMORY[0x1E6969530]);
        if (sub_1DD63FD98())
        {
          v19 = &v10[*(v30 + 36)];
          v20 = sub_1DD63FD98();
          sub_1DD3ADFD0(v10, &qword_1ECCDD4F0, &unk_1DD651E10);
          if (v20)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1DD3ADFD0(v10, &qword_1ECCDD4F0, &unk_1DD651E10);
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_15:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1DD4A09A0(a1, *(v21 + 48) + *(v27 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_18:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_1DD575384(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      OUTLINED_FUNCTION_87_2(v8);
      sub_1DD572424();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      OUTLINED_FUNCTION_87_2(v8);
      sub_1DD57A208();
LABEL_10:
      v14 = *v5;
      v15 = *(*v5 + 40);
      sub_1DD640E28();
      MEMORY[0x1E12B3140](v7);
      result = sub_1DD640E78();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v14 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v14 + 48) + a2) == v7)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD577438(a4, a5);
  }

LABEL_7:
  v10 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + a2) = v7;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v13;
  }

  return result;
}

uint64_t sub_1DD5754BC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD571B4C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD5799E8(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = MEMORY[0x1E12B3110](*(*v3 + 40), v5, 4);
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD5770F0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DD5755C4(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1DD63D0F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD571D74(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1DD579BD8(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1DD57AFAC(&qword_1EE163810, MEMORY[0x1E69695A8]);
      v16 = sub_1DD63FCE8();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&qword_1ECCDBF70, MEMORY[0x1E69695A8]);
        v18 = sub_1DD63FD98();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1DD575874(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1DD63F8B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD5720CC(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1DD579EF0(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1DD57AFAC(&qword_1EE160338, MEMORY[0x1E69D27B0]);
      v16 = sub_1DD63FCE8();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD57AFAC(&qword_1ECCDD278, MEMORY[0x1E69D27B0]);
        v18 = sub_1DD63FD98();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1DD577230();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1DD575B24(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD57258C(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DD57753C();
        goto LABEL_22;
      }

      sub_1DD57A348(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1DD640E28();
    sub_1DD416068(v25, v5);
    result = sub_1DD640E78();
    v10 = v8 + 56;
    v11 = -1 << *(v8 + 32);
    a2 = result & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = *(v5 + 16);
      v14 = *(v8 + 48);
      do
      {
        v15 = *(v14 + 8 * a2);
        if (*(v15 + 16) == v13)
        {
          if (!v13 || v15 == v5)
          {
            goto LABEL_25;
          }

          v16 = (v15 + 40);
          v17 = (v5 + 40);
          v18 = v13;
          while (1)
          {
            if (*(v16 - 1) != *(v17 - 1) || *v16 != *v17)
            {
              result = sub_1DD640CD8();
              if ((result & 1) == 0)
              {
                break;
              }
            }

            v16 += 2;
            v17 += 2;
            if (!--v18)
            {
              goto LABEL_25;
            }
          }
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = v5;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

uint64_t sub_1DD575CE8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    sub_1DD57282C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1DD57768C();
      goto LABEL_49;
    }

    sub_1DD57A5C4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DD640E28();
  sub_1DD60ACB0();
  result = sub_1DD640E78();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = *(v8 + 48);
    do
    {
      v14 = v13 + 48 * a2;
      result = *v14;
      v15 = *(v14 + 8);
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (*(v14 + 40))
      {
        if (*(v14 + 40) != 1)
        {
          if (*(v5 + 40) != 2)
          {
            goto LABEL_45;
          }

          v26 = *(v5 + 16);
          v27 = *(v5 + 24);
          if (result != *v5 || v15 != *(v5 + 8))
          {
            result = sub_1DD640CD8();
            if ((result & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          if (v16 == v26 && v17 == v27)
          {
            goto LABEL_48;
          }

LABEL_44:
          result = sub_1DD640CD8();
          if (result)
          {
            goto LABEL_48;
          }

          goto LABEL_45;
        }

        if (*(v5 + 40) == 1)
        {
          v18 = *(v5 + 16);
          v19 = result == *v5 && v15 == *(v5 + 8);
          if (v19 || (result = sub_1DD640CD8(), (result & 1) != 0))
          {
            if (v16 == v18)
            {
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
        if (*(v5 + 40))
        {
          goto LABEL_45;
        }

        v20 = *(v14 + 32);
        v22 = *(v5 + 16);
        v21 = *(v5 + 24);
        v23 = *(v5 + 32);
        if (result != *v5 || v15 != *(v5 + 8))
        {
          v36 = *(v14 + 32);
          result = sub_1DD640CD8();
          v20 = v36;
          if ((result & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        if (v16 != v22)
        {
          goto LABEL_45;
        }

        if (v20)
        {
          if (!v23)
          {
            goto LABEL_45;
          }

          if (v17 == v21 && v20 == v23)
          {
LABEL_48:
            result = sub_1DD640D48();
            __break(1u);
            break;
          }

          goto LABEL_44;
        }

        if (!v23)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      a2 = (a2 + 1) & v12;
    }

    while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_49:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = (*(v30 + 48) + 48 * a2);
  v32 = *(v5 + 16);
  *v31 = *v5;
  v31[1] = v32;
  *(v31 + 25) = *(v5 + 25);
  v33 = *(v30 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v35;
  }

  return result;
}

uint64_t sub_1DD575F6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1DD572B6C(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_1DD577800();
        goto LABEL_30;
      }

      sub_1DD57A914(v12 + 1);
    }

    v14 = *v6;
    v15 = *(*v6 + 40);
    sub_1DD640E28();
    sub_1DD63FD28();
    if (a4)
    {
      MEMORY[0x1E12B3140](1);
      sub_1DD63FD28();
    }

    else
    {
      MEMORY[0x1E12B3140](0);
    }

    result = sub_1DD640E78();
    v16 = -1 << *(v14 + 32);
    a5 = result & ~v16;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v17 = ~v16;
      do
      {
        v18 = (*(v14 + 48) + 32 * a5);
        v20 = v18[2];
        v19 = v18[3];
        v21 = *v18 == v11 && v18[1] == a2;
        if (v21 || (result = sub_1DD640CD8(), (result & 1) != 0))
        {
          if (v19)
          {
            if (a4)
            {
              if (v20 == a3 && v19 == a4)
              {
                goto LABEL_34;
              }

              result = sub_1DD640CD8();
              if (result)
              {
                goto LABEL_34;
              }
            }

            else
            {
            }
          }

          else
          {

            if (!a4)
            {
              goto LABEL_33;
            }
          }
        }

        a5 = (a5 + 1) & v17;
      }

      while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
    }
  }

LABEL_30:
  v23 = *v28;
  *(*v28 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v24 = (*(v23 + 48) + 32 * a5);
  *v24 = v11;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_33:

LABEL_34:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

uint64_t sub_1DD57618C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD572E14(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1DD57ABAC(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1DD640E28();
      sub_1DD538ED0(v5);
      sub_1DD63FD28();

      result = sub_1DD640E78();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v15 = sub_1DD538ED0(*(*(v12 + 48) + 2 * a2));
        v17 = v16;
        if (v15 == sub_1DD538ED0(v5) && v17 == v18)
        {
          goto LABEL_19;
        }

        v20 = sub_1DD640CD8();

        if (v20)
        {
          goto LABEL_20;
        }

        result = a2 + 1;
      }
    }

    result = sub_1DD577968();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 2 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_1DD640D48();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1DD57634C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD642F70;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1DD5763B0()
{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE400, &unk_1DD6575E0);
  v7 = OUTLINED_FUNCTION_78_2();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_18_32();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_38_15();
    while (v5)
    {
      OUTLINED_FUNCTION_90_0();
LABEL_15:
      v17 = v13 | (v3 << 6);
      v18 = (*(v1 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_14_3();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

void *sub_1DD576494()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD8, &qword_1DD65CEC0);
  v2 = *v0;
  v3 = sub_1DD640858();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1DD5765D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF028, &unk_1DD65CF10);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

void *sub_1DD576740()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFE8, &qword_1DD65CED0);
  v2 = *v0;
  v3 = sub_1DD640858();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1DD57AEA0(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 104 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x62uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x62uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1DD5768C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFF0, &qword_1DD65CED8);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;

        result = sub_1DD3EB41C(v19, v20);
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

void *sub_1DD576A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF88, &qword_1DD65CE70);
  v2 = *v0;
  v3 = sub_1DD640858();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1DD576B80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF90, &qword_1DD65CE78);
  v2 = *v0;
  v3 = sub_1DD640858();
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

id sub_1DD576CD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF98, &qword_1DD65CE80);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void sub_1DD576E3C(uint64_t *a1, uint64_t *a2)
{
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = OUTLINED_FUNCTION_78_2();
  if (*(v3 + 16))
  {
    v10 = OUTLINED_FUNCTION_18_32();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      memmove(v10, v4, 8 * v11);
    }

    OUTLINED_FUNCTION_38_15();
    while (v7)
    {
      OUTLINED_FUNCTION_90_0();
LABEL_15:
      *(*(v9 + 48) + 8 * (v15 | (v5 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v5 << 6)));
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + v5))
      {
        OUTLINED_FUNCTION_14_3();
        v7 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v8 = v9;
  }
}

void *sub_1DD576F08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF018, &qword_1DD65CF00);
  v7 = *v0;
  v8 = sub_1DD640858();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1DD4A0930(*(v7 + 48) + v22, v6);
        result = sub_1DD4A09A0(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_1DD5770F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD0, &qword_1DD65CEB8);
  v2 = *v0;
  v3 = sub_1DD640858();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1DD577230()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7(0);
  v9 = OUTLINED_FUNCTION_2_89(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v34 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v16 = *v0;
  v17 = sub_1DD640858();
  if (*(v16 + 16))
  {
    v35 = v6;
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_52_10();
    v21 = (v20 + 63) >> 6;
    if (v17 != v16 || v19 >= v16 + 56 + 8 * v21)
    {
      memmove(v19, (v16 + 56), 8 * v21);
    }

    v23 = 0;
    *(v17 + 16) = *(v16 + 16);
    v24 = *(v16 + 32);
    OUTLINED_FUNCTION_52_10();
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v16 + 56);
    v28 = (v25 + 63) >> 6;
    v36 = v11 + 32;
    v37 = v11 + 16;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v33 = *(v11 + 72) * (v29 | (v23 << 6));
      (*(v11 + 16))(v15, *(v16 + 48) + v33, v1);
      (*(v11 + 32))(*(v17 + 48) + v33, v15, v1);
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v28)
      {

        v6 = v35;
        goto LABEL_21;
      }

      ++v30;
      if (*(v16 + 56 + 8 * v23))
      {
        OUTLINED_FUNCTION_14_3();
        v27 = v32 & v31;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v17;
    OUTLINED_FUNCTION_17();
  }
}

void *sub_1DD577438(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = OUTLINED_FUNCTION_78_2();
  if (*(v3 + 16))
  {
    result = OUTLINED_FUNCTION_18_32();
    if (v10)
    {
      v11 = result >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = memmove(result, v4, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v3 + 16);
    v13 = 1 << *(v3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v3 + 56);
    for (i = (v13 + 63) >> 6; v15; *(*(v6 + 48) + v18) = *(*(v3 + 48) + v18))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_17:
      ;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {
        goto LABEL_19;
      }

      v20 = *(v4 + v12);
      ++v19;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v6;
  }

  return result;
}

void *sub_1DD57753C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA0, &qword_1DD65CE88);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1DD57768C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + 16 * v17;
        v25 = *(v18 + 40);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v25;
        result = sub_1DD57AE38(v19, v20, v21, v22, v23, v25);
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

void *sub_1DD577800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFC0, &qword_1DD65CEA8);
  v2 = *v0;
  v3 = sub_1DD640858();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

void *sub_1DD577968()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB8, &qword_1DD65CEA0);
  v2 = *v0;
  v3 = sub_1DD640858();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1DD577AA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE400, &unk_1DD6575E0);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1DD640E28();

        sub_1DD63FD28();
        result = sub_1DD640E78();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD577CDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD8, &qword_1DD65CEC0);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1DD640E28();
        MEMORY[0x1E12B3140](v16);
        result = sub_1DD640E78();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD577EF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF028, &unk_1DD65CF10);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v37 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v39 = (v11 - 1) & v11;
LABEL_14:
        v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = *(v6 + 40);
        sub_1DD640E28();

        v38 = v18;
        sub_1DD63FD28();
        MEMORY[0x1E12B3140](*(v20 + 16));
        v22 = *(v20 + 16);
        if (v22)
        {
          v23 = (v20 + 40);
          do
          {
            v24 = *(v23 - 1);
            v25 = *v23;

            sub_1DD63FD28();

            v23 += 2;
            --v22;
          }

          while (v22);
        }

        result = sub_1DD640E78();
        v6 = v37;
        v26 = -1 << *(v37 + 32);
        v27 = result & ~v26;
        v28 = v27 >> 6;
        if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v29 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        v3 = v36;
        *(v13 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v34 = (*(v37 + 48) + 24 * v29);
        v11 = v39;
        *v34 = v38;
        v34[1] = v19;
        v34[2] = v20;
        ++*(v37 + 16);
        if (!v39)
        {
          goto LABEL_9;
        }
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v13 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v35;
          goto LABEL_30;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v39 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD5781A8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DD63D2B8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF70, &qword_1DD65CE58);
  v10 = sub_1DD640868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1DD57AFAC(&qword_1EE1637E0, MEMORY[0x1E6969AD0]);
        result = sub_1DD63FCE8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DD5784C0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DD63C868();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE418, &qword_1DD657608);
  v10 = sub_1DD640868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1DD57AFAC(&qword_1ECCDC180, MEMORY[0x1E6968130]);
        result = sub_1DD63FCE8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DD5787D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFE8, &qword_1DD65CED0);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1DD57307C(__dst, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      memcpy(__dst, (*(v3 + 48) + 104 * (v12 | (v7 << 6))), 0x62uLL);
      sub_1DD57AEA0(__dst, &v15);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD578930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFF0, &qword_1DD65CED8);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = *(v6 + 40);
        sub_1DD640E28();

        sub_1DD3EB41C(v19, v20);
        sub_1DD57F364(v39, v18, v22, v23, v24, v25, v26, v27);
        if (v20 == 1)
        {
          sub_1DD640E48();
        }

        else
        {
          sub_1DD640E48();
          if (v20)
          {
            MEMORY[0x1E12B3140](1);
            sub_1DD63FD28();
          }

          else
          {
            MEMORY[0x1E12B3140](0);
          }
        }

        result = sub_1DD640E78();
        v28 = -1 << *(v6 + 32);
        v29 = result & ~v28;
        v30 = v29 >> 6;
        if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
        {
          break;
        }

        v31 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
        *(v13 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v36 = (*(v6 + 48) + 24 * v31);
        *v36 = v18;
        v36[1] = v19;
        v36[2] = v20;
        ++*(v6 + 16);
        v3 = v38;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v13 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v37;
          goto LABEL_32;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD578BCC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DD63D078();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA8, &qword_1DD65CE90);
  v10 = sub_1DD640868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530]);
        result = sub_1DD63FCE8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DD578EE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF88, &qword_1DD65CE70);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_1DD640E18();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD5790D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF90, &qword_1DD65CE78);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        sub_1DD640E28();
        sub_1DD63FD28();
        result = sub_1DD640E78();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD579304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF98, &qword_1DD65CE80);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_1DD6405A8();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_1DD579514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  a31 = v33;
  a32 = v36;
  v67 = v37;
  v38 = v32;
  v39 = *v32;
  if (*(*v32 + 24) > v40)
  {
    v41 = *(*v32 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  v42 = sub_1DD640868();
  if (*(v39 + 16))
  {
    v66 = v38;
    v43 = 0;
    v44 = *(v39 + 56);
    v45 = *(v39 + 32);
    OUTLINED_FUNCTION_65_6();
    v48 = v47 & v46;
    v50 = (v49 + 63) >> 6;
    v51 = v42 + 56;
    if ((v47 & v46) != 0)
    {
      while (1)
      {
        v52 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
LABEL_11:
        v56 = *(*(v39 + 48) + 8 * (v52 | (v43 << 6)));
        v57 = *(v42 + 40);
        sub_1DD640E28();

        v67(&a12);
        v58 = sub_1DD640E78();
        OUTLINED_FUNCTION_64_5(v58, *(v42 + 32));
        if (v59)
        {
          break;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_21:
        OUTLINED_FUNCTION_7_39();
        *(v51 + v63) |= v64;
        *(*(v42 + 48) + 8 * v65) = v56;
        ++*(v42 + 16);
        if (!v48)
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_4_3();
      while (1)
      {
        OUTLINED_FUNCTION_32_14();
        if (v59)
        {
          if (v61)
          {
            break;
          }
        }

        if (v60 == v62)
        {
          v60 = 0;
        }

        if (*(v51 + 8 * v60) != -1)
        {
          OUTLINED_FUNCTION_8_41();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v53 = v43;
      while (1)
      {
        v43 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v43 >= v50)
        {

          v38 = v66;
          goto LABEL_25;
        }

        ++v53;
        if (*(v39 + 56 + 8 * v43))
        {
          OUTLINED_FUNCTION_14_3();
          v48 = v55 & v54;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v38 = v42;
    OUTLINED_FUNCTION_54_8();
  }
}

uint64_t sub_1DD5796C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF018, &qword_1DD65CF00);
  result = sub_1DD640868();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v35 = v7;
    v11 = 0;
    v12 = v7 + 56;
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v21 = *(v7 + 48);
        v22 = *(v36 + 72);
        v23 = v38;
        sub_1DD4A0930(v21 + v22 * (v18 | (v11 << 6)), v38);
        v24 = *(v10 + 40);
        sub_1DD640E28();
        sub_1DD63D078();
        sub_1DD57AFAC(&qword_1EE163828, MEMORY[0x1E6969530]);
        sub_1DD63FCF8();
        v25 = v23 + *(v37 + 36);
        sub_1DD63FCF8();
        result = sub_1DD640E78();
        v26 = -1 << *(v10 + 32);
        v27 = result & ~v26;
        v28 = v27 >> 6;
        if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        result = sub_1DD4A09A0(v38, *(v10 + 48) + v29 * v22);
        ++*(v10 + 16);
        v7 = v35;
        if (!v15)
        {
          goto LABEL_9;
        }
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v19 = v11;
      while (1)
      {
        v11 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v11 >= v16)
        {

          v2 = v34;
          goto LABEL_27;
        }

        v20 = *(v12 + 8 * v11);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DD5799E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD0, &qword_1DD65CEB8);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 4 * (v13 | (v7 << 6)));
        result = MEMORY[0x1E12B3110](*(v6 + 40), v16, 4);
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v6 + 48) + 4 * v20) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD579BD8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DD63D0F8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB0, &qword_1DD65CE98);
  v10 = sub_1DD640868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1DD57AFAC(&qword_1EE163810, MEMORY[0x1E69695A8]);
        result = sub_1DD63FCE8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DD579EF0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DD63F8B8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF80, &qword_1DD65CE68);
  v10 = sub_1DD640868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1DD57AFAC(&qword_1EE160338, MEMORY[0x1E69D27B0]);
        result = sub_1DD63FCE8();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

void sub_1DD57A208()
{
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_32_17(v4, v5, v6);
  OUTLINED_FUNCTION_70_2();
  v7 = sub_1DD640868();
  if (*(v1 + 16))
  {
    v24 = v0;
    v8 = 0;
    v9 = *(v1 + 56);
    v10 = *(v1 + 32);
    OUTLINED_FUNCTION_48_15();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_88();
LABEL_9:
        v15 = *(*(v1 + 48) + (v11 | (v8 << 6)));
        v16 = *(v7 + 40);
        sub_1DD640E28();
        MEMORY[0x1E12B3140](v15);
        v17 = sub_1DD640E78();
        OUTLINED_FUNCTION_57_12(v17);
        if (v18)
        {
          break;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_19:
        OUTLINED_FUNCTION_7_39();
        OUTLINED_FUNCTION_86_2();
        *(v23 + v22) = v15;
        OUTLINED_FUNCTION_46_3();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_4_3();
      while (1)
      {
        OUTLINED_FUNCTION_32_14();
        if (v18)
        {
          if (v20)
          {
            break;
          }
        }

        if (v19 == v21)
        {
          v19 = 0;
        }

        if (*(v2 + 8 * v19) != -1)
        {
          OUTLINED_FUNCTION_8_41();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v12 = v8;
      while (1)
      {
        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v8 >= v3)
        {

          v0 = v24;
          goto LABEL_23;
        }

        ++v12;
        if (*(v1 + 56 + 8 * v8))
        {
          OUTLINED_FUNCTION_14_3();
          v0 = (v14 & v13);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v0 = v7;
    OUTLINED_FUNCTION_41_13();
  }
}

uint64_t sub_1DD57A348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFA0, &qword_1DD65CE88);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v33 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_1DD640E28();
        MEMORY[0x1E12B3140](*(v17 + 16));
        v19 = *(v17 + 16);
        if (v19)
        {

          v20 = (v17 + 40);
          do
          {
            v21 = *(v20 - 1);
            v22 = *v20;

            sub_1DD63FD28();

            v20 += 2;
            --v19;
          }

          while (v19);
        }

        else
        {
        }

        result = sub_1DD640E78();
        v6 = v33;
        v23 = -1 << *(v33 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(*(v33 + 48) + 8 * v26) = v17;
        ++*(v33 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_32;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v6;
  }

  return result;
}