unint64_t sub_1DAC276E8()
{
  result = qword_1ECBE92A8;
  if (!qword_1ECBE92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE92A8);
  }

  return result;
}

unint64_t sub_1DAC27740()
{
  result = qword_1ECBE92B0;
  if (!qword_1ECBE92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE92B0);
  }

  return result;
}

uint64_t sub_1DAC277B8(uint64_t a1, char *a2, char *a3)
{
  v65 = a1;
  v67 = 0x73752D6E65;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7CC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v3 + 16, v73);
  v61 = v12;
  v16 = *(v12 + 16);
  v62 = v11;
  v60 = v16;
  v16(v15, a2, v11);
  v64 = v7;
  v17 = *(v7 + 16);
  v63 = v10;
  v66 = v6;
  v59 = v17;
  v17(v10, a3, v6);
  v18 = [objc_opt_self() sharedPreferences];
  v19 = v18;
  if (!v18)
  {
    v58 = 0xE500000000000000;
LABEL_8:

    v56 = 0xE200000000000000;
    v55 = 21333;
    goto LABEL_9;
  }

  v20 = [v18 stocksLanguageCode];
  if (v20)
  {
    v21 = v20;
    v67 = sub_1DACB9324();
    v58 = v22;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  v23 = [v19 stocksCountryCode];
  if (!v23)
  {
    goto LABEL_8;
  }

  v24 = v23;
  v55 = sub_1DACB9324();
  v56 = v25;

LABEL_9:
  v26 = v74;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
  v57 = &v54;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v33 = type metadata accessor for YahooBaseOperationFactory();
  v71 = v33;
  v72 = &off_1F56825C8;
  v70[0] = v32;
  v34 = type metadata accessor for YahooMultiQuoteOperation(0);
  v35 = objc_allocWithZone(v34);
  v36 = v71;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v54 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v40;
  v69[3] = v33;
  v69[4] = &off_1F56825C8;
  v69[0] = v42;
  *&v35[qword_1EE126B00] = v65;
  sub_1DAA4D678(v69, &v35[qword_1EE126B08]);
  v43 = &v35[qword_1EE126B10];
  v44 = v58;
  *v43 = v67;
  v43[1] = v44;
  v45 = v56;
  v43[2] = v55;
  v43[3] = v45;
  v46 = v62;
  v60(&v35[qword_1ECBE9340], v15, v62);
  v47 = v63;
  v48 = v66;
  v59(&v35[qword_1EE126B18], v63, v66);
  v68.receiver = v35;
  v68.super_class = v34;
  sub_1DACB71E4();
  v49 = objc_msgSendSuper2(&v68, sel_init);
  (*(v64 + 8))(v47, v48);
  (*(v61 + 8))(v15, v46);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v73);
  sub_1DAC28494();
  sub_1DACB82E4();
  v50 = v49;
  sub_1DACB8294();
  sub_1DACB8B84();

  v51 = sub_1DACB89D4();
  sub_1DAC28520(0, &qword_1EE11FC98, type metadata accessor for Quote, MEMORY[0x1E69E5E28]);
  v52 = sub_1DACB8A64();

  return v52;
}

uint64_t sub_1DAC27DEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for Quote();
  v63 = *(v3 - 1);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for YahooMultiQuoteItem(0);
  v62 = *(v7 - 1);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1DAC28520(0, &unk_1EE11F6E0, type metadata accessor for Quote, MEMORY[0x1E69E6EC8]);
  result = sub_1DACB9E74();
  v13 = result;
  v14 = 0;
  v15 = *(v11 + 64);
  v57 = v11 + 64;
  v61 = v11;
  v16 = 1 << *(v11 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v59 = result + 64;
  v60 = result;
  v58 = v19;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v64 = (v18 - 1) & v18;
LABEL_10:
      v88 = v20 | (v14 << 6);
      v23 = *(v61 + 56);
      v24 = (*(v61 + 48) + 16 * v88);
      v26 = *v24;
      v25 = v24[1];
      v89 = v26;
      v71 = v25;
      sub_1DAC28594(v23 + *(v62 + 72) * v88, v10, type metadata accessor for YahooMultiQuoteItem);
      v27 = v7[6];
      v28 = &v10[v7[5]];
      v87 = *v28;
      v86 = v28[8];
      v85 = *&v10[v27];
      v84 = v10[v27 + 8];
      v29 = v7[8];
      v30 = &v10[v7[7]];
      v83 = *v30;
      v82 = v30[8];
      v81 = *&v10[v29];
      v80 = v10[v29 + 8];
      v31 = v7[10];
      v32 = &v10[v7[9]];
      v79 = *v32;
      v78 = v32[8];
      v77 = *&v10[v31];
      v76 = v10[v31 + 8];
      v33 = v7[12];
      v34 = &v10[v7[11]];
      v75 = *v34;
      v74 = v34[8];
      v35 = *&v10[v33 + 8];
      v73 = *&v10[v33];
      v65 = v35;
      v72 = v10[v7[13]];
      v36 = v3[13];
      v37 = sub_1DACB7CC4();
      v38 = *(*(v37 - 8) + 56);
      v38(&v6[v36], 1, 1, v37);
      v38(&v6[v3[14]], 1, 1, v37);
      sub_1DAC28594(&v10[v7[14]], &v6[v3[15]], sub_1DAA492B4);
      v39 = v10[v7[18]];
      v69 = v10[v7[17]];
      v70 = v39;
      v40 = v10[v7[19]];
      v41 = &v10[v7[20]];
      v68 = *v41;
      LODWORD(v41) = v41[8];
      v66 = v40;
      v67 = v41;
      v38(&v6[v3[20]], 1, 1, v37);
      v38(&v6[v3[21]], 1, 1, v37);
      v42 = v65;
      v43 = v71;
      sub_1DAC28594(v10, &v6[v3[23]], sub_1DAA492B4);
      v44 = qword_1EE123A08;
      sub_1DACB71E4();
      sub_1DACB71E4();
      if (v44 != -1)
      {
        swift_once();
      }

      v45 = sub_1DACB7F54();
      v46 = __swift_project_value_buffer(v45, qword_1EE13E458);
      (*(*(v45 - 8) + 16))(&v6[v3[24]], v46, v45);
      v47 = &v6[v3[22]];
      sub_1DACB7CB4();
      sub_1DAC285FC(v10);
      *v6 = v87;
      v6[8] = v86;
      *(v6 + 2) = v85;
      v6[24] = v84;
      *(v6 + 4) = v83;
      v6[40] = v82;
      *(v6 + 6) = v81;
      v6[56] = v80;
      *(v6 + 8) = v79;
      v6[72] = v78;
      *(v6 + 10) = v77;
      v6[88] = v76;
      *(v6 + 12) = v75;
      v6[104] = v74;
      *(v6 + 14) = v73;
      *(v6 + 15) = v42;
      v6[128] = v72;
      v48 = v70;
      v6[v3[16]] = v69;
      v6[v3[17]] = v48;
      v6[v3[18]] = v66;
      v49 = &v6[v3[19]];
      *v49 = v68;
      v49[8] = v67;
      v50 = v88;
      *(v59 + ((v88 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v88;
      v13 = v60;
      v51 = (*(v60 + 48) + 16 * v50);
      *v51 = v89;
      v51[1] = v43;
      result = sub_1DAA7BD70(v6, *(v13 + 56) + *(v63 + 72) * v50);
      v52 = *(v13 + 16);
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        break;
      }

      *(v13 + 16) = v54;
      v19 = v58;
      v18 = v64;
      if (!v64)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        *v56 = v13;
        return result;
      }

      v22 = *(v57 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v64 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAC28494()
{
  if (!qword_1EE126AF0)
  {
    sub_1DAC28520(255, &qword_1EE126AF8, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E5E28]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126AF0);
    }
  }
}

void sub_1DAC28520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAC28594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC285FC(uint64_t a1)
{
  v2 = type metadata accessor for YahooMultiQuoteItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC28658(uint64_t result)
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

  result = sub_1DAA9A3B0(result, v11, 1, v3);
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

uint64_t sub_1DAC287A4(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1DACB9E14();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_1DACB9E14();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DAC288A4(uint64_t result)
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

  result = sub_1DAADC4CC(result, v11, 1, v3);
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

uint64_t sub_1DAC2899C(uint64_t result)
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

  result = sub_1DAADC60C(result, v11, 1, v3);
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

uint64_t sub_1DAC28A94(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1DAADC7E8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1DACB7684();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DAC28C24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DACB9E14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DACB9E14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DAA4208C(0, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0, MEMORY[0x1E69E62F8]);
          sub_1DAC28FB4(&qword_1EE11F9D8, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1DAB74CEC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DAA420F4(0, &qword_1EE11F908, 0x1E69B52E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC28DEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DACB9E14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DACB9E14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DAA4208C(0, &qword_1EE11FA10, &qword_1EE11F938, 0x1E69B6E30, MEMORY[0x1E69E62F8]);
          sub_1DAC28FB4(&unk_1EE11FA00, &qword_1EE11FA10, &qword_1EE11F938, 0x1E69B6E30);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1DAB74D6C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DAA420F4(0, &qword_1EE11F938, 0x1E69B6E30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC28FB4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA4208C(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

StocksCore::ChartRange_optional __swiftcall ChartRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChartRange.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x796144656E6FLL;
    v8 = 0x68746E6F4D656E6FLL;
    v9 = 0x6E6F4D6565726874;
    if (v1 != 3)
    {
      v9 = 0x68746E6F4D786973;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6B656557656E6FLL;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x7261655965766966;
    v3 = 0x73726165596E6574;
    if (v1 != 9)
    {
      v3 = 7105633;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x61446F5472616579;
    v5 = 0x72616559656E6FLL;
    if (v1 != 6)
    {
      v5 = 0x73726165596F7774;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1DAC291E4()
{
  result = qword_1EE11F0A0;
  if (!qword_1EE11F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0A0);
  }

  return result;
}

uint64_t sub_1DAC29238()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB08640();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC29288()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB08640();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC292D8@<X0>(uint64_t *a1@<X8>)
{
  result = ChartRange.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAC29300(uint64_t a1)
{
  v2 = sub_1DAC29414();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAC29354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAC29414();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1DAC293B0(uint64_t a1)
{
  v2 = sub_1DAC29414();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1DAC29414()
{
  result = qword_1EE11F098;
  if (!qword_1EE11F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F098);
  }

  return result;
}

uint64_t type metadata accessor for SDSNewsOperation()
{
  result = qword_1ECBE92F8;
  if (!qword_1ECBE92F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAC294B8()
{
  result = sub_1DACB8204();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DAC29574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_project_boxed_opaque_existential_1((v2 + qword_1ECBE92E0), *(v2 + qword_1ECBE92E0 + 24));
  sub_1DAC2B720(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  *(inited + 32) = 0x6C6F626D7973;
  *(inited + 40) = 0xE600000000000000;
  v13 = *(v3 + qword_1ECBE92D8 + 8);
  *(inited + 48) = *(v3 + qword_1ECBE92D8);
  *(inited + 56) = v13;
  sub_1DACB71E4();
  v14 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAC2B678(inited + 32, sub_1DAA4BD7C);
  v15 = qword_1ECBE92F0;
  v16 = *v11;
  sub_1DACB7CB4();
  v17 = sub_1DABF4244(1, v14, v10, (v3 + v15));

  (*(v7 + 8))(v10, v6);
  v18 = (v17 + *((*MEMORY[0x1E69E7D40] & *v17) + qword_1EE13E480 + 16));
  v19 = *v18;
  v20 = v18[1];
  *v18 = sub_1DAC29844;
  v18[1] = 0;
  sub_1DAA4F910(v19);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  v23 = v17;
  sub_1DACB71F4();
  sub_1DACB8304();

  [v23 start];
}

uint64_t sub_1DAC29890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAC2B348();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC2B720(0, &qword_1ECBE9310, sub_1DAC2B348, MEMORY[0x1E69D6AF8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  sub_1DAC2B3A4(a2, &v27 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAC2B54C(v13, &qword_1ECBE9310, sub_1DAC2B348, MEMORY[0x1E69D6AF8], sub_1DAC2B720);
    sub_1DAA8C2EC();
    v15 = a3 + *(v14 + 48);
    v16 = sub_1DACB8754();
    (*(*(v16 - 8) + 16))(a3, a1, v16);
    *v15 = xmmword_1DACC2620;
    v17 = MEMORY[0x1E69E7CC0];
    *(v15 + 16) = MEMORY[0x1E69E7CC0];
    *(v15 + 24) = v17;
    type metadata accessor for NetworkEvent();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
  }

  else
  {
    sub_1DAC2B438(v13, v9);
    v18 = sub_1DACB8754();
    (*(*(v18 - 8) + 16))(a3, a1, v18);
    sub_1DAC2B5AC(0, &qword_1ECBE9318, &type metadata for SDSNewsResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v19 = v27;
    sub_1DAA75E60(v28, v29);
    v20 = *(v19 + 16);

    sub_1DACB8794();

    v21 = v29;
    if (v29)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }

    sub_1DAA8C2EC();
    v24 = (a3 + *(v23 + 48));
    sub_1DAC2B678(v9, sub_1DAC2B348);
    *v24 = 1;
    v24[1] = v20;
    v25 = MEMORY[0x1E69E7CC0];
    v24[2] = MEMORY[0x1E69E7CC0];
    v24[3] = v25;
    v24[4] = v22;
    v24[5] = v21;
    type metadata accessor for NetworkEvent();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1DAC29BB4(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v60 = a4;
  v61 = a3;
  v72 = sub_1DACB8FB4();
  v5 = *(v72 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1DACB9004();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC2B348();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC2B720(0, &qword_1ECBE9310, sub_1DAC2B348, MEMORY[0x1E69D6AF8]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v58 - v17);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v59 = Strong;
    sub_1DAC2B3A4(a1, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v18;
      v21 = *v18;
      v61(v20, 1);
    }

    else
    {
      sub_1DAC2B438(v18, v62);
      sub_1DAC2B5AC(0, &qword_1ECBE9318, &type metadata for SDSNewsResponse, MEMORY[0x1E69D68E0]);
      v23 = v22;
      sub_1DACB8794();

      v70 = v103;
      if (v103)
      {
        v24 = *&v59[qword_1ECBE92E8];
        v25 = *(v24 + 16);
        if (v25)
        {
          v68 = *(&v104 + 1);
          v69 = *(&v103 + 1);
          v58 = v23;
          v66 = v104;
          v67 = *(&v102 + 1);
          v26 = v24 + 32;
          v64 = (v5 + 8);
          v65 = &v103;
          v63 = (v8 + 8);
          do
          {
            sub_1DAA4D678(v26, &v93);
            v27 = __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
            v28 = *v27;
            if (*(*v27 + 24) == 1)
            {
              v29 = *(v28 + 128);
              v30 = swift_allocObject();
              v31 = v66;
              v32 = v67;
              v30[2] = v28;
              v30[3] = v32;
              v33 = v69;
              v30[4] = v70;
              v30[5] = v33;
              v34 = v68;
              v30[6] = v31;
              v30[7] = v34;
              *&v104 = sub_1DABF4330;
              *(&v104 + 1) = v30;
              *&v102 = MEMORY[0x1E69E9820];
              *(&v102 + 1) = 1107296256;
              *&v103 = sub_1DAA5796C;
              *(&v103 + 1) = &block_descriptor_31;
              v35 = _Block_copy(&v102);
              sub_1DACB71F4();
              sub_1DACB71E4();
              sub_1DACB71E4();
              sub_1DACB71E4();
              sub_1DACB8FD4();
              *&v83 = MEMORY[0x1E69E7CC0];
              sub_1DAC2B6D8(&qword_1EE124040, MEMORY[0x1E69E7F60]);
              sub_1DAC2B720(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
              sub_1DAA6F790();
              v37 = v71;
              v36 = v72;
              sub_1DACB9BB4();
              MEMORY[0x1E1277440](0, v11, v37, v35);
              _Block_release(v35);
              (*v64)(v37, v36);
              (*v63)(v11, v73);
            }

            __swift_destroy_boxed_opaque_existential_1(&v93);
            v26 += 40;
            --v25;
          }

          while (v25);
        }
      }

      sub_1DACB8794();
      v38 = v102;
      sub_1DAA75E60(*(&v102 + 1), v103);
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = 0;
        v41 = MEMORY[0x1E69E7CC0];
        v42 = (v38 + 32);
        while (v40 < *(v38 + 16))
        {
          v116[0] = *v42;
          v43 = v42[1];
          v44 = v42[2];
          v45 = v42[4];
          v116[3] = v42[3];
          v116[4] = v45;
          v116[1] = v43;
          v116[2] = v44;
          v46 = v42[3];
          v113 = v42[2];
          v114 = v46;
          v115 = v42[4];
          v47 = v42[1];
          v111 = *v42;
          v112 = v47;
          sub_1DAC2B49C(v116, &v102);
          sub_1DAC2A49C(&v111, &v102);
          v92[2] = v113;
          v92[3] = v114;
          v92[4] = v115;
          v92[0] = v111;
          v92[1] = v112;
          sub_1DAC2B4F8(v92);
          v99 = v108;
          v100 = v109;
          v101 = v110;
          v95 = v104;
          v96 = v105;
          v97 = v106;
          v98 = v107;
          v93 = v102;
          v94 = v103;
          if (sub_1DAB07190(&v93) == 1)
          {
            v89 = v108;
            v90 = v109;
            v91 = v110;
            v85 = v104;
            v86 = v105;
            v87 = v106;
            v88 = v107;
            v83 = v102;
            v84 = v103;
            sub_1DAC2B54C(&v83, &qword_1ECBE6DD0, &type metadata for Headline, MEMORY[0x1E69E6720], sub_1DAC2B5AC);
          }

          else
          {
            v89 = v108;
            v90 = v109;
            v91 = v110;
            v85 = v104;
            v86 = v105;
            v87 = v106;
            v88 = v107;
            v83 = v102;
            v84 = v103;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_1DAADC60C(0, *(v41 + 2) + 1, 1, v41);
            }

            v49 = *(v41 + 2);
            v48 = *(v41 + 3);
            if (v49 >= v48 >> 1)
            {
              v41 = sub_1DAADC60C((v48 > 1), v49 + 1, 1, v41);
            }

            v76 = v85;
            v77 = v86;
            v81 = v90;
            v82 = v91;
            v79 = v88;
            v80 = v89;
            v78 = v87;
            v74 = v83;
            v75 = v84;
            *(v41 + 2) = v49 + 1;
            v50 = &v41[144 * v49];
            *(v50 + 2) = v74;
            v51 = v75;
            v52 = v76;
            v53 = v78;
            *(v50 + 5) = v77;
            *(v50 + 6) = v53;
            *(v50 + 3) = v51;
            *(v50 + 4) = v52;
            v54 = v79;
            v55 = v80;
            v56 = v82;
            *(v50 + 9) = v81;
            *(v50 + 10) = v56;
            *(v50 + 7) = v54;
            *(v50 + 8) = v55;
          }

          ++v40;
          v42 += 5;
          if (v39 == v40)
          {
            goto LABEL_23;
          }
        }

        __break(1u);

        v95 = v113;
        v96 = v114;
        v97 = v115;
        v93 = v111;
        v94 = v112;
        sub_1DAC2B4F8(&v93);

        __break(1u);
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
LABEL_23:

        *&v102 = v41;
        sub_1DAC2B5AC(0, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
        sub_1DAC2B5FC();
        v57 = sub_1DACB94F4();

        v61(v57, 0);

        sub_1DAC2B678(v62, sub_1DAC2B348);
      }
    }
  }
}

__n128 sub_1DAC2A49C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = sub_1DACB7BE4();
  v4 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1DAC2B720(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = v67 - v9;
  v10 = sub_1DACB7CC4();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = v67 - v14;
  sub_1DAC2B720(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v67 - v17;
  v19 = sub_1DACB7AB4();
  v80 = *(v19 - 8);
  v81 = v19;
  v20 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v79 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v69 = a1[1];
  v70 = v22;
  v23 = a1[3];
  v73 = a1[2];
  v24 = a1[4];
  v25 = a1[5];
  v26 = a1[7];
  v67[3] = a1[6];
  v68 = v25;
  v67[1] = v24;
  v67[2] = v26;
  v27 = a1[8];
  v28 = a1[9];
  *&v83 = v27;
  *(&v83 + 1) = v28;
  v29 = qword_1ECBE5B90;
  sub_1DACB71E4();
  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_1DACB7664();
  __swift_project_value_buffer(v30, qword_1ECBE92C0);
  sub_1DAA642D8();
  v31 = MEMORY[0x1E69E6158];
  sub_1DACB9B44();
  v33 = v32;

  if (!v33)
  {
    sub_1DACB9904();
    sub_1DAC2B720(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1DACC1D20;
    *(v38 + 56) = v31;
    *(v38 + 64) = sub_1DAA443C8();
    *(v38 + 32) = v27;
    *(v38 + 40) = v28;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v37 = sub_1DACB9AD4();
    goto LABEL_7;
  }

  sub_1DACB7A94();

  v34 = v80;
  v35 = v81;
  if ((*(v80 + 48))(v18, 1, v81) == 1)
  {
    sub_1DAC2B54C(v18, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1DAC2B720);
    sub_1DACB9904();
    sub_1DAC2B720(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1DACC1D20;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1DAA443C8();
    *(v36 + 32) = v27;
    *(v36 + 40) = v28;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v37 = sub_1DACB9AD4();
LABEL_7:
    sub_1DACB8C64();

    sub_1DAB76F60(&v83);
LABEL_8:
    v39 = v90;
    *(a2 + 96) = v89;
    *(a2 + 112) = v39;
    *(a2 + 128) = v91;
    v40 = v86;
    *(a2 + 32) = v85;
    *(a2 + 48) = v40;
    v41 = v88;
    *(a2 + 64) = v87;
    *(a2 + 80) = v41;
    result = v84;
    *a2 = v83;
    *(a2 + 16) = result;
    return result;
  }

  (*(v34 + 32))(v79, v18, v35);
  v43 = v73;
  *&v82[0] = v73;
  *(&v82[0] + 1) = v23;
  v44 = v23;
  v45 = sub_1DACB71E4();
  MEMORY[0x1E1275170](v45);
  sub_1DAC2B6D8(&qword_1EE125290, MEMORY[0x1E69693A0]);
  v46 = v74;
  v47 = v92;
  sub_1DACB7CD4();
  if (!v47)
  {
    v92 = 0;
    v55 = v77;
    v54 = v78;
    (*(v77 + 56))(v46, 0, 1, v78);
    v56 = v71;
    (*(v55 + 32))(v71, v46, v54);
    (*(v55 + 16))(v72, v56, v54);
    v57 = sub_1DACB7A04();
    v58 = sub_1DACB92F4();
    if (v68)
    {
      v59 = sub_1DACB92F4();
    }

    else
    {
      v59 = 0;
    }

    v60 = objc_allocWithZone(SCWebHeadline);
    v61 = v72;
    v62 = sub_1DACB7C04();
    v63 = sub_1DACB92F4();
    v64 = [v60 initWithURL:v57 title:v58 shortExcerpt:v59 publishDate:v62 sourceName:v63];

    v65 = v78;
    v66 = *(v77 + 8);
    v66(v61, v78);
    v66(v71, v65);
    (*(v80 + 8))(v79, v81);
    *&v82[0] = v64;
    sub_1DAAD4DD0(v82);
    v89 = v82[6];
    v90 = v82[7];
    v91 = v82[8];
    v85 = v82[2];
    v86 = v82[3];
    v87 = v82[4];
    v88 = v82[5];
    v83 = v82[0];
    v84 = v82[1];
    nullsub_1(&v83);
    goto LABEL_8;
  }

  v48 = v34;

  (*(v77 + 56))(v46, 1, 1, v78);
  sub_1DAC2B54C(v46, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1DAC2B720);
  sub_1DACB9904();
  sub_1DAC2B720(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1DACC1D20;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = sub_1DAA443C8();
  *(v49 + 32) = v43;
  *(v49 + 40) = v44;
  sub_1DAA41DCC();
  sub_1DACB71E4();
  v50 = sub_1DACB9AD4();
  sub_1DACB8C64();

  (*(v48 + 8))(v79, v35);
  sub_1DAB76F60(&v83);
  v51 = v90;
  *(a2 + 96) = v89;
  *(a2 + 112) = v51;
  *(a2 + 128) = v91;
  v52 = v86;
  *(a2 + 32) = v85;
  *(a2 + 48) = v52;
  v53 = v88;
  *(a2 + 64) = v87;
  *(a2 + 80) = v53;
  result = v84;
  *a2 = v83;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1DAC2ADB8@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[7];
  v23 = a1[6];
  v24 = v4;
  v5 = a1[7];
  v25 = a1[8];
  v6 = a1[1];
  v7 = a1[3];
  v19 = a1[2];
  v20 = v7;
  v8 = a1[3];
  v9 = a1[5];
  v21 = a1[4];
  v22 = v9;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v26[6] = v23;
  v26[7] = v5;
  v26[8] = a1[8];
  v26[2] = v19;
  v26[3] = v8;
  v26[4] = v21;
  v26[5] = v3;
  v26[0] = v18[0];
  v26[1] = v6;
  sub_1DAA9B6F0(v26);
  v11 = *sub_1DAA9B6E0(v26);
  sub_1DAAD4CCC(v18, &v17);
  v12 = [swift_unknownObjectRetain() identifier];
  v13 = sub_1DACB9324();
  v15 = v14;
  swift_unknownObjectRelease();

  result = sub_1DAAD4D28(v18);
  *a2 = v13;
  a2[1] = v15;
  return result;
}

uint64_t sub_1DAC2AEB4()
{
  v0 = sub_1DACB7664();
  __swift_allocate_value_buffer(v0, qword_1ECBE92C0);
  __swift_project_value_buffer(v0, qword_1ECBE92C0);
  return sub_1DAC2AF00();
}

uint64_t sub_1DAC2AF00()
{
  v0 = sub_1DACB7664();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1DACB7654();
  sub_1DACB75D4();
  sub_1DACB7634();
  v11 = v1[1];
  v11(v5, v0);
  v11(v10, v0);
  v12 = v1[4];
  v12(v10, v8, v0);
  sub_1DACB75E4();
  sub_1DACB7634();
  v11(v5, v0);
  v11(v10, v0);
  v12(v10, v8, v0);
  sub_1DACB75F4();
  sub_1DACB7634();
  v11(v5, v0);
  v11(v10, v0);
  v12(v10, v8, v0);
  sub_1DACB7604();
  sub_1DACB7634();
  v11(v8, v0);
  return (v11)(v10, v0);
}

uint64_t sub_1DAC2B178()
{
  v1 = *(v0 + qword_1ECBE92D8 + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1ECBE92E0));
  v2 = *(v0 + qword_1ECBE92E8);

  v3 = qword_1ECBE92F0;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1DAC2B214(uint64_t a1)
{
  v2 = *(a1 + qword_1ECBE92D8 + 8);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1ECBE92E0));
  v3 = *(a1 + qword_1ECBE92E8);

  v4 = qword_1ECBE92F0;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_1DAC2B2B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC29574(sub_1DAADF554, v4);
}

void sub_1DAC2B348()
{
  if (!qword_1ECBE9308)
  {
    sub_1DABF47B0();
    v0 = type metadata accessor for SDSBaseOperationResponse();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE9308);
    }
  }
}

uint64_t sub_1DAC2B3A4(uint64_t a1, uint64_t a2)
{
  sub_1DAC2B720(0, &qword_1ECBE9310, sub_1DAC2B348, MEMORY[0x1E69D6AF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2B438(uint64_t a1, uint64_t a2)
{
  sub_1DAC2B348();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1DAC2B5AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DAC2B5FC()
{
  result = qword_1ECBE9320;
  if (!qword_1ECBE9320)
  {
    sub_1DAC2B5AC(255, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9320);
  }

  return result;
}

uint64_t sub_1DAC2B678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAC2B6D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAC2B720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1DAC2B89C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1DACB92F4();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v14;
      v7 = &v1[OBJC_IVAR___SCUpdateUserIDCommand_userID];
      *v7 = v13;
      v7[1] = v6;
      v8 = sub_1DACB92F4();
      v9 = [a1 decodeBoolForKey_];

      v1[OBJC_IVAR___SCUpdateUserIDCommand_overwrite] = v9;
      v12.receiver = v1;
      v12.super_class = ObjectType;
      v10 = objc_msgSendSuper2(&v12, sel_init);

      return v10;
    }
  }

  else
  {

    sub_1DAADFA60(v17);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DAC2BA98(void *a1, uint64_t a2)
{
  v4 = [a1 encryptedValues];
  v5 = sub_1DACB92F4();
  v6 = [v4 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if ((*(a2 + OBJC_IVAR___SCUpdateUserIDCommand_overwrite) & 1) != 0 || !v6)
  {
    v7 = [a1 encryptedValues];
    v8 = *(a2 + OBJC_IVAR___SCUpdateUserIDCommand_userID);
    v9 = *(a2 + OBJC_IVAR___SCUpdateUserIDCommand_userID + 8);
    v10 = sub_1DACB92F4();
    v11 = sub_1DACB92F4();
    [v7 setObject:v10 forKeyedSubscript:v11];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAC2BD30()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DACB8204();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1DAC2BE28(uint64_t a1, uint64_t a2)
{
  v20 = *(v2 + qword_1EE126B00);
  sub_1DACB71E4();
  sub_1DACA8764(&v20);
  sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC2E818(&qword_1EE11FA38);
  v4 = sub_1DACB9864();

  v5 = *(v4 + 16);
  if (v5)
  {
    v17 = a2;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v19 = *(v4 + 8 * v6 + 32);
      swift_bridgeObjectRetain_n();
      v7 = sub_1DACA8764(&v19);
      ++v6;
      MEMORY[0x1EEE9AC00](v7);
      sub_1DAA49A8C(0, &qword_1EE126AF0, sub_1DAC2E794, MEMORY[0x1E69D6B18]);
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_1DACB8B44();

      sub_1DACB9D34();
      v11 = *(v20 + 2);
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (v5 == v6)
      {

        a2 = v17;
        goto LABEL_7;
      }
    }

    __break(1u);

    __break(1u);

    __break(1u);
  }

  else
  {

LABEL_7:
    v12 = sub_1DACB89D4();
    sub_1DAC2E794();
    sub_1DACB8934();

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    sub_1DACB71F4();
    v14 = sub_1DACB89D4();
    sub_1DACB8A64();

    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    sub_1DACB71F4();
    v16 = sub_1DACB89D4();
    sub_1DACB8AA4();
  }
}

uint64_t sub_1DAC2C19C(uint64_t result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      v8 = *(v3 + 32 + 8 * v6);
      type metadata accessor for YahooMultiQuoteItem(0);
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v9;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

void sub_1DAC2C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a4;
  v68 = a3;
  v10 = sub_1DACB8204();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DACB7CC4();
  v72 = *(v67 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1DACB7AB4();
  v64 = *(v71 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v66 = v17;
  v18 = __swift_project_boxed_opaque_existential_1((a5 + qword_1EE126B08), *(a5 + qword_1EE126B08 + 24));
  sub_1DAA49A8C(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 32) = 0x7372656B636974;
  *(inited + 40) = 0xE700000000000000;
  v76[0] = a6;
  sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAC2E818(&qword_1EE123E90);
  sub_1DACB71F4();
  *(inited + 48) = sub_1DACB9214();
  *(inited + 56) = v20;
  strcpy((inited + 64), "crossProduct");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = 0x657A696D6974706FLL;
  *(inited + 88) = 0xE900000000000064;
  v62 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v21 = a5;
  v22 = (a5 + qword_1EE126B10);
  v23 = *(a5 + qword_1EE126B10);
  v63 = v22[1];
  v24 = v22[3];
  v61 = v22[2];
  v25 = qword_1ECBE9340;
  v26 = qword_1EE126B18;
  v27 = *v18;
  v28 = [objc_opt_self() sharedPreferences];
  if (v28)
  {
    v29 = v28;
    v58 = v23;
    v59 = v24;
    v60 = a6;
    v30 = [v28 stocksYQLBaseURL];

    if (v30)
    {
      v52 = 0x80000001DACEFEF0;
      v31 = v70;
      sub_1DACB7A44();

      sub_1DAA4D678(v27 + 16, v76);
      v53 = *(v72 + 16);
      v57 = v21;
      v32 = v65;
      v33 = v67;
      v53(v65, v21 + v25, v67);
      v56 = *(v74 + 16);
      v55 = v10;
      v56(v73, v21 + v26, v10);
      sub_1DAC2E978();
      v54 = v34;
      v35 = objc_allocWithZone(v34);
      v36 = MEMORY[0x1E69E7D40];
      *(v35 + *((*MEMORY[0x1E69E7D40] & *v35) + qword_1EE13E4B0 + 16)) = 2;
      v37 = v64;
      (*(v64 + 16))(v35 + *((*v36 & *v35) + qword_1EE13E4B0 + 24), v31, v71);
      v38 = (v35 + *((*v36 & *v35) + qword_1EE13E4B0 + 32));
      *v38 = 0xD000000000000013;
      v38[1] = v52;
      *(v35 + *((*v36 & *v35) + qword_1EE13E4B0 + 40)) = v62;
      v39 = (v35 + *((*v36 & *v35) + qword_1EE13E4B0 + 48));
      v40 = v63;
      *v39 = v58;
      v39[1] = v40;
      v41 = v59;
      v39[2] = v61;
      v39[3] = v41;
      sub_1DAA4D678(v76, v35 + *((*v36 & *v35) + qword_1EE13E4B0 + 56));
      v53(v35 + *((*v36 & *v35) + qword_1EE13E4B0 + 64), v32, v33);
      v42 = v73;
      v43 = v55;
      v56(v35 + *((*v36 & *v35) + qword_1EE13E4B0 + 72), v73, v55);
      v75.receiver = v35;
      v75.super_class = v54;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v44 = objc_msgSendSuper2(&v75, sel_init);
      (*(v74 + 8))(v42, v43);
      (*(v72 + 8))(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v76);
      (*(v37 + 8))(v70, v71);
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      v47 = v60;
      v46[2] = v45;
      v46[3] = v47;
      v48 = v66;
      v46[4] = sub_1DAA73914;
      v46[5] = v48;
      v49 = v69;
      v46[6] = v68;
      v46[7] = v49;
      v50 = v44;
      sub_1DACB71E4();
      sub_1DACB71F4();
      sub_1DACB8304();

      [v50 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1DAC2CB9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t))
{
  v27 = a5;
  v28 = a4;
  v26 = a3;
  v8 = sub_1DACB7BE4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DAA49A8C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = *a1;
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = *(a1 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (v17)
    {
      a6(v14);
    }

    else
    {
      if (v15)
      {
        v29 = v16;
        v30 = v15;
        v20 = sub_1DACB71E4();
        MEMORY[0x1E1275170](v20);
        sub_1DAC2EA54(&qword_1EE125290, MEMORY[0x1E69693A0]);
        sub_1DACB7CD4();
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v22 = sub_1DACB7CC4();
      (*(*(v22 - 8) + 56))(v13, v21, 1, v22);
      v23 = sub_1DACAB124(v14);
      MEMORY[0x1EEE9AC00](v23);
      *(&v25 - 2) = v26;
      *(&v25 - 1) = v13;
      v24 = sub_1DAB6A988(MEMORY[0x1E69E7CC8], sub_1DAC2EA38, (&v25 - 4), v23);

      sub_1DAC2DC6C(v24);
      v28(v24);

      sub_1DAC2EA9C(v13, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1DAA49A8C);
    }
  }
}

uint64_t sub_1DAC2CEA4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v172 = a4;
  v193 = a1;
  v171 = type metadata accessor for YahooMultiQuoteItem(0);
  v169 = *(v171 - 8);
  v6 = *(v169 + 64);
  v7 = MEMORY[0x1EEE9AC00](v171);
  v194 = v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v170 = v166 - v9;
  v167 = sub_1DACB7BE4();
  v10 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166[1] = v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA49A8C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v196 = v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v195 = v166 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v173 = v166 - v18;
  v19 = *a2;
  v20 = a2[1];
  v21 = a2[2];
  v22 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v22 = v19;
  }

  v175 = v22;
  sub_1DACB71E4();
  v176 = sub_1DAC41E6C(v20);
  v174 = sub_1DAC420E0(v21);
  v23 = *(a3 + 16);
  if (v23)
  {
    v24 = (a3 + 40);
    v25 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v207 = v23;
      v28 = *v24;
      v220 = *(v24 - 1);
      v29 = sub_1DACB93B4();
      v31 = v30;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v219[0] = v25;
      v34 = sub_1DAA4BF3C(v29, v31);
      v35 = v25;
      v36 = v25[2];
      v37 = (v33 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }

      v39 = v33;
      if (v35[3] >= v38)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v42 = v220;
          if (v33)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1DAB65314();
          v42 = v220;
          if (v39)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1DAAA2514(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_1DAA4BF3C(v29, v31);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_120;
        }

        v34 = v40;
        v42 = v220;
        if (v39)
        {
LABEL_5:

          v25 = v219[0];
          v26 = (*(v219[0] + 56) + 16 * v34);
          v27 = v26[1];
          *v26 = v42;
          v26[1] = v28;

          goto LABEL_6;
        }
      }

      v25 = v219[0];
      *(v219[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v43 = (v25[6] + 16 * v34);
      *v43 = v29;
      v43[1] = v31;
      v44 = (v25[7] + 16 * v34);
      *v44 = v42;
      v44[1] = v28;

      v45 = v25[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_117;
      }

      v25[2] = v47;
LABEL_6:
      v24 += 2;
      v23 = v207 - 1;
      if (v207 == 1)
      {
        goto LABEL_19;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v48 = v175;
  v49 = *(v175 + 16);
  if (!v49)
  {
    goto LABEL_115;
  }

  v50 = 0;
  v204 = v49 - 1;
  v51 = 32;
  v52 = v176;
  v54 = v173;
  v53 = v174;
  v168 = v25;
  do
  {
    v220 = v51;
    memcpy(v219, (v48 + v51), 0x1D8uLL);
    v55 = sub_1DACB93B4();
    v57 = v56;
    if (!v25[2])
    {

      goto LABEL_112;
    }

    v58 = v55;
    v207 = v50;
    sub_1DAC2EB60(v219, &v215);
    v59 = sub_1DAA4BF3C(v58, v57);
    v61 = v60;

    if ((v61 & 1) == 0)
    {
      sub_1DAC2EBBC(v219);
      v50 = v207;
      goto LABEL_112;
    }

    v62 = (v25[7] + 16 * v59);
    v63 = v62[1];
    v199 = *v62;
    if (v219[54])
    {
      v64 = v219[54];
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    if (*(v52 + 16))
    {
      if (v219[54])
      {
        v65 = v219[53];
      }

      else
      {
        v65 = 0;
      }

      sub_1DACB71E4();
      sub_1DACB71E4();
      v66 = sub_1DAA4BF3C(v65, v64);
      v68 = v67;

      if (v68)
      {
        v69 = *(v52 + 56) + 72 * v66;
        v208[0] = *v69;
        v71 = *(v69 + 32);
        v70 = *(v69 + 48);
        v72 = *(v69 + 64);
        v208[1] = *(v69 + 16);
        v208[2] = v71;
        v209 = v72;
        v208[3] = v70;
        v211 = *(v69 + 16);
        v212 = *(v69 + 32);
        v213 = *(v69 + 48);
        v214 = *(v69 + 64);
        v210 = *v69;
        sub_1DAB6A0AC(v208, &v215);
        v217 = v212;
        v218[0] = v213;
        *&v218[1] = v214;
        v215 = v210;
        v216 = v211;
        goto LABEL_36;
      }
    }

    else
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
    }

    v217 = 0u;
    memset(v218, 0, 24);
    v215 = 0u;
    v216 = 0u;
LABEL_36:
    v73 = v219[2];
    v201 = v219[4];
    if (v219[4])
    {
      v74 = v219[8];
      v75 = v219[7];
      sub_1DACB71E4();
      if (!*(v53 + 16))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v75 = 0;
      v74 = 0xE000000000000000;
      if (!*(v53 + 16))
      {
LABEL_41:

        goto LABEL_42;
      }
    }

    v76 = sub_1DAA4BF3C(v75, v74);
    v78 = v77;

    if (v78)
    {
      v79 = *(v53 + 56) + 24 * v76;
      v80 = *(v79 + 8);
      v206 = *(v79 + 16);
      v192 = v80;
      sub_1DACB71E4();
      goto LABEL_43;
    }

LABEL_42:
    v192 = 0;
    v206 = 0;
LABEL_43:
    v191 = v219[23];
    v203 = v219[25];
    if (v219[25])
    {
      v81 = v219[29];
      v82 = v219[28];
      sub_1DACB71E4();
    }

    else
    {
      v82 = 0;
      v81 = 0xE000000000000000;
    }

    v83 = *(v53 + 16);
    v200 = v63;
    if (v83)
    {
      v84 = sub_1DAA4BF3C(v82, v81);
      v86 = v85;

      if (v86)
      {
        v87 = *(v53 + 56) + 24 * v84;
        v88 = *(v87 + 8);
        v198 = *(v87 + 16);
        v178 = v88;
        sub_1DACB71E4();
        goto LABEL_51;
      }
    }

    else
    {
    }

    v178 = 0;
    v198 = 0;
LABEL_51:
    v89 = v219[37];
    v202 = v219[39];
    if (v219[39])
    {
      v90 = v219[43];
      v91 = v219[42];
      sub_1DACB71E4();
      if (!*(v53 + 16))
      {
        goto LABEL_56;
      }
    }

    else
    {
      v91 = 0;
      v90 = 0xE000000000000000;
      if (!*(v53 + 16))
      {
LABEL_56:

LABEL_57:
        v96 = 0;
        v97 = 0;
        goto LABEL_58;
      }
    }

    v92 = sub_1DAA4BF3C(v91, v90);
    v94 = v93;

    if ((v94 & 1) == 0)
    {
      goto LABEL_57;
    }

    v95 = *(v53 + 56) + 24 * v92;
    v96 = *(v95 + 8);
    v97 = *(v95 + 16);
    sub_1DACB71E4();
LABEL_58:
    v98 = 1;
    v197 = v97;
    if (*(&v215 + 1) && *&v218[1])
    {
      v210 = *(v218 + 8);
      v99 = sub_1DACB71E4();
      MEMORY[0x1E1275170](v99);
      sub_1DAC2EA54(&qword_1EE125290, MEMORY[0x1E69693A0]);
      v100 = v205;
      sub_1DACB7CD4();
      if (v100)
      {

        v205 = 0;
        v98 = 1;
      }

      else
      {
        v205 = 0;
        v98 = 0;
      }
    }

    v101 = sub_1DACB7CC4();
    (*(*(v101 - 8) + 56))(v54, v98, 1, v101);
    sub_1DAA77630(v172, v195);
    if (v201)
    {
      v102 = v73;
    }

    else
    {
      v102 = 0;
    }

    if (v219[11])
    {
      v103 = v219[9];
    }

    else
    {
      v103 = 0;
    }

    v104 = v219[18];
    if (v219[18])
    {
      v105 = v219[16];
    }

    else
    {
      v105 = 0;
    }

    if (v203)
    {
      v106 = v191;
    }

    else
    {
      v106 = 0;
    }

    v107 = v219[32];
    if (v219[32])
    {
      v108 = v219[30];
    }

    else
    {
      v108 = 0;
    }

    if (v202)
    {
      v109 = v89;
    }

    else
    {
      v109 = 0;
    }

    v110 = v219[46];
    if (v219[46])
    {
      v111 = v219[44];
    }

    else
    {
      v111 = 0;
    }

    v187 = v111;
    v188 = v109;
    v184 = v108;
    v185 = v106;
    v182 = v103;
    v183 = v102;
    v181 = v105;
    v177 = v219[11];
    v112 = v54;
    if (*(&v215 + 1))
    {
      v186 = byte_1DACD7E26[v217];
    }

    else
    {
      v186 = 0;
    }

    v113 = v192;
    v192 = v219[57];
    v114 = v219[58];
    v190 = v219[55];
    v115 = v219[56];
    v180 = v219[51];
    v116 = v219[52];
    sub_1DAA77630(v112, v196);
    v191 = v114;
    v189 = v115;
    v179 = v116;
    if (v113)
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      v117 = v206;
      if (v178)
      {
        goto LABEL_89;
      }
    }

    else
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v117 = 7;
      if (v178)
      {
LABEL_89:

        if (!v96)
        {
          goto LABEL_93;
        }

        goto LABEL_90;
      }
    }

    v198 = 7;
    if (!v96)
    {
LABEL_93:
      v197 = 7;
      goto LABEL_94;
    }

LABEL_90:

LABEL_94:
    v206 = v117;
    if (*(&v215 + 1) && (v118 = *(&v217 + 1), v119 = *&v218[0], sub_1DACB71E4(), sub_1DAC2EA9C(&v215, &unk_1ECBE9350, &type metadata for YahooMultiQuoteResponse.Exchange, MEMORY[0x1E69E6720], sub_1DAA49264), v119))
    {
      v120 = v201;
    }

    else
    {
      v120 = v201;

      v118 = 0;
      v119 = 0xE000000000000000;
    }

    LODWORD(v201) = v110 == 0;
    LODWORD(v178) = v107 == 0;
    v121 = v104 == 0;
    v122 = v177 == 0;
    LODWORD(v202) = v202 == 0;
    v123 = v203 == 0;
    v124 = v120 == 0;
    *&v210 = 0;
    v125 = v205;
    v126 = sub_1DAC2E880(v118, v119);
    v205 = v125;

    if (v126)
    {
      v127 = v210;
    }

    else
    {
      v127 = 0;
    }

    v128 = v170;
    sub_1DABD4334(v195, v170);
    v129 = v171;
    v130 = v128 + *(v171 + 20);
    v131 = v182;
    *v130 = v183;
    *(v130 + 8) = v124;
    v132 = v128 + v129[6];
    *v132 = v131;
    *(v132 + 8) = v122;
    v133 = v128 + v129[7];
    *v133 = v181;
    *(v133 + 8) = v121;
    v134 = v128 + v129[8];
    v135 = v184;
    *v134 = v185;
    *(v134 + 8) = v123;
    v136 = v128 + v129[9];
    *v136 = v135;
    *(v136 + 8) = v178;
    v137 = v128 + v129[10];
    *v137 = v188;
    *(v137 + 8) = v202;
    v138 = v128 + v129[11];
    *v138 = v187;
    *(v138 + 8) = v201;
    v139 = (v128 + v129[12]);
    v140 = v179;
    *v139 = v180;
    v139[1] = v140;
    *(v128 + v129[13]) = v186;
    sub_1DABD4334(v196, v128 + v129[14]);
    sub_1DAC2EBBC(v219);
    v141 = (v128 + v129[15]);
    v142 = v189;
    *v141 = v190;
    v141[1] = v142;
    v143 = (v128 + v129[16]);
    v144 = v191;
    *v143 = v192;
    v143[1] = v144;
    *(v128 + v129[17]) = v206;
    *(v128 + v129[18]) = v198;
    *(v128 + v129[19]) = v197;
    v145 = v128 + v129[20];
    *v145 = v127;
    *(v145 + 8) = !v126;
    sub_1DAC2EC10(v128, v194);
    v146 = v193;
    v147 = *v193;
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v149 = *v146;
    *&v210 = v149;
    v150 = v200;
    v151 = sub_1DAA4BF3C(v199, v200);
    v153 = *(v149 + 16);
    v154 = (v152 & 1) == 0;
    v46 = __OFADD__(v153, v154);
    v155 = v153 + v154;
    if (v46)
    {
      goto LABEL_118;
    }

    v156 = v152;
    if (*(v149 + 24) < v155)
    {
      sub_1DAB631F4(v155, v148);
      v151 = sub_1DAA4BF3C(v199, v150);
      v48 = v175;
      v52 = v176;
      v54 = v173;
      v53 = v174;
      v25 = v168;
      if ((v156 & 1) != (v157 & 1))
      {
        goto LABEL_120;
      }

LABEL_106:
      v50 = v207;
      if ((v156 & 1) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_107;
    }

    v48 = v175;
    v52 = v176;
    v54 = v173;
    v53 = v174;
    v25 = v168;
    if (v148)
    {
      goto LABEL_106;
    }

    v160 = v151;
    sub_1DAB67390();
    v151 = v160;
    v50 = v207;
    if ((v156 & 1) == 0)
    {
LABEL_109:
      v159 = v210;
      *(v210 + 8 * (v151 >> 6) + 64) |= 1 << v151;
      v161 = (v159[6] + 16 * v151);
      v162 = v200;
      *v161 = v199;
      v161[1] = v162;
      sub_1DAC2EC10(v194, v159[7] + *(v169 + 72) * v151);
      v163 = v159[2];
      v46 = __OFADD__(v163, 1);
      v164 = v163 + 1;
      if (v46)
      {
        goto LABEL_119;
      }

      v159[2] = v164;
      goto LABEL_111;
    }

LABEL_107:
    v158 = v151;

    v159 = v210;
    sub_1DAC2EC74(v194, *(v210 + 56) + *(v169 + 72) * v158);
LABEL_111:
    sub_1DAC2EA9C(v54, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1DAA49A8C);
    *v193 = v159;
LABEL_112:
    if (v204 == v50)
    {
      goto LABEL_115;
    }

    ++v50;
    v51 = v220 + 472;
  }

  while (v50 < *(v48 + 16));
  __break(1u);
LABEL_115:
}

uint64_t sub_1DAC2DC6C(uint64_t a1)
{
  v45[1] = swift_getObjectType();
  sub_1DAA49A8C(0, &qword_1EE1266E8, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v45 - v5;
  v46 = v1;
  v7 = *(v1 + qword_1EE126B00);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 40;
    *&v50 = *(v7 + 16);
    v47 = v8 - 1;
    v11 = MEMORY[0x1E69E7CC0];
    v48 = v7 + 40;
    do
    {
      v49 = v11;
      v12 = (v10 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v9 = v13 + 1;
        v16 = *(a1 + 16);
        sub_1DACB71E4();
        if (!v16)
        {
          break;
        }

        v17 = sub_1DAA4BF3C(v15, v14);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = v17;
        v20 = *(a1 + 56);
        v21 = type metadata accessor for YahooMultiQuoteItem(0);
        v22 = *(v21 - 8);
        sub_1DAC2EAFC(v20 + *(v22 + 72) * v19, v6);

        v23 = *(v22 + 56);
        v11 = v22 + 56;
        v23(v6, 0, 1, v21);
        sub_1DAC2EA9C(v6, &qword_1EE1266E8, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6720], sub_1DAA49A8C);
        v12 += 2;
        v13 = v9;
        if (v50 == v9)
        {
          v11 = v49;
          goto LABEL_14;
        }
      }

      v24 = type metadata accessor for YahooMultiQuoteItem(0);
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      sub_1DAC2EA9C(v6, &qword_1EE1266E8, type metadata accessor for YahooMultiQuoteItem, MEMORY[0x1E69E6720], sub_1DAA49A8C);
      v11 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAA5859C(0, *(v11 + 16) + 1, 1);
        v11 = v52;
      }

      v27 = *(v11 + 16);
      v26 = *(v11 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_1DAA5859C((v26 > 1), v27 + 1, 1);
        v28 = v27 + 1;
        v11 = v52;
      }

      *(v11 + 16) = v28;
      v29 = v11 + 16 * v27;
      *(v29 + 32) = v15;
      *(v29 + 40) = v14;
      v10 = v48;
    }

    while (v47 != v13);
LABEL_14:
    if (*(v11 + 16))
    {
      goto LABEL_17;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
  }

LABEL_17:
  sub_1DACB9904();
  sub_1DAA49A8C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  v50 = xmmword_1DACC1D20;
  *(v30 + 16) = xmmword_1DACC1D20;
  v31 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E1277130](v11, MEMORY[0x1E69E6158]);
  v34 = v33;
  *(v30 + 56) = v31;
  *(v30 + 64) = sub_1DAA443C8();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  sub_1DAA41DCC();
  v35 = sub_1DACB9AD4();
  sub_1DACB8C64();

  v36 = sub_1DACB92F4();
  v37 = NSClassFromString(v36);

  if (v37)
  {
  }

  if (qword_1EE124160 != -1)
  {
LABEL_30:
    swift_once();
  }

  sub_1DAC2EA54(&qword_1ECBE9348, type metadata accessor for YahooMultiQuoteOperation);
  sub_1DACB7F84();
  if (v51 > 3u)
  {
  }

  if (v51 <= 1u)
  {
    if (v51)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = v50;
      sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v39 + 56) = v44;
      *(v39 + 64) = sub_1DAC2E818(&qword_1EE123E80);
      *(v39 + 32) = v11;
      v41 = "[STAGING] [Yahoo] Quote response is missing entry for %{public}@";
      v42 = 64;
    }

    else
    {
      v39 = swift_allocObject();
      *(v39 + 16) = v50;
      sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v39 + 56) = v40;
      *(v39 + 64) = sub_1DAC2E818(&qword_1EE123E80);
      *(v39 + 32) = v11;
      v41 = "[PROD] [Yahoo] Quote response is missing entry for %{public}@";
      v42 = 61;
    }

    goto LABEL_28;
  }

  if (v51 != 2)
  {
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v50;
  sub_1DAA49264(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  *(v39 + 56) = v43;
  *(v39 + 64) = sub_1DAC2E818(&qword_1EE123E80);
  *(v39 + 32) = v11;
  v41 = "[QA] [Yahoo] Quote response is missing entry for %{public}@";
  v42 = 59;
LABEL_28:
  MEMORY[0x1E1275DD0](v41, v42, 2, v39);
}

uint64_t sub_1DAC2E354()
{
  v1 = *(v0 + qword_1EE126B00);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE126B08));
  v2 = *(v0 + qword_1EE126B10 + 8);
  v3 = *(v0 + qword_1EE126B10 + 24);

  v4 = qword_1ECBE9340;
  v5 = sub_1DACB7CC4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = qword_1EE126B18;
  v7 = sub_1DACB8204();
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

uint64_t sub_1DAC2E43C(uint64_t a1)
{
  v2 = *(a1 + qword_1EE126B00);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE126B08));
  v3 = *(a1 + qword_1EE126B10 + 8);
  v4 = *(a1 + qword_1EE126B10 + 24);

  v5 = qword_1ECBE9340;
  v6 = sub_1DACB7CC4();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = qword_1EE126B18;
  v8 = sub_1DACB8204();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1 + v7, v8);
}

uint64_t sub_1DAC2E528(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC2BE28(sub_1DAADF554, v4);
}

void sub_1DAC2E5F8()
{
  sub_1DAA49A8C(319, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DAA49264(319, &qword_1EE11F998, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DAA49264(319, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DAA49264(319, &qword_1EE1237C0, &type metadata for QuoteSource, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DAC2E794()
{
  if (!qword_1EE126AF8)
  {
    type metadata accessor for YahooMultiQuoteItem(255);
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126AF8);
    }
  }
}

uint64_t sub_1DAC2E818(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49264(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1DAC2E880(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1DACB9C74();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

void sub_1DAC2E978()
{
  if (!qword_1EE126C28)
  {
    sub_1DAC2E9D4();
    v0 = type metadata accessor for YahooBaseOperation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126C28);
    }
  }
}

unint64_t sub_1DAC2E9D4()
{
  result = qword_1EE126C30;
  if (!qword_1EE126C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126C30);
  }

  return result;
}

uint64_t sub_1DAC2EA54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAC2EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1DAC2EAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooMultiQuoteItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2EC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooMultiQuoteItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2EC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooMultiQuoteItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1DAC2ECD8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1DAC2ED7C(uint64_t a1, char *a2, char *a3)
{
  v65 = a1;
  v67 = 0x73752D6E65;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7CC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v3 + 16, v73);
  v61 = v12;
  v16 = *(v12 + 16);
  v62 = v11;
  v60 = v16;
  v16(v15, a2, v11);
  v64 = v7;
  v17 = *(v7 + 16);
  v63 = v10;
  v66 = v6;
  v59 = v17;
  v17(v10, a3, v6);
  v18 = [objc_opt_self() sharedPreferences];
  v19 = v18;
  if (!v18)
  {
    v58 = 0xE500000000000000;
LABEL_8:

    v56 = 0xE200000000000000;
    v55 = 21333;
    goto LABEL_9;
  }

  v20 = [v18 stocksLanguageCode];
  if (v20)
  {
    v21 = v20;
    v67 = sub_1DACB9324();
    v58 = v22;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  v23 = [v19 stocksCountryCode];
  if (!v23)
  {
    goto LABEL_8;
  }

  v24 = v23;
  v55 = sub_1DACB9324();
  v56 = v25;

LABEL_9:
  v26 = v74;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
  v57 = &v54;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v33 = type metadata accessor for YahooBaseOperationFactory();
  v71 = v33;
  v72 = &off_1F56825C8;
  v70[0] = v32;
  v34 = type metadata accessor for YahooQuoteDetailOperation(0);
  v35 = objc_allocWithZone(v34);
  v36 = v71;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v54 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v40;
  v69[3] = v33;
  v69[4] = &off_1F56825C8;
  v69[0] = v42;
  *&v35[qword_1EE127038] = v65;
  sub_1DAA4D678(v69, &v35[qword_1EE127040]);
  v43 = &v35[qword_1EE127048];
  v44 = v58;
  *v43 = v67;
  v43[1] = v44;
  v45 = v56;
  v43[2] = v55;
  v43[3] = v45;
  v46 = v62;
  v60(&v35[qword_1ECBE9AC8], v15, v62);
  v47 = v63;
  v48 = v66;
  v59(&v35[qword_1EE127050], v63, v66);
  v68.receiver = v35;
  v68.super_class = v34;
  sub_1DACB71E4();
  v49 = objc_msgSendSuper2(&v68, sel_init);
  (*(v64 + 8))(v47, v48);
  (*(v61 + 8))(v15, v46);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v73);
  sub_1DAC2FD68();
  sub_1DACB82E4();
  v50 = v49;
  sub_1DACB8294();
  sub_1DACB8B84();

  v51 = sub_1DACB89D4();
  sub_1DAC2FDF0(0, &qword_1EE11FCE0, type metadata accessor for QuoteDetail, MEMORY[0x1E69E5E28]);
  v52 = sub_1DACB8A64();

  return v52;
}

uint64_t sub_1DAC2F3B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v77 = a2;
  v89 = sub_1DACB7BE4();
  v5 = *(*(v89 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v89);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v76 - v8;
  sub_1DAA530C8(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v76 - v13;
  v87 = type metadata accessor for QuoteDetail();
  v88 = *(v87 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for YahooQuoteDetailItem(0);
  v86 = *(v18 - 1);
  v19 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  sub_1DAC2FDF0(0, &qword_1EE11F728, type metadata accessor for QuoteDetail, MEMORY[0x1E69E6EC8]);
  result = sub_1DACB9E74();
  v24 = result;
  v25 = 0;
  v26 = *(v22 + 64);
  v78 = v22 + 64;
  v85 = v22;
  v27 = 1 << *(v22 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v83 = result + 64;
  v84 = result;
  v81 = v30;
  v82 = v18;
  if (v29)
  {
    do
    {
      v31 = __clz(__rbit64(v29));
      v91 = (v29 - 1) & v29;
LABEL_10:
      v34 = v31 | (v25 << 6);
      v35 = *(v85 + 56);
      v36 = (*(v85 + 48) + 16 * v34);
      v37 = v36[1];
      v118 = *v36;
      v38 = *(v86 + 72);
      v121 = v34;
      sub_1DAC2FE64(v35 + v38 * v34, v21);
      v39 = &v21[v18[22]];
      v40 = *(v39 + 1);
      if (v40)
      {
        v119 = *v39;
        v120 = v40;
        sub_1DACB71E4();
        v41 = sub_1DACB71E4();
        MEMORY[0x1E1275170](v41);
        sub_1DAC2FF88();
        sub_1DACB7CD4();
        if (v3)
        {

          v42 = sub_1DACB7CC4();
          (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
          v3 = 0;
        }

        else
        {
          v44 = sub_1DACB7CC4();
          (*(*(v44 - 8) + 56))(v14, 0, 1, v44);
        }
      }

      else
      {
        v43 = sub_1DACB7CC4();
        (*(*(v43 - 8) + 56))(v14, 1, 1, v43);
        sub_1DACB71E4();
      }

      v45 = &v21[v18[23]];
      v46 = *(v45 + 1);
      v117 = v37;
      if (v46)
      {
        v119 = *v45;
        v120 = v46;
        v47 = sub_1DACB71E4();
        MEMORY[0x1E1275170](v47);
        sub_1DAC2FF88();
        sub_1DACB7CD4();
        if (!v3)
        {
          v92 = 0;
          v48 = 0;
          goto LABEL_21;
        }

        v92 = 0;
      }

      else
      {
        v92 = v3;
      }

      v48 = 1;
LABEL_21:
      v49 = sub_1DACB7CC4();
      v50 = v90;
      (*(*(v49 - 8) + 56))(v90, v48, 1, v49);
      v116 = *(v21 + 4);
      v115 = v21[40];
      v114 = *(v21 + 6);
      v113 = v21[56];
      v112 = *(v21 + 8);
      v111 = v21[72];
      v110 = *(v21 + 10);
      v109 = v21[88];
      v108 = *(v21 + 12);
      v107 = v21[104];
      v106 = *(v21 + 14);
      v105 = v21[120];
      v104 = *(v21 + 16);
      v103 = v21[136];
      v102 = *(v21 + 18);
      v101 = v21[152];
      v100 = *(v21 + 20);
      v99 = v21[168];
      v98 = *(v21 + 22);
      v97 = v21[184];
      v96 = *(v21 + 24);
      v95 = v21[200];
      v51 = v87;
      v52 = MEMORY[0x1E6969530];
      sub_1DAA89C68(v14, &v17[*(v87 + 60)], &qword_1EE125280, MEMORY[0x1E6969530]);
      sub_1DAA89C68(v50, &v17[v51[16]], &qword_1EE125280, v52);
      v53 = *(v21 + 27);
      v94 = *(v21 + 26);
      v93 = v53;
      v54 = v18[18];
      v55 = v18;
      v56 = v14;
      v57 = MEMORY[0x1E6968FB0];
      sub_1DAA89C68(&v21[v54], &v17[v51[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      sub_1DAA89C68(&v21[v55[19]], &v17[v51[19]], &qword_1EE1263D0, v57);
      v58 = v51[20];
      v59 = sub_1DACB7F54();
      v60 = &v17[v58];
      v14 = v56;
      (*(*(v59 - 8) + 56))(v60, 1, 1, v59);
      v61 = v51[28];
      v62 = v93;
      sub_1DACB71E4();
      sub_1DACB7CB4();
      sub_1DAA776C4(v50);
      sub_1DAA776C4(v56);
      sub_1DAC2FEC8(v21);
      *v17 = v116;
      v17[8] = v115;
      *(v17 + 2) = v114;
      v17[24] = v113;
      *(v17 + 4) = v112;
      v17[40] = v111;
      *(v17 + 6) = v110;
      v17[56] = v109;
      *(v17 + 8) = v108;
      v17[72] = v107;
      *(v17 + 10) = v106;
      v17[88] = v105;
      *(v17 + 12) = v104;
      v17[104] = v103;
      *(v17 + 14) = v102;
      v17[120] = v101;
      *(v17 + 16) = v100;
      v17[136] = v99;
      *(v17 + 18) = v98;
      v17[152] = v97;
      *(v17 + 20) = v96;
      v17[168] = v95;
      v63 = &v17[v51[17]];
      *v63 = v94;
      *(v63 + 1) = v62;
      v64 = &v17[v51[21]];
      *v64 = 0;
      *(v64 + 1) = 0;
      v65 = &v17[v51[22]];
      *v65 = 0;
      *(v65 + 1) = 0;
      v66 = &v17[v51[23]];
      *v66 = 0;
      *(v66 + 1) = 0;
      v67 = &v17[v51[24]];
      *v67 = 0;
      *(v67 + 1) = 0;
      v68 = &v17[v51[25]];
      *v68 = 0;
      *(v68 + 1) = 0;
      v69 = MEMORY[0x1E69E7CC0];
      *&v17[v51[26]] = MEMORY[0x1E69E7CC0];
      *&v17[v51[27]] = v69;
      v70 = v121;
      *(v83 + ((v121 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v121;
      v24 = v84;
      v71 = (*(v84 + 48) + 16 * v70);
      v72 = v117;
      *v71 = v118;
      v71[1] = v72;
      result = sub_1DAC2FF24(v17, *(v24 + 56) + *(v88 + 72) * v70);
      v73 = *(v24 + 16);
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_26;
      }

      *(v24 + 16) = v75;
      v3 = v92;
      v18 = v82;
      v30 = v81;
      v29 = v91;
    }

    while (v91);
  }

  v32 = v25;
  while (1)
  {
    v25 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v25 >= v30)
    {
      *v77 = v24;
      return result;
    }

    v33 = *(v78 + 8 * v25);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v91 = (v33 - 1) & v33;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1DAC2FD68()
{
  if (!qword_1EE126CD8)
  {
    sub_1DAC2FDF0(255, &qword_1EE126CE0, type metadata accessor for YahooQuoteDetailItem, MEMORY[0x1E69E5E28]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126CD8);
    }
  }
}

void sub_1DAC2FDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAC2FE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooQuoteDetailItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC2FEC8(uint64_t a1)
{
  v2 = type metadata accessor for YahooQuoteDetailItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAC2FF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteDetail();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAC2FF88()
{
  result = qword_1EE125290;
  if (!qword_1EE125290)
  {
    sub_1DACB7BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125290);
  }

  return result;
}

uint64_t sub_1DAC2FFE0()
{
  v0 = type metadata accessor for RawAttributionSource(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - v5;
  sub_1DAA6E174(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_1DAA6E1D8();
    v15 = v14;
    v16 = *(v12 + 16);
    sub_1DACB8434();
    sub_1DAA4DC58(&v6[*(v0 + 20)], v10);
    sub_1DAA4D09C(v6, type metadata accessor for RawAttributionSource);
    v17 = sub_1DACB7AB4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) == 1)
    {
      sub_1DAA4DDD0(v10);

LABEL_4:
      v19 = *(v12 + 16);
      sub_1DAA6DD6C(v4);
      sub_1DAC302B4();
      sub_1DACB8454();
      sub_1DAA4D09C(v4, type metadata accessor for RawAttributionSource);
    }

    v20 = sub_1DACB79C4();
    v22 = v21;
    (*(v18 + 8))(v10, v17);
    if (v13 != v20 || v15 != v22)
    {
      v24 = sub_1DACBA174();

      if (v24)
      {
      }

      goto LABEL_4;
    }
  }

  return result;
}

unint64_t sub_1DAC302B4()
{
  result = qword_1EE124AD8;
  if (!qword_1EE124AD8)
  {
    type metadata accessor for RawAttributionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AD8);
  }

  return result;
}

uint64_t sub_1DAC3030C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_1DAA4D460(a2, v6 + 24);
  sub_1DAA4D460(a3, v6 + 64);
  return v6;
}

uint64_t sub_1DAC30384(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  sub_1DAA4D460(a2, v3 + 24);
  sub_1DAA4D460(a3, v3 + 64);
  return v3;
}

void *sub_1DAC303C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  return v0;
}

uint64_t sub_1DAC303F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC30440()
{
  sub_1DAC308F8(0, &qword_1EE11FC70, &qword_1EE11FB78);
  sub_1DACB8BB4();
  v0 = sub_1DACB89D4();
  sub_1DAC308F8(0, &qword_1EE11FC60, &qword_1EE123EA0);
  sub_1DAC30960();
  v1 = sub_1DACB8B64();

  return v1;
}

uint64_t sub_1DAC30534(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = type metadata accessor for AppConfiguration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAA1C0C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[2];
  swift_getObjectType();
  v15 = a1[6];
  v14 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v15);
  v16 = (*(v14 + 40))(a3, v15, v14);
  v17 = a1[11];
  v18 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v17);
  (*(v18 + 8))(v17, v18);
  v19 = *(v8 + 44);
  sub_1DAA4D0FC(v8, type metadata accessor for AppConfiguration);
  *v12 = v19;
  v20 = *MEMORY[0x1E69D63E0];
  v21 = sub_1DACB81B4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v12, v20, v21);
  (*(v22 + 56))(v12, 0, 1, v21);
  v23 = sub_1DABAE848(v25, v16);

  sub_1DAA4D0FC(v12, sub_1DAAA1C0C);
  return v23;
}

uint64_t sub_1DAC307A0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = *a2;
    v21 = MEMORY[0x1E69E7CC0];
    v19 = a2[1];
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DAA5859C(0, v6, 0);
    v7 = v21;
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v12 = *(v21 + 16);
      v11 = *(v21 + 24);
      sub_1DACB71E4();
      if (v12 >= v11 >> 1)
      {
        sub_1DAA5859C((v11 > 1), v12 + 1, 1);
      }

      *(v21 + 16) = v12 + 1;
      v13 = v21 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v8 += 13;
      --v6;
    }

    while (v6);

    v2 = a1;
    v4 = v18;
    v3 = v19;
  }

  else
  {
    v14 = a2[1];
    sub_1DACB71E4();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v15 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v2;
  sub_1DACA5888(v7, v4, v3, isUniquelyReferenced_nonNull_native);

  *v2 = v22;
  return result;
}

void sub_1DAC308F8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1DAA488A4(255, a3);
    v4 = sub_1DACB91A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAC30960()
{
  result = qword_1EE11FC68;
  if (!qword_1EE11FC68)
  {
    sub_1DAC308F8(255, &qword_1EE11FC70, &qword_1EE11FB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FC68);
  }

  return result;
}

uint64_t sub_1DAC309D0()
{
  v4 = *v0;
  sub_1DAC308F8(0, &qword_1EE11FC70, &qword_1EE11FB78);
  sub_1DACB8BB4();
  v1 = sub_1DACB89D4();
  sub_1DAC308F8(0, &qword_1EE11FC60, &qword_1EE123EA0);
  sub_1DAC30960();
  v2 = sub_1DACB8B64();

  return v2;
}

uint64_t sub_1DAC30B30()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE11D390);
  __swift_project_value_buffer(v0, qword_1EE11D390);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAC30C1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  v3 = __swift_project_value_buffer(v2, qword_1EE11D390);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ScoringConfig.articleLengthAggregateWeight.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ScoringConfig.articleReadPenalty.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ScoringConfig.audioMultiplierForAUsers.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ScoringConfig.audioMultiplierForBUsers.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t ScoringConfig.audioMultiplierForCUsers.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t ScoringConfig.autofavoritedVoteCoefficient.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t ScoringConfig.baselineRatePrior.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t ScoringConfig.bundleFreeMultiplierForAUsers.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t ScoringConfig.bundleFreeMultiplierForBUsers.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t ScoringConfig.bundleFreeMultiplierForCUsers.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t ScoringConfig.bundlePaidMultiplierForAUsers.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t ScoringConfig.bundlePaidMultiplierForBUsers.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t ScoringConfig.bundlePaidMultiplierForCUsers.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t ScoringConfig.channelTopicDiversificationInitialPenalty.getter()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t ScoringConfig.channelTopicDiversificationPenalty.getter()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t ScoringConfig.channelTopicDiversificationPenaltyHalfLife.getter()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t ScoringConfig.conversionCoefficientForFreeUsers.getter()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t ScoringConfig.conversionCoefficientForPaidUsers.getter()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t ScoringConfig.conversionCoefficientForTrialUsers.getter()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  return result;
}

__n128 ScoringConfig.conversionCohort.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 384);
  *(a1 + 64) = *(v1 + 368);
  *(a1 + 80) = v2;
  v3 = *(v1 + 320);
  *a1 = *(v1 + 304);
  *(a1 + 16) = v3;
  v4 = *(v1 + 352);
  *(a1 + 32) = *(v1 + 336);
  *(a1 + 48) = v4;
  result = *(v1 + 394);
  *(a1 + 90) = result;
  return result;
}

uint64_t ScoringConfig.ctrWithOneAutofavorited.getter()
{
  result = *(v0 + 416);
  v2 = *(v0 + 424);
  return result;
}

uint64_t ScoringConfig.ctrWithOneSubscribed.getter()
{
  result = *(v0 + 432);
  v2 = *(v0 + 440);
  return result;
}

uint64_t ScoringConfig.ctrWithSubscribedChannel.getter()
{
  result = *(v0 + 448);
  v2 = *(v0 + 456);
  return result;
}

uint64_t ScoringConfig.ctrWithThreeAutofavorited.getter()
{
  result = *(v0 + 464);
  v2 = *(v0 + 472);
  return result;
}

uint64_t ScoringConfig.ctrWithThreeSubscribed.getter()
{
  result = *(v0 + 480);
  v2 = *(v0 + 488);
  return result;
}

uint64_t ScoringConfig.ctrWithTwoAutofavorited.getter()
{
  result = *(v0 + 496);
  v2 = *(v0 + 504);
  return result;
}

uint64_t ScoringConfig.ctrWithTwoSubscribed.getter()
{
  result = *(v0 + 512);
  v2 = *(v0 + 520);
  return result;
}

uint64_t ScoringConfig.ctrWithZeroAutofavorited.getter()
{
  result = *(v0 + 528);
  v2 = *(v0 + 536);
  return result;
}

uint64_t ScoringConfig.ctrWithZeroSubscribed.getter()
{
  result = *(v0 + 544);
  v2 = *(v0 + 552);
  return result;
}

uint64_t ScoringConfig.decayFactor.getter()
{
  result = *(v0 + 560);
  v2 = *(v0 + 568);
  return result;
}

uint64_t ScoringConfig.democratizationFactor.getter()
{
  result = *(v0 + 576);
  v2 = *(v0 + 584);
  return result;
}

uint64_t ScoringConfig.diversificationInitialPenalty.getter()
{
  result = *(v0 + 592);
  v2 = *(v0 + 600);
  return result;
}

uint64_t ScoringConfig.diversificationPenalty.getter()
{
  result = *(v0 + 608);
  v2 = *(v0 + 616);
  return result;
}

uint64_t ScoringConfig.diversificationPenaltyHalfLife.getter()
{
  result = *(v0 + 624);
  v2 = *(v0 + 632);
  return result;
}

uint64_t ScoringConfig.evergreenHalfLifeCoefficient.getter()
{
  result = *(v0 + 640);
  v2 = *(v0 + 648);
  return result;
}

uint64_t ScoringConfig.evergreenMultiplierForAUsers.getter()
{
  result = *(v0 + 656);
  v2 = *(v0 + 664);
  return result;
}

uint64_t ScoringConfig.evergreenMultiplierForBUsers.getter()
{
  result = *(v0 + 672);
  v2 = *(v0 + 680);
  return result;
}

uint64_t ScoringConfig.evergreenMultiplierForCUsers.getter()
{
  result = *(v0 + 688);
  v2 = *(v0 + 696);
  return result;
}

uint64_t ScoringConfig.featuredMultiplierForAUsers.getter()
{
  result = *(v0 + 704);
  v2 = *(v0 + 712);
  return result;
}

uint64_t ScoringConfig.featuredMultiplierForBUsers.getter()
{
  result = *(v0 + 720);
  v2 = *(v0 + 728);
  return result;
}

uint64_t ScoringConfig.featuredMultiplierForCUsers.getter()
{
  result = *(v0 + 736);
  v2 = *(v0 + 744);
  return result;
}

uint64_t ScoringConfig.firstPassArticleFilter.getter()
{
  result = *(v0 + 752);
  v2 = *(v0 + 760);
  return result;
}

uint64_t ScoringConfig.firstPassDiversificationPenalty.getter()
{
  result = *(v0 + 768);
  v2 = *(v0 + 776);
  return result;
}

uint64_t ScoringConfig.firstPassEvergreenHalfLifeCoefficient.getter()
{
  result = *(v0 + 784);
  v2 = *(v0 + 792);
  return result;
}

uint64_t ScoringConfig.firstPassHalfLifeCoefficient.getter()
{
  result = *(v0 + 800);
  v2 = *(v0 + 808);
  return result;
}

uint64_t ScoringConfig.globalScoreCoefficientFree.getter()
{
  result = *(v0 + 816);
  v2 = *(v0 + 824);
  return result;
}

uint64_t ScoringConfig.globalScoreCoefficientHalfLife.getter()
{
  result = *(v0 + 832);
  v2 = *(v0 + 840);
  return result;
}

uint64_t ScoringConfig.globalScoreCoefficientInitialMultiplier.getter()
{
  result = *(v0 + 848);
  v2 = *(v0 + 856);
  return result;
}

uint64_t ScoringConfig.globalScoreCoefficientPaid.getter()
{
  result = *(v0 + 864);
  v2 = *(v0 + 872);
  return result;
}

uint64_t ScoringConfig.halfLifeCoefficient.getter()
{
  result = *(v0 + 880);
  v2 = *(v0 + 888);
  return result;
}

uint64_t ScoringConfig.headlineSeenPenalty.getter()
{
  result = *(v0 + 896);
  v2 = *(v0 + 904);
  return result;
}

uint64_t ScoringConfig.mutedVoteCoefficient.getter()
{
  result = *(v0 + 912);
  v2 = *(v0 + 920);
  return result;
}

uint64_t ScoringConfig.personalizationCoefficient.getter()
{
  result = *(v0 + 928);
  v2 = *(v0 + 936);
  return result;
}

uint64_t ScoringConfig.publisherAggregateWeight.getter()
{
  result = *(v0 + 944);
  v2 = *(v0 + 952);
  return result;
}

uint64_t ScoringConfig.sparseTagsPenalty.getter()
{
  result = *(v0 + 960);
  v2 = *(v0 + 968);
  return result;
}

uint64_t ScoringConfig.subscribedChannelScoreCoefficient.getter()
{
  result = *(v0 + 976);
  v2 = *(v0 + 984);
  return result;
}

uint64_t ScoringConfig.subscribedTopicsScoreCoefficient.getter()
{
  result = *(v0 + 992);
  v2 = *(v0 + 1000);
  return result;
}

uint64_t ScoringConfig.tabiScoreCoefficient.getter()
{
  result = *(v0 + 1008);
  v2 = *(v0 + 1016);
  return result;
}

__n128 ScoringConfig.userCohort.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1072);
  v3 = *(v1 + 1104);
  *(a1 + 64) = *(v1 + 1088);
  *(a1 + 80) = v3;
  v4 = *(v1 + 1040);
  *a1 = *(v1 + 1024);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 1056);
  *(a1 + 48) = v2;
  result = *(v1 + 1114);
  *(a1 + 90) = result;
  return result;
}

unint64_t sub_1DAC30FCC(char a1)
{
  result = 0x6361467961636564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
    case 4:
    case 22:
    case 27:
    case 53:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
    case 54:
      result = 0xD000000000000011;
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 31:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
    case 18:
      result = 0xD000000000000022;
      break;
    case 15:
      result = 0xD00000000000002ALL;
      break;
    case 16:
    case 17:
    case 55:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
    case 25:
      result = 0xD000000000000017;
      break;
    case 21:
    case 26:
    case 51:
    case 57:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0xD000000000000019;
      break;
    case 24:
    case 32:
    case 41:
      result = 0xD000000000000016;
      break;
    case 28:
    case 30:
      result = 0xD000000000000015;
      break;
    case 29:
      return result;
    case 33:
    case 46:
      result = 0xD00000000000001ELL;
      break;
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 35:
      result = 0xD00000000000001CLL;
      break;
    case 36:
      result = 0xD00000000000001CLL;
      break;
    case 37:
      result = 0xD00000000000001CLL;
      break;
    case 38:
    case 39:
    case 40:
      result = 0xD00000000000001BLL;
      break;
    case 42:
      result = 0xD00000000000001FLL;
      break;
    case 43:
      result = 0xD000000000000025;
      break;
    case 44:
      result = 0xD00000000000001CLL;
      break;
    case 45:
    case 48:
    case 52:
      result = 0xD00000000000001ALL;
      break;
    case 47:
      result = 0xD000000000000027;
      break;
    case 49:
    case 50:
      result = 0xD000000000000013;
      break;
    case 56:
      result = 0xD000000000000020;
      break;
    case 58:
      result = 0x6F686F4372657375;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_1DAC314D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAC30FCC(*a1);
  v5 = v4;
  if (v3 == sub_1DAC30FCC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC31558()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC30FCC(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC315BC()
{
  sub_1DAC30FCC(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAC31610()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC30FCC(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC31670@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC36E20();
  *a2 = result;
  return result;
}

unint64_t sub_1DAC316A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAC30FCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAC316D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC36E20();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC31708(uint64_t a1)
{
  v2 = sub_1DAC33508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC31744(uint64_t a1)
{
  v2 = sub_1DAC33508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScoringConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAC34568(0, &qword_1EE123CF0, MEMORY[0x1E69E6F48]);
  v340 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v146 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC33508();
  sub_1DACBA2F4();
  if (!v2)
  {
    v11 = v6;
    LOBYTE(v334) = 0;
    v12 = sub_1DACB9F54();
    v14 = v13;
    LOBYTE(v334) = 1;
    v258 = sub_1DACB9F54();
    v259 = v16;
    LOBYTE(v334) = 2;
    v256 = sub_1DACB9F54();
    v257 = v17;
    LOBYTE(v334) = 3;
    v254 = sub_1DACB9F54();
    v255 = v18;
    LOBYTE(v334) = 4;
    v252 = sub_1DACB9F54();
    v253 = v19;
    LOBYTE(v334) = 5;
    v250 = sub_1DACB9F54();
    v251 = v20;
    LOBYTE(v334) = 6;
    v248 = sub_1DACB9F54();
    v249 = v21;
    LOBYTE(v334) = 7;
    v244 = sub_1DACB9F54();
    v247 = v22;
    v246 = a2;
    LOBYTE(v334) = 8;
    v243 = sub_1DACB9F54();
    v245 = v23;
    LOBYTE(v334) = 9;
    v242 = sub_1DACB9F54();
    v25 = v24;
    LOBYTE(v334) = 10;
    v240 = sub_1DACB9F54();
    v241 = v26;
    LOBYTE(v334) = 11;
    v238 = sub_1DACB9F54();
    v239 = v27;
    LOBYTE(v334) = 12;
    v236 = sub_1DACB9F54();
    v237 = v28;
    LOBYTE(v334) = 13;
    v234 = sub_1DACB9F54();
    v235 = v29;
    LOBYTE(v334) = 14;
    v232 = sub_1DACB9F54();
    v233 = v30;
    LOBYTE(v334) = 15;
    v230 = sub_1DACB9F54();
    v231 = v31;
    LOBYTE(v334) = 16;
    v228 = sub_1DACB9F54();
    v229 = v32;
    LOBYTE(v334) = 17;
    v226 = sub_1DACB9F54();
    v227 = v33;
    LOBYTE(v334) = 18;
    v224 = sub_1DACB9F54();
    v225 = v34;
    v333 = 19;
    v223 = sub_1DAC3355C();
    sub_1DACB9F84();
    v331 = v338;
    *v332 = v339[0];
    *&v332[10] = *(v339 + 10);
    v327 = v334;
    v328 = v335;
    v329 = v336;
    v330 = v337;
    LOBYTE(v321) = 20;
    v221 = sub_1DACB9F54();
    v222 = v35;
    LOBYTE(v321) = 21;
    v219 = sub_1DACB9F54();
    v220 = v36;
    LOBYTE(v321) = 22;
    v217 = sub_1DACB9F54();
    v218 = v37;
    LOBYTE(v321) = 23;
    v215 = sub_1DACB9F54();
    v216 = v38;
    LOBYTE(v321) = 24;
    v213 = sub_1DACB9F54();
    v214 = v39;
    LOBYTE(v321) = 25;
    v211 = sub_1DACB9F54();
    v212 = v40;
    LOBYTE(v321) = 26;
    v209 = sub_1DACB9F54();
    v210 = v41;
    LOBYTE(v321) = 27;
    v207 = sub_1DACB9F54();
    v208 = v42;
    LOBYTE(v321) = 28;
    v205 = sub_1DACB9F54();
    v206 = v43;
    LOBYTE(v321) = 29;
    v203 = sub_1DACB9F54();
    v204 = v44;
    LOBYTE(v321) = 30;
    v201 = sub_1DACB9F54();
    v202 = v45;
    LOBYTE(v321) = 31;
    v199 = sub_1DACB9F54();
    v200 = v46;
    LOBYTE(v321) = 32;
    v197 = sub_1DACB9F54();
    v198 = v47;
    LOBYTE(v321) = 33;
    v195 = sub_1DACB9F54();
    v196 = v48;
    LOBYTE(v321) = 34;
    v193 = sub_1DACB9F54();
    v194 = v49;
    LOBYTE(v321) = 35;
    v191 = sub_1DACB9F54();
    v192 = v50;
    LOBYTE(v321) = 36;
    v189 = sub_1DACB9F54();
    v190 = v51;
    LOBYTE(v321) = 37;
    v179 = sub_1DACB9F54();
    v188 = v52;
    LOBYTE(v321) = 38;
    v177 = sub_1DACB9F54();
    v187 = v53;
    LOBYTE(v321) = 39;
    v175 = sub_1DACB9F54();
    v186 = v54;
    LOBYTE(v321) = 40;
    v173 = sub_1DACB9F54();
    v185 = v55;
    LOBYTE(v321) = 41;
    v170 = sub_1DACB9F54();
    v184 = v56;
    LOBYTE(v321) = 42;
    v168 = sub_1DACB9F54();
    v183 = v57;
    LOBYTE(v321) = 43;
    v166 = sub_1DACB9F54();
    v182 = v58;
    LOBYTE(v321) = 44;
    v164 = sub_1DACB9F54();
    v181 = v59;
    LOBYTE(v321) = 45;
    v162 = sub_1DACB9F54();
    v180 = v60;
    LOBYTE(v321) = 46;
    v160 = sub_1DACB9F54();
    v178 = v61;
    LOBYTE(v321) = 47;
    v158 = sub_1DACB9F54();
    v176 = v62;
    LOBYTE(v321) = 48;
    v156 = sub_1DACB9F54();
    v174 = v63;
    LOBYTE(v321) = 49;
    v155 = sub_1DACB9F54();
    v172 = v64;
    LOBYTE(v321) = 50;
    v154 = sub_1DACB9F54();
    v171 = v65;
    LOBYTE(v321) = 51;
    v153 = sub_1DACB9F54();
    v169 = v66;
    LOBYTE(v321) = 52;
    v152 = sub_1DACB9F54();
    v167 = v67;
    LOBYTE(v321) = 53;
    v151 = sub_1DACB9F54();
    v165 = v68;
    LOBYTE(v321) = 54;
    v150 = sub_1DACB9F54();
    v163 = v69;
    LOBYTE(v321) = 55;
    v149 = sub_1DACB9F54();
    v161 = v70;
    LOBYTE(v321) = 56;
    v148 = sub_1DACB9F54();
    v159 = v71;
    LOBYTE(v321) = 57;
    v147 = sub_1DACB9F54();
    v157 = v72;
    v320 = 58;
    sub_1DACB9F84();
    (*(v11 + 8))(v9, v340);
    v73 = v246;
    *v246 = v12;
    v73[2] = v258;
    v73[4] = v256;
    v73[6] = v254;
    v73[8] = v252;
    v73[10] = v250;
    v73[12] = v248;
    v73[14] = v244;
    v73[16] = v243;
    v73[18] = v242;
    v73[20] = v240;
    v73[22] = v238;
    v73[24] = v236;
    v73[26] = v234;
    v73[28] = v232;
    v73[30] = v230;
    v73[32] = v228;
    v73[34] = v226;
    v73[36] = v224;
    v73[52] = v221;
    v73[54] = v219;
    v73[56] = v217;
    v73[58] = v215;
    v73[60] = v213;
    v73[62] = v211;
    v73[64] = v209;
    v73[66] = v207;
    v73[68] = v205;
    v73[70] = v203;
    v73[72] = v201;
    v73[74] = v199;
    v73[76] = v197;
    v73[78] = v195;
    v73[80] = v193;
    v73[82] = v191;
    v73[84] = v189;
    v73[86] = v179;
    v73[88] = v177;
    v73[90] = v175;
    v73[92] = v173;
    v73[94] = v170;
    v73[96] = v168;
    v73[98] = v166;
    v73[100] = v164;
    v73[102] = v162;
    v73[104] = v160;
    v73[106] = v158;
    v74 = v155;
    v73[108] = v156;
    v73[110] = v74;
    v75 = v153;
    v73[112] = v154;
    v73[114] = v75;
    v76 = v151;
    v73[116] = v152;
    v73[118] = v76;
    v77 = v149;
    v73[120] = v150;
    v73[122] = v77;
    v78 = v147;
    v73[124] = v148;
    v73[126] = v78;
    v319[0] = v14 & 1;
    LOBYTE(v318[0]) = v259 & 1;
    LOBYTE(v317[0]) = v257 & 1;
    LOBYTE(v316[0]) = v255 & 1;
    LOBYTE(v315[0]) = v253 & 1;
    LOBYTE(v314[0]) = v251 & 1;
    LOBYTE(v313[0]) = v249 & 1;
    LOBYTE(v312[0]) = v247 & 1;
    LOBYTE(v311[0]) = v245 & 1;
    LOBYTE(v310[0]) = v25 & 1;
    LOBYTE(v309[0]) = v241 & 1;
    LOBYTE(v308[0]) = v239 & 1;
    LOBYTE(v307[0]) = v237 & 1;
    LOBYTE(v306[0]) = v235 & 1;
    LOBYTE(v305[0]) = v233 & 1;
    LOBYTE(v304[0]) = v231 & 1;
    LOBYTE(v303[0]) = v229 & 1;
    LOBYTE(v302[0]) = v227 & 1;
    LOBYTE(v301[0]) = v225 & 1;
    LOBYTE(v300[0]) = v222 & 1;
    v297 = v220 & 1;
    v296 = v218 & 1;
    v295 = v216 & 1;
    v294 = v214 & 1;
    v293 = v212 & 1;
    v292 = v210 & 1;
    v291 = v208 & 1;
    v290 = v206 & 1;
    v289 = v204 & 1;
    *&v298[21] = v324;
    *&v298[23] = v325;
    v299[0] = v326[0];
    *(v299 + 10) = *(v326 + 10);
    *&v298[15] = v321;
    *&v298[17] = v322;
    *&v298[19] = v323;
    *(&v298[4] + 7) = v329;
    *(&v298[2] + 7) = v328;
    *(v298 + 7) = v327;
    *(&v298[12] + 1) = *&v332[10];
    *(&v298[10] + 7) = *v332;
    *(&v298[8] + 7) = v331;
    *(&v298[6] + 7) = v330;
    v288 = v202 & 1;
    v287 = v200 & 1;
    v286 = v198 & 1;
    v285 = v196 & 1;
    v284 = v194 & 1;
    v283 = v192 & 1;
    v282 = v190 & 1;
    v281 = v188 & 1;
    v280 = v187 & 1;
    v279 = v186 & 1;
    v278 = v185 & 1;
    v277 = v184 & 1;
    v276 = v183 & 1;
    v275 = v182 & 1;
    v274 = v181 & 1;
    v273 = v180 & 1;
    v272 = v178 & 1;
    v271 = v176 & 1;
    v270 = v174 & 1;
    v269 = v172 & 1;
    v268 = v171 & 1;
    v267 = v169 & 1;
    v266 = v167 & 1;
    v265 = v165 & 1;
    v264 = v163 & 1;
    LODWORD(v258) = v161 & 1;
    v263 = v161 & 1;
    v259 = v159 & 1;
    v262 = v159 & 1;
    LODWORD(v340) = v157 & 1;
    v261 = v157 & 1;
    *&v260[39] = v323;
    *&v260[23] = v322;
    *&v260[7] = v321;
    *&v260[97] = *(v326 + 10);
    *&v260[87] = v299[0];
    *&v260[71] = v325;
    *&v260[55] = v324;
    v79 = v14 & 1;
    v80 = v318[0];
    v81 = v257 & 1;
    v82 = v255 & 1;
    LOBYTE(v11) = v253 & 1;
    LOBYTE(v12) = v251 & 1;
    v83 = v249 & 1;
    v84 = v247 & 1;
    v85 = v245 & 1;
    v86 = v310[0];
    v87 = v241 & 1;
    LOBYTE(v78) = v239 & 1;
    v88 = v237 & 1;
    v89 = v235 & 1;
    v90 = v233 & 1;
    v91 = v231 & 1;
    v92 = v229 & 1;
    v93 = v227 & 1;
    v94 = v225 & 1;
    v95 = v222 & 1;
    v96 = v220 & 1;
    v97 = v218 & 1;
    v98 = v216 & 1;
    LODWORD(v256) = v214 & 1;
    v257 = v212 & 1;
    *(v73 + 8) = v79;
    v99 = v292;
    *(v73 + 24) = v80;
    v100 = v291;
    *(v73 + 40) = v81;
    v101 = v290;
    *(v73 + 56) = v82;
    v102 = v289;
    *(v73 + 72) = v11;
    LOBYTE(v11) = v288;
    *(v73 + 88) = v12;
    LOBYTE(v12) = v287;
    *(v73 + 104) = v83;
    v103 = v286;
    *(v73 + 120) = v84;
    v104 = v285;
    *(v73 + 136) = v85;
    v105 = v284;
    *(v73 + 152) = v86;
    v106 = v283;
    *(v73 + 168) = v87;
    v107 = v282;
    *(v73 + 184) = v78;
    LOBYTE(v78) = v281;
    *(v73 + 200) = v88;
    v108 = v280;
    *(v73 + 216) = v89;
    v109 = v279;
    *(v73 + 232) = v90;
    v110 = v278;
    *(v73 + 248) = v91;
    v111 = v277;
    *(v73 + 264) = v92;
    v112 = v276;
    *(v73 + 280) = v93;
    v255 = v275;
    *(v73 + 296) = v94;
    *(v73 + 409) = v298[14];
    v113 = *&v298[10];
    *(v73 + 361) = *&v298[8];
    *(v73 + 377) = v113;
    *(v73 + 393) = *&v298[12];
    v114 = *&v298[2];
    *(v73 + 297) = *v298;
    *(v73 + 313) = v114;
    v115 = *&v298[6];
    *(v73 + 329) = *&v298[4];
    *(v73 + 345) = v115;
    v116 = v274;
    *(v73 + 424) = v95;
    v117 = v273;
    *(v73 + 440) = v96;
    v118 = v272;
    *(v73 + 456) = v97;
    v119 = v271;
    *(v73 + 472) = v98;
    v120 = v270;
    *(v73 + 488) = v256;
    v121 = v269;
    *(v73 + 504) = v257;
    LOBYTE(v93) = v268;
    *(v73 + 520) = v99;
    v122 = v267;
    *(v73 + 536) = v100;
    v123 = v266;
    *(v73 + 552) = v101;
    v124 = v265;
    *(v73 + 568) = v102;
    v125 = v264;
    *(v73 + 584) = v11;
    *(v73 + 600) = v12;
    *(v73 + 616) = v103;
    *(v73 + 632) = v104;
    *(v73 + 648) = v105;
    *(v73 + 664) = v106;
    *(v73 + 680) = v107;
    *(v73 + 696) = v78;
    *(v73 + 697) = *v319;
    *(v73 + 175) = *&v319[3];
    *(v73 + 712) = v108;
    *(v73 + 713) = v318[0];
    *(v73 + 179) = *(v318 + 3);
    *(v73 + 728) = v109;
    *(v73 + 729) = v317[0];
    *(v73 + 183) = *(v317 + 3);
    *(v73 + 744) = v110;
    *(v73 + 187) = *(v316 + 3);
    *(v73 + 745) = v316[0];
    *(v73 + 760) = v111;
    *(v73 + 191) = *(v315 + 3);
    *(v73 + 761) = v315[0];
    *(v73 + 776) = v112;
    *(v73 + 195) = *(v314 + 3);
    *(v73 + 777) = v314[0];
    *(v73 + 792) = v255;
    v126 = v313[0];
    *(v73 + 199) = *(v313 + 3);
    *(v73 + 793) = v126;
    *(v73 + 808) = v116;
    v127 = v312[0];
    *(v73 + 203) = *(v312 + 3);
    *(v73 + 809) = v127;
    *(v73 + 824) = v117;
    v128 = v311[0];
    *(v73 + 207) = *(v311 + 3);
    *(v73 + 825) = v128;
    *(v73 + 840) = v118;
    v129 = v310[0];
    *(v73 + 211) = *(v310 + 3);
    *(v73 + 841) = v129;
    *(v73 + 856) = v119;
    v130 = v309[0];
    *(v73 + 215) = *(v309 + 3);
    *(v73 + 857) = v130;
    *(v73 + 872) = v120;
    v131 = v308[0];
    *(v73 + 219) = *(v308 + 3);
    *(v73 + 873) = v131;
    *(v73 + 888) = v121;
    v132 = v307[0];
    *(v73 + 223) = *(v307 + 3);
    *(v73 + 889) = v132;
    *(v73 + 904) = v93;
    v133 = v306[0];
    *(v73 + 227) = *(v306 + 3);
    *(v73 + 905) = v133;
    *(v73 + 920) = v122;
    v134 = v305[0];
    *(v73 + 231) = *(v305 + 3);
    *(v73 + 921) = v134;
    *(v73 + 936) = v123;
    v135 = v304[0];
    *(v73 + 235) = *(v304 + 3);
    *(v73 + 937) = v135;
    *(v73 + 952) = v124;
    v136 = v303[0];
    *(v73 + 239) = *(v303 + 3);
    *(v73 + 953) = v136;
    *(v73 + 968) = v125;
    v137 = v302[0];
    *(v73 + 243) = *(v302 + 3);
    *(v73 + 969) = v137;
    *(v73 + 984) = v258;
    v138 = v301[0];
    *(v73 + 247) = *(v301 + 3);
    *(v73 + 985) = v138;
    *(v73 + 1000) = v259;
    v139 = v300[0];
    *(v73 + 251) = *(v300 + 3);
    *(v73 + 1001) = v139;
    *(v73 + 1016) = v340;
    v140 = *v260;
    v141 = *&v260[16];
    v142 = *&v260[48];
    *(v73 + 1049) = *&v260[32];
    *(v73 + 1065) = v142;
    *(v73 + 1017) = v140;
    *(v73 + 1033) = v141;
    v143 = *&v260[64];
    v144 = *&v260[80];
    v145 = *&v260[96];
    *(v73 + 1129) = v260[112];
    *(v73 + 1097) = v144;
    *(v73 + 1113) = v145;
    *(v73 + 1081) = v143;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAC33508()
{
  result = qword_1EE124FD0;
  if (!qword_1EE124FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FD0);
  }

  return result;
}

unint64_t sub_1DAC3355C()
{
  result = qword_1EE125118;
  if (!qword_1EE125118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125118);
  }

  return result;
}

uint64_t ScoringConfig.encode(to:)(void *a1)
{
  sub_1DAC34568(0, &qword_1EE123C28, MEMORY[0x1E69E6F58]);
  v143 = *(v3 - 8);
  v4 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - v5;
  v142 = *v1;
  LODWORD(v141) = *(v1 + 8);
  v140 = v1[2];
  v139 = *(v1 + 24);
  v138 = v1[4];
  v137 = *(v1 + 40);
  v136 = v1[6];
  v135 = *(v1 + 56);
  v133 = v1[8];
  v134 = *(v1 + 72);
  v131 = v1[10];
  v132 = *(v1 + 88);
  v129 = v1[12];
  v130 = *(v1 + 104);
  v127 = v1[14];
  v128 = *(v1 + 120);
  v125 = v1[16];
  v126 = *(v1 + 136);
  v123 = v1[18];
  v124 = *(v1 + 152);
  v121 = v1[20];
  v122 = *(v1 + 168);
  v119 = v1[22];
  v120 = *(v1 + 184);
  v117 = v1[24];
  v118 = *(v1 + 200);
  v115 = v1[26];
  v116 = *(v1 + 216);
  v114 = v1[28];
  v8 = *(v1 + 23);
  v7 = *(v1 + 24);
  v9 = *(v1 + 21);
  v154 = *(v1 + 22);
  v155 = v8;
  v10 = *(v1 + 394);
  v11 = *(v1 + 1114);
  v113 = *(v1 + 232);
  v156[0] = v7;
  *(v156 + 10) = v10;
  v12 = *(v1 + 20);
  v151 = *(v1 + 19);
  v152 = v12;
  v153 = v9;
  v13 = *(v1 + 67);
  v14 = *(v1 + 69);
  v161 = *(v1 + 68);
  v162[0] = v14;
  *(v162 + 10) = v11;
  v15 = *(v1 + 65);
  v157 = *(v1 + 64);
  v158 = v15;
  v16 = *(v1 + 66);
  v112 = v1[30];
  v111 = *(v1 + 248);
  v110 = v1[32];
  v109 = *(v1 + 264);
  v35 = v1[34];
  v34 = *(v1 + 280);
  v17 = v1[36];
  v36 = *(v1 + 296);
  v18 = v1[52];
  v37 = v17;
  v38 = v18;
  v39 = *(v1 + 424);
  v40 = v1[54];
  v41 = *(v1 + 440);
  v42 = v1[56];
  v43 = *(v1 + 456);
  v44 = v1[58];
  v45 = *(v1 + 472);
  v46 = v1[60];
  v47 = *(v1 + 488);
  v48 = v1[62];
  v49 = *(v1 + 504);
  v50 = v1[64];
  v51 = *(v1 + 520);
  v52 = v1[66];
  v53 = *(v1 + 536);
  v54 = v1[68];
  v55 = *(v1 + 552);
  v56 = v1[70];
  v57 = *(v1 + 568);
  v58 = v1[72];
  v59 = *(v1 + 584);
  v60 = v1[74];
  v61 = *(v1 + 600);
  v62 = v1[76];
  v63 = *(v1 + 616);
  v32 = v1[78];
  v33 = *(v1 + 632);
  v64 = v1[80];
  v65 = *(v1 + 648);
  v66 = v1[82];
  v67 = *(v1 + 664);
  v68 = v1[84];
  v69 = *(v1 + 680);
  v70 = v1[86];
  v71 = *(v1 + 696);
  v72 = v1[88];
  v73 = *(v1 + 712);
  v74 = v1[90];
  v75 = *(v1 + 728);
  v76 = v1[92];
  v77 = *(v1 + 744);
  v78 = v1[94];
  v79 = *(v1 + 760);
  v80 = v1[96];
  v81 = *(v1 + 776);
  v82 = v1[98];
  v83 = *(v1 + 792);
  v84 = v1[100];
  v85 = *(v1 + 808);
  v86 = v1[102];
  v87 = *(v1 + 824);
  v88 = v1[104];
  v89 = *(v1 + 840);
  v90 = v1[106];
  v91 = *(v1 + 856);
  v92 = v1[108];
  v93 = *(v1 + 872);
  v94 = v1[110];
  v95 = *(v1 + 888);
  v96 = v1[112];
  v97 = *(v1 + 904);
  v98 = v1[114];
  v99 = *(v1 + 920);
  v100 = v1[116];
  v101 = *(v1 + 936);
  v102 = v1[118];
  v103 = *(v1 + 952);
  v104 = v1[120];
  v105 = *(v1 + 968);
  v106 = v1[122];
  v107 = *(v1 + 984);
  v108 = v1[124];
  v19 = *(v1 + 1000);
  v20 = v1[126];
  v21 = *(v1 + 1016);
  v159 = v16;
  v160 = v13;
  v23 = a1[3];
  v22 = a1[4];
  v24 = a1;
  v26 = v25;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_1DAC33508();
  sub_1DACBA304();
  LOBYTE(v145) = 0;
  v27 = v163;
  sub_1DACBA044();
  if (v27)
  {
    v163 = v27;
    return (*(v143 + 8))(v6, v26);
  }

  else
  {
    LODWORD(v142) = v21;
    v31[1] = v19;
    v141 = v20;
    v29 = v143;
    LOBYTE(v145) = 1;
    sub_1DACBA044();
    LOBYTE(v145) = 2;
    sub_1DACBA044();
    LOBYTE(v145) = 3;
    sub_1DACBA044();
    LOBYTE(v145) = 4;
    sub_1DACBA044();
    LOBYTE(v145) = 5;
    sub_1DACBA044();
    LOBYTE(v145) = 6;
    sub_1DACBA044();
    LOBYTE(v145) = 7;
    sub_1DACBA044();
    LOBYTE(v145) = 8;
    sub_1DACBA044();
    LOBYTE(v145) = 9;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 10;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 11;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 12;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 13;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 14;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 15;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 16;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 17;
    sub_1DACBA044();
    v163 = 0;
    LOBYTE(v145) = 18;
    sub_1DACBA044();
    v163 = 0;
    v149 = v155;
    v150[0] = v156[0];
    *(v150 + 10) = *(v156 + 10);
    v145 = v151;
    v146 = v152;
    v147 = v153;
    v148 = v154;
    v144 = 19;
    v140 = sub_1DAC345CC();
    v30 = v163;
    sub_1DACBA074();
    v163 = v30;
    if (!v30)
    {
      LOBYTE(v145) = 20;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 21;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 22;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 23;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 24;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 25;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 26;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 27;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 28;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 29;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 30;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 31;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 32;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 33;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 34;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 35;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 36;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 37;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 38;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 39;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 40;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 41;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 42;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 43;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 44;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 45;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 46;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 47;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 48;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 49;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 50;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 51;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 52;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 53;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 54;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 55;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 56;
      sub_1DACBA044();
      v163 = 0;
      LOBYTE(v145) = 57;
      sub_1DACBA044();
      v163 = 0;
      v149 = v161;
      v150[0] = v162[0];
      *(v150 + 10) = *(v162 + 10);
      v145 = v157;
      v146 = v158;
      v147 = v159;
      v148 = v160;
      v144 = 58;
      sub_1DACBA074();
      v163 = 0;
    }

    return (*(v29 + 8))(v6, v26);
  }
}

void sub_1DAC34568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC33508();
    v7 = a3(a1, &type metadata for ScoringConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAC345CC()
{
  result = qword_1EE125120;
  if (!qword_1EE125120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125120);
  }

  return result;
}

uint64_t ScoringConfig.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = v0[6];
  v7 = *(v0 + 56);
  v119 = *(v0 + 72);
  v66 = v0[8];
  v67 = v0[10];
  v120 = *(v0 + 88);
  v121 = *(v0 + 104);
  v68 = v0[12];
  v69 = v0[14];
  v122 = *(v0 + 120);
  v123 = *(v0 + 136);
  v70 = v0[16];
  v71 = v0[18];
  v125 = *(v0 + 152);
  v73 = v0[20];
  v127 = *(v0 + 168);
  v75 = v0[22];
  v129 = *(v0 + 184);
  v77 = v0[24];
  v131 = *(v0 + 200);
  v79 = v0[26];
  *v185 = *(v0 + 69);
  v124 = *(v0 + 216);
  *&v185[9] = *(v0 + 1113);
  v181 = *(v0 + 65);
  v182 = *(v0 + 66);
  v72 = v0[28];
  v126 = *(v0 + 232);
  v74 = v0[30];
  v128 = *(v0 + 248);
  v76 = v0[32];
  v130 = *(v0 + 264);
  v78 = v0[34];
  v132 = *(v0 + 280);
  v133 = *(v0 + 296);
  v134 = *(v0 + 409);
  v80 = v0[36];
  v81 = v0[52];
  v135 = *(v0 + 424);
  v136 = *(v0 + 440);
  v82 = v0[54];
  v83 = v0[56];
  v137 = *(v0 + 456);
  v138 = *(v0 + 472);
  v84 = v0[58];
  v85 = v0[60];
  v139 = *(v0 + 488);
  v140 = *(v0 + 504);
  v86 = v0[62];
  v87 = v0[64];
  v141 = *(v0 + 520);
  v142 = *(v0 + 536);
  v88 = v0[66];
  v89 = v0[68];
  v143 = *(v0 + 552);
  v144 = *(v0 + 568);
  v90 = v0[70];
  v91 = v0[72];
  v145 = *(v0 + 584);
  v146 = *(v0 + 600);
  v92 = v0[74];
  v93 = v0[76];
  v147 = *(v0 + 616);
  v148 = *(v0 + 632);
  v94 = v0[78];
  v95 = v0[80];
  v149 = *(v0 + 648);
  v150 = *(v0 + 664);
  v96 = v0[82];
  v97 = v0[84];
  v151 = *(v0 + 680);
  v152 = *(v0 + 696);
  v98 = v0[86];
  v99 = v0[88];
  v153 = *(v0 + 712);
  v154 = *(v0 + 728);
  v100 = v0[90];
  v101 = v0[92];
  v155 = *(v0 + 744);
  v156 = *(v0 + 760);
  v102 = v0[94];
  v103 = v0[96];
  v157 = *(v0 + 776);
  v158 = *(v0 + 792);
  v104 = v0[98];
  v105 = v0[100];
  v159 = *(v0 + 808);
  v160 = *(v0 + 824);
  v106 = v0[102];
  v107 = v0[104];
  v161 = *(v0 + 840);
  v162 = *(v0 + 856);
  v108 = v0[106];
  v109 = v0[108];
  v163 = *(v0 + 872);
  v164 = *(v0 + 888);
  v110 = v0[110];
  v111 = v0[112];
  v165 = *(v0 + 904);
  v166 = *(v0 + 920);
  v112 = v0[114];
  v113 = v0[116];
  v167 = *(v0 + 936);
  v168 = *(v0 + 952);
  v114 = v0[118];
  v115 = v0[120];
  v169 = *(v0 + 968);
  v170 = *(v0 + 984);
  v116 = v0[122];
  v117 = v0[124];
  v171 = *(v0 + 1000);
  v118 = v0[126];
  v172 = *(v0 + 1016);
  v173 = *(v0 + 1129);
  v183 = *(v0 + 67);
  v184 = *(v0 + 68);
  v180 = *(v0 + 64);
  if (*(v0 + 8) == 1)
  {
    sub_1DACBA2A4();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_233:
    sub_1DACBA2A4();
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_234:
    sub_1DACBA2A4();
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_235:
    sub_1DACBA2A4();
    if (!v119)
    {
      goto LABEL_15;
    }

LABEL_236:
    sub_1DACBA2A4();
    if (!v120)
    {
      goto LABEL_19;
    }

LABEL_237:
    sub_1DACBA2A4();
    if (!v121)
    {
      goto LABEL_23;
    }

LABEL_238:
    sub_1DACBA2A4();
    if (!v122)
    {
      goto LABEL_27;
    }

LABEL_239:
    sub_1DACBA2A4();
    if (!v123)
    {
      goto LABEL_31;
    }

LABEL_240:
    sub_1DACBA2A4();
    if (!v125)
    {
      goto LABEL_35;
    }

LABEL_241:
    sub_1DACBA2A4();
    if (!v127)
    {
      goto LABEL_39;
    }

LABEL_242:
    sub_1DACBA2A4();
    if (!v129)
    {
      goto LABEL_43;
    }

LABEL_243:
    sub_1DACBA2A4();
    if (!v131)
    {
      goto LABEL_47;
    }

LABEL_244:
    sub_1DACBA2A4();
    if (!v124)
    {
      goto LABEL_51;
    }

LABEL_245:
    sub_1DACBA2A4();
    if (!v126)
    {
      goto LABEL_55;
    }

LABEL_246:
    sub_1DACBA2A4();
    if (!v128)
    {
      goto LABEL_59;
    }

LABEL_247:
    sub_1DACBA2A4();
    if (!v130)
    {
      goto LABEL_63;
    }

LABEL_248:
    sub_1DACBA2A4();
    if (!v132)
    {
      goto LABEL_67;
    }

LABEL_249:
    sub_1DACBA2A4();
    if (!v133)
    {
      goto LABEL_71;
    }

LABEL_250:
    sub_1DACBA2A4();
    if ((v134 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_251;
  }

  sub_1DACBA2A4();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v65 = v1;
  }

  else
  {
    v65 = 0;
  }

  MEMORY[0x1E1277D90](v65);
  if (v3)
  {
    goto LABEL_233;
  }

LABEL_3:
  sub_1DACBA2A4();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E1277D90](v8);
  if (v5)
  {
    goto LABEL_234;
  }

LABEL_7:
  sub_1DACBA2A4();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1E1277D90](v9);
  if (v7)
  {
    goto LABEL_235;
  }

LABEL_11:
  sub_1DACBA2A4();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E1277D90](v10);
  if (v119)
  {
    goto LABEL_236;
  }

LABEL_15:
  sub_1DACBA2A4();
  if ((v66 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v66;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E1277D90](v11);
  if (v120)
  {
    goto LABEL_237;
  }

LABEL_19:
  sub_1DACBA2A4();
  if ((v67 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v67;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E1277D90](v12);
  if (v121)
  {
    goto LABEL_238;
  }

LABEL_23:
  sub_1DACBA2A4();
  if ((v68 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v68;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1E1277D90](v13);
  if (v122)
  {
    goto LABEL_239;
  }

LABEL_27:
  sub_1DACBA2A4();
  if ((v69 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v69;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1E1277D90](v14);
  if (v123)
  {
    goto LABEL_240;
  }

LABEL_31:
  sub_1DACBA2A4();
  if ((v70 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v70;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1E1277D90](v15);
  if (v125)
  {
    goto LABEL_241;
  }

LABEL_35:
  sub_1DACBA2A4();
  if ((v71 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = v71;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1E1277D90](v16);
  if (v127)
  {
    goto LABEL_242;
  }

LABEL_39:
  sub_1DACBA2A4();
  if ((v73 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v73;
  }

  else
  {
    v17 = 0;
  }

  MEMORY[0x1E1277D90](v17);
  if (v129)
  {
    goto LABEL_243;
  }

LABEL_43:
  sub_1DACBA2A4();
  if ((v75 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = v75;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1E1277D90](v18);
  if (v131)
  {
    goto LABEL_244;
  }

LABEL_47:
  sub_1DACBA2A4();
  if ((v77 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v77;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1E1277D90](v19);
  if (v124)
  {
    goto LABEL_245;
  }

LABEL_51:
  sub_1DACBA2A4();
  if ((v79 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v79;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x1E1277D90](v20);
  if (v126)
  {
    goto LABEL_246;
  }

LABEL_55:
  sub_1DACBA2A4();
  if ((v72 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v21 = v72;
  }

  else
  {
    v21 = 0;
  }

  MEMORY[0x1E1277D90](v21);
  if (v128)
  {
    goto LABEL_247;
  }

LABEL_59:
  sub_1DACBA2A4();
  if ((v74 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v22 = v74;
  }

  else
  {
    v22 = 0;
  }

  MEMORY[0x1E1277D90](v22);
  if (v130)
  {
    goto LABEL_248;
  }

LABEL_63:
  sub_1DACBA2A4();
  if ((v76 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = v76;
  }

  else
  {
    v23 = 0;
  }

  MEMORY[0x1E1277D90](v23);
  if (v132)
  {
    goto LABEL_249;
  }

LABEL_67:
  sub_1DACBA2A4();
  if ((v78 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v24 = v78;
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x1E1277D90](v24);
  if (v133)
  {
    goto LABEL_250;
  }

LABEL_71:
  sub_1DACBA2A4();
  if ((v80 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v25 = v80;
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x1E1277D90](v25);
  if ((v134 & 1) == 0)
  {
LABEL_75:
    v178 = *(v0 + 23);
    *v179 = *(v0 + 24);
    *&v179[9] = *(v0 + 393);
    v174 = *(v0 + 19);
    v175 = *(v0 + 20);
    v176 = *(v0 + 21);
    v177 = *(v0 + 22);
    sub_1DACBA2A4();
    CohortConfig.hash(into:)();
    if (!v135)
    {
      goto LABEL_76;
    }

LABEL_252:
    sub_1DACBA2A4();
    if (!v136)
    {
      goto LABEL_80;
    }

LABEL_253:
    sub_1DACBA2A4();
    if (!v137)
    {
      goto LABEL_84;
    }

LABEL_254:
    sub_1DACBA2A4();
    if (!v138)
    {
      goto LABEL_88;
    }

LABEL_255:
    sub_1DACBA2A4();
    if (!v139)
    {
      goto LABEL_92;
    }

LABEL_256:
    sub_1DACBA2A4();
    if (!v140)
    {
      goto LABEL_96;
    }

LABEL_257:
    sub_1DACBA2A4();
    if (!v141)
    {
      goto LABEL_100;
    }

LABEL_258:
    sub_1DACBA2A4();
    if (!v142)
    {
      goto LABEL_104;
    }

LABEL_259:
    sub_1DACBA2A4();
    if (!v143)
    {
      goto LABEL_108;
    }

LABEL_260:
    sub_1DACBA2A4();
    if (!v144)
    {
      goto LABEL_112;
    }

LABEL_261:
    sub_1DACBA2A4();
    if (!v145)
    {
      goto LABEL_116;
    }

LABEL_262:
    sub_1DACBA2A4();
    if (!v146)
    {
      goto LABEL_120;
    }

LABEL_263:
    sub_1DACBA2A4();
    if (!v147)
    {
      goto LABEL_124;
    }

LABEL_264:
    sub_1DACBA2A4();
    if (!v148)
    {
      goto LABEL_128;
    }

LABEL_265:
    sub_1DACBA2A4();
    if (!v149)
    {
      goto LABEL_132;
    }

LABEL_266:
    sub_1DACBA2A4();
    if (!v150)
    {
      goto LABEL_136;
    }

LABEL_267:
    sub_1DACBA2A4();
    if (!v151)
    {
      goto LABEL_140;
    }

LABEL_268:
    sub_1DACBA2A4();
    if (!v152)
    {
      goto LABEL_144;
    }

LABEL_269:
    sub_1DACBA2A4();
    if (!v153)
    {
      goto LABEL_148;
    }

LABEL_270:
    sub_1DACBA2A4();
    if (!v154)
    {
      goto LABEL_152;
    }

LABEL_271:
    sub_1DACBA2A4();
    if (!v155)
    {
      goto LABEL_156;
    }

LABEL_272:
    sub_1DACBA2A4();
    if (!v156)
    {
      goto LABEL_160;
    }

LABEL_273:
    sub_1DACBA2A4();
    if (!v157)
    {
      goto LABEL_164;
    }

LABEL_274:
    sub_1DACBA2A4();
    if (!v158)
    {
      goto LABEL_168;
    }

LABEL_275:
    sub_1DACBA2A4();
    if (!v159)
    {
      goto LABEL_172;
    }

LABEL_276:
    sub_1DACBA2A4();
    if (!v160)
    {
      goto LABEL_176;
    }

LABEL_277:
    sub_1DACBA2A4();
    if (!v161)
    {
      goto LABEL_180;
    }

LABEL_278:
    sub_1DACBA2A4();
    if (!v162)
    {
      goto LABEL_184;
    }

LABEL_279:
    sub_1DACBA2A4();
    if (!v163)
    {
      goto LABEL_188;
    }

LABEL_280:
    sub_1DACBA2A4();
    if (!v164)
    {
      goto LABEL_192;
    }

LABEL_281:
    sub_1DACBA2A4();
    if (!v165)
    {
      goto LABEL_196;
    }

LABEL_282:
    sub_1DACBA2A4();
    if (!v166)
    {
      goto LABEL_200;
    }

LABEL_283:
    sub_1DACBA2A4();
    if (!v167)
    {
      goto LABEL_204;
    }

LABEL_284:
    sub_1DACBA2A4();
    if (!v168)
    {
      goto LABEL_208;
    }

LABEL_285:
    sub_1DACBA2A4();
    if (!v169)
    {
      goto LABEL_212;
    }

LABEL_286:
    sub_1DACBA2A4();
    if (!v170)
    {
      goto LABEL_216;
    }

LABEL_287:
    sub_1DACBA2A4();
    if (!v171)
    {
      goto LABEL_220;
    }

LABEL_288:
    sub_1DACBA2A4();
    if (!v172)
    {
      goto LABEL_224;
    }

    goto LABEL_289;
  }

LABEL_251:
  sub_1DACBA2A4();
  if (v135)
  {
    goto LABEL_252;
  }

LABEL_76:
  sub_1DACBA2A4();
  if ((v81 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v26 = v81;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x1E1277D90](v26);
  if (v136)
  {
    goto LABEL_253;
  }

LABEL_80:
  sub_1DACBA2A4();
  if ((v82 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = v82;
  }

  else
  {
    v27 = 0;
  }

  MEMORY[0x1E1277D90](v27);
  if (v137)
  {
    goto LABEL_254;
  }

LABEL_84:
  sub_1DACBA2A4();
  if ((v83 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v28 = v83;
  }

  else
  {
    v28 = 0;
  }

  MEMORY[0x1E1277D90](v28);
  if (v138)
  {
    goto LABEL_255;
  }

LABEL_88:
  sub_1DACBA2A4();
  if ((v84 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v29 = v84;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x1E1277D90](v29);
  if (v139)
  {
    goto LABEL_256;
  }

LABEL_92:
  sub_1DACBA2A4();
  if ((v85 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v30 = v85;
  }

  else
  {
    v30 = 0;
  }

  MEMORY[0x1E1277D90](v30);
  if (v140)
  {
    goto LABEL_257;
  }

LABEL_96:
  sub_1DACBA2A4();
  if ((v86 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v31 = v86;
  }

  else
  {
    v31 = 0;
  }

  MEMORY[0x1E1277D90](v31);
  if (v141)
  {
    goto LABEL_258;
  }

LABEL_100:
  sub_1DACBA2A4();
  if ((v87 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v32 = v87;
  }

  else
  {
    v32 = 0;
  }

  MEMORY[0x1E1277D90](v32);
  if (v142)
  {
    goto LABEL_259;
  }

LABEL_104:
  sub_1DACBA2A4();
  if ((v88 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = v88;
  }

  else
  {
    v33 = 0;
  }

  MEMORY[0x1E1277D90](v33);
  if (v143)
  {
    goto LABEL_260;
  }

LABEL_108:
  sub_1DACBA2A4();
  if ((v89 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v34 = v89;
  }

  else
  {
    v34 = 0;
  }

  MEMORY[0x1E1277D90](v34);
  if (v144)
  {
    goto LABEL_261;
  }

LABEL_112:
  sub_1DACBA2A4();
  if ((v90 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v35 = v90;
  }

  else
  {
    v35 = 0;
  }

  MEMORY[0x1E1277D90](v35);
  if (v145)
  {
    goto LABEL_262;
  }

LABEL_116:
  sub_1DACBA2A4();
  if ((v91 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v36 = v91;
  }

  else
  {
    v36 = 0;
  }

  MEMORY[0x1E1277D90](v36);
  if (v146)
  {
    goto LABEL_263;
  }

LABEL_120:
  sub_1DACBA2A4();
  if ((v92 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v37 = v92;
  }

  else
  {
    v37 = 0;
  }

  MEMORY[0x1E1277D90](v37);
  if (v147)
  {
    goto LABEL_264;
  }

LABEL_124:
  sub_1DACBA2A4();
  if ((v93 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v38 = v93;
  }

  else
  {
    v38 = 0;
  }

  MEMORY[0x1E1277D90](v38);
  if (v148)
  {
    goto LABEL_265;
  }

LABEL_128:
  sub_1DACBA2A4();
  if ((v94 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v39 = v94;
  }

  else
  {
    v39 = 0;
  }

  MEMORY[0x1E1277D90](v39);
  if (v149)
  {
    goto LABEL_266;
  }

LABEL_132:
  sub_1DACBA2A4();
  if ((v95 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v40 = v95;
  }

  else
  {
    v40 = 0;
  }

  MEMORY[0x1E1277D90](v40);
  if (v150)
  {
    goto LABEL_267;
  }

LABEL_136:
  sub_1DACBA2A4();
  if ((v96 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v41 = v96;
  }

  else
  {
    v41 = 0;
  }

  MEMORY[0x1E1277D90](v41);
  if (v151)
  {
    goto LABEL_268;
  }

LABEL_140:
  sub_1DACBA2A4();
  if ((v97 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v42 = v97;
  }

  else
  {
    v42 = 0;
  }

  MEMORY[0x1E1277D90](v42);
  if (v152)
  {
    goto LABEL_269;
  }

LABEL_144:
  sub_1DACBA2A4();
  if ((v98 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v43 = v98;
  }

  else
  {
    v43 = 0;
  }

  MEMORY[0x1E1277D90](v43);
  if (v153)
  {
    goto LABEL_270;
  }

LABEL_148:
  sub_1DACBA2A4();
  if ((v99 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v44 = v99;
  }

  else
  {
    v44 = 0;
  }

  MEMORY[0x1E1277D90](v44);
  if (v154)
  {
    goto LABEL_271;
  }

LABEL_152:
  sub_1DACBA2A4();
  if ((v100 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v45 = v100;
  }

  else
  {
    v45 = 0;
  }

  MEMORY[0x1E1277D90](v45);
  if (v155)
  {
    goto LABEL_272;
  }

LABEL_156:
  sub_1DACBA2A4();
  if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v46 = v101;
  }

  else
  {
    v46 = 0;
  }

  MEMORY[0x1E1277D90](v46);
  if (v156)
  {
    goto LABEL_273;
  }

LABEL_160:
  sub_1DACBA2A4();
  if ((v102 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v47 = v102;
  }

  else
  {
    v47 = 0;
  }

  MEMORY[0x1E1277D90](v47);
  if (v157)
  {
    goto LABEL_274;
  }

LABEL_164:
  sub_1DACBA2A4();
  if ((v103 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v48 = v103;
  }

  else
  {
    v48 = 0;
  }

  MEMORY[0x1E1277D90](v48);
  if (v158)
  {
    goto LABEL_275;
  }

LABEL_168:
  sub_1DACBA2A4();
  if ((v104 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v49 = v104;
  }

  else
  {
    v49 = 0;
  }

  MEMORY[0x1E1277D90](v49);
  if (v159)
  {
    goto LABEL_276;
  }

LABEL_172:
  sub_1DACBA2A4();
  if ((v105 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v50 = v105;
  }

  else
  {
    v50 = 0;
  }

  MEMORY[0x1E1277D90](v50);
  if (v160)
  {
    goto LABEL_277;
  }

LABEL_176:
  sub_1DACBA2A4();
  if ((v106 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v51 = v106;
  }

  else
  {
    v51 = 0;
  }

  MEMORY[0x1E1277D90](v51);
  if (v161)
  {
    goto LABEL_278;
  }

LABEL_180:
  sub_1DACBA2A4();
  if ((v107 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v52 = v107;
  }

  else
  {
    v52 = 0;
  }

  MEMORY[0x1E1277D90](v52);
  if (v162)
  {
    goto LABEL_279;
  }

LABEL_184:
  sub_1DACBA2A4();
  if ((v108 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v53 = v108;
  }

  else
  {
    v53 = 0;
  }

  MEMORY[0x1E1277D90](v53);
  if (v163)
  {
    goto LABEL_280;
  }

LABEL_188:
  sub_1DACBA2A4();
  if ((v109 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v54 = v109;
  }

  else
  {
    v54 = 0;
  }

  MEMORY[0x1E1277D90](v54);
  if (v164)
  {
    goto LABEL_281;
  }

LABEL_192:
  sub_1DACBA2A4();
  if ((v110 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v55 = v110;
  }

  else
  {
    v55 = 0;
  }

  MEMORY[0x1E1277D90](v55);
  if (v165)
  {
    goto LABEL_282;
  }

LABEL_196:
  sub_1DACBA2A4();
  if ((v111 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v56 = v111;
  }

  else
  {
    v56 = 0;
  }

  MEMORY[0x1E1277D90](v56);
  if (v166)
  {
    goto LABEL_283;
  }

LABEL_200:
  sub_1DACBA2A4();
  if ((v112 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v57 = v112;
  }

  else
  {
    v57 = 0;
  }

  MEMORY[0x1E1277D90](v57);
  if (v167)
  {
    goto LABEL_284;
  }

LABEL_204:
  sub_1DACBA2A4();
  if ((v113 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v58 = v113;
  }

  else
  {
    v58 = 0;
  }

  MEMORY[0x1E1277D90](v58);
  if (v168)
  {
    goto LABEL_285;
  }

LABEL_208:
  sub_1DACBA2A4();
  if ((v114 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v59 = v114;
  }

  else
  {
    v59 = 0;
  }

  MEMORY[0x1E1277D90](v59);
  if (v169)
  {
    goto LABEL_286;
  }

LABEL_212:
  sub_1DACBA2A4();
  if ((v115 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v60 = v115;
  }

  else
  {
    v60 = 0;
  }

  MEMORY[0x1E1277D90](v60);
  if (v170)
  {
    goto LABEL_287;
  }

LABEL_216:
  sub_1DACBA2A4();
  if ((v116 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v61 = v116;
  }

  else
  {
    v61 = 0;
  }

  MEMORY[0x1E1277D90](v61);
  if (v171)
  {
    goto LABEL_288;
  }

LABEL_220:
  sub_1DACBA2A4();
  if ((v117 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v62 = v117;
  }

  else
  {
    v62 = 0;
  }

  MEMORY[0x1E1277D90](v62);
  if (!v172)
  {
LABEL_224:
    sub_1DACBA2A4();
    if ((v118 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v63 = v118;
    }

    else
    {
      v63 = 0;
    }

    MEMORY[0x1E1277D90](v63);
    if ((v173 & 1) == 0)
    {
      goto LABEL_228;
    }

    return sub_1DACBA2A4();
  }

LABEL_289:
  sub_1DACBA2A4();
  if ((v173 & 1) == 0)
  {
LABEL_228:
    sub_1DACBA2A4();
    return CohortConfig.hash(into:)();
  }

  return sub_1DACBA2A4();
}

uint64_t ScoringConfig.hashValue.getter()
{
  sub_1DACBA284();
  ScoringConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC35748()
{
  sub_1DACBA284();
  ScoringConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3578C()
{
  sub_1DACBA284();
  ScoringConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t _s10StocksCore13ScoringConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v274 = *a1;
  v2 = *(a1 + 8);
  v270 = *(a1 + 16);
  v276 = *(a1 + 24);
  v266 = *(a1 + 32);
  v272 = *(a1 + 40);
  v262 = *(a1 + 48);
  v268 = *(a1 + 56);
  v258 = *(a1 + 64);
  v264 = *(a1 + 72);
  v254 = *(a1 + 80);
  v260 = *(a1 + 88);
  v251 = *(a1 + 96);
  v256 = *(a1 + 104);
  v248 = *(a1 + 112);
  v252 = *(a1 + 120);
  v244 = *(a1 + 128);
  v249 = *(a1 + 136);
  v240 = *(a1 + 144);
  v246 = *(a1 + 152);
  v235 = *(a1 + 160);
  v242 = *(a1 + 168);
  v230 = *(a1 + 176);
  v237 = *(a1 + 184);
  v225 = *(a1 + 192);
  v232 = *(a1 + 200);
  v209 = *(a1 + 208);
  v227 = *(a1 + 216);
  v207 = *(a1 + 224);
  v224 = *(a1 + 232);
  v206 = *(a1 + 240);
  v208 = *(a1 + 248);
  v204 = *(a1 + 256);
  v205 = *(a1 + 264);
  v202 = *(a1 + 272);
  v203 = *(a1 + 280);
  v199 = *(a1 + 288);
  v201 = *(a1 + 296);
  v200 = *(a1 + 409);
  v221 = *(a1 + 416);
  v211 = *(a1 + 424);
  v222 = *(a1 + 432);
  v212 = *(a1 + 440);
  v223 = *(a1 + 448);
  v213 = *(a1 + 456);
  v218 = *(a1 + 464);
  v214 = *(a1 + 472);
  v219 = *(a1 + 480);
  v215 = *(a1 + 488);
  v220 = *(a1 + 496);
  v216 = *(a1 + 504);
  v217 = *(a1 + 512);
  v3 = *(a1 + 1113);
  v4 = *(a2 + 1113);
  v127 = *(a1 + 520);
  v134 = *(a1 + 528);
  v135 = *(a1 + 544);
  v5 = *(a1 + 1104);
  v295 = *(a1 + 1088);
  v6 = *(a1 + 560);
  v296[0] = v5;
  *(v296 + 9) = v3;
  v7 = *(a1 + 1040);
  v291 = *(a1 + 1024);
  v8 = *(a1 + 1072);
  v292 = v7;
  v9 = *(a1 + 1056);
  v294 = v8;
  v293 = v9;
  v10 = *(a2 + 1104);
  v301 = *(a2 + 1088);
  v136 = v6;
  v137 = *(a1 + 576);
  v302[0] = v10;
  *(v302 + 9) = v4;
  v11 = *(a2 + 1040);
  v297 = *(a2 + 1024);
  v12 = *(a2 + 1072);
  v298 = v11;
  v13 = *(a2 + 1056);
  v300 = v12;
  *&v10 = *(a1 + 592);
  v299 = v13;
  v138 = *&v10;
  v139 = *(a1 + 608);
  v121 = *(a1 + 536);
  v123 = *(a1 + 552);
  v125 = *(a1 + 568);
  v128 = *(a1 + 584);
  v130 = *(a1 + 600);
  v132 = *(a1 + 616);
  v141 = *(a1 + 632);
  v142 = *(a1 + 648);
  v143 = *(a1 + 664);
  v144 = *(a1 + 680);
  v145 = *(a1 + 696);
  v147 = *(a1 + 712);
  v149 = *(a1 + 728);
  v152 = *(a1 + 744);
  v155 = *(a1 + 760);
  v158 = *(a1 + 776);
  v160 = *(a1 + 792);
  v163 = *(a1 + 808);
  v165 = *(a1 + 824);
  v167 = *(a1 + 840);
  v169 = *(a1 + 856);
  v171 = *(a1 + 872);
  v174 = *(a1 + 888);
  v176 = *(a1 + 904);
  v178 = *(a1 + 920);
  v180 = *(a1 + 936);
  v183 = *(a1 + 952);
  v186 = *(a1 + 968);
  v181 = *(a1 + 984);
  v184 = *(a1 + 1000);
  v188 = *(a1 + 1016);
  v190 = *(a1 + 1129);
  v14 = *(a2 + 8);
  v15 = *(a2 + 24);
  v16 = *(a2 + 88);
  v198 = *(a2 + 409);
  v197 = *(a2 + 424);
  v196 = *(a2 + 440);
  v194 = *(a2 + 456);
  v99 = *(a2 + 472);
  v101 = *(a2 + 488);
  v103 = *(a2 + 504);
  v105 = *(a2 + 520);
  v107 = *(a2 + 536);
  v109 = *(a2 + 552);
  v111 = *(a2 + 568);
  v114 = *(a2 + 584);
  v117 = *(a2 + 600);
  v120 = *(a2 + 616);
  v122 = *(a2 + 632);
  v124 = *(a2 + 648);
  v126 = *(a2 + 664);
  v129 = *(a2 + 680);
  v131 = *(a2 + 696);
  v133 = *(a2 + 712);
  v153 = *(a2 + 728);
  v157 = *(a2 + 744);
  v159 = *(a2 + 760);
  v162 = *(a2 + 776);
  v17 = *(a2 + 792);
  v18 = *(a2 + 808);
  v19 = *(a2 + 824);
  v20 = *(a2 + 840);
  v21 = *(a2 + 872);
  v22 = *(a2 + 888);
  v23 = *(a2 + 904);
  v24 = *(a2 + 920);
  v113 = *(a1 + 624);
  v116 = *(a1 + 640);
  v119 = *(a1 + 656);
  v140 = *(a1 + 672);
  v146 = *(a1 + 688);
  v148 = *(a1 + 704);
  v150 = *(a1 + 720);
  v151 = *(a1 + 736);
  v154 = *(a1 + 752);
  v156 = *(a1 + 768);
  v161 = *(a1 + 784);
  v164 = *(a1 + 800);
  v166 = *(a1 + 816);
  v168 = *(a1 + 832);
  v170 = *(a1 + 848);
  v172 = *(a1 + 864);
  v173 = *(a1 + 880);
  v175 = *(a1 + 896);
  v177 = *(a1 + 912);
  v179 = *(a1 + 928);
  v182 = *(a1 + 944);
  v185 = *(a1 + 960);
  v187 = *(a1 + 976);
  v189 = *(a1 + 992);
  v191 = *(a1 + 1008);
  v195 = *(a2 + 416);
  v193 = *(a2 + 432);
  v192 = *(a2 + 448);
  v89 = *(a2 + 464);
  v90 = *(a2 + 480);
  v91 = *(a2 + 496);
  v92 = *(a2 + 512);
  v93 = *(a2 + 528);
  v94 = *(a2 + 544);
  v95 = *(a2 + 560);
  v96 = *(a2 + 576);
  v97 = *(a2 + 592);
  v98 = *(a2 + 608);
  v100 = *(a2 + 624);
  v102 = *(a2 + 640);
  v104 = *(a2 + 656);
  v106 = *(a2 + 672);
  v108 = *(a2 + 688);
  v110 = *(a2 + 704);
  v112 = *(a2 + 720);
  v115 = *(a2 + 736);
  v118 = *(a2 + 752);
  v25 = *(a2 + 784);
  if (v2)
  {
    if (!*(a2 + 8))
    {
LABEL_358:
      v86 = 0;
      return v86 & 1;
    }
  }

  else
  {
    if (v274 != *a2)
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_358;
    }
  }

  if (v276)
  {
    if (!*(a2 + 24))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v270 != *(a2 + 16))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_358;
    }
  }

  if (v272)
  {
    if (!*(a2 + 40))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v266 == *(a2 + 32))
    {
      v26 = *(a2 + 40);
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_358;
    }
  }

  if (v268)
  {
    if (!*(a2 + 56))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v262 == *(a2 + 48))
    {
      v27 = *(a2 + 56);
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_358;
    }
  }

  if (v264)
  {
    if (!*(a2 + 72))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v258 == *(a2 + 64))
    {
      v28 = *(a2 + 72);
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_358;
    }
  }

  if (v260)
  {
    if (!*(a2 + 88))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v254 != *(a2 + 80))
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_358;
    }
  }

  if (v256)
  {
    if (!*(a2 + 104))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v251 == *(a2 + 96))
    {
      v29 = *(a2 + 104);
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_358;
    }
  }

  if (v252)
  {
    if (!*(a2 + 120))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v248 == *(a2 + 112))
    {
      v30 = *(a2 + 120);
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_358;
    }
  }

  if (v249)
  {
    if (!*(a2 + 136))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v244 == *(a2 + 128))
    {
      v31 = *(a2 + 136);
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_358;
    }
  }

  if (v246)
  {
    if (!*(a2 + 152))
    {
      goto LABEL_358;
    }
  }

  else
  {
    if (v240 == *(a2 + 144))
    {
      v32 = *(a2 + 152);
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_358;
    }
  }

  if (v242)
  {
    if (!*(a2 + 168))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v33 = *(a2 + 168);
    if (v235 != *(a2 + 160))
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_358;
    }
  }

  if (v237)
  {
    if (!*(a2 + 184))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v34 = *(a2 + 184);
    if (v230 != *(a2 + 176))
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_358;
    }
  }

  if (v232)
  {
    if (!*(a2 + 200))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v35 = *(a2 + 200);
    if (v225 != *(a2 + 192))
    {
      v35 = 1;
    }

    if (v35)
    {
      goto LABEL_358;
    }
  }

  if (v227)
  {
    if (!*(a2 + 216))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v36 = *(a2 + 216);
    if (v209 != *(a2 + 208))
    {
      v36 = 1;
    }

    if (v36)
    {
      goto LABEL_358;
    }
  }

  v88 = *(a2 + 768);
  v210 = *(a2 + 784);
  v226 = *(a2 + 800);
  v229 = *(a2 + 816);
  v233 = *(a2 + 832);
  v236 = *(a2 + 848);
  v239 = *(a2 + 864);
  v243 = *(a2 + 880);
  v247 = *(a2 + 896);
  v250 = *(a2 + 912);
  v253 = *(a2 + 928);
  v259 = *(a2 + 944);
  v228 = *(a2 + 808);
  v265 = *(a2 + 960);
  v231 = *(a2 + 824);
  v271 = *(a2 + 976);
  v234 = *(a2 + 840);
  v273 = *(a2 + 992);
  v238 = *(a2 + 856);
  v277 = *(a2 + 1008);
  v241 = *(a2 + 872);
  v245 = *(a2 + 888);
  v257 = *(a2 + 936);
  v263 = *(a2 + 952);
  v255 = *(a2 + 968);
  v261 = *(a2 + 984);
  v267 = *(a2 + 1000);
  v269 = *(a2 + 1016);
  v275 = *(a2 + 1129);
  if (v224)
  {
    if (!*(a2 + 232))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v37 = *(a2 + 232);
    if (v207 != *(a2 + 224))
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_358;
    }
  }

  if (v208)
  {
    if (!*(a2 + 248))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v38 = *(a2 + 248);
    if (v206 != *(a2 + 240))
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_358;
    }
  }

  if (v205)
  {
    if (!*(a2 + 264))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v39 = *(a2 + 264);
    if (v204 != *(a2 + 256))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_358;
    }
  }

  if (v203)
  {
    if (!*(a2 + 280))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v40 = *(a2 + 280);
    if (v202 != *(a2 + 272))
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_358;
    }
  }

  if (v201)
  {
    if (!*(a2 + 296))
    {
      goto LABEL_358;
    }
  }

  else
  {
    v41 = *(a2 + 296);
    if (v199 != *(a2 + 288))
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_358;
    }
  }

  if (v200)
  {
    if ((*(a2 + 409) & 1) == 0)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v42 = *(a1 + 384);
    v288 = *(a1 + 368);
    *v289 = v42;
    *&v289[9] = *(a1 + 393);
    v43 = *(a1 + 320);
    v284 = *(a1 + 304);
    v285 = v43;
    v44 = *(a1 + 336);
    v287 = *(a1 + 352);
    v286 = v44;
    v290 = v200;
    if (v198)
    {
      goto LABEL_358;
    }

    v45 = *(a2 + 384);
    v282 = *(a2 + 368);
    v283[0] = v45;
    *(v283 + 9) = *(a2 + 393);
    v46 = *(a2 + 320);
    v278 = *(a2 + 304);
    v279 = v46;
    v47 = *(a2 + 336);
    v281 = *(a2 + 352);
    v280 = v47;
    if ((_s10StocksCore12CohortConfigV2eeoiySbAC_ACtFZ_0(&v284, &v278) & 1) == 0)
    {
      goto LABEL_358;
    }
  }

  if (v211)
  {
    if (!v197)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v48 = v197;
    if (v221 != v195)
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_358;
    }
  }

  if (v212)
  {
    if (!v196)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v49 = v196;
    if (v222 != v193)
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_358;
    }
  }

  if (v213)
  {
    if (!v194)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v50 = v194;
    if (v223 != v192)
    {
      v50 = 1;
    }

    if (v50)
    {
      goto LABEL_358;
    }
  }

  if (v214)
  {
    if (!v99)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v51 = v99;
    if (v218 != v89)
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_358;
    }
  }

  if (v215)
  {
    if (!v101)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v52 = v101;
    if (v219 != v90)
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_358;
    }
  }

  if (v216)
  {
    if (!v103)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v53 = v103;
    if (v220 != v91)
    {
      v53 = 1;
    }

    if (v53)
    {
      goto LABEL_358;
    }
  }

  if (v127)
  {
    if (!v105)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v54 = v105;
    if (v217 != v92)
    {
      v54 = 1;
    }

    if (v54)
    {
      goto LABEL_358;
    }
  }

  if (v121)
  {
    if (!v107)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v55 = v107;
    if (v134 != v93)
    {
      v55 = 1;
    }

    if (v55)
    {
      goto LABEL_358;
    }
  }

  if (v123)
  {
    if (!v109)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v56 = v109;
    if (v135 != v94)
    {
      v56 = 1;
    }

    if (v56)
    {
      goto LABEL_358;
    }
  }

  if (v125)
  {
    if (!v111)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v57 = v111;
    if (v136 != v95)
    {
      v57 = 1;
    }

    if (v57)
    {
      goto LABEL_358;
    }
  }

  if (v128)
  {
    if (!v114)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v58 = v114;
    if (v137 != v96)
    {
      v58 = 1;
    }

    if (v58)
    {
      goto LABEL_358;
    }
  }

  if (v130)
  {
    if (!v117)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v59 = v117;
    if (v138 != v97)
    {
      v59 = 1;
    }

    if (v59)
    {
      goto LABEL_358;
    }
  }

  if (v132)
  {
    if (!v120)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v60 = v120;
    if (v139 != v98)
    {
      v60 = 1;
    }

    if (v60)
    {
      goto LABEL_358;
    }
  }

  if (v141)
  {
    if (!v122)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v61 = v122;
    if (v113 != v100)
    {
      v61 = 1;
    }

    if (v61)
    {
      goto LABEL_358;
    }
  }

  if (v142)
  {
    if (!v124)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v62 = v124;
    if (v116 != v102)
    {
      v62 = 1;
    }

    if (v62)
    {
      goto LABEL_358;
    }
  }

  if (v143)
  {
    if (!v126)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v63 = v126;
    if (v119 != v104)
    {
      v63 = 1;
    }

    if (v63)
    {
      goto LABEL_358;
    }
  }

  if (v144)
  {
    if (!v129)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v64 = v129;
    if (v140 != v106)
    {
      v64 = 1;
    }

    if (v64)
    {
      goto LABEL_358;
    }
  }

  if (v145)
  {
    if (!v131)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v65 = v131;
    if (v146 != v108)
    {
      v65 = 1;
    }

    if (v65)
    {
      goto LABEL_358;
    }
  }

  if (v147)
  {
    if (!v133)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v66 = v133;
    if (v148 != v110)
    {
      v66 = 1;
    }

    if (v66)
    {
      goto LABEL_358;
    }
  }

  if (v149)
  {
    if (!v153)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v67 = v153;
    if (v150 != v112)
    {
      v67 = 1;
    }

    if (v67)
    {
      goto LABEL_358;
    }
  }

  if (v152)
  {
    if (!v157)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v68 = v157;
    if (v151 != v115)
    {
      v68 = 1;
    }

    if (v68)
    {
      goto LABEL_358;
    }
  }

  if (v155)
  {
    if (!v159)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v69 = v159;
    if (v154 != v118)
    {
      v69 = 1;
    }

    if (v69)
    {
      goto LABEL_358;
    }
  }

  if (v158)
  {
    if (!v162)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v70 = v162;
    if (v156 != v88)
    {
      v70 = 1;
    }

    if (v70)
    {
      goto LABEL_358;
    }
  }

  if (v160)
  {
    if (!v17)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v71 = v17;
    if (v161 != v25)
    {
      v71 = 1;
    }

    if (v71)
    {
      goto LABEL_358;
    }
  }

  if (v163)
  {
    if (!v18)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v72 = v18;
    if (v164 != v226)
    {
      v72 = 1;
    }

    if (v72)
    {
      goto LABEL_358;
    }
  }

  if (v165)
  {
    if (!v19)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v73 = v19;
    if (v166 != v229)
    {
      v73 = 1;
    }

    if (v73)
    {
      goto LABEL_358;
    }
  }

  if (v167)
  {
    if (!v20)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v74 = v20;
    if (v168 != v233)
    {
      v74 = 1;
    }

    if (v74)
    {
      goto LABEL_358;
    }
  }

  if (v169)
  {
    if (!v238)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v75 = v238;
    if (v170 != v236)
    {
      v75 = 1;
    }

    if (v75)
    {
      goto LABEL_358;
    }
  }

  if (v171)
  {
    if (!v21)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v76 = v21;
    if (v172 != v239)
    {
      v76 = 1;
    }

    if (v76)
    {
      goto LABEL_358;
    }
  }

  if (v174)
  {
    if (!v22)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v77 = v22;
    if (v173 != v243)
    {
      v77 = 1;
    }

    if (v77)
    {
      goto LABEL_358;
    }
  }

  if (v176)
  {
    if (!v23)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v78 = v23;
    if (v175 != v247)
    {
      v78 = 1;
    }

    if (v78)
    {
      goto LABEL_358;
    }
  }

  if (v178)
  {
    if (!v24)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v79 = v24;
    if (v177 != v250)
    {
      v79 = 1;
    }

    if (v79)
    {
      goto LABEL_358;
    }
  }

  if (v180)
  {
    if (!v257)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v80 = v257;
    if (v179 != v253)
    {
      v80 = 1;
    }

    if (v80)
    {
      goto LABEL_358;
    }
  }

  if (v183)
  {
    if (!v263)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v81 = v263;
    if (v182 != v259)
    {
      v81 = 1;
    }

    if (v81)
    {
      goto LABEL_358;
    }
  }

  if (v186)
  {
    if (!v255)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v82 = v255;
    if (v185 != v265)
    {
      v82 = 1;
    }

    if (v82)
    {
      goto LABEL_358;
    }
  }

  if (v181)
  {
    if (!v261)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v83 = v261;
    if (v187 != v271)
    {
      v83 = 1;
    }

    if (v83)
    {
      goto LABEL_358;
    }
  }

  if (v184)
  {
    if (!v267)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v84 = v267;
    if (v189 != v273)
    {
      v84 = 1;
    }

    if (v84)
    {
      goto LABEL_358;
    }
  }

  if (v188)
  {
    if (!v269)
    {
      goto LABEL_358;
    }
  }

  else
  {
    v85 = v269;
    if (v191 != v277)
    {
      v85 = 1;
    }

    if (v85)
    {
      goto LABEL_358;
    }
  }

  if ((v190 & 1) == 0)
  {
    v288 = v295;
    *v289 = v296[0];
    *&v289[9] = *(v296 + 9);
    v284 = v291;
    v285 = v292;
    v287 = v294;
    v286 = v293;
    v290 = v190;
    if ((v275 & 1) == 0)
    {
      v282 = v301;
      v283[0] = v302[0];
      *(v283 + 9) = *(v302 + 9);
      v278 = v297;
      v279 = v298;
      v281 = v300;
      v280 = v299;
      v86 = _s10StocksCore12CohortConfigV2eeoiySbAC_ACtFZ_0(&v284, &v278);
      return v86 & 1;
    }

    goto LABEL_358;
  }

  v86 = v275;
  return v86 & 1;
}

unint64_t sub_1DAC36A04()
{
  result = qword_1ECBE9358;
  if (!qword_1ECBE9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9358);
  }

  return result;
}

uint64_t sub_1DAC36A60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1128) = 0;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 1130) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ScoringConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC6)
  {
    goto LABEL_17;
  }

  if (a2 + 58 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 58) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 58;
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

      return (*a1 | (v4 << 8)) - 58;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 58;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3B;
  v8 = v6 - 59;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScoringConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 58 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 58) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC6)
  {
    v4 = 0;
  }

  if (a2 > 0xC5)
  {
    v5 = ((a2 - 198) >> 8) + 1;
    *result = a2 + 58;
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
    *result = a2 + 58;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAC36D1C()
{
  result = qword_1ECBE9360;
  if (!qword_1ECBE9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9360);
  }

  return result;
}

unint64_t sub_1DAC36D74()
{
  result = qword_1EE124FC0;
  if (!qword_1EE124FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FC0);
  }

  return result;
}

unint64_t sub_1DAC36DCC()
{
  result = qword_1EE124FC8;
  if (!qword_1EE124FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FC8);
  }

  return result;
}

uint64_t sub_1DAC36E20()
{
  v0 = sub_1DACBA1B4();

  if (v0 >= 0x3B)
  {
    return 59;
  }

  else
  {
    return v0;
  }
}

double sub_1DAC36E74(double a1, double a2)
{
  v2 = a2 - a1;
  result = a1 / v2;
  if (v2 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t dispatch thunk of StocksIntentHandlerType.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DAA94754;

  return v11(a1, a2, a3);
}

unint64_t sub_1DAC36FC8()
{
  result = qword_1ECBE9368;
  if (!qword_1ECBE9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9368);
  }

  return result;
}

BOOL sub_1DAC3701C(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if (v2 != v3 || result == a2 || v2 == 0)
  {
    return v2 == v3;
  }

  v6 = v2 - 1;
  if (v2 < v2 - 1)
  {
    v6 = *(result + 16);
  }

  if (v6 > 1)
  {
    v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
    v8 = v7;
    do
    {
      v8 -= 2;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

  v9 = v2 - v7;
  while (v9)
  {
    if (!--v9)
    {
      return v2 == v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC37080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAC37150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_1DAAD4C70(v3, v8);
        sub_1DAAD4C70(v4, v7);
        v5 = sub_1DAC78654(v8, v7);
        sub_1DAAD4D7C(v7);
        sub_1DAAD4D7C(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DAC37210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a1 + i + 80);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a2 + i + 72);
      v13 = *(a2 + i + 80);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if (v4 == v9 && v5 == v10)
      {
        if (v6 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1DACBA174();
        result = 0;
        if ((v14 & 1) == 0 || v6 != v11)
        {
          return result;
        }
      }

      if ((v7 != v12 || v8 != v13) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAC3736C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  if (result == a2)
  {
    return 1;
  }

  v4 = 0;
  v24 = result;
  while (v2)
  {
    v30 = v4;
    v31 = v2;
    v6 = *(result + v4 + 48);
    v7 = *(result + v4 + 56);
    v8 = *(result + v4 + 64);
    v9 = *(result + v4 + 72);
    v27 = *(result + v4 + 80);
    v34 = *(result + v4 + 88);
    v10 = *(result + v4 + 104);
    v32 = *(result + v4 + 112);
    v11 = v3 + v4;
    v12 = *(v3 + v4 + 32);
    v13 = *(v3 + v4 + 40);
    v14 = *(v3 + v4 + 48);
    v15 = *(v3 + v4 + 56);
    v16 = *(v3 + v4 + 64);
    v17 = *(v3 + v4 + 72);
    v26 = *(v3 + v4 + 80);
    v33 = *(v3 + v4 + 88);
    v18 = *(v3 + v4 + 96);
    v19 = *(v11 + 104);
    v28 = *(v11 + 96);
    v29 = *(result + v4 + 96);
    v35 = *(v11 + 112);
    if ((*(result + v4 + 32) != v12 || *(result + v4 + 40) != v13) && (sub_1DACBA174() & 1) == 0 || (v6 != v14 || v7 != v15) && (sub_1DACBA174() & 1) == 0 || (v8 != v16 || v9 != v17) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }

    if (v10)
    {
      if (!v19 || (v29 != v28 || v10 != v19) && (sub_1DACBA174() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v19)
    {
      return 0;
    }

    if (v34)
    {
      v20 = v35;
      if (!v33 || (v27 != v26 || v34 != v33) && (sub_1DACBA174() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v20 = v35;
      if (v33)
      {
        return 0;
      }
    }

    if (v32 > 3)
    {
      if (v32 > 5)
      {
        if (v32 == 6)
        {
          v21 = 0xE500000000000000;
          v22 = 0x5845444E49;
          if (v20 <= 3)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v22 = 0x465F4C415554554DLL;
          v21 = 0xEB00000000444E55;
          if (v20 <= 3)
          {
LABEL_59:
            if (v20 > 1)
            {
              if (v20 == 2)
              {
                v23 = 0xEF59434E45525255;
                if (v22 != 0x435F4F5450595243)
                {
                  goto LABEL_5;
                }
              }

              else
              {
                v23 = 0xE600000000000000;
                if (v22 != 0x595449555145)
                {
                  goto LABEL_5;
                }
              }
            }

            else if (v20)
            {
              v23 = 0xE800000000000000;
              if (v22 != 0x59434E4552525543)
              {
                goto LABEL_5;
              }
            }

            else
            {
              v23 = 0xE700000000000000;
              if (v22 != 0x6E776F6E6B6E75)
              {
                goto LABEL_5;
              }
            }

            goto LABEL_73;
          }
        }
      }

      else if (v32 == 4)
      {
        v21 = 0xE300000000000000;
        v22 = 4609093;
        if (v20 <= 3)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        v22 = 0x53455255545546;
        if (v20 <= 3)
        {
          goto LABEL_59;
        }
      }
    }

    else if (v32 > 1)
    {
      if (v32 == 2)
      {
        v22 = 0x435F4F5450595243;
        v21 = 0xEF59434E45525255;
        if (v20 <= 3)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v21 = 0xE600000000000000;
        v22 = 0x595449555145;
        if (v20 <= 3)
        {
          goto LABEL_59;
        }
      }
    }

    else if (v32)
    {
      v21 = 0xE800000000000000;
      v22 = 0x59434E4552525543;
      if (v20 <= 3)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v21 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E75;
      if (v20 <= 3)
      {
        goto LABEL_59;
      }
    }

    if (v20 > 5)
    {
      if (v20 == 6)
      {
        v23 = 0xE500000000000000;
        if (v22 != 0x5845444E49)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v23 = 0xEB00000000444E55;
        if (v22 != 0x465F4C415554554DLL)
        {
          goto LABEL_5;
        }
      }
    }

    else if (v20 == 4)
    {
      v23 = 0xE300000000000000;
      if (v22 != 4609093)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = 0xE700000000000000;
      if (v22 != 0x53455255545546)
      {
        goto LABEL_5;
      }
    }

LABEL_73:
    if (v21 != v23)
    {
LABEL_5:
      v5 = sub_1DACBA174();

      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

LABEL_6:
    v4 = v30 + 88;
    v2 = v31 - 1;
    result = v24;
    v3 = a2;
    if (v31 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}