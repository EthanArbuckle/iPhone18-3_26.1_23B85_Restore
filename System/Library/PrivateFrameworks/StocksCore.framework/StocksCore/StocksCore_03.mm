uint64_t sub_1DAA87740(uint64_t a1, uint64_t a2)
{
  sub_1DAA877A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAA877A4()
{
  if (!qword_1EE11FC18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC18);
    }
  }
}

uint64_t getEnumTagSinglePayload for TopStoriesStyleConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1DAA87898@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DACB94E4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DAA7EBD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DAA7EBD8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DACB94C4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DACB9424();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DACB9424();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DACB94E4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DAA7EBD8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DACB94E4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DAA7EBD8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DAA7EBD8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DACB9424();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA87C58(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  sub_1DAA886DC(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v97 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA8880C();
  v109 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v120 = &v94[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA887D8(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v115 = &v94[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v94[-v15];
  v16 = type metadata accessor for Quote();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v96 = &v94[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v100 = &v94[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v94[-v23];
  sub_1DAA888A0();
  v106 = v25;
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v105 = &v94[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v118 = &v94[-v29];
  v30 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 64);
  v34 = (v31 + 63) >> 6;
  v119 = v17 + 56;
  v108 = v17;
  v35 = (v17 + 48);
  v114 = a1;
  sub_1DACB71E4();
  v36 = 0;
  v99 = MEMORY[0x1E69E7CC8];
  v107 = v24;
  v111 = v34;
  v112 = a1 + 64;
  v103 = v16;
  v104 = v35;
  while (v33)
  {
    v37 = v24;
LABEL_10:
    v39 = __clz(__rbit64(v33)) | (v36 << 6);
    v40 = *(v114 + 56);
    v41 = (*(v114 + 48) + 16 * v39);
    v43 = *v41;
    v42 = v41[1];
    v44 = v108;
    v113 = *(v108 + 72);
    v45 = v106;
    v46 = v118;
    sub_1DAA88924(v40 + v113 * v39, &v118[*(v106 + 48)], type metadata accessor for Quote);
    *v46 = v43;
    v46[1] = v42;
    v47 = v105;
    sub_1DAA88924(v46, v105, sub_1DAA888A0);
    v49 = *v47;
    v48 = v47[1];
    sub_1DAA7BD70(v47 + *(v45 + 48), v37);
    v50 = v37;
    v51 = v116;
    sub_1DAA88924(v50, v116, type metadata accessor for Quote);
    v52 = *(v44 + 56);
    v53 = v103;
    v52(v51, 0, 1, v103);
    v54 = v110;
    v55 = *(v110 + 16);
    v117 = v48;
    v102 = v49;
    if (v55)
    {
      sub_1DACB71E4();
      v56 = sub_1DAA4BF3C(v49, v48);
      v58 = v115;
      if (v57)
      {
        sub_1DAA88924(*(v54 + 56) + v56 * v113, v115, type metadata accessor for Quote);
        v59 = v58;
        v60 = 0;
      }

      else
      {
        v59 = v115;
        v60 = 1;
      }

      v52(v59, v60, 1, v53);
    }

    else
    {
      v61 = v115;
      v52(v115, 1, 1, v53);
      v58 = v61;
      sub_1DACB71E4();
    }

    v33 &= v33 - 1;
    v62 = *(v109 + 48);
    v63 = v120;
    sub_1DAA88924(v51, v120, sub_1DAA887D8);
    sub_1DAA88924(v58, &v63[v62], sub_1DAA887D8);
    v64 = *v104;
    if ((*v104)(v63, 1, v53) == 1)
    {
      sub_1DAA88D78(v58, sub_1DAA887D8);
      sub_1DAA88D78(v51, sub_1DAA887D8);
      v65 = v64(&v63[v62], 1, v53);
      v24 = v107;
      if (v65 == 1)
      {
        sub_1DAA88D78(v120, sub_1DAA887D8);
        v34 = v111;
        v30 = v112;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v66 = v101;
      sub_1DAA88924(v63, v101, sub_1DAA887D8);
      if (v64(&v63[v62], 1, v53) != 1)
      {
        v67 = v120;
        v68 = v100;
        sub_1DAA7BD70(&v120[v62], v100);
        v69 = v66;
        v70 = sub_1DAA8EED0(v66, v68);
        sub_1DAA88D78(v68, type metadata accessor for Quote);
        sub_1DAA88D78(v115, sub_1DAA887D8);
        sub_1DAA88D78(v116, sub_1DAA887D8);
        sub_1DAA88D78(v69, type metadata accessor for Quote);
        sub_1DAA88D78(v67, sub_1DAA887D8);
        v24 = v107;
        v34 = v111;
        v30 = v112;
        if (v70)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      sub_1DAA88D78(v58, sub_1DAA887D8);
      sub_1DAA88D78(v116, sub_1DAA887D8);
      sub_1DAA88D78(v66, type metadata accessor for Quote);
      v24 = v107;
    }

    sub_1DAA88D78(v120, sub_1DAA8880C);
    v34 = v111;
    v30 = v112;
LABEL_25:
    sub_1DAA88924(v24, v96, type metadata accessor for Quote);
    v71 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v71;
    v72 = v102;
    v74 = sub_1DAA4BF3C(v102, v117);
    v75 = v71[2];
    v76 = (v73 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    if (v71[3] >= v77)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v73 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        LODWORD(v99) = v73;
        sub_1DAA89048();
        if ((v99 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_32:

      v99 = v121;
      sub_1DAAFBCE8(v96, v121[7] + v74 * v113);
LABEL_22:
      sub_1DAA88D78(v24, type metadata accessor for Quote);
      sub_1DAA88D78(v118, sub_1DAA888A0);
    }

    else
    {
      LODWORD(v99) = v73;
      sub_1DAA7C010(v77, isUniquelyReferenced_nonNull_native);
      v78 = sub_1DAA4BF3C(v72, v117);
      if ((v99 & 1) != (v79 & 1))
      {
        goto LABEL_42;
      }

      v74 = v78;
      if (v99)
      {
        goto LABEL_32;
      }

LABEL_34:
      v80 = v121;
      v121[(v74 >> 6) + 8] |= 1 << v74;
      v81 = (v80[6] + 16 * v74);
      v82 = v117;
      *v81 = v72;
      v81[1] = v82;
      sub_1DAA7BD70(v96, v80[7] + v74 * v113);
      sub_1DAA88D78(v24, type metadata accessor for Quote);
      sub_1DAA88D78(v118, sub_1DAA888A0);
      v83 = v80[2];
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        goto LABEL_41;
      }

      v99 = v80;
      v80[2] = v85;
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v38 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v38);
    ++v36;
    if (v33)
    {
      v37 = v24;
      v36 = v38;
      goto LABEL_10;
    }
  }

  v86 = v99;
  if (!v99[2])
  {
  }

  v87 = sub_1DACB97B4();
  v88 = v97;
  (*(*(v87 - 8) + 56))(v97, 1, 1, v87);
  sub_1DACB9794();
  v89 = v98;
  sub_1DACB71F4();
  v90 = sub_1DACB9784();
  v91 = swift_allocObject();
  v92 = MEMORY[0x1E69E85E0];
  v91[2] = v90;
  v91[3] = v92;
  v91[4] = v89;
  v91[5] = v86;
  sub_1DAAFA828(0, 0, v88, &unk_1DACC4938, v91);
}

void sub_1DAA88668()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA5EDC0(0, &qword_1ECBE6D18, sub_1DAAFB6A0, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAA88730(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174() & 1;
  }
}

uint64_t sub_1DAA88788(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1DAA8880C()
{
  if (!qword_1EE120248)
  {
    sub_1DAA887D8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE120248);
    }
  }
}

void sub_1DAA888A0()
{
  if (!qword_1EE11FC00)
  {
    type metadata accessor for Quote();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC00);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAA88924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA8898C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA889F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA88A54(uint64_t *a1, __int128 *a2)
{
  v3 = a2[7];
  v24 = a2[6];
  v25 = v3;
  v26 = a2[8];
  v27 = *(a2 + 18);
  v4 = a2[3];
  v20 = a2[2];
  v21 = v4;
  v5 = a2[5];
  v22 = a2[4];
  v23 = v5;
  v6 = a2[1];
  v18 = *a2;
  v19 = v6;
  v7 = v18;
  sub_1DAA87740(&v18, v15);

  v34 = v25;
  v35 = v26;
  v36 = v27;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  result = get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v28);
  if (result != 1)
  {
    v16[6] = v34;
    v16[7] = v35;
    v17 = v36;
    v16[2] = v30;
    v16[3] = v31;
    v16[4] = v32;
    v16[5] = v33;
    v16[0] = v28;
    v16[1] = v29;
    sub_1DAA87740(&v18, v15);
    sub_1DAA88870(&v19);
    sub_1DAA7E934(v7, *(&v7 + 1), &v13);
    v9 = v14;
    if (v14)
    {
      v10 = v13;
      sub_1DACB71E4();
      sub_1DAA88788(v10, v9);
      v11 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15[0] = *a1;
      sub_1DAA88E98(v16, v10, v9, isUniquelyReferenced_nonNull_native);

      *a1 = v15[0];
    }

    else
    {
      return sub_1DAA88870(&v19);
    }
  }

  return result;
}

uint64_t sub_1DAA88C00(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  sub_1DAA492B4();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[13];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_1DACB7CC4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[22];
    goto LABEL_11;
  }

  v15 = sub_1DACB7F54();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[24];

  return v16(v17, a2, v15);
}

uint64_t sub_1DAA88D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA88DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA88E38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA88E98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAA4BF3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DAA80804(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DAA4BF3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DAB656FC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 136 * v11;

    return sub_1DACA6C64(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 136 * v11;
  *v26 = *a1;
  v27 = *(a1 + 16);
  v28 = *(a1 + 32);
  v29 = *(a1 + 64);
  *(v26 + 48) = *(a1 + 48);
  *(v26 + 64) = v29;
  *(v26 + 16) = v27;
  *(v26 + 32) = v28;
  v30 = *(a1 + 80);
  v31 = *(a1 + 96);
  v32 = *(a1 + 112);
  *(v26 + 128) = *(a1 + 128);
  *(v26 + 96) = v31;
  *(v26 + 112) = v32;
  *(v26 + 80) = v30;
  v33 = v22[2];
  v15 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v34;

  return sub_1DACB71E4();
}

void *sub_1DAA89048()
{
  v1 = v0;
  v2 = type metadata accessor for Quote();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C3AC(0, &unk_1EE11F6E0, type metadata accessor for Quote, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1DACB9E74();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DAB697A0(*(v5 + 56) + v27, v31, type metadata accessor for Quote);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DAA7C55C(v26, *(v28 + 56) + v27, type metadata accessor for Quote);
        result = sub_1DACB71E4();
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1DAA892C4(void *a1)
{
  v3 = v1;
  sub_1DAA86CA8(0, &qword_1EE11F558, sub_1DAA895A0, &type metadata for Chart.Entry.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA895A0();
  sub_1DACBA304();
  v35 = 0;
  sub_1DACB7CC4();
  sub_1DAA804AC(&qword_1EE125288, MEMORY[0x1E6969530]);
  sub_1DACBA0E4();
  if (!v2)
  {
    v12 = type metadata accessor for Chart.Entry(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = *(v13 + 8);
    v34 = 1;
    sub_1DACBA044();
    v16 = (v3 + v12[6]);
    v17 = *v16;
    v18 = *(v16 + 8);
    v33 = 2;
    sub_1DACBA044();
    v19 = (v3 + v12[7]);
    v20 = *v19;
    v21 = *(v19 + 8);
    v32 = 3;
    sub_1DACBA044();
    v22 = (v3 + v12[8]);
    v23 = *v22;
    v24 = *(v22 + 8);
    v31 = 4;
    sub_1DACBA044();
    v25 = (v3 + v12[9]);
    v26 = *v25;
    v27 = *(v25 + 8);
    v30 = 5;
    sub_1DACBA044();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DAA895A0()
{
  result = qword_1EE1204A8;
  if (!qword_1EE1204A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204A8);
  }

  return result;
}

unint64_t sub_1DAA895F8()
{
  result = qword_1EE120498;
  if (!qword_1EE120498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120498);
  }

  return result;
}

unint64_t sub_1DAA89650()
{
  result = qword_1EE1204A0;
  if (!qword_1EE1204A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204A0);
  }

  return result;
}

uint64_t sub_1DAA896A4()
{
  v1 = *v0;
  v2 = 0x636E657265666572;
  v3 = 1751607656;
  v4 = 7827308;
  if (v1 != 4)
  {
    v4 = 0x656D756C6F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1852141679;
  if (v1 != 1)
  {
    v5 = 0x65736F6C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAA8974C()
{
  v1 = *v0;
  v2 = 0x73656972746E65;
  v3 = 0x695474656B72616DLL;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x7365727574616566;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E615265746164;
  if (v1 != 1)
  {
    v5 = 0x73756F6976657270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAA89828(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49610();
    sub_1DAA804AC(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA898B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA495C0(255, &qword_1EE11FAD8, &type metadata for Chart.Feature, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAA89948()
{
  result = qword_1EE1203D0[0];
  if (!qword_1EE1203D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1203D0);
  }

  return result;
}

unint64_t sub_1DAA899EC()
{
  result = qword_1EE1203C8;
  if (!qword_1EE1203C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1203C8);
  }

  return result;
}

uint64_t sub_1DAA89A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA89AC0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAA49A38(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA89B2C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAB77B14(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA89B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA89C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA89C68(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAA530C8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA89CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA89D34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAB77B14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA89D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA89DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA89E50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAC4E5A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA89EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC6B1F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA89F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  LODWORD(v91) = a5;
  v90 = type metadata accessor for WidgetQuote();
  v13 = *(*(v90 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v90);
  v87 = (v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v86 = (v77 - v16);
  v89 = type metadata accessor for Quote();
  v92 = *(v89 - 8);
  v17 = *(v92 + 64);
  v18 = MEMORY[0x1EEE9AC00](v89);
  v88 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v93 = v77 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v94 = v77 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v77 - v24;
  sub_1DAA8A968(0, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = (v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v32 = (v77 - v31);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v33 = a1;
  if (sub_1DAA92AFC(a3, a1))
  {
    result = sub_1DAA8FFC4(a4, a2);
    if ((result & 1) != 0 && (v91 & 1) == 0)
    {
LABEL_35:
      *a7 = v33;
      a7[1] = a2;
      return result;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v97[0] = a1;
    v97[1] = a2;
    sub_1DAA8B75C(v97);
  }

  if (*(a3 + 16) != *(a1 + 16))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v95 = a1;
      v96 = a2;
      sub_1DAA8AA28(&v95);
    }

    goto LABEL_35;
  }

  v77[1] = a6;
  v78 = a7;
  v79 = a2;
  v35 = *(a3 + 64);
  v81 = a3 + 64;
  v36 = 1 << *(a3 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v80 = (v36 + 63) >> 6;
  v85 = a3;
  result = sub_1DACB71E4();
  v39 = 0;
  v82 = a1;
  v83 = v32;
  v40 = a1;
  v84 = v30;
  if (v38)
  {
    while (1)
    {
      v41 = v39;
LABEL_18:
      v44 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v45 = v44 | (v41 << 6);
      v46 = (*(v85 + 48) + 16 * v45);
      v48 = *v46;
      v47 = v46[1];
      sub_1DAA8898C(*(v85 + 56) + *(v92 + 72) * v45, v25, type metadata accessor for Quote);
      sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
      v50 = v49;
      v51 = *(v49 + 48);
      *v30 = v48;
      v30[1] = v47;
      sub_1DAA92FD0(v25, v30 + v51, type metadata accessor for Quote);
      (*(*(v50 - 8) + 56))(v30, 0, 1, v50);
      sub_1DACB71E4();
      v43 = v41;
      v40 = v82;
LABEL_19:
      sub_1DAA93038(v30, v32, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
      sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
      if ((*(*(v50 - 8) + 48))(v32, 1, v50) == 1)
      {
        v33 = v40;

        goto LABEL_33;
      }

      v53 = *v32;
      v52 = v32[1];
      sub_1DAA92FD0(v32 + *(v50 + 48), v94, type metadata accessor for Quote);
      if (!*(v40 + 16))
      {
        break;
      }

      v91 = v43;
      v54 = sub_1DAA4BF3C(v53, v52);
      v56 = v55;

      v57 = v94;
      if ((v56 & 1) == 0)
      {
        goto LABEL_30;
      }

      v58 = *(v40 + 56) + *(v92 + 72) * v54;
      v59 = v88;
      sub_1DAA8898C(v58, v88, type metadata accessor for Quote);
      v60 = v59;
      v61 = v93;
      sub_1DAA92FD0(v60, v93, type metadata accessor for Quote);
      sub_1DAA8898C(v61, v25, type metadata accessor for Quote);
      v62 = v25[8];
      v63 = v86;
      *v86 = *v25;
      *(v63 + 8) = v62;
      v64 = v25[24];
      *(v63 + 16) = *(v25 + 2);
      *(v63 + 24) = v64;
      v65 = v25[40];
      *(v63 + 32) = *(v25 + 4);
      *(v63 + 40) = v65;
      v66 = *(v25 + 15);
      *(v63 + 48) = *(v25 + 14);
      *(v63 + 56) = v66;
      *(v63 + 64) = v25[128];
      v68 = v89;
      v67 = v90;
      sub_1DAA77630(&v25[*(v89 + 60)], v63 + *(v90 + 36));
      sub_1DACB71E4();
      sub_1DAA4D03C(v25, type metadata accessor for Quote);
      sub_1DAA8898C(v57, v25, type metadata accessor for Quote);
      v69 = v25[8];
      v70 = v87;
      *v87 = *v25;
      *(v70 + 8) = v69;
      v71 = v25[24];
      *(v70 + 16) = *(v25 + 2);
      *(v70 + 24) = v71;
      v72 = v25[40];
      *(v70 + 32) = *(v25 + 4);
      *(v70 + 40) = v72;
      v73 = *(v25 + 15);
      *(v70 + 48) = *(v25 + 14);
      *(v70 + 56) = v73;
      *(v70 + 64) = v25[128];
      sub_1DAA77630(&v25[*(v68 + 60)], v70 + *(v67 + 36));
      sub_1DACB71E4();
      sub_1DAA4D03C(v25, type metadata accessor for Quote);
      LOBYTE(v73) = _s10StocksCore11WidgetQuoteV2eeoiySbAC_ACtFZ_0(v63, v70);
      v74 = v70;
      v32 = v83;
      sub_1DAA4D03C(v74, type metadata accessor for WidgetQuote);
      v75 = v63;
      v30 = v84;
      sub_1DAA4D03C(v75, type metadata accessor for WidgetQuote);
      sub_1DAA4D03C(v93, type metadata accessor for Quote);
      if ((v73 & 1) == 0)
      {
        goto LABEL_30;
      }

      result = sub_1DAA4D03C(v57, type metadata accessor for Quote);
      v39 = v91;
      if (!v38)
      {
        goto LABEL_11;
      }
    }

LABEL_30:
    v33 = v40;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      a2 = v79;
      v95 = v40;
      v96 = v79;
      sub_1DAA8AA28(&v95);

      result = sub_1DAA4D03C(v94, type metadata accessor for Quote);
      goto LABEL_34;
    }

    result = sub_1DAA4D03C(v94, type metadata accessor for Quote);
LABEL_33:
    a2 = v79;
LABEL_34:
    a7 = v78;
    goto LABEL_35;
  }

LABEL_11:
  if (v80 <= v39 + 1)
  {
    v42 = v39 + 1;
  }

  else
  {
    v42 = v80;
  }

  v43 = v42 - 1;
  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v80)
    {
      sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
      v50 = v76;
      (*(*(v76 - 8) + 56))(v30, 1, 1, v76);
      v38 = 0;
      goto LABEL_19;
    }

    v38 = *(v81 + 8 * v41);
    ++v39;
    if (v38)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WidgetQuote()
{
  result = qword_1EE123738;
  if (!qword_1EE123738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA8A7E0()
{
  sub_1DAA49218(319, &qword_1EE11F998);
  if (v0 <= 0x3F)
  {
    sub_1DAA49218(319, &qword_1EE123FD0);
    if (v1 <= 0x3F)
    {
      sub_1DAA492B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DAA8A8AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA888A0();
  v5 = *(v4 + 48);
  v7 = *a1;
  v8 = a1[1];
  sub_1DACB9DD4();
  MEMORY[0x1E1276F20](8250, 0xE200000000000000);
  type metadata accessor for Quote();
  result = sub_1DACB9DD4();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

void sub_1DAA8A968(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1DAA8A9C0(255, a3, a4);
    v5 = sub_1DACB9AF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAA8A9C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAA8AA28(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DACB8FB4();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DACB9004();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = *(v2 + 152);
  sub_1DACB8144();
  swift_beginAccess();
  v15 = *(v2 + 144);
  sub_1DACB71E4();
  sub_1DACB8154();
  sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v16 = sub_1DACB9954();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v15;
  v18[4] = v13;
  v18[5] = v12;
  aBlock[4] = sub_1DAA94D18;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_21;
  v19 = _Block_copy(aBlock);
  sub_1DACB71E4();
  sub_1DACB71E4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA8AD7C(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  sub_1DAA57250(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v11, v7, v19);
  _Block_release(v19);

  (*(v23 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v22);
}

uint64_t sub_1DAA8AD7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA8ADC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v41);
  v4 = sub_1DAA6CBB4(v41);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_1DAA44440(0, &unk_1EE1258D8);
    result = sub_1DACB8254();
    v7 = v42;
    if (v42)
    {
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v14 = type metadata accessor for SDSBaseOperationFactory();
      v39 = v14;
      v40 = &off_1F5690858;
      v38[0] = v13;
      v15 = type metadata accessor for SDSSearchService();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v38, v14);
      v18 = *(*(v14 - 8) + 64);
      MEMORY[0x1EEE9AC00](v17);
      v20 = (v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v16[5] = v14;
      v16[6] = &off_1F5690858;
      v16[2] = v22;
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v23 = &off_1F5692638;
LABEL_6:
      a2[3] = v15;
      a2[4] = v23;
      *a2 = v16;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1DAA44440(0, &qword_1EE1257E0);
    result = sub_1DACB8254();
    v24 = v42;
    if (v42)
    {
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v26 = *(*(v24 - 8) + 64);
      MEMORY[0x1EEE9AC00](v25);
      v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v31 = type metadata accessor for YahooBaseOperationFactory();
      v39 = v31;
      v40 = &off_1F56825C8;
      v38[0] = v30;
      v15 = type metadata accessor for YahooSearchService();
      v16 = swift_allocObject();
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v38, v31);
      v33 = *(*(v31 - 8) + 64);
      MEMORY[0x1EEE9AC00](v32);
      v35 = (v38 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v36 + 16))(v35);
      v37 = *v35;
      v16[5] = v31;
      v16[6] = &off_1F56825C8;
      v16[2] = v37;
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v23 = &off_1F56857A0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA8B1E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44304(0, &qword_1EE125578, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B80]);
  result = sub_1DACB8224();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BB8);
  result = sub_1DACB8254();
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F20);
  result = sub_1DACB8254();
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v13)
  {
    v10 = type metadata accessor for SDSBaseOperationFactory();
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    sub_1DAA4D460(&v16, v11 + 24);
    sub_1DAA4D460(&v14, v11 + 64);
    result = sub_1DAA4D460(&v12, v11 + 104);
    a2[3] = v10;
    a2[4] = &off_1F5690858;
    *a2 = v11;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DAA8B3E8(void *a1)
{
  v2 = type metadata accessor for AppConfiguration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v18)
  {
    sub_1DAA4D460(&v17, v19);
    v8 = v20;
    v9 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v9 + 8))(v8, v9);
    v10 = [objc_opt_self() mainBundle];
    v11 = [v10 bundleIdentifier];

    if (v11)
    {
      v12 = sub_1DACB9324();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    sub_1DAA8B654(v12, v14, &v17);

    sub_1DAA640AC(v5);
    if (*(&v17 + 1))
    {
      sub_1DAB326A8(v17, *(&v17 + 1));
    }

    v15 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    swift_getKeyPath();
    (*(v15 + 56))();

    sub_1DACB7AB4();
    v16 = sub_1DACB8BC4();

    __swift_destroy_boxed_opaque_existential_1(v19);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA8B654@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
    v6 = result;
    v7 = *(v3 + 1192);
    v8 = (v7 + 64);
    v9 = *(v7 + 16) + 1;
    while (1)
    {
      if (!--v9)
      {
        goto LABEL_10;
      }

      v11 = *(v8 - 4);
      v10 = *(v8 - 3);
      v12 = *(v8 - 16);
      v14 = *(v8 - 1);
      v13 = *v8;
      if (v11 == v6 && v10 == v5)
      {
        break;
      }

      v8 += 5;
      result = sub_1DACBA174();
      if (result)
      {
        v5 = v10;
LABEL_12:
        *a3 = v11;
        a3[1] = v5;
        a3[2] = v12;
        a3[3] = v14;
        a3[4] = v13;
        sub_1DACB71E4();

        return sub_1DACB71E4();
      }
    }

    v11 = v6;
    goto LABEL_12;
  }

LABEL_10:
  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_1DAA8B75C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DACB8FB4();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DACB9004();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  v14 = *(v2 + 152);
  sub_1DACB8144();
  swift_beginAccess();
  v15 = *(v2 + 136);
  sub_1DACB71E4();
  sub_1DACB8154();
  sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v16 = sub_1DACB9954();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v15;
  v18[4] = v13;
  v18[5] = v12;
  aBlock[4] = sub_1DAA94B0C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_24_1;
  v19 = _Block_copy(aBlock);
  sub_1DACB71E4();
  sub_1DACB71E4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA8AD7C(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  sub_1DAA57250(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v11, v7, v19);
  _Block_release(v19);

  (*(v23 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v22);
}

uint64_t sub_1DAA8BAD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  sub_1DACB8BE4();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = v12;
  *(v14 + 4) = a3;
  (*(v9 + 32))(&v14[v13], &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *&v14[(v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;
  sub_1DACB71F4();
  return sub_1DACB8BF4();
}

uint64_t sub_1DAA8BC7C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DAA8BD10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BA8);
  sub_1DACB8254();
  if (v14)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v6 = sub_1DACB8224();
    if (v6)
    {
      v7 = v6;
      v11 = &type metadata for Clock;
      v12 = &off_1F5687E08;
      v8 = type metadata accessor for SDSAuthTokenManager();
      swift_allocObject();
      result = sub_1DAA8C514(v13, v7, v10);
      a2[3] = v8;
      a2[4] = &off_1F568E368;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DAA8BE98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA44304(0, &qword_1EE1255B8, MEMORY[0x1E69D6498], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44304(0, &qword_1EE125578, MEMORY[0x1E6968FB0], MEMORY[0x1E69D6B80]);
  result = sub_1DACB8224();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = result;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1DACB8204();
  sub_1DACB8254();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v7, 1, v12);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F20);
  result = sub_1DACB8254();
  if (v21)
  {
    v15 = type metadata accessor for SDSAuthTokenService(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    *(v18 + 16) = v10;
    (*(v13 + 32))(v18 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkProxy, v7, v12);
    result = sub_1DAA4D460(&v20, v18 + OBJC_IVAR____TtC10StocksCore19SDSAuthTokenService_networkMonitor);
    a2[3] = v15;
    a2[4] = &off_1F5690FC8;
    *a2 = v18;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAA8C118@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6490];
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1DAA8C1B0()
{
  if (!qword_1EE124048)
  {
    type metadata accessor for NetworkEvent();
    v0 = sub_1DACB8F14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124048);
    }
  }
}

uint64_t type metadata accessor for NetworkEvent()
{
  result = qword_1EE125108;
  if (!qword_1EE125108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA8C264()
{
  sub_1DACB8754();
  if (v0 <= 0x3F)
  {
    sub_1DAA8C2EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DAA8C2EC()
{
  if (!qword_1EE11FF90)
  {
    sub_1DACB8754();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FF90);
    }
  }
}

uint64_t sub_1DAA8C358@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  sub_1DAA8C1B0();
  a1[3] = v4;
  a1[4] = sub_1DAA8C3C0();
  *a1 = v3;

  return sub_1DACB71F4();
}

unint64_t sub_1DAA8C3C0()
{
  result = qword_1EE11D288;
  if (!qword_1EE11D288)
  {
    sub_1DAA8C1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D288);
  }

  return result;
}

uint64_t sub_1DAA8C438()
{
  result = sub_1DACB8204();
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

uint64_t sub_1DAA8C514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v4 = v3;
  v24 = a1;
  v25 = a3;
  v5 = sub_1DACB81D4();
  v26 = *(v5 - 8);
  v6 = v26;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB86E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAA5CD00(&qword_1EE1255A8, MEMORY[0x1E69D67A0]);
  sub_1DAA5EE58(0);
  sub_1DAA5CD00(&qword_1EE125508, sub_1DAA5EE58);
  sub_1DACB9BB4();
  sub_1DAA8C8AC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v3 + 96) = sub_1DACB8354();
  v14 = v24;
  sub_1DAA4D678(v24, v3 + 16);
  v15 = v25;
  sub_1DAA4D678(v25, v3 + 56);
  sub_1DAA5FF54(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v16 = *(v6 + 72);
  v17 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v29 = v18;
  sub_1DAA5CD00(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  sub_1DAA5EFBC(0);
  sub_1DAA5CD00(&qword_1EE125530, sub_1DAA5EFBC);
  sub_1DACB9BB4();
  sub_1DAA5FF54(0, &qword_1EE1240D0, sub_1DAA8CC04, MEMORY[0x1E69D6A80]);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v14);
  *(v4 + 104) = v22;
  return v4;
}

void sub_1DAA8C8AC()
{
  if (!qword_1EE124110)
  {
    sub_1DAA6FE48();
    sub_1DAA8C974(255, &qword_1EE124010, MEMORY[0x1E69E5E28]);
    sub_1DAA5CD00(&qword_1EE1254D8, sub_1DAA6FE48);
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124110);
    }
  }
}

void sub_1DAA8C974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DACB7AB4();
    v7 = type metadata accessor for SDSAuthToken();
    v8 = sub_1DAA5CD00(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for SDSAuthToken()
{
  result = qword_1EE125060;
  if (!qword_1EE125060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA8CA74()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    result = sub_1DACB7AB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DAA8CB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SDSAuthTokenManager.StoreDescriptor;
    v8[1] = type metadata accessor for SDSAuthToken();
    v8[2] = sub_1DAA8CC24();
    v8[3] = sub_1DAA5CD00(&qword_1EE125070, type metadata accessor for SDSAuthToken);
    v8[4] = sub_1DAA5CD00(&qword_1EE125078, type metadata accessor for SDSAuthToken);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAA8CC24()
{
  result = qword_1EE124C98;
  if (!qword_1EE124C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124C98);
  }

  return result;
}

void sub_1DAA8CCD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  os_unfair_lock_lock((v5 + 80));
  sub_1DAA8CD3C((v5 + 88), a1, a2);

  os_unfair_lock_unlock((v5 + 80));
}

uint64_t sub_1DAA8CD3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_65;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v6)
      {
        v8 = sub_1DACB9E14();
      }

      else
      {
        v8 = *(v5 + 16);
      }

      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v7 = sub_1DACB9E14();
        goto LABEL_3;
      }

      v9 = *(v4 + 8 * v8 + 32);
      sub_1DACB71F4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v12 = __OFADD__(v8++, 1);
    if (v12)
    {
      goto LABEL_59;
    }
  }

  v13 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_72;
  }

  if (v6)
  {
    if (v13 != sub_1DACB9E14())
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v4 >> 62)
    {
      v14 = sub_1DACB9E14();
      if (v14 >= v8)
      {
LABEL_23:
        sub_1DAA8D0E4(v8, v14);
        v15 = type metadata accessor for QuoteManagerObserverProxy();
        ObjectType = swift_getObjectType();
        sub_1DAA8D3D8(a2, v15, ObjectType, a3);
        MEMORY[0x1E12770F0]();
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_1DACB96F4();
        }

LABEL_68:
        sub_1DACB9694();
        return sub_1DACB96F4();
      }
    }

    else
    {
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 >= v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v13 == *(v5 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:
  v5 = v8 + 5;
  while (2)
  {
    v17 = v5 - 4;
    v6 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v5 - 4, v4);
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v18 = *(v4 + 8 * v5);
      sub_1DACB71F4();
    }

    v19 = swift_unknownObjectWeakLoadStrong();

    if (!v19)
    {
      goto LABEL_49;
    }

    result = swift_unknownObjectRelease();
    if (v17 == v8)
    {
      goto LABEL_48;
    }

    if (v6)
    {
      v20 = MEMORY[0x1E12777A0](v8, v4);
      v21 = MEMORY[0x1E12777A0](v5 - 4, v4);
      goto LABEL_38;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v22)
      {
        goto LABEL_70;
      }

      if (v17 >= v22)
      {
        goto LABEL_71;
      }

      v20 = *(v4 + 8 * v8 + 32);
      v21 = *(v4 + 8 * v5);
      sub_1DACB71F4();
      sub_1DACB71F4();
LABEL_38:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1DACA83E4(v4);
        v23 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v23) = 0;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v21;

      if ((v4 & 0x8000000000000000) != 0 || v23)
      {
        v4 = sub_1DACA83E4(v4);
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v17 & 0x8000000000000000) != 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v17 >= *(v6 + 16))
      {
        goto LABEL_64;
      }

      v25 = *(v6 + 8 * v5);
      *(v6 + 8 * v5) = v20;

      *a1 = v4;
LABEL_48:
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_63;
      }

LABEL_49:
      v6 = v5 - 3;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_62;
      }

      if (v4 >> 62)
      {
        v26 = sub_1DACB9E14();
      }

      else
      {
        v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v6 == v26)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1DAA8D110(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1DACB9E14();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_1DACB9E14();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_1DAA8D2B0(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1DAA8D1F4(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1DACB9E14();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1DACB9CD4();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DAA8D2B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1DACB9E14();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1DACB9E14();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA8D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t WatchlistEntity.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v25 = sub_1DACB78E4();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7E44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB92E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DACB7904();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = a1[1];
  v24 = *a1;
  v15 = a1[2];
  v14 = a1[3];
  v16 = a1[4];
  HIDWORD(v23) = *(a1 + 20);
  sub_1DAA8D89C(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v6, *MEMORY[0x1E6968DF0], v25);
  sub_1DACB7914();
  v17 = sub_1DACB6F34();
  v18 = v26;
  v26[1] = v16;
  v18[2] = v17;
  *v18 = v14;
  v29 = v24;
  v30 = v13;
  v31 = v15;
  v32 = v14;
  v33 = v16;
  v34 = WORD2(v23);
  sub_1DACB71E4();
  v19 = sub_1DAA6BA64();
  v21 = v20;

  v27 = v19;
  v28 = v21;
  return sub_1DACB6EE4();
}

uint64_t sub_1DAA8D708(uint64_t a1, uint64_t a2)
{
  v17 = *v2;
  off_1F5687178();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v5 = (*(a2 + 112))(&v7, a1, a2);

  return v5;
}

void sub_1DAA8D7CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB855C0(0, &qword_1ECBE80C0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E8300]);
  }
}

void sub_1DAA8D834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DAA8D89C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DAA8D904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DAA8D96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAA8D9E8()
{
  result = qword_1EE11FCF8;
  if (!qword_1EE11FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCF8);
  }

  return result;
}

uint64_t sub_1DAA8DA4C(__int128 *a1)
{
  v3 = *v1;
  v4 = a1[1];
  v11 = *a1;
  v12[0] = v4;
  *(v12 + 10) = *(a1 + 26);
  sub_1DACB8BB4();
  v5 = swift_allocObject();
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  *(v5 + 42) = *(a1 + 26);
  sub_1DAA8DB84(&v11, &v10);
  v7 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  v8 = sub_1DACB8A74();

  return v8;
}

unint64_t sub_1DAA8DBF8()
{
  result = qword_1EE122E78;
  if (!qword_1EE122E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E78);
  }

  return result;
}

unint64_t sub_1DAA8DC68()
{
  result = qword_1EE122E60;
  if (!qword_1EE122E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E60);
  }

  return result;
}

void sub_1DAA8DCBC(int a1, os_unfair_lock_t lock)
{
  v4 = lock + 12;
  v24 = *&lock->_os_unfair_lock_opaque;
  os_unfair_lock_lock(lock + 12);
  v5 = *&lock[14]._os_unfair_lock_opaque;
  v6 = sub_1DACB71E4();
  v7 = sub_1DAA6BD48(v6, &lock[14]);
  v28 = v2;

  os_unfair_lock_unlock(v4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 32;
    while (v9 < *(v7 + 16))
    {
      v11 = *(v7 + v10);
      v12 = *(v7 + v10 + 16);
      *&v27[10] = *(v7 + v10 + 26);
      v26 = v11;
      *v27 = v12;
      v13 = *&v27[16];
      if (*(&v12 + 1) == sub_1DACB9324() && v13 == v14)
      {
        sub_1DAA8DB84(&v26, v25);

LABEL_12:

        sub_1DACB8BB4();
        v21 = swift_allocObject();
        v22 = *v27;
        v21[1] = v26;
        v21[2] = v22;
        *(v21 + 42) = *&v27[10];
        sub_1DAA8DB84(&v26, v25);
        v23 = sub_1DACB89D4();
        sub_1DAA5A8BC(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
        sub_1DACB8A74();

        sub_1DAA934A8(&v26);
        return;
      }

      v16 = sub_1DACBA174();
      sub_1DAA8DB84(&v26, v25);

      if (v16)
      {
        goto LABEL_12;
      }

      ++v9;
      sub_1DAA934A8(&v26);
      v10 += 48;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    sub_1DAC990D4();
    swift_allocError();
    *v17 = 2;
    sub_1DAA763B0(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_1DACB8AD4();
  }
}

unint64_t sub_1DAA8DFC4()
{
  result = qword_1EE122E58;
  if (!qword_1EE122E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E58);
  }

  return result;
}

unint64_t sub_1DAA8E020()
{
  result = qword_1EE122E70;
  if (!qword_1EE122E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E70);
  }

  return result;
}

unint64_t sub_1DAA8E078()
{
  result = qword_1EE122E68;
  if (!qword_1EE122E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E68);
  }

  return result;
}

unint64_t sub_1DAA8E0D0()
{
  result = qword_1EE122E50;
  if (!qword_1EE122E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E50);
  }

  return result;
}

unint64_t sub_1DAA8E124()
{
  result = qword_1EE122E48;
  if (!qword_1EE122E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E48);
  }

  return result;
}

unint64_t sub_1DAA8E17C()
{
  result = qword_1EE122E40;
  if (!qword_1EE122E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122E40);
  }

  return result;
}

uint64_t sub_1DAA8E1D0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_1DACB71E4();
}

uint64_t WatchlistEntity.displayRepresentation.getter()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1DAA8E498(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  sub_1DAA8E498(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1DACB7904();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1DACB92C4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *(v0 + 16);
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  (*(v11 + 56))(v9, 1, 1, v10);
  v16 = sub_1DACB7164();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  return sub_1DACB7174();
}

void sub_1DAA8E498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA8E4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA8E560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAA8E5C8(uint64_t result, int a2, int a3)
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

uint64_t sub_1DAA8E608(uint64_t a1, int a2)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DAA8E69C(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 152);
  sub_1DACB8144();
  swift_beginAccess();
  v5 = *(v2 + 136);
  v17 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v6)
  {
    v16 = a2;
    a2 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](a2, v5);
        v8 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v10 = v17;
          a2 = v16;
          goto LABEL_17;
        }
      }

      else
      {
        if (a2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v7 = *(v5 + 8 * a2 + 32);
        sub_1DACB71F4();
        v8 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        v9 = *(v17 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++a2;
      if (v8 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v11 = *(v2 + 136);
  *(v2 + 136) = v10;

  type metadata accessor for StockPriceDataManagerObserverProxy();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v13 = swift_beginAccess();
  MEMORY[0x1E12770F0](v13);
  if (*((*(v2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  swift_endAccess();
  return sub_1DACB8154();
}

uint64_t sub_1DAA8E8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DACB8FB4();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DACB9004();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = *(a5 + 32);
  v18 = swift_allocObject();
  v18[2] = sub_1DAA7390C;
  v18[3] = v16;
  v18[4] = a5;
  aBlock[4] = sub_1DAA8E8E0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_8;
  v19 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v20);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v15, v11, v19);
  _Block_release(v19);
  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_4Tm_0(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[4];

  v5 = v1[6];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DAA8EC8C(uint64_t a1)
{
  v3 = type metadata accessor for AppConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1DACB81B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v1[15];
  v13 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v12);
  (*(v13 + 8))(v12, v13);
  v14 = *(v6 + 25);
  sub_1DAA4D03C(v6, type metadata accessor for AppConfiguration);
  *v11 = v14;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D63D8], v7);
  v25 = v1;
  v21 = &v25;
  v22 = a1;
  v23 = v11;
  v24 = v11;
  sub_1DAA8EE80();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DACB8B44();
  (*(v8 + 8))(v11, v7);
  return v18;
}

void sub_1DAA8EE80()
{
  if (!qword_1EE11D428)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D428);
    }
  }
}

uint64_t sub_1DAA8EED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7CC4();
  v119 = *(v4 - 8);
  v5 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v118 = &v105[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA492B4();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v105[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v116 = &v105[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v117 = &v105[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v105[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v105[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v105[-v21];
  sub_1DAA8FF60();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v105[-v28];
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v105[-v31];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v105[-v34];
  v36 = MEMORY[0x1EEE9AC00](v33);
  v40 = &v105[-v39];
  v41 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_72;
    }
  }

  v42 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v42 = 1;
    }

    if (v42)
    {
      goto LABEL_72;
    }
  }

  v43 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v43 = 1;
    }

    if (v43)
    {
      goto LABEL_72;
    }
  }

  v44 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_72;
    }
  }

  v45 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_72;
    }
  }

  v46 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v46 = 1;
    }

    if (v46)
    {
      goto LABEL_72;
    }
  }

  v47 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v47 = 1;
    }

    if (v47)
    {
      goto LABEL_72;
    }
  }

  v48 = *(a1 + 120);
  v49 = *(a2 + 120);
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_72;
    }

    v112 = v37;
    v113 = v38;
    v114 = v36;
    if ((*(a1 + 112) != *(a2 + 112) || v48 != v49) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v112 = v37;
    v113 = v38;
    v114 = v36;
    if (v49)
    {
      goto LABEL_72;
    }
  }

  if ((sub_1DAA95188(*(a1 + 128), *(a2 + 128)) & 1) == 0)
  {
    goto LABEL_72;
  }

  v50 = type metadata accessor for Quote();
  v51 = *(v114 + 48);
  v110 = *(v50 + 52);
  v111 = v51;
  v108 = v50;
  v109 = sub_1DAA492B4;
  sub_1DAA89B98(a1 + v110, v40, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v110, &v111[v40], v109);
  v109 = *(v119 + 48);
  v110 = v119 + 48;
  if ((v109)(v40, 1, v4) == 1)
  {
    if ((v109)(&v111[v40], 1, v4) == 1)
    {
      sub_1DAA89DF0(v40, sub_1DAA492B4);
      goto LABEL_58;
    }

LABEL_56:
    v52 = v40;
LABEL_71:
    sub_1DAA89DF0(v52, sub_1DAA8FF60);
    goto LABEL_72;
  }

  sub_1DAA89B98(v40, v22, sub_1DAA492B4);
  if ((v109)(&v111[v40], 1, v4) == 1)
  {
    (*(v119 + 8))(v22, v4);
    goto LABEL_56;
  }

  (*(v119 + 32))(v118, &v111[v40], v4);
  sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530]);
  v106 = sub_1DACB9264();
  v53 = *(v119 + 8);
  v107 = v119 + 8;
  v111 = v53;
  (v53)(v118, v4);
  (v111)(v22, v4);
  sub_1DAA89DF0(v40, sub_1DAA492B4);
  if ((v106 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_58:
  v111 = v108[14];
  v54 = *(v114 + 48);
  sub_1DAA89B98(&v111[a1], v35, sub_1DAA492B4);
  v55 = &v111[a2];
  v111 = v54;
  sub_1DAA89B98(v55, &v54[v35], sub_1DAA492B4);
  v56 = v109;
  if ((v109)(v35, 1, v4) == 1)
  {
    if ((v56)(&v111[v35], 1, v4) == 1)
    {
      sub_1DAA89DF0(v35, sub_1DAA492B4);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  sub_1DAA89B98(v35, v20, sub_1DAA492B4);
  if ((v56)(&v111[v35], 1, v4) == 1)
  {
    (*(v119 + 8))(v20, v4);
LABEL_63:
    v52 = v35;
    goto LABEL_71;
  }

  v57 = v119;
  (*(v119 + 32))(v118, &v111[v35], v4);
  sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530]);
  LODWORD(v111) = sub_1DACB9264();
  v58 = *(v57 + 8);
  v58(v118, v4);
  v58(v20, v4);
  v56 = v109;
  sub_1DAA89DF0(v35, sub_1DAA492B4);
  if ((v111 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_65:
  v59 = v108[15];
  v60 = *(v114 + 48);
  sub_1DAA89B98(a1 + v59, v32, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v59, &v32[v60], sub_1DAA492B4);
  if ((v56)(v32, 1, v4) == 1)
  {
    if ((v56)(&v32[v60], 1, v4) == 1)
    {
      sub_1DAA89DF0(v32, sub_1DAA492B4);
      goto LABEL_75;
    }

    goto LABEL_70;
  }

  sub_1DAA89B98(v32, v17, sub_1DAA492B4);
  if ((v56)(&v32[v60], 1, v4) == 1)
  {
    (*(v119 + 8))(v17, v4);
LABEL_70:
    v52 = v32;
    goto LABEL_71;
  }

  v64 = v118;
  v63 = v119;
  (*(v119 + 32))(v118, &v32[v60], v4);
  sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530]);
  v65 = sub_1DACB9264();
  v66 = *(v63 + 8);
  v66(v64, v4);
  v66(v17, v4);
  sub_1DAA89DF0(v32, sub_1DAA492B4);
  if ((v65 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_75:
  v67 = v108[16];
  v68 = *(a1 + v67);
  v69 = *(a2 + v67);
  if (v68 == 7)
  {
    if (v69 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v69 == 7 || (sub_1DAC383D4(v68, v69) & 1) == 0)
  {
    goto LABEL_72;
  }

  v70 = v108[17];
  v71 = *(a1 + v70);
  v72 = *(a2 + v70);
  if (v71 == 7)
  {
    if (v72 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v72 == 7 || (sub_1DAC383D4(v71, v72) & 1) == 0)
  {
    goto LABEL_72;
  }

  v73 = v108[18];
  v74 = *(a1 + v73);
  v75 = *(a2 + v73);
  if (v74 == 7)
  {
    if (v75 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v75 == 7 || (sub_1DAC383D4(v74, v75) & 1) == 0)
  {
    goto LABEL_72;
  }

  v76 = v108[19];
  v77 = (a1 + v76);
  v78 = *(a1 + v76 + 8);
  v79 = (a2 + v76);
  v80 = *(a2 + v76 + 8);
  if (v78)
  {
    if (!v80)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*v77 != *v79)
    {
      LOBYTE(v80) = 1;
    }

    if (v80)
    {
      goto LABEL_72;
    }
  }

  v81 = v108[20];
  v82 = *(v114 + 48);
  sub_1DAA89B98(a1 + v81, v29, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v81, &v29[v82], sub_1DAA492B4);
  if ((v109)(v29, 1, v4) == 1)
  {
    if ((v109)(&v29[v82], 1, v4) != 1)
    {
      goto LABEL_107;
    }

    sub_1DAA89DF0(v29, sub_1DAA492B4);
  }

  else
  {
    sub_1DAA89B98(v29, v117, sub_1DAA492B4);
    if ((v109)(&v29[v82], 1, v4) == 1)
    {
      (*(v119 + 8))(v117, v4);
      goto LABEL_107;
    }

    v84 = v118;
    v83 = v119;
    (*(v119 + 32))(v118, &v29[v82], v4);
    sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530]);
    v85 = v117;
    v86 = sub_1DACB9264();
    v87 = *(v83 + 8);
    v87(v84, v4);
    v87(v85, v4);
    sub_1DAA89DF0(v29, sub_1DAA492B4);
    if ((v86 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  v88 = v108[21];
  v89 = v113;
  v90 = *(v114 + 48);
  sub_1DAA89B98(a1 + v88, v113, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v88, v89 + v90, sub_1DAA492B4);
  v29 = v89;
  if ((v109)(v89, 1, v4) != 1)
  {
    sub_1DAA89B98(v89, v116, sub_1DAA492B4);
    if ((v109)(v89 + v90, 1, v4) != 1)
    {
      v92 = v118;
      v91 = v119;
      (*(v119 + 32))(v118, &v29[v90], v4);
      sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530]);
      v93 = v116;
      v94 = sub_1DACB9264();
      v95 = *(v91 + 8);
      v95(v92, v4);
      v95(v93, v4);
      sub_1DAA89DF0(v29, sub_1DAA492B4);
      if ((v94 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_109;
    }

    (*(v119 + 8))(v116, v4);
LABEL_107:
    v52 = v29;
    goto LABEL_71;
  }

  if ((v109)(v89 + v90, 1, v4) != 1)
  {
    goto LABEL_107;
  }

  sub_1DAA89DF0(v89, sub_1DAA492B4);
LABEL_109:
  v96 = v108[22];
  if ((sub_1DACB7C64() & 1) == 0)
  {
    goto LABEL_72;
  }

  v97 = v108[23];
  v98 = *(v114 + 48);
  v99 = v112;
  sub_1DAA89B98(a1 + v97, v112, sub_1DAA492B4);
  sub_1DAA89B98(a2 + v97, v99 + v98, sub_1DAA492B4);
  v29 = v99;
  if ((v109)(v99, 1, v4) == 1)
  {
    if ((v109)(v99 + v98, 1, v4) == 1)
    {
      sub_1DAA89DF0(v99, sub_1DAA492B4);
LABEL_116:
      v61 = MEMORY[0x1E1275A20](a1 + v108[24], a2 + v108[24]);
      return v61 & 1;
    }

    goto LABEL_107;
  }

  sub_1DAA89B98(v99, v115, sub_1DAA492B4);
  if ((v109)(v99 + v98, 1, v4) == 1)
  {
    (*(v119 + 8))(v115, v4);
    goto LABEL_107;
  }

  v101 = v118;
  v100 = v119;
  (*(v119 + 32))(v118, &v29[v98], v4);
  sub_1DAA804F4(&qword_1EE123A40, MEMORY[0x1E6969530]);
  v102 = v115;
  v103 = sub_1DACB9264();
  v104 = *(v100 + 8);
  v104(v101, v4);
  v104(v102, v4);
  sub_1DAA89DF0(v29, sub_1DAA492B4);
  if (v103)
  {
    goto LABEL_116;
  }

LABEL_72:
  v61 = 0;
  return v61 & 1;
}

void sub_1DAA8FF60()
{
  if (!qword_1EE123A28)
  {
    sub_1DAA492B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE123A28);
    }
  }
}

uint64_t sub_1DAA8FFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v66 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v66 - v12;
  sub_1DAA8A968(0, &qword_1EE11FC08, &qword_1EE11FC10, type metadata accessor for Chart);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v74 = (&v66 - v19);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v20 = 0;
  v21 = *(a1 + 64);
  v66 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v72 = a2;
  v73 = v17;
  v68 = a1;
  v69 = v4;
  v67 = v25;
  while (v24)
  {
    v71 = (v24 - 1) & v24;
    v26 = __clz(__rbit64(v24)) | (v20 << 6);
LABEL_17:
    v31 = (*(a1 + 48) + 16 * v26);
    v33 = *v31;
    v32 = v31[1];
    v34 = v70;
    sub_1DAA8898C(*(a1 + 56) + *(v75 + 72) * v26, v70, type metadata accessor for Chart);
    sub_1DAA8A9C0(0, &qword_1EE11FC10, type metadata accessor for Chart);
    v36 = v35;
    v37 = *(v35 + 48);
    v38 = v73;
    *v73 = v33;
    *(v38 + 1) = v32;
    v17 = v38;
    sub_1DAA92FD0(v34, &v38[v37], type metadata accessor for Chart);
    (*(*(v36 - 8) + 56))(v17, 0, 1, v36);
    sub_1DACB71E4();
    a2 = v72;
LABEL_18:
    v39 = v17;
    v40 = v74;
    sub_1DAA93038(v39, v74, &qword_1EE11FC08, &qword_1EE11FC10, type metadata accessor for Chart);
    sub_1DAA8A9C0(0, &qword_1EE11FC10, type metadata accessor for Chart);
    v41 = 1;
    if ((*(*(v36 - 8) + 48))(v40, 1, v36) == 1)
    {
      return v41;
    }

    v43 = *v40;
    v42 = v40[1];
    sub_1DAA92FD0(v40 + *(v36 + 48), v11, type metadata accessor for Chart);
    v44 = sub_1DAA4BF3C(v43, v42);
    LOBYTE(v43) = v45;

    if ((v43 & 1) == 0)
    {
      goto LABEL_47;
    }

    sub_1DAA8898C(*(a2 + 56) + *(v75 + 72) * v44, v8, type metadata accessor for Chart);
    v46 = sub_1DAA931B0(*v8, *v11);
    v47 = v69;
    if ((v46 & 1) == 0)
    {
      goto LABEL_46;
    }

    v48 = v69[5];
    sub_1DACB7CC4();
    sub_1DAA8AD7C(&qword_1EE123A40, MEMORY[0x1E6969530]);
    if ((sub_1DACB9264() & 1) == 0)
    {
      goto LABEL_46;
    }

    sub_1DAA49610();
    v50 = *(v49 + 36);
    if ((sub_1DACB9264() & 1) == 0)
    {
      goto LABEL_46;
    }

    v51 = v47[6];
    v52 = (v8 + v51);
    v53 = *(v8 + v51 + 8);
    v54 = (v11 + v51);
    v55 = *(v11 + v51 + 8);
    if (v53)
    {
      if (!v55)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (*v52 != *v54)
      {
        LOBYTE(v55) = 1;
      }

      if (v55)
      {
LABEL_46:
        sub_1DAA4D03C(v8, type metadata accessor for Chart);
LABEL_47:
        sub_1DAA4D03C(v11, type metadata accessor for Chart);
        return 0;
      }
    }

    if ((MEMORY[0x1E1275A20](v8 + v47[7], v11 + v47[7]) & 1) == 0)
    {
      goto LABEL_46;
    }

    v56 = v47[8];
    result = sub_1DACB7C64();
    if ((result & 1) == 0)
    {
      goto LABEL_46;
    }

    v57 = v47[9];
    v58 = *(v8 + v57);
    v59 = *(v11 + v57);
    v60 = *(v58 + 16);
    if (v60 != *(v59 + 16))
    {
      goto LABEL_46;
    }

    a1 = v68;
    v17 = v73;
    if (v58 != v59 && v60)
    {
      v61 = v60 - 1;
      if (v60 < v60 - 1)
      {
        v61 = v60;
      }

      if (v61 >= 2)
      {
        v62 = v61 & 0x7FFFFFFFFFFFFFFELL;
        v64 = v62;
        do
        {
          v64 -= 2;
        }

        while (v64);
      }

      else
      {
        v62 = 0;
      }

      v65 = v60 - v62;
      while (v65)
      {
        if (!--v65)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_6:
    sub_1DAA4D03C(v8, type metadata accessor for Chart);
    result = sub_1DAA4D03C(v11, type metadata accessor for Chart);
    v24 = v71;
    a2 = v72;
    v25 = v67;
  }

  if (v25 <= v20 + 1)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27 - 1;
  while (1)
  {
    v29 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      sub_1DAA8A9C0(0, &qword_1EE11FC10, type metadata accessor for Chart);
      v36 = v63;
      (*(*(v63 - 8) + 56))(v17, 1, 1, v63);
      v71 = 0;
      v20 = v28;
      goto LABEL_18;
    }

    v30 = *(v66 + 8 * v29);
    ++v20;
    if (v30)
    {
      v71 = (v30 - 1) & v30;
      v26 = __clz(__rbit64(v30)) | (v29 << 6);
      v20 = v29;
      goto LABEL_17;
    }
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1DAA90720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v6 = sub_1DACB8FB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DACB9004();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v3;
  aBlock[4] = sub_1DAA4F974;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_26;
  v16 = _Block_copy(aBlock);
  sub_1DAA4F924(a2);
  v17 = v3;
  sub_1DACB8FD4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DAA4F4AC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1DAA4D520(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F584(&qword_1EE123EB0, &qword_1EE123EC0, v18);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v21);
}

uint64_t sub_1DAA90A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = a3;
    sub_1DAA5859C(0, v3, 0);
    v4 = v15;
    v7 = (a1 + 56);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      sub_1DACB71E4();
      if (v11 >= v10 >> 1)
      {
        sub_1DAA5859C((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      v12 = v15 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v7 += 17;
      --v3;
    }

    while (v3);
    a3 = v6;
  }

  v13 = (*(a3 + 8))(v4);

  return v13;
}

void sub_1DAA90B28(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *))
{
  v7 = type metadata accessor for AppConfiguration(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((a1 + 64));
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = *(a1 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1DAB4DBC0;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1DAB4DBC0;
    *(v15 + 24) = v13;
    *(a1 + 72) = sub_1DAB4DC78;
    *(a1 + 80) = v15;
    sub_1DACB71F4();
    os_unfair_lock_unlock((a1 + 64));
    v16 = *(v14 + 24);
    (*(v14 + 16))();
    sub_1DAA4F910(sub_1DAB4DBE8);
  }

  else
  {
    os_unfair_lock_unlock((a1 + 64));
  }

  os_unfair_lock_lock((a1 + 40));
  v17 = *(a1 + 44);
  os_unfair_lock_unlock((a1 + 40));
  if (v17 == 1)
  {
    sub_1DAB4DB6C();
    v18 = swift_allocError();
    a2();
  }

  else
  {
    v19 = *(a1 + 24);
    sub_1DACB83C4();
    a4(v10);
    sub_1DAA4CFDC(v10, type metadata accessor for AppConfiguration);
  }
}

uint64_t sub_1DAA90D44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA90DB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C707061;
  if (v2 != 1)
  {
    v3 = 0x6F6F686179;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F72467265666E69;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEF6E6F696765526DLL;
  }

  v6 = 0x656C707061;
  if (*a2 != 1)
  {
    v6 = 0x6F6F686179;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6F72467265666E69;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xEF6E6F696765526DLL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

void sub_1DAA90EB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a6;
  v61 = a2;
  v62 = a4;
  v60 = a1;
  v9 = type metadata accessor for AppConfiguration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DACB81B4();
  v13 = *(v50 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v50);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a3[5];
  v18 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v17);
  v59 = sub_1DAA78E98(a4, a5, v17, v18);
  v20 = a3[5];
  v19 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v20);
  v21 = a3[15];
  v22 = a3[16];
  __swift_project_boxed_opaque_existential_1(a3 + 12, v21);
  (*(v22 + 8))(v21, v22);
  v23 = *(v12 + 25);
  v56 = type metadata accessor for AppConfiguration;
  sub_1DAA4D03C(v12, type metadata accessor for AppConfiguration);
  *v16 = v23;
  v55 = *MEMORY[0x1E69D63D8];
  v24 = v13[13];
  v51 = v13 + 13;
  v52 = v24;
  v25 = v50;
  v24(v16);
  v26 = v62;
  v57 = sub_1DAA78E98(v62, v16, v20, v19);
  v27 = v13[1];
  v53 = v13 + 1;
  v54 = v27;
  v28 = v25;
  v27(v16, v25);
  v29 = a3[10];
  v30 = a3[11];
  __swift_project_boxed_opaque_existential_1(a3 + 7, v29);
  (*(v30 + 8))(v26, v58, v29, v30);
  v31 = sub_1DACB89D4();
  v58 = sub_1DACB8B14();

  v32 = a3[10];
  v33 = a3[11];
  __swift_project_boxed_opaque_existential_1(a3 + 7, v32);
  v34 = a3[15];
  v35 = a3[16];
  __swift_project_boxed_opaque_existential_1(a3 + 12, v34);
  (*(v35 + 8))(v34, v35);
  v36 = *(v12 + 25);
  sub_1DAA4D03C(v12, v56);
  *v16 = v36;
  v52(v16, v55, v28);
  (*(v33 + 8))(v62, v16, v32, v33);
  v54(v16, v28);
  v37 = sub_1DACB89D4();
  v38 = sub_1DACB8B14();

  v63 = v57;
  v64 = v38;
  sub_1DAA81178();
  sub_1DACB8BB4();
  v39 = swift_allocObject();
  v40 = v58;
  *(v39 + 16) = v59;
  *(v39 + 24) = v40;
  *(v39 + 32) = a3;
  *(v39 + 40) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1DAA91E70;
  *(v41 + 24) = v39;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v42 = sub_1DACB89D4();
  sub_1DACB8A54();

  v43 = swift_allocObject();
  v45 = v60;
  v44 = v61;
  *(v43 + 16) = v60;
  *(v43 + 24) = v44;
  sub_1DACB71F4();
  v46 = sub_1DACB89D4();
  sub_1DACB8A64();

  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v44;
  sub_1DACB71F4();
  v48 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAA91450(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x69746375646F7270;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x316F6D6564;
  v7 = 0xE500000000000000;
  if (a1 != 6)
  {
    v6 = 0x326F6D6564;
    v5 = 0xE500000000000000;
  }

  v8 = 0x6C65766564;
  if (a1 != 4)
  {
    v8 = 0x786F62646E6173;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 24945;
  if (a1 != 2)
  {
    v10 = 1953719668;
    v9 = 0xE400000000000000;
  }

  v11 = 0xE700000000000000;
  v12 = 0x676E6967617473;
  if (!a1)
  {
    v12 = 0x69746375646F7270;
    v11 = 0xEA00000000006E6FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v2 = 0xE500000000000000;
      if (a2 == 6)
      {
        if (v13 != 0x316F6D6564)
        {
          goto LABEL_41;
        }
      }

      else if (v13 != 0x326F6D6564)
      {
        goto LABEL_41;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6C65766564)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x786F62646E6173)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE200000000000000;
        if (v13 != 24945)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE400000000000000;
      v3 = 1953719668;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x676E6967617473)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1DACBA174();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1DAA91680(char a1, void *a2)
{
  v4 = sub_1DACB8874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1DACB8864();
    result = sub_1DACB8244();
    if (result)
    {
      sub_1DAA917E8();
      (*(v5 + 104))(v9, *MEMORY[0x1E69D6918], v4);
      sub_1DACB8844();

      (*(v5 + 8))(v9, v4);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1DAA917E8()
{
  result = qword_1EE11F940;
  if (!qword_1EE11F940)
  {
    sub_1DAA420F4(255, &qword_1EE1254C8, off_1E85E2088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F940);
  }

  return result;
}

uint64_t sub_1DAA91850()
{
  sub_1DAA7C8BC(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1DACB8D34();
}

uint64_t objectdestroy_3Tm()
{
  sub_1DAA7C8BC(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAA91964(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7AB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DAA919FC@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA6E428(a1);
  type metadata accessor for RawAttributionSourceLogo(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DAA91A60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1DACB89D4();
  v4 = sub_1DACB89C4();

  return v4;
}

BOOL sub_1DAA91AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RawAttributionSourceLogo(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  sub_1DAA91E0C();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 56);
  sub_1DAA91EDC(a1, v23, type metadata accessor for RawAttributionSourceLogo);
  sub_1DAA91EDC(a2, &v23[v24], type metadata accessor for RawAttributionSourceLogo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAA91EDC(v23, v16, type metadata accessor for RawAttributionSourceLogo);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DAA6E94C(&v23[v24], v7, type metadata accessor for RawAttributionSourceLogo.Resolved);
      v25 = sub_1DAB4A96C(v16, v7);
      sub_1DAA7133C(v7, type metadata accessor for RawAttributionSourceLogo.Resolved);
      v26 = v16;
      v27 = type metadata accessor for RawAttributionSourceLogo.Resolved;
LABEL_9:
      sub_1DAA7133C(v26, v27);
      v30 = type metadata accessor for RawAttributionSourceLogo;
      goto LABEL_10;
    }

    v28 = type metadata accessor for RawAttributionSourceLogo.Resolved;
    v29 = v16;
  }

  else
  {
    sub_1DAA91EDC(v23, v18, type metadata accessor for RawAttributionSourceLogo);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DAA6E94C(&v23[v24], v11, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v25 = sub_1DAA91F44(v18, v11);
      sub_1DAA7133C(v11, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v26 = v18;
      v27 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
      goto LABEL_9;
    }

    v28 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
    v29 = v18;
  }

  sub_1DAA7133C(v29, v28);
  v25 = 0;
  v30 = sub_1DAA91E0C;
LABEL_10:
  sub_1DAA7133C(v23, v30);
  return v25;
}

void sub_1DAA91E0C()
{
  if (!qword_1EE11DEF8)
  {
    type metadata accessor for RawAttributionSourceLogo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11DEF8);
    }
  }
}

uint64_t sub_1DAA91E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA91EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1DAA91F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - v9;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - v16;
  sub_1DAA712D8(0, &qword_1EE11DF40, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v19 = v18;
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v50 - v24;
  if ((sub_1DACB7A34() & 1) == 0 || *(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v50 = v8;
  v51 = v15;
  v53 = v23;
  v26 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v54 = v4;
  v52 = v26;
  v27 = *(v26 + 20);
  v28 = *(v19 + 48);
  sub_1DAA70878(a1 + v27, v25, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v29 = a2 + v27;
  v30 = v54;
  sub_1DAA70878(v29, &v25[v28], qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v32 = v55 + 48;
  v31 = *(v55 + 48);
  if (v31(v25, 1, v30) == 1)
  {
    if (v31(&v25[v28], 1, v30) == 1)
    {
      v55 = v32;
      sub_1DAA92844(v25, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      goto LABEL_11;
    }

LABEL_8:
    sub_1DAB4C530(v25, &qword_1EE11DF40, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    return 0;
  }

  sub_1DAA70878(v25, v17, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v31(&v25[v28], 1, v30) == 1)
  {
    sub_1DAA7133C(v17, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    goto LABEL_8;
  }

  sub_1DAA6E94C(&v25[v28], v10, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if ((sub_1DACB7A34() & 1) == 0)
  {
    sub_1DAA7133C(v10, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAA7133C(v17, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v44 = v25;
LABEL_22:
    sub_1DAA92844(v44, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    return 0;
  }

  v55 = v32;
  v33 = *(v30 + 20);
  v34 = *&v17[v33];
  v35 = *&v10[v33];
  sub_1DAA7133C(v10, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA7133C(v17, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA92844(v25, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v34 != v35)
  {
    return 0;
  }

LABEL_11:
  v36 = *(v52 + 24);
  v37 = *(v19 + 48);
  v38 = a1 + v36;
  v39 = v53;
  sub_1DAA70878(v38, v53, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v40 = a2 + v36;
  v41 = v54;
  sub_1DAA70878(v40, v39 + v37, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v31(v39, 1, v41) == 1)
  {
    if (v31((v39 + v37), 1, v41) == 1)
    {
      sub_1DAA92844(v39, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      return 1;
    }

    goto LABEL_16;
  }

  v43 = v51;
  sub_1DAA70878(v39, v51, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v31((v39 + v37), 1, v41) == 1)
  {
    sub_1DAA7133C(v43, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
LABEL_16:
    sub_1DAB4C530(v39, &qword_1EE11DF40, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    return 0;
  }

  v45 = v39 + v37;
  v46 = v50;
  sub_1DAA6E94C(v45, v50, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if ((sub_1DACB7A34() & 1) == 0)
  {
    sub_1DAA7133C(v46, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAA7133C(v43, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v44 = v39;
    goto LABEL_22;
  }

  v47 = *(v41 + 20);
  v48 = *(v43 + v47);
  v49 = *(v46 + v47);
  sub_1DAA7133C(v46, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA7133C(v43, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA92844(v39, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  return v48 == v49;
}

uint64_t sub_1DAA92620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_1DACB89D4();
  sub_1DACB89C4();

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a6;
  *(v11 + 40) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DAA929B8;
  *(v12 + 24) = v11;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v13 = sub_1DACB89D4();
  v14 = sub_1DACB8A64();

  return v14;
}

uint64_t sub_1DAA92754()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA9278C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAA927D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAADF8F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA92844(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAA52FAC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA928A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA53000(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA92910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA53064(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA92980(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

char *sub_1DAA929C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DAA92AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v48 - v9;
  sub_1DAA8A968(0, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v48 - v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v8;
  v54 = v15;
  v17 = 0;
  v51 = (&v48 - v14);
  v52 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v49 = (v21 + 63) >> 6;
  v50 = v19;
  while (v23)
  {
    v55 = (v23 - 1) & v23;
    v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v30 = (*(v52 + 48) + 16 * v24);
    v31 = *v30;
    v32 = v30[1];
    v33 = v56;
    sub_1DAA8898C(*(v52 + 56) + *(v57 + 72) * v24, v56, type metadata accessor for Quote);
    sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
    v35 = v34;
    v36 = *(v34 + 48);
    v27 = v54;
    *v54 = v31;
    *(v27 + 8) = v32;
    sub_1DAA92FD0(v33, v27 + v36, type metadata accessor for Quote);
    (*(*(v35 - 8) + 56))(v27, 0, 1, v35);
    sub_1DACB71E4();
    v16 = v51;
LABEL_17:
    sub_1DAA93038(v27, v16, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
    sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
    v37 = (*(*(v35 - 8) + 48))(v16, 1, v35);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v40 = *v16;
    v39 = v16[1];
    v41 = v53;
    sub_1DAA92FD0(v16 + *(v35 + 48), v53, type metadata accessor for Quote);
    v42 = sub_1DAA4BF3C(v40, v39);
    LOBYTE(v40) = v43;

    if ((v40 & 1) == 0)
    {
      sub_1DAA4D03C(v41, type metadata accessor for Quote);
      return 0;
    }

    v44 = *(a2 + 56) + *(v57 + 72) * v42;
    v45 = v56;
    sub_1DAA8898C(v44, v56, type metadata accessor for Quote);
    v46 = sub_1DAA8EED0(v45, v41);
    sub_1DAA4D03C(v45, type metadata accessor for Quote);
    result = sub_1DAA4D03C(v41, type metadata accessor for Quote);
    v23 = v55;
    if ((v46 & 1) == 0)
    {
      return v38;
    }
  }

  if (v49 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v49;
  }

  v26 = v25 - 1;
  v27 = v54;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v49)
    {
      sub_1DAA8A9C0(0, &qword_1EE11FC00, type metadata accessor for Quote);
      v35 = v47;
      (*(*(v47 - 8) + 56))(v27, 1, 1, v47);
      v55 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v29 = *(v50 + 8 * v28);
    ++v17;
    if (v29)
    {
      v55 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA92FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA93038(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1DAA8A968(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1DAA930A8(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = v2[2];
  v7 = v2[1];
  v8[0] = v5;
  *(v8 + 10) = *(v2 + 42);
  return (*(v4 + 128))(&v7, v3, v4);
}

uint64_t sub_1DAA93124()
{
  v1 = *v0;
  sub_1DAA726DC(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA931B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart.Entry(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v45 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1DAC3CDD8(v14, v11, type metadata accessor for Chart.Entry);
      sub_1DAC3CDD8(v15, v8, type metadata accessor for Chart.Entry);
      if ((sub_1DACB7C64() & 1) == 0)
      {
        break;
      }

      v18 = v4[5];
      v19 = &v11[v18];
      v20 = v11[v18 + 8];
      v21 = &v8[v18];
      v22 = v8[v18 + 8];
      if (v20)
      {
        if (!v22)
        {
          break;
        }
      }

      else
      {
        if (*v19 != *v21)
        {
          LOBYTE(v22) = 1;
        }

        if (v22)
        {
          break;
        }
      }

      v23 = v4[6];
      v24 = &v11[v23];
      v25 = v11[v23 + 8];
      v26 = &v8[v23];
      v27 = v8[v23 + 8];
      if (v25)
      {
        if (!v27)
        {
          break;
        }
      }

      else
      {
        if (*v24 != *v26)
        {
          LOBYTE(v27) = 1;
        }

        if (v27)
        {
          break;
        }
      }

      v28 = v4[7];
      v29 = &v11[v28];
      v30 = v11[v28 + 8];
      v31 = &v8[v28];
      v32 = v8[v28 + 8];
      if (v30)
      {
        if (!v32)
        {
          break;
        }
      }

      else
      {
        if (*v29 != *v31)
        {
          LOBYTE(v32) = 1;
        }

        if (v32)
        {
          break;
        }
      }

      v33 = v4[8];
      v34 = &v11[v33];
      v35 = v11[v33 + 8];
      v36 = &v8[v33];
      v37 = v8[v33 + 8];
      if (v35)
      {
        if (!v37)
        {
          break;
        }
      }

      else
      {
        if (*v34 != *v36)
        {
          LOBYTE(v37) = 1;
        }

        if (v37)
        {
          break;
        }
      }

      v38 = &v11[v4[9]];
      v39 = *v38;
      v40 = v38[8];
      sub_1DAA85404(v11, type metadata accessor for Chart.Entry);
      v41 = &v8[v4[9]];
      v42 = *v41;
      v43 = v41[8];
      sub_1DAA85404(v8, type metadata accessor for Chart.Entry);
      if (v40)
      {
        if (!v43)
        {
          return 0;
        }
      }

      else
      {
        if (v39 == v42)
        {
          v44 = v43;
        }

        else
        {
          v44 = 1;
        }

        if (v44)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      result = 1;
      if (!--v12)
      {
        return result;
      }
    }

    sub_1DAA85404(v8, type metadata accessor for Chart.Entry);
    sub_1DAA85404(v11, type metadata accessor for Chart.Entry);
  }

  return 0;
}

void sub_1DAA93504(uint64_t a1)
{
  v9 = *a1;
  os_unfair_lock_lock((a1 + 152));
  v2 = *(a1 + 160);
  sub_1DACB71E4();
  os_unfair_lock_unlock((a1 + 152));
  if (v2 >> 62)
  {
    v3 = sub_1DACB9E14();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1E12777A0](i, v2);
          }

          else
          {
            v8 = *(v2 + 8 * i + 32);
            sub_1DACB71F4();
          }

          v10[3] = v9;
          v10[4] = &off_1F5692AD8;
          v10[0] = a1;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v5 = *(v8 + 24);
            ObjectType = swift_getObjectType();
            v7 = *(v5 + 16);
            sub_1DACB71F4();
            v7(v10, ObjectType, v5);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          __swift_destroy_boxed_opaque_existential_1(v10);
        }
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t objectdestroy_261Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[23];

  v10 = v0[24];

  v11 = v0[25];

  v12 = v0[26];

  v13 = v0[27];

  if (v0[48] != 1)
  {
    if (v0[28] != 1)
    {

      v14 = v0[29];

      v15 = v0[30];

      v16 = v0[31];
    }

    if (v0[32] != 1)
    {

      v17 = v0[33];

      v18 = v0[34];

      v19 = v0[35];
    }

    if (v0[36] != 1)
    {

      v20 = v0[37];

      v21 = v0[38];

      v22 = v0[39];
    }

    if (v0[40] != 1)
    {

      v23 = v0[41];

      v24 = v0[42];

      v25 = v0[43];
    }

    if (v0[44] != 1)
    {

      v26 = v0[45];

      v27 = v0[46];

      v28 = v0[47];
    }

    v29 = v0[48];
  }

  v30 = v0[54];

  v31 = v0[56];

  v32 = v0[58];

  v33 = v0[64];

  return MEMORY[0x1EEE6BDD0](v0, 521, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_1DACB8EC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 64);
  if (v1 <= 2)
  {
    if (*(v0 + 64))
    {
      if (v1 == 1)
      {
        v4 = *(v0 + 16);
        swift_unknownObjectRelease();
      }

      else if (v1 == 2)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }
    }

    else
    {
      v3 = *(v0 + 16);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1((v0 + 24));
    }
  }

  else
  {
    if (*(v0 + 64) <= 6u)
    {
      if (v1 != 3 && v1 != 6)
      {
        goto LABEL_13;
      }

LABEL_12:
      v2 = *(v0 + 16);

      goto LABEL_13;
    }

    if (v1 == 7 || v1 == 8)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DAA93CB4(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t storeEnumTagSinglePayload for WatchlistSortState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 133 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 133) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7B)
  {
    v4 = 0;
  }

  if (a2 > 0x7A)
  {
    v5 = ((a2 - 123) >> 8) + 1;
    *result = a2 - 123;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1DAA93E04(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = v4 >> 5;
  if (v4 >> 5 > 2)
  {
    if (v6 == 3)
    {
      sub_1DACB71E4();
      sub_1DACB71F4();
      v9 = sub_1DAC0CF74;
    }

    else
    {
      if (v6 != 4)
      {
        sub_1DACB71E4();
        return;
      }

      sub_1DACB71E4();
      sub_1DACB71F4();
      v9 = sub_1DAC0F05C;
    }

    sub_1DAC0F1B8(&v10, v3, v4 & 1, v9);
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71F4();
        v7 = sub_1DAC08AB0;
        v8 = sub_1DAC087CC;
      }

      else
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71F4();
        v7 = sub_1DAC0A664;
        v8 = sub_1DAC09CF4;
      }

      sub_1DAC09BF4(&v10, v5, v3, v4 & 1, v7, v8);
    }

    else
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71F4();
      sub_1DAC086E4(&v10, v5, v3, v4 & 1);
    }
  }
}

uint64_t getEnumTagSinglePayload for WatchlistSortState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7B)
  {
    goto LABEL_17;
  }

  if (a2 + 133 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 133) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 133;
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

      return (*a1 | (v4 << 8)) - 133;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 133;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t sub_1DAA94044(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAA9A3AC;

  return sub_1DAA94374(a1, v5);
}

uint64_t sub_1DAA940FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (a1 != 6)
  {
    v5 = 0x75466C617574756DLL;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = 0xE300000000000000;
  v7 = 6714469;
  if (a1 != 4)
  {
    v7 = 0x73657275747566;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x75636F7470797263;
  v9 = 0xEE0079636E657272;
  if (a1 != 2)
  {
    v8 = 0x797469757165;
    v9 = 0xE600000000000000;
  }

  v10 = 0x79636E6572727563;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7865646E69)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEA0000000000646ELL;
        if (v11 != 0x75466C617574756DLL)
        {
LABEL_45:
          v14 = sub_1DACBA174();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE300000000000000;
      if (v11 != 6714469)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73657275747566)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE0079636E657272;
      if (v11 != 0x75636F7470797263)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x797469757165)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x79636E6572727563)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1DAA94374(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAA94980;

  return v7(a1);
}

uint64_t sub_1DAA94484(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1DAA944B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_1DACB9794();
  v5[9] = sub_1DACB9784();
  v7 = sub_1DACB9744();

  return MEMORY[0x1EEE6DFA0](sub_1DAA9459C, v7, v6);
}

void sub_1DAA9459C()
{
  v1 = v0[9];
  v2 = v0[7];

  os_unfair_lock_lock((v2 + 80));
  v3 = *(v2 + 88);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v2 + 80));
  if (v3 >> 62)
  {
    v4 = sub_1DACB9E14();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v15 = v4;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E12777A0](v5, v3);
    }

    else
    {
      v11 = *(v3 + 8 * v5 + 32);
      sub_1DACB71F4();
    }

    v12 = v0[7];
    v0[5] = type metadata accessor for QuoteManager();
    v0[6] = &off_1F56819B0;
    v0[2] = v12;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = v0[7];
      v16 = v0[8];
      v7 = *(v11 + 24);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      sub_1DACB71F4();
      v10 = v7;
      v4 = v15;
      v9(v0 + 2, v16, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v0[7];
      sub_1DACB71F4();
    }

    ++v5;

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  while (v4 != v5);
LABEL_13:

  v14 = v0[1];

  v14();
}

uint64_t sub_1DAA94754()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DAA94848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA948B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA94918@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DACB7CC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1DAA94980()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

BOOL sub_1DAA94A84(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 32))() + 16);

  return v2 > 1;
}

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAA94B2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a2 >> 62)
    {
      result = sub_1DACB9E14();
      v7 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1E12777A0](i, a2);
          }

          else
          {
            v12 = *(a2 + 8 * i + 32);
            sub_1DACB71F4();
          }

          v16[3] = type metadata accessor for StockPriceDataManager();
          v16[4] = &off_1F568B128;
          v16[0] = v6;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = *(v12 + 24);
            ObjectType = swift_getObjectType();
            v15[0] = a3;
            v15[1] = a4;
            v11 = *(v9 + 8);
            swift_retain_n();
            v11(v16, v15, ObjectType, v9);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          __swift_destroy_boxed_opaque_existential_1(v16);
        }
      }
    }
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAA94D1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DAA94D74()
{
  v1 = (v0 + *(type metadata accessor for Quote() + 76));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

BOOL _s10StocksCore11WidgetQuoteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA492B4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA8FF60();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = *(a1 + 56);
  v22 = *(a2 + 56);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = v15;
    if ((*(a1 + 48) != *(a2 + 48) || v21 != v22) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = v15;
    if (v22)
    {
      return 0;
    }
  }

  if ((sub_1DAA95188(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v24 = *(type metadata accessor for WidgetQuote() + 36);
  v25 = *(v23 + 48);
  sub_1DAA89C00(a1 + v24, v17, sub_1DAA492B4);
  sub_1DAA89C00(a2 + v24, &v17[v25], sub_1DAA492B4);
  v26 = *(v5 + 48);
  if (v26(v17, 1, v4) != 1)
  {
    sub_1DAA89C00(v17, v12, sub_1DAA492B4);
    if (v26(&v17[v25], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_32;
    }

    (*(v5 + 32))(v8, &v17[v25], v4);
    sub_1DAA5D520(&qword_1EE123A40);
    v28 = sub_1DACB9264();
    v29 = *(v5 + 8);
    v29(v8, v4);
    v29(v12, v4);
    sub_1DAA88DD8(v17, sub_1DAA492B4);
    return (v28 & 1) != 0;
  }

  if (v26(&v17[v25], 1, v4) != 1)
  {
LABEL_32:
    sub_1DAA88DD8(v17, sub_1DAA8FF60);
    return 0;
  }

  sub_1DAA88DD8(v17, sub_1DAA492B4);
  return 1;
}

uint64_t sub_1DAA95188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1852141679;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x6465736F6C63;
  }

  else if (a1 == 3)
  {
    v3 = 0x656B72614D657270;
    v4 = 0xE900000000000074;
  }

  else
  {
    v3 = 0x756F487265746661;
    v4 = 0xEA00000000007372;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1852141679;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x656B72614D657270;
    v6 = 0xE900000000000074;
    if (a2 != 3)
    {
      v5 = 0x756F487265746661;
      v6 = 0xEA00000000007372;
    }

    if (a2 == 2)
    {
      v7 = 0x6465736F6C63;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1DACBA174();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

void sub_1DAA95318(const void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1DAA953C0(a1);
  sub_1DAA55EB0(v3);

  v4 = objc_allocWithZone(MEMORY[0x1E69B5428]);
  v5 = sub_1DACB9114();

  v6 = [v4 initWithConfigDictionary_];

  *a2 = v6;
}

unint64_t sub_1DAA953C0(const void *a1)
{
  __dst[64] = *MEMORY[0x1E69E9840];
  v2 = sub_1DACB75A4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1DACB7594();
  memcpy(__dst, a1, 0x1F9uLL);
  sub_1DAA955A0();
  v5 = sub_1DACB7584();
  v7 = v6;

  v8 = objc_opt_self();
  v9 = sub_1DACB7B44();
  __dst[0] = 0;
  v10 = [v8 JSONObjectWithData:v9 options:4 error:__dst];

  if (!v10)
  {
    v13 = __dst[0];
    v14 = sub_1DACB78C4();

    swift_willThrow();
    goto LABEL_5;
  }

  v11 = __dst[0];
  sub_1DACB9B74();
  swift_unknownObjectRelease();
  sub_1DAA61100();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v15 = sub_1DAB68C38(MEMORY[0x1E69E7CC0]);
    sub_1DAA563C0(v5, v7);
    result = v15;
    goto LABEL_6;
  }

  sub_1DAA563C0(v5, v7);
  result = v17;
LABEL_6:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DAA955A0()
{
  result = qword_1EE1247A8;
  if (!qword_1EE1247A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247A8);
  }

  return result;
}

void sub_1DAA955F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAA961D4();
    v7 = a3(a1, &type metadata for PaidBundleConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAA95658(void *a1)
{
  sub_1DAA955F4(0, &qword_1EE123BD8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v94 = *(v3 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v47 - v6;
  v8 = *v1;
  v92 = v1[1];
  v91 = *(v1 + 16);
  v90 = *(v1 + 17);
  v89 = *(v1 + 18);
  v88 = *(v1 + 19);
  v87 = v1[3];
  v86 = *(v1 + 32);
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[8];
  v84 = v1[7];
  v85 = v9;
  v81 = v11;
  v12 = v1[10];
  v82 = v1[9];
  v83 = v10;
  v13 = v1[11];
  v14 = v1[12];
  v79 = v12;
  v80 = v13;
  v15 = v1[13];
  v16 = v1[14];
  v77 = v14;
  v78 = v15;
  v17 = v1[15];
  v18 = v1[16];
  v75 = v16;
  v76 = v17;
  v19 = v1[17];
  v20 = v1[18];
  v73 = v18;
  v74 = v19;
  v21 = v1[20];
  v71 = v1[19];
  v72 = v20;
  v22 = v1[21];
  v23 = v1[22];
  v47 = v21;
  v48 = v22;
  v24 = v1[23];
  v25 = v1[24];
  v49 = v23;
  v50 = v24;
  v26 = v1[46];
  v27 = v1[47];
  v52 = v25;
  v53 = v27;
  v121 = v26;
  v51 = v1[25];
  v28 = *(v1 + 22);
  v119 = *(v1 + 21);
  v120 = v28;
  v29 = *(v1 + 18);
  v115 = *(v1 + 17);
  v116 = v29;
  v30 = *(v1 + 20);
  v117 = *(v1 + 19);
  v118 = v30;
  v31 = *(v1 + 14);
  v111 = *(v1 + 13);
  v112 = v31;
  v32 = *(v1 + 16);
  v113 = *(v1 + 15);
  v114 = v32;
  v33 = v1[49];
  LODWORD(v26) = *(v1 + 400);
  v54 = *(v1 + 384);
  v55 = v26;
  v34 = v1[51];
  v35 = v1[52];
  v56 = v33;
  v57 = v34;
  v36 = v1[53];
  v37 = v1[54];
  v58 = v35;
  v59 = v36;
  v38 = v1[55];
  v39 = v1[56];
  v60 = v37;
  v61 = v38;
  v40 = v1[57];
  v41 = v1[58];
  v62 = v39;
  v63 = v40;
  v42 = v1[59];
  v64 = v41;
  v65 = v42;
  LODWORD(v42) = *(v1 + 481);
  v66 = *(v1 + 480);
  v67 = v42;
  v43 = v1[62];
  v68 = v1[61];
  v69 = v43;
  v70 = *(v1 + 504);
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA961D4();
  sub_1DACB71E4();
  sub_1DACBA304();
  *&v100 = v8;
  LOBYTE(v97[0]) = 0;
  sub_1DAA5260C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAA96338(&qword_1EE123E98);
  v122 = v4;
  v45 = v93;
  sub_1DACBA074();

  if (v45)
  {
    return (*(v94 + 8))(v7, v122);
  }

  *&v100 = v92;
  LOBYTE(v97[0]) = 1;
  sub_1DACBA074();
  LOBYTE(v100) = 2;
  sub_1DACBA0A4();
  LOBYTE(v100) = 3;
  sub_1DACBA0A4();
  LOBYTE(v100) = 4;
  sub_1DACBA0A4();
  LOBYTE(v100) = 5;
  sub_1DACBA0A4();
  LOBYTE(v100) = 6;
  sub_1DACBA0C4();
  LOBYTE(v100) = 7;
  sub_1DACBA0A4();
  LOBYTE(v100) = 8;
  sub_1DACBA0C4();
  LOBYTE(v100) = 9;
  sub_1DACBA094();
  LOBYTE(v100) = 10;
  sub_1DACBA094();
  LOBYTE(v100) = 11;
  sub_1DACBA094();
  LOBYTE(v100) = 12;
  sub_1DACBA094();
  LOBYTE(v100) = 13;
  sub_1DACBA094();
  LOBYTE(v100) = 14;
  sub_1DACBA024();
  LOBYTE(v100) = 15;
  sub_1DACBA0C4();
  LOBYTE(v100) = 16;
  sub_1DACBA0C4();
  LOBYTE(v100) = 17;
  sub_1DACBA0C4();
  *&v100 = v48;
  LOBYTE(v97[0]) = 18;
  sub_1DAA5260C(0, &qword_1EE123F90, &type metadata for PaywallConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96934(&qword_1EE123F88, sub_1DAA969C4);
  sub_1DACBA074();
  *&v100 = v49;
  LOBYTE(v97[0]) = 19;
  sub_1DAA5260C(0, &qword_1EE123F20, &type metadata for SubscriptionButtonConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96A18();
  sub_1DACBA074();
  *&v100 = v50;
  LOBYTE(v97[0]) = 20;
  sub_1DACBA074();
  *&v100 = v51;
  LOBYTE(v97[0]) = 21;
  sub_1DACBA074();
  *&v100 = v52;
  LOBYTE(v97[0]) = 22;
  sub_1DACBA074();
  v108 = v119;
  v109 = v120;
  v110 = v121;
  v104 = v115;
  v105 = v116;
  v106 = v117;
  v107 = v118;
  v100 = v111;
  v101 = v112;
  v102 = v113;
  v103 = v114;
  v99 = 23;
  sub_1DAA5265C(&v111, v97);
  sub_1DAA96B08();
  sub_1DACBA074();
  v97[8] = v108;
  v97[9] = v109;
  v98 = v110;
  v97[4] = v104;
  v97[5] = v105;
  v97[6] = v106;
  v97[7] = v107;
  v97[0] = v100;
  v97[1] = v101;
  v97[2] = v102;
  v97[3] = v103;
  sub_1DAA52740(v97);
  LOBYTE(v96) = 24;
  sub_1DACBA064();
  LOBYTE(v96) = 25;
  sub_1DACBA064();
  LOBYTE(v96) = 26;
  sub_1DACBA024();
  LOBYTE(v96) = 27;
  sub_1DACBA094();
  LOBYTE(v96) = 28;
  sub_1DACBA024();
  LOBYTE(v96) = 29;
  sub_1DACBA0F4();
  LOBYTE(v96) = 30;
  sub_1DACBA0F4();
  LOBYTE(v96) = 31;
  sub_1DACBA0F4();
  LOBYTE(v96) = 32;
  sub_1DACBA0A4();
  LOBYTE(v96) = 33;
  sub_1DACBA0A4();
  LOBYTE(v96) = 34;
  sub_1DACBA0F4();
  v96 = v69;
  v95 = 35;
  sub_1DAA4BB3C(0, &qword_1EE123F68, type metadata accessor for AudioUpsellConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96BA0(&qword_1EE123F60, &qword_1EE124D68);
  sub_1DACBA074();
  LOBYTE(v96) = 36;
  sub_1DACBA0A4();
  return (*(v94 + 8))(0, v122);
}

unint64_t sub_1DAA961D4()
{
  result = qword_1EE1247C0;
  if (!qword_1EE1247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247C0);
  }

  return result;
}

unint64_t sub_1DAA9622C()
{
  result = qword_1EE1247B0;
  if (!qword_1EE1247B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247B0);
  }

  return result;
}

unint64_t sub_1DAA96284()
{
  result = qword_1EE1247B8;
  if (!qword_1EE1247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1247B8);
  }

  return result;
}

uint64_t sub_1DAA962D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA613E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA96338(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5260C(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA963BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, &qword_1EE123EA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA9642C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61680(255, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAA964B0(char a1)
{
  result = 0x4C64656C62616E65;
  switch(a1)
  {
    case 1:
    case 35:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
    case 32:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0x6C63697472416564;
      break;
    case 10:
      result = 0x6C63697472416572;
      break;
    case 11:
      result = 0x6C63697472416873;
      break;
    case 12:
    case 36:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD00000000000002ALL;
      break;
    case 14:
    case 34:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000020;
      break;
    case 16:
      result = 0xD00000000000002CLL;
      break;
    case 17:
    case 21:
      result = 0xD000000000000027;
      break;
    case 18:
      result = 0x436C6C6177796170;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      result = 0xD00000000000002ELL;
      break;
    case 24:
      result = 0xD00000000000001DLL;
      break;
    case 25:
      result = 0xD000000000000024;
      break;
    case 26:
      result = 0xD000000000000019;
      break;
    case 27:
      result = 0xD000000000000019;
      break;
    case 28:
      result = 0xD000000000000018;
      break;
    case 29:
      result = 0xD000000000000025;
      break;
    case 30:
      result = 0xD000000000000021;
      break;
    case 31:
      result = 0xD00000000000002FLL;
      break;
    case 33:
      result = 0xD00000000000002DLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1DAA96934(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5260C(255, &qword_1EE123F90, &type metadata for PaywallConfig, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAA969C4()
{
  result = qword_1EE124FE0;
  if (!qword_1EE124FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FE0);
  }

  return result;
}

unint64_t sub_1DAA96A18()
{
  result = qword_1EE123F18;
  if (!qword_1EE123F18)
  {
    sub_1DAA5260C(255, &qword_1EE123F20, &type metadata for SubscriptionButtonConfig, MEMORY[0x1E69E62F8]);
    sub_1DAA96AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F18);
  }

  return result;
}

unint64_t sub_1DAA96AB4()
{
  result = qword_1EE124580;
  if (!qword_1EE124580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124580);
  }

  return result;
}

unint64_t sub_1DAA96B08()
{
  result = qword_1EE124E90;
  if (!qword_1EE124E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E90);
  }

  return result;
}

uint64_t sub_1DAA96B5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioUpsellConfig();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA96BA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA4BB3C(255, &qword_1EE123F68, type metadata accessor for AudioUpsellConfig, MEMORY[0x1E69E62F8]);
    sub_1DAA96B5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PaidBundleConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaidBundleConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1DAA96D8C()
{
  if (!qword_1EE11F698)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F698);
    }
  }
}

uint64_t sub_1DAA96E08()
{
  sub_1DACB82E4();
  sub_1DACB71F4();
  sub_1DACB8284();
}

uint64_t sub_1DAA96E78()
{
  sub_1DACB82E4();
  sub_1DACB71F4();
  sub_1DACB8284();
}

uint64_t sub_1DAA96F40()
{
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v0 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  sub_1DAA97008(0, &qword_1EE11FDF0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAA97008(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DACB8B74();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1DAA9705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = sub_1DAA98788;
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8C14();
}

uint64_t sub_1DAA97134()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA9716C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAA971C8()
{
  sub_1DAA65E94();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAA97284()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[11];
  v6 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v4 + 507);
  v8 = v4[4064];
  sub_1DAA640AC(v4);
  if (v8)
  {
    v9 = [objc_opt_self() enabledForCurrentLevel_];
  }

  else
  {
    sub_1DACB8014();
    sub_1DACB7FF4();
    if (qword_1EE11D5C0 != -1)
    {
      swift_once();
    }

    [objc_opt_self() enabledForCurrentLevel_];
    v9 = sub_1DACB8004();
  }

  return v9 & 1;
}

uint64_t sub_1DAA9741C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D5C8 = result;
  return result;
}

void sub_1DAA97614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 16);
  v90 = MEMORY[0x1E69E7CC0];
  v8 = [v7 subscriptionList];
  if ([v8 isDirty])
  {
    sub_1DAA984E0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DACC2610;
    v10 = [v8 subscribedTagIDs];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1DACB9804();

      v13 = *(v12 + 16);

      v14 = MEMORY[0x1E69E6530];
      v15 = MEMORY[0x1E69E65A8];
      *(v9 + 56) = MEMORY[0x1E69E6530];
      *(v9 + 64) = v15;
      *(v9 + 32) = v13;
      v16 = [v8 autoFavoriteTagIDs];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1DACB9804();

        v19 = *(v18 + 16);

        *(v9 + 96) = v14;
        *(v9 + 104) = v15;
        *(v9 + 72) = v19;
        v20 = [v8 mutedTagIDs];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1DACB9804();

          v23 = *(v22 + 16);

          *(v9 + 136) = v14;
          *(v9 + 144) = v15;
          *(v9 + 112) = v23;
          sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
          v24 = sub_1DACB9AD4();
          sub_1DACB9914();
          sub_1DACB8C64();

          MEMORY[0x1EEE9AC00](v25);
          sub_1DAA984E0(0, &qword_1EE11D3C8, type metadata accessor for FCFetchResult, MEMORY[0x1E69D6B18]);
          v27 = *(v26 + 48);
          v28 = *(v26 + 52);
          swift_allocObject();
          sub_1DACB8B44();
          *(swift_allocObject() + 16) = v8;
          v29 = v8;
          v30 = sub_1DACB89D4();
          sub_1DACB8AF4();

          MEMORY[0x1E12770F0]();
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v84 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1DACB9694();
          }

          sub_1DACB96F4();
          goto LABEL_8;
        }

LABEL_37:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_8:
  v31 = [v7 userInfo];
  if ([v31 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v32 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    MEMORY[0x1EEE9AC00](v33);
    sub_1DAA984E0(0, &qword_1EE11D3C8, type metadata accessor for FCFetchResult, MEMORY[0x1E69D6B18]);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_1DACB8B44();
    v37 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v79 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v86 = a4;
  v87 = a5;
  sub_1DAA984E0(0, &qword_1EE11D3C8, type metadata accessor for FCFetchResult, MEMORY[0x1E69D6B18]);
  v39 = v38;
  v40 = *(v38 + 48);
  v41 = *(v38 + 52);
  swift_allocObject();
  sub_1DACB8B44();
  MEMORY[0x1E12770F0]();
  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v78 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v42 = [v7 readingList];
  if ([v42 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v43 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    MEMORY[0x1EEE9AC00](v44);
    v45 = *(v39 + 48);
    v46 = *(v39 + 52);
    swift_allocObject();
    sub_1DACB8B44();
    v47 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v80 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v48 = [v7 audioPlaylist];
  if ([v48 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v49 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    MEMORY[0x1EEE9AC00](v50);
    v51 = *(v39 + 48);
    v52 = *(v39 + 52);
    swift_allocObject();
    sub_1DACB8B44();
    v53 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v81 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v85 = v31;
  v54 = [v7 readingHistory];
  if ([v54 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v55 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    MEMORY[0x1EEE9AC00](v56);
    v57 = *(v39 + 48);
    v58 = *(v39 + 52);
    swift_allocObject();
    sub_1DACB8B44();
    v59 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v82 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v60 = [v7 personalizationData];
  if ([v60 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v61 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    MEMORY[0x1EEE9AC00](v62);
    v63 = *(v39 + 48);
    v64 = *(v39 + 52);
    swift_allocObject();
    sub_1DACB8B44();
    v65 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v66 = [v7 userEventHistory];
  if ([v66 isDirty])
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v67 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    MEMORY[0x1EEE9AC00](v68);
    v69 = *(v39 + 48);
    v70 = *(v39 + 52);
    swift_allocObject();
    sub_1DACB8B44();
    v71 = sub_1DACB89D4();
    sub_1DACB8AF4();

    MEMORY[0x1E12770F0]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v83 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1DACB9694();
    }

    sub_1DACB96F4();
  }

  v72 = sub_1DACB89D4();
  type metadata accessor for FCFetchResult(0);
  sub_1DACB8934();

  v73 = swift_allocObject();
  *(v73 + 16) = a2;
  *(v73 + 24) = a3;
  sub_1DACB71F4();
  v74 = sub_1DACB89D4();
  sub_1DACB8A64();

  v75 = swift_allocObject();
  *(v75 + 16) = v86;
  *(v75 + 24) = v87;
  sub_1DACB71F4();
  v76 = sub_1DACB89D4();
  sub_1DACB8AA4();

  v77 = sub_1DACB89D4();
  sub_1DACB8AF4();
}

uint64_t sub_1DAA98478()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA984E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA9854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  sub_1DACB71F4();
  v9 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v10 = *(a5 + 32);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DAA7390C;
  *(v11 + 24) = v8;
  v13[4] = sub_1DAA98758;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DAA74E58;
  v13[3] = &block_descriptor_25;
  v12 = _Block_copy(v13);

  [v10 refreshBundleSubscriptionWithCachePolicy:2 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1DAA986C4(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v3 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  return a2(0);
}

uint64_t sub_1DAA98760()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DAA98790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DAA987F4()
{
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v0 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();
}

unint64_t sub_1DAA9888C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1DACB7664();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  if (a3)
  {
    v12 = *(v3 + 16);
    v83 = a1;
    v84 = a2;
    sub_1DACB71E4();
    sub_1DACB8994();
    if (v80)
    {
LABEL_8:
      a1 = v79;

      return a1;
    }
  }

  else
  {
    sub_1DACB71E4();
  }

  v13 = *(v4 + 24);
  v83 = a1;
  v84 = a2;
  sub_1DACB71E4();
  sub_1DACB8994();

  if (v80)
  {
    goto LABEL_8;
  }

  v71 = v13;
  v75 = a3;
  sub_1DAA66A98(&qword_1EE11F138, MEMORY[0x1E69680B8]);
  sub_1DACB9BA4();
  LODWORD(v83) = 44;
  sub_1DACB9B84();
  LODWORD(v83) = 46;
  v14 = sub_1DACB9B84();
  v79 = 32;
  v80 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v14);
  *(&v66 - 2) = &v79;
  sub_1DACB71E4();
  result = sub_1DAA87898(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAA88710, (&v66 - 4), a1, a2, v15);
  v74 = *(result + 16);
  if (!v74)
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v79 = v18;
    sub_1DAA613E8();
    sub_1DAA66A98(&qword_1EE123E90, sub_1DAA613E8);
    v62 = sub_1DACB9214();
    v64 = v63;

    if (v75)
    {
      v65 = *(v4 + 16);
    }

    v79 = v62;
    v80 = v64;
    v83 = a1;
    v84 = a2;
    sub_1DACB71E4();
    sub_1DACB89A4();
    (*(v9 + 8))(v77, v8);
    return v62;
  }

  v66 = v4;
  v67 = a2;
  v68 = v9;
  v69 = v8;
  v70 = a1;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v72 = result + 32;
  v73 = result;
  while (v17 < *(result + 16))
  {
    v78 = v18;
    v19 = (v72 + 32 * v17);
    v21 = *v19;
    v20 = v19[1];
    v23 = v19[2];
    v22 = v19[3];
    sub_1DACB71E4();
    v79 = sub_1DACB9B04();
    v80 = v24;
    sub_1DAA642D8();
    v25 = sub_1DACB9B34();
    v27 = v26;

    v76 = v20;
    if (v75)
    {
      if (qword_1EE11E130 != -1)
      {
        swift_once();
      }

      v28 = off_1EE11E140;
      v79 = v25;
      v80 = v27;
      v29 = sub_1DACB94D4();
      v31 = v30;
      if (!v28[2] || (v32 = v29, v33 = v28[5], sub_1DACBA284(), sub_1DACB9404(), v34 = sub_1DACBA2C4(), v35 = -1 << *(v28 + 32), v36 = v34 & ~v35, ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36) & 1) == 0))
      {
LABEL_26:

        v79 = v21;
        v80 = v76;
        v81 = v23;
        v82 = v22;
        sub_1DAA9A358();
        v40 = sub_1DACB9B34();
        v42 = v41;

        v79 = v40;
        v80 = v42;
        v43 = sub_1DACB94D4();
        v45 = v44;
LABEL_39:
        v18 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1DAA9A3B0(0, *(v18 + 2) + 1, 1, v18);
        }

        v60 = *(v18 + 2);
        v59 = *(v18 + 3);
        if (v60 >= v59 >> 1)
        {
          v18 = sub_1DAA9A3B0((v59 > 1), v60 + 1, 1, v18);
        }

        *(v18 + 2) = v60 + 1;
        v61 = &v18[16 * v60];
        *(v61 + 4) = v43;
        *(v61 + 5) = v45;
        goto LABEL_12;
      }

      v37 = ~v35;
      while (1)
      {
        v38 = (v28[6] + 16 * v36);
        v39 = *v38 == v32 && v38[1] == v31;
        if (v39 || (sub_1DACBA174() & 1) != 0)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36) & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (qword_1ECBE5BB8 != -1)
      {
        swift_once();
      }

      v46 = off_1ECBE94F8;
      v79 = v25;
      v80 = v27;
      v47 = sub_1DACB94D4();
      v49 = v48;
      if (!v46[2] || (v50 = v47, v51 = v46[5], sub_1DACBA284(), sub_1DACB9404(), v52 = sub_1DACBA2C4(), v53 = -1 << *(v46 + 32), v54 = v52 & ~v53, ((*(v46 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54) & 1) == 0))
      {
LABEL_38:

        v43 = MEMORY[0x1E1276EB0](v21, v76, v23, v22);
        v45 = v58;

        goto LABEL_39;
      }

      v55 = ~v53;
      while (1)
      {
        v56 = (v46[6] + 16 * v54);
        v57 = *v56 == v50 && v56[1] == v49;
        if (v57 || (sub_1DACBA174() & 1) != 0)
        {
          break;
        }

        v54 = (v54 + 1) & v55;
        if (((*(v46 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54) & 1) == 0)
        {
          goto LABEL_38;
        }
      }
    }

    v18 = v78;
LABEL_12:
    ++v17;
    result = v73;
    if (v17 == v74)
    {

      a1 = v70;
      v8 = v69;
      v9 = v68;
      a2 = v67;
      v4 = v66;
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA99090()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return sub_1DAA990D4(v1, v2);
}

uint64_t sub_1DAA990D4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DAA65E94();
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1DACB8A44();
}

uint64_t sub_1DAA99210()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DAA99290(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174() & 1;
  }
}

uint64_t sub_1DAA992E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA9A3AC;

  return sub_1DAA9997C(a1, v1 + v6, v4, v5);
}

void *sub_1DAA993D0()
{
  result = sub_1DAA99408(0xD00000000000001DLL, 0x80000001DACF02C0);
  off_1EE11E140 = result;
  return result;
}

uint64_t sub_1DAA99408(uint64_t a1, unint64_t a2)
{
  v46 = MEMORY[0x1E69E7CD0];
  if (qword_1EE123DD8 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v43 = qword_1EE13E470;
    v3 = [qword_1EE13E470 localizations];
    v4 = sub_1DACB9644();

    v42 = *(v4 + 16);
    if (!v42)
    {
      break;
    }

    v6 = 0;
    *&v5 = 136315138;
    v41 = v5;
    while (v6 < *(v4 + 16))
    {
      v7 = (v4 + 32 + 16 * v6);
      v8 = *v7;
      v9 = v7[1];
      sub_1DACB71E4();
      v10 = sub_1DACB92F4();
      v11 = sub_1DACB92F4();
      v12 = sub_1DACB92F4();
      v13 = sub_1DACB92F4();
      v14 = [v43 localizedStringForKey:v10 value:v11 table:v12 localization:v13];

      sub_1DACB9324();
      v15 = sub_1DACB93A4();
      v17 = v16;

      v18 = v15 == 32 && v17 == 0xE100000000000000;
      if (v18 || (sub_1DACBA174() & 1) != 0)
      {

        if (qword_1EE11D350 != -1)
        {
          swift_once();
        }

        v19 = sub_1DACB8C94();
        __swift_project_value_buffer(v19, qword_1EE13E240);
        sub_1DACB71E4();
        sub_1DACB71E4();
        v20 = sub_1DACB8C74();
        v21 = sub_1DACB9904();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v45[0] = v23;
          *v22 = 136315394;
          *(v22 + 4) = sub_1DAA7ABE4(a1, a2, v45);
          *(v22 + 12) = 2080;
          v24 = sub_1DAA7ABE4(v8, v9, v45);

          *(v22 + 14) = v24;
          _os_log_impl(&dword_1DAA3F000, v20, v21, "Could not find unnecessary words for key=%s, localizations=%s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E1278C00](v23, -1, -1);
          MEMORY[0x1E1278C00](v22, -1, -1);
        }

        else
        {
        }
      }

      else
      {

        if (qword_1EE11D350 != -1)
        {
          swift_once();
        }

        v25 = sub_1DACB8C94();
        __swift_project_value_buffer(v25, qword_1EE13E240);
        sub_1DACB71E4();
        v26 = sub_1DACB8C74();
        v27 = sub_1DACB98F4();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v45[0] = v29;
          *v28 = v41;
          *(v28 + 4) = sub_1DAA7ABE4(v15, v17, v45);
          _os_log_impl(&dword_1DAA3F000, v26, v27, "Found unnecessary words: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x1E1278C00](v29, -1, -1);
          MEMORY[0x1E1278C00](v28, -1, -1);
        }

        v45[0] = v15;
        v45[1] = v17;
        sub_1DAA99C4C();
        v30 = sub_1DACB9874();

        v31 = *(v30 + 16);
        if (v31)
        {
          v32 = (v30 + 56);
          do
          {
            v33 = *(v32 - 3);
            v34 = *(v32 - 2);
            v35 = *(v32 - 1);
            v36 = *v32;
            sub_1DACB71E4();
            v37 = MEMORY[0x1E1276EB0](v33, v34, v35, v36);
            v39 = v38;

            sub_1DAA4C8A0(v45, v37, v39);

            v32 += 4;
            --v31;
          }

          while (v31);
        }
      }

      if (++v6 == v42)
      {

        return v46;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DAA9997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAA9A3AC;

  return v11(a3, a4);
}

uint64_t sub_1DAA99A98()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE13E240);
  __swift_project_value_buffer(v0, qword_1EE13E240);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAA99B90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAA94980;

  return sub_1DAA99C30();
}

unint64_t sub_1DAA99C4C()
{
  result = qword_1EE11D260;
  if (!qword_1EE11D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D260);
  }

  return result;
}

uint64_t sub_1DAA99CA0()
{
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  __swift_project_value_buffer(v1, qword_1EE13E2D0);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Will fetch for deprecated stocks using noop deprecation service", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DAA99DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DAA58DCC(0, &qword_1EE11F760, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DAA99FFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DAA58DCC(0, &qword_1EE11F760, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C34();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DAA9A26C()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE13E2D0);
  __swift_project_value_buffer(v0, qword_1EE13E2D0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

unint64_t sub_1DAA9A358()
{
  result = qword_1EE11D228;
  if (!qword_1EE11D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D228);
  }

  return result;
}

char *sub_1DAA9A3B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DAA9A4D4()
{
  sub_1DAA9A574();
  if (v0 <= 0x3F)
  {
    sub_1DACB7AB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAA9A574()
{
  if (!qword_1EE123A98)
  {
    sub_1DAA8D9E8();
    v0 = sub_1DACB6F64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123A98);
    }
  }
}

uint64_t type metadata accessor for SymbolEntity()
{
  result = qword_1EE123508;
  if (!qword_1EE123508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA9A61C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SymbolEntity.displayRepresentation.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1DAA8E4FC(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  sub_1DAA8E4FC(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v2);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_1DACB7904();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = sub_1DACB92C4();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DACB92B4();
  sub_1DACB92A4();
  v17 = v1[5];
  v18 = v1[6];
  sub_1DACB9294();
  sub_1DACB92A4();
  sub_1DACB78F4();
  sub_1DACB92B4();
  sub_1DACB92A4();
  v19 = v1[3];
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  (*(v12 + 56))(v10, 0, 1, v11);
  v20 = sub_1DACB7164();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  return sub_1DACB7174();
}

uint64_t sub_1DAA9AADC@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA4A0F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7724();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  sub_1DACB7714();
  sub_1DACB7704();
  MEMORY[0x1E12751C0](0xD000000000000010, 0x80000001DACE59F0);
  v17 = 0x2F6C6F626D79732FLL;
  v18 = 0xE800000000000000;
  MEMORY[0x1E1276F20](v12, v13);
  MEMORY[0x1E12751D0](v17, v18);
  sub_1DACB76D4();
  v14 = sub_1DACB7AB4();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v6, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return (*(v15 + 32))(a1, v6, v14);
  }

  return result;
}

uint64_t SymbolEntity.init(from:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = a1[7];
  v50 = a1[6];
  v51 = v14;
  v52 = *(a1 + 16);
  v15 = a1[3];
  v46 = a1[2];
  v47 = v15;
  v16 = a1[5];
  v48 = a1[4];
  v49 = v16;
  v17 = a1[1];
  v44 = *a1;
  v45 = v17;
  sub_1DAA9A574();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v4 + 104);
  v30 = v3;
  v31 = v4 + 104;
  v19(v7, v18, v3);
  sub_1DACB7914();
  v33 = sub_1DACB6F34();
  v20 = v34;
  *(v34 + 16) = v33;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v19(v7, v18, v3);
  sub_1DACB7914();
  v32 = sub_1DACB6F34();
  *(v20 + 24) = v32;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v19(v7, v18, v30);
  sub_1DACB7914();
  v21 = sub_1DACB6F34();
  v22 = v45;
  *v20 = v45;
  v23 = *(&v48 + 1);
  v24 = v49;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v25 = *(&v49 + 1);
  v26 = v50;
  *(v20 + 48) = v24;
  *(v20 + 56) = v25;
  *(v20 + 64) = v26;
  v41 = v50;
  v42 = v51;
  v43 = v52;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  v40 = v49;
  v35 = v44;
  v36 = v45;
  v27 = *(type metadata accessor for SymbolEntity() + 40);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA9AADC(v20 + v27);
  v35 = v22;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v35 = v46;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  v35 = v47;
  sub_1DACB71E4();
  sub_1DACB6EE4();
  return sub_1DAA9B1C8(&v44);
}

uint64_t sub_1DAA9B234(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7AB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAA9B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DACB7AB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAA9B398(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v31 = *(a1 + 56);
  v32 = *(a1 + 48);
  v30 = *(a1 + 64);
  v27 = *(a1 + 80);
  v28 = *(a1 + 72);
  v23 = *(a1 + 96);
  v24 = *(a1 + 88);
  v16 = *(a1 + 104);
  v20 = *(a1 + 112);
  v13 = *(a1 + 120);
  v18 = *(a1 + 128);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v29 = *(a2 + 64);
  v25 = *(a2 + 80);
  v26 = *(a2 + 72);
  v21 = *(a2 + 96);
  v22 = *(a2 + 88);
  v19 = *(a2 + 112);
  v14 = *(a2 + 120);
  v15 = *(a2 + 104);
  v17 = *(a2 + 128);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DACBA174() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1DACBA174() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_1DACBA174() & 1) == 0 || (v32 != v11 || v31 != v10) && (sub_1DACBA174() & 1) == 0 || (sub_1DAA940FC(v30, v29) & 1) == 0 || (v28 != v26 || v27 != v25) && (sub_1DACBA174() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v20)
  {
    if (!v19 || (v16 != v15 || v20 != v19) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v13 == v14 && v18 == v17 || (sub_1DACBA174() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1DAA9B684()
{
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v7[8] = v0[8];
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1DAA9B6F0(v7);
  v5 = *sub_1DAA9B6E0(v7);
  return swift_unknownObjectRetain();
}

uint64_t sub_1DAA9B6FC@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA53000(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v44 - v11;
  v12 = sub_1DACB7AB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    goto LABEL_6;
  }

  v21 = v20;
  swift_unknownObjectRetain();
  v22 = [v21 contentURL];
  if (!v22)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_1DACB9A34();
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_1DAA928A0(v7, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      return (*(v13 + 56))(a1, 1, 1, v12);
    }

    else
    {
      URL.replacingHostWithStocksHost()(a1);
      (*(v13 + 8))(v7, v12);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  v47 = v10;
  v48 = v1;
  v49 = a1;
  v23 = v22;
  sub_1DACB7A44();

  (*(v13 + 32))(v19, v17, v12);
  v46 = objc_opt_self();
  sub_1DAB4CC70();
  v24 = swift_allocObject();
  v44 = xmmword_1DACC1D20;
  v25 = MEMORY[0x1E69E6158];
  *(v24 + 16) = xmmword_1DACC1D20;
  *(v24 + 56) = v25;
  *(v24 + 32) = 0x656C6369747261;
  *(v24 + 40) = 0xE700000000000000;
  v45 = sub_1DACB9634();

  sub_1DAA53000(0, &qword_1EE123B80, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  v26 = *(sub_1DACB7684() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  *(swift_allocObject() + 16) = v44;
  v29 = sub_1DACB79E4();
  v31 = v30;
  sub_1DACB7B54();
  sub_1DAA563C0(v29, v31);
  sub_1DACB7674();

  v32 = sub_1DACB9634();

  v33 = v45;
  v34 = [v46 fc:v45 NewsURLWithPathComponents:v32 queryItems:0 internal:?];

  if (v34)
  {
    v35 = v47;
    sub_1DACB7A44();

    v36 = 0;
    v37 = v50;
  }

  else
  {
    v36 = 1;
    v37 = v50;
    v35 = v47;
  }

  v39 = *(v13 + 56);
  v39(v35, v36, 1, v12);
  sub_1DAB4CCC4(v35, v37);
  if ((*(v13 + 48))(v37, 1, v12) == 1)
  {
    (*(v13 + 8))(v19, v12);
    swift_unknownObjectRelease();
    sub_1DAA928A0(v37, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    v40 = v49;
    v41 = 1;
  }

  else
  {
    v42 = v49;
    URL.replacingHostWithStocksHost()(v49);
    swift_unknownObjectRelease();
    v43 = *(v13 + 8);
    v43(v19, v12);
    v43(v37, v12);
    v40 = v42;
    v41 = 0;
  }

  return (v39)(v40, v41, 1, v12);
}

uint64_t URL.replacingHostWithStocksHost()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1DAA52F58(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  sub_1DAA52F58(0, &qword_1EE1252C0, MEMORY[0x1E69681B8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v12 = sub_1DACB7724();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB76C4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DAB1FAB0(v11, &qword_1EE1252C0, MEMORY[0x1E69681B8]);
    v17 = sub_1DACB7AB4();
    return (*(*(v17 - 8) + 16))(a1, v2, v17);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    MEMORY[0x1E12751C0](0xD000000000000010, 0x80000001DACE59F0);
    sub_1DACB76D4();
    (*(v13 + 8))(v16, v12);
    v19 = sub_1DACB7AB4();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      sub_1DAB1FAB0(v7, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      return (*(v20 + 16))(a1, v2, v19);
    }

    else
    {
      return (*(v20 + 32))(a1, v7, v19);
    }
  }
}

uint64_t sub_1DAA9C01C()
{
  v1 = v0[7];
  v8[6] = v0[6];
  v8[7] = v1;
  v8[8] = v0[8];
  v2 = v0[3];
  v8[2] = v0[2];
  v8[3] = v2;
  v3 = v0[5];
  v8[4] = v0[4];
  v8[5] = v3;
  v4 = v0[1];
  v8[0] = *v0;
  v8[1] = v4;
  sub_1DAA9B6F0(v8);
  v5 = [*sub_1DAA9B6E0(v8) identifier];
  v6 = sub_1DACB9324();

  return v6;
}

uint64_t sub_1DAA9C0D8()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D540 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *(v4 + 176);
  sub_1DAA640AC(v4);
  [v6 enabledForCurrentLevel_];
  LOBYTE(v9) = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DAA9C250(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 64);
  v17 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v6)
  {
    v16 = a2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v7, v5);
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v10 = v17;
          a2 = v16;
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * v7 + 32);
        sub_1DACB71F4();
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        v9 = *(v17 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++v7;
      if (a2 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v11 = *(v3 + 64);
  *(v3 + 64) = v10;

  type metadata accessor for LanguageSettingsObserverProxy();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v13 = swift_beginAccess();
  MEMORY[0x1E12770F0](v13);
  if (*((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v3 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  return swift_endAccess();
}