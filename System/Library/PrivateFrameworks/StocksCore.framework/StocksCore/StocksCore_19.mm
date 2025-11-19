uint64_t sub_1DAC010D8@<X0>(uint64_t a1@<X8>)
{
  sub_1DAC02090(0, &qword_1EE11FC00, type metadata accessor for Quote);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v44 - v5;
  v6 = type metadata accessor for Quote();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC01E94(0, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote, sub_1DAC02090);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v44 - v16);
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v49 = a1;
  v47 = v21;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    v29 = (*(v18 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    sub_1DAA85FD8(*(v18 + 56) + *(v7 + 72) * v28, v10, type metadata accessor for Quote);
    v32 = v46;
    v33 = *(v46 + 48);
    *v17 = v30;
    v17[1] = v31;
    v34 = v32;
    sub_1DAC01FC0(v10, v17 + v33, type metadata accessor for Quote);
    v35 = v45;
    (*(v45 + 56))(v17, 0, 1, v34);
    sub_1DACB71E4();
    v26 = v23;
LABEL_11:
    *v1 = v18;
    v1[1] = v19;
    v36 = v48;
    v1[2] = v47;
    v1[3] = v26;
    v1[4] = v27;
    v37 = v1[5];
    v38 = v1[6];
    sub_1DAC020F8(v17, v36, &qword_1EE11FBF8, &qword_1EE11FC00, type metadata accessor for Quote);
    v39 = 1;
    v40 = (*(v35 + 48))(v36, 1, v34);
    v41 = v49;
    if (v40 != 1)
    {
      v42 = v44;
      sub_1DAC01EF0(v36, v44, &qword_1EE11FC00, type metadata accessor for Quote);
      v37(v42);
      sub_1DAC0217C(v42, &qword_1EE11FC00, type metadata accessor for Quote);
      v39 = 0;
    }

    sub_1DAC01F5C(0, &qword_1EE11D198, type metadata accessor for Quote);
    return (*(*(v43 - 8) + 56))(v41, v39, 1, v43);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v45;
        v34 = v46;
        (*(v45 + 56))(&v44 - v16, 1, 1, v46);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC014FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v10 = type metadata accessor for Quote();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC01E94(0, &qword_1ECBE8F60, &qword_1EE11D198, type metadata accessor for Quote, sub_1DAC01F5C);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v57 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v61 = a1;
  v62 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v63 = v19;
  v64 = 0;
  v65 = v22 & v20;
  v66 = a2;
  v67 = a3;
  sub_1DACB71E4();
  v59 = a3;
  sub_1DACB71F4();
  sub_1DAC010D8(v17);
  sub_1DAC01F5C(0, &qword_1EE11D198, type metadata accessor for Quote);
  v24 = v23;
  v60 = *(*(v23 - 8) + 48);
  if (v60(v17, 1, v23) == 1)
  {
LABEL_5:
    sub_1DAA54B38();
  }

  v58 = a4;
  v27 = *v17;
  v26 = v17[1];
  sub_1DAC01FC0(v17 + *(v24 + 48), v13, type metadata accessor for Quote);
  v28 = *a5;
  v57 = v27;
  v30 = sub_1DAA4BF3C(v27, v26);
  v31 = v28[2];
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = v29;
  if (v28[3] >= v33)
  {
    if (v58)
    {
      v38 = *a5;
      if (v29)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1DAA89048();
      v38 = *a5;
      if (v34)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v38[(v30 >> 6) + 8] |= 1 << v30;
    v39 = (v38[6] + 16 * v30);
    *v39 = v57;
    v39[1] = v26;
    sub_1DAC01FC0(v13, v38[7] + *(v68 + 72) * v30, type metadata accessor for Quote);
    v40 = v38[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (!v41)
    {
      v38[2] = v42;
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  sub_1DAA7C010(v33, v58 & 1);
  v35 = *a5;
  v36 = sub_1DAA4BF3C(v57, v26);
  if ((v34 & 1) == (v37 & 1))
  {
    v30 = v36;
    v38 = *a5;
    if (v34)
    {
LABEL_16:

      sub_1DAC02028(v13, v38[7] + *(v68 + 72) * v30, type metadata accessor for Quote);
LABEL_19:
      while (1)
      {
        sub_1DAC010D8(v17);
        if (v60(v17, 1, v24) == 1)
        {
          goto LABEL_5;
        }

        v47 = *v17;
        v46 = v17[1];
        sub_1DAC01FC0(v17 + *(v24 + 48), v13, type metadata accessor for Quote);
        v48 = *a5;
        v49 = sub_1DAA4BF3C(v47, v46);
        v51 = v48[2];
        v52 = (v50 & 1) == 0;
        v41 = __OFADD__(v51, v52);
        v53 = v51 + v52;
        if (v41)
        {
          goto LABEL_25;
        }

        v54 = v50;
        if (v48[3] < v53)
        {
          sub_1DAA7C010(v53, 1);
          v55 = *a5;
          v49 = sub_1DAA4BF3C(v47, v46);
          if ((v54 & 1) != (v56 & 1))
          {
            goto LABEL_27;
          }
        }

        v38 = *a5;
        if (v54)
        {
          v30 = v49;
          goto LABEL_16;
        }

        v38[(v49 >> 6) + 8] |= 1 << v49;
        v43 = (v38[6] + 16 * v49);
        *v43 = v47;
        v43[1] = v46;
        sub_1DAC01FC0(v13, v38[7] + *(v68 + 72) * v49, type metadata accessor for Quote);
        v44 = v38[2];
        v41 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v41)
        {
          goto LABEL_26;
        }

        v38[2] = v45;
      }
    }

    goto LABEL_13;
  }

LABEL_27:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAC019C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v10 = type metadata accessor for Chart(0);
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC01E94(0, &qword_1EE126A48, &qword_1EE11FBD8, type metadata accessor for Chart, sub_1DAC01F5C);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v57 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v61 = a1;
  v62 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v63 = v19;
  v64 = 0;
  v65 = v22 & v20;
  v66 = a2;
  v67 = a3;
  sub_1DACB71E4();
  v59 = a3;
  sub_1DACB71F4();
  sub_1DAC00CB4(v17);
  sub_1DAC01F5C(0, &qword_1EE11FBD8, type metadata accessor for Chart);
  v24 = v23;
  v60 = *(*(v23 - 8) + 48);
  if (v60(v17, 1, v23) == 1)
  {
LABEL_5:
    sub_1DAA54B38();
  }

  v58 = a4;
  v27 = *v17;
  v26 = v17[1];
  sub_1DAC01FC0(v17 + *(v24 + 48), v13, type metadata accessor for Chart);
  v28 = *a5;
  v57 = v27;
  v30 = sub_1DAA4BF3C(v27, v26);
  v31 = v28[2];
  v32 = (v29 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = v29;
  if (v28[3] >= v33)
  {
    if (v58)
    {
      v38 = *a5;
      if (v29)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1DAB66744();
      v38 = *a5;
      if (v34)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v38[(v30 >> 6) + 8] |= 1 << v30;
    v39 = (v38[6] + 16 * v30);
    *v39 = v57;
    v39[1] = v26;
    sub_1DAC01FC0(v13, v38[7] + *(v68 + 72) * v30, type metadata accessor for Chart);
    v40 = v38[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (!v41)
    {
      v38[2] = v42;
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  sub_1DAA860FC(v33, v58 & 1);
  v35 = *a5;
  v36 = sub_1DAA4BF3C(v57, v26);
  if ((v34 & 1) == (v37 & 1))
  {
    v30 = v36;
    v38 = *a5;
    if (v34)
    {
LABEL_16:

      sub_1DAC02028(v13, v38[7] + *(v68 + 72) * v30, type metadata accessor for Chart);
LABEL_19:
      while (1)
      {
        sub_1DAC00CB4(v17);
        if (v60(v17, 1, v24) == 1)
        {
          goto LABEL_5;
        }

        v47 = *v17;
        v46 = v17[1];
        sub_1DAC01FC0(v17 + *(v24 + 48), v13, type metadata accessor for Chart);
        v48 = *a5;
        v49 = sub_1DAA4BF3C(v47, v46);
        v51 = v48[2];
        v52 = (v50 & 1) == 0;
        v41 = __OFADD__(v51, v52);
        v53 = v51 + v52;
        if (v41)
        {
          goto LABEL_25;
        }

        v54 = v50;
        if (v48[3] < v53)
        {
          sub_1DAA860FC(v53, 1);
          v55 = *a5;
          v49 = sub_1DAA4BF3C(v47, v46);
          if ((v54 & 1) != (v56 & 1))
          {
            goto LABEL_27;
          }
        }

        v38 = *a5;
        if (v54)
        {
          v30 = v49;
          goto LABEL_16;
        }

        v38[(v49 >> 6) + 8] |= 1 << v49;
        v43 = (v38[6] + 16 * v49);
        *v43 = v47;
        v43[1] = v46;
        sub_1DAC01FC0(v13, v38[7] + *(v68 + 72) * v49, type metadata accessor for Chart);
        v44 = v38[2];
        v41 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v41)
        {
          goto LABEL_26;
        }

        v38[2] = v45;
      }
    }

    goto LABEL_13;
  }

LABEL_27:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

void sub_1DAC01E94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1DACB9AF4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1DAC01EF0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAC02090(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1DAC01F5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAC01FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC02028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1DAC02090(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAC020F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1DAC01E94(0, a3, a4, a5, sub_1DAC02090);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1DAC0217C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAC02090(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAC02200@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAAA2108();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8E34();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC02290()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC022E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DAC02330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAC02380(_OWORD *a1)
{
  v3 = sub_1DACB8FB4();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DACB9004();
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[7];
  v28[6] = a1[6];
  v28[7] = v11;
  v28[8] = a1[8];
  v12 = a1[3];
  v28[2] = a1[2];
  v28[3] = v12;
  v13 = a1[5];
  v28[4] = a1[4];
  v28[5] = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v23[1] = *(v1 + 24);
  v15 = swift_allocObject();
  v16 = a1[7];
  *(v15 + 112) = a1[6];
  *(v15 + 128) = v16;
  *(v15 + 144) = a1[8];
  v17 = a1[3];
  *(v15 + 48) = a1[2];
  *(v15 + 64) = v17;
  v18 = a1[5];
  *(v15 + 80) = a1[4];
  *(v15 + 96) = v18;
  v19 = a1[1];
  *(v15 + 16) = *a1;
  *(v15 + 32) = v19;
  *(v15 + 160) = v1;
  v27[4] = sub_1DAC04130;
  v27[5] = v15;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1DAA5796C;
  v27[3] = &block_descriptor_15;
  v20 = _Block_copy(v27);
  sub_1DAAD4CCC(v28, v26);
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v26[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA57344(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1DAA5802C(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57424(&qword_1EE123EB0, &qword_1EE123EC0, v21);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v10, v6, v20);
  _Block_release(v20);
  (*(v25 + 8))(v6, v3);
  (*(v7 + 8))(v10, v24);
}

uint64_t sub_1DAC026C4(_OWORD *a1, uint64_t a2)
{
  sub_1DAA41D64();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D40;
  v5 = a1[7];
  v46[6] = a1[6];
  v46[7] = v5;
  v46[8] = a1[8];
  v6 = a1[3];
  v46[2] = a1[2];
  v46[3] = v6;
  v7 = a1[5];
  v46[4] = a1[4];
  v46[5] = v7;
  v8 = a1[1];
  v46[0] = *a1;
  v46[1] = v8;
  sub_1DAA9B6F0(v46);
  v9 = [*sub_1DAA9B6E0(v46) articleID];
  v10 = sub_1DACB9324();
  v12 = v11;

  v13 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1DAA443C8();
  *(v4 + 64) = v14;
  *(v4 + 32) = v10;
  *(v4 + 40) = v12;
  v15 = a1[7];
  v45[6] = a1[6];
  v45[7] = v15;
  v45[8] = a1[8];
  v16 = a1[3];
  v45[2] = a1[2];
  v45[3] = v16;
  v17 = a1[5];
  v45[4] = a1[4];
  v45[5] = v17;
  v18 = a1[1];
  v45[0] = *a1;
  v45[1] = v18;
  sub_1DAA9B6F0(v45);
  v19 = [*sub_1DAA9B6E0(v45) title];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1DACB9324();
    v23 = v22;

    v24 = (v4 + 72);
    *(v4 + 96) = v13;
    *(v4 + 104) = v14;
    if (v23)
    {
      *v24 = v21;
      goto LABEL_6;
    }
  }

  else
  {
    v24 = (v4 + 72);
    *(v4 + 96) = v13;
    *(v4 + 104) = v14;
  }

  *v24 = 0;
  v23 = 0xE000000000000000;
LABEL_6:
  *(v4 + 80) = v23;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  v25 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  v26 = sub_1DAC02AC8(a2, a1);
  v28 = v27;
  if (v29)
  {
  }

  v31 = *(a2 + 32);
  v32 = v26;
  sub_1DACB88F4();
  sub_1DACB71E4();
  sub_1DACB8E14();

  v33 = a1[7];
  v44[6] = a1[6];
  v44[7] = v33;
  v44[8] = a1[8];
  v34 = a1[3];
  v44[2] = a1[2];
  v44[3] = v34;
  v35 = a1[5];
  v44[4] = a1[4];
  v44[5] = v35;
  v36 = a1[1];
  v44[0] = *a1;
  v44[1] = v36;
  sub_1DAA9B6F0(v44);
  v37 = [*sub_1DAA9B6E0(v44) identifier];
  v38 = sub_1DACB9324();
  v40 = v39;

  swift_beginAccess();
  v41 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_1DACA5F1C(v32, v28, 1, v38, v40, isUniquelyReferenced_nonNull_native);

  *(a2 + 16) = v43;
  return swift_endAccess();
}

uint64_t sub_1DAC02AC8(uint64_t a1, _OWORD *a2)
{
  v40 = sub_1DACB8D04();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[7];
  v44[6] = a2[6];
  v44[7] = v8;
  v44[8] = a2[8];
  v9 = a2[3];
  v44[2] = a2[2];
  v44[3] = v9;
  v10 = a2[5];
  v44[4] = a2[4];
  v44[5] = v10;
  v11 = a2[1];
  v44[0] = *a2;
  v44[1] = v11;
  sub_1DAA9B6F0(v44);
  v12 = [*sub_1DAA9B6E0(v44) identifier];
  v13 = sub_1DACB9324();
  v15 = v14;

  swift_beginAccess();
  v16 = *(a1 + 16);
  if (*(v16 + 16))
  {
    v17 = sub_1DAA4BF3C(v13, v15);
    v19 = v18;

    if (v19)
    {
      v20 = *(v16 + 56) + 24 * v17;
      a2 = *v20;
      v21 = *(v20 + 8);
      v22 = *(v20 + 16);
      swift_endAccess();
      sub_1DACB71E4();
      return a2;
    }
  }

  else
  {
  }

  swift_endAccess();
  v23 = *(a1 + 32);
  sub_1DACB88F4();
  v24 = a2[7];
  v43[6] = a2[6];
  v43[7] = v24;
  v43[8] = a2[8];
  v25 = a2[3];
  v43[2] = a2[2];
  v43[3] = v25;
  v26 = a2[5];
  v43[4] = a2[4];
  v43[5] = v26;
  v27 = a2[1];
  v43[0] = *a2;
  v43[1] = v27;
  sub_1DAA9B6F0(v43);
  v28 = [*sub_1DAA9B6E0(v43) identifier];
  v29 = sub_1DACB9324();
  v31 = v30;

  v41[3] = MEMORY[0x1E69E6158];
  v41[4] = MEMORY[0x1E69D62D8];
  v41[0] = v29;
  v41[1] = v31;
  sub_1DACB8E04();
  __swift_destroy_boxed_opaque_existential_1(v41);
  v32 = v45;
  sub_1DACB8E24();
  if (v32)
  {
    (*(v4 + 8))(v7, v40);
  }

  else
  {
    (*(v4 + 8))(v7, v40);

    if (v41[6])
    {
      return v41[5];
    }

    else
    {
      v33 = a2[7];
      v42[6] = a2[6];
      v42[7] = v33;
      v42[8] = a2[8];
      v34 = a2[3];
      v42[2] = a2[2];
      v42[3] = v34;
      v35 = a2[5];
      v42[4] = a2[4];
      v42[5] = v35;
      v36 = a2[1];
      v42[0] = *a2;
      v42[1] = v36;
      sub_1DAA9B6F0(v42);
      v37 = [*sub_1DAA9B6E0(v42) identifier];
      a2 = sub_1DACB9324();
    }
  }

  return a2;
}

uint64_t sub_1DAC02E00(_OWORD *a1)
{
  v3 = a1[7];
  v21[6] = a1[6];
  v21[7] = v3;
  v21[8] = a1[8];
  v4 = a1[3];
  v21[2] = a1[2];
  v21[3] = v4;
  v5 = a1[5];
  v21[4] = a1[4];
  v21[5] = v5;
  v6 = a1[1];
  v21[0] = *a1;
  v21[1] = v6;
  v20 = 0;
  v7 = *(v1 + 24);
  v8 = swift_allocObject();
  v9 = a1[4];
  *(v8 + 104) = a1[5];
  v10 = a1[7];
  *(v8 + 120) = a1[6];
  *(v8 + 136) = v10;
  *(v8 + 152) = a1[8];
  v11 = *a1;
  *(v8 + 40) = a1[1];
  v12 = a1[3];
  *(v8 + 56) = a1[2];
  *(v8 + 72) = v12;
  *(v8 + 88) = v9;
  *(v8 + 16) = v1;
  *(v8 + 24) = v11;
  *(v8 + 168) = &v20;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1DAC04120;
  *(v13 + 24) = v8;
  aBlock[4] = sub_1DAB4DBE8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAC03468;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DAAD4CCC(v21, v18);
  sub_1DACB71F4();

  dispatch_sync(v7, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v17 = v20;

    return v17;
  }

  return result;
}

uint64_t sub_1DAC02FE0(uint64_t a1, _OWORD *a2, char *a3)
{
  v46 = a3;
  v47 = sub_1DACB8D04();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[7];
  v62[6] = a2[6];
  v62[7] = v9;
  v62[8] = a2[8];
  v10 = a2[3];
  v62[2] = a2[2];
  v62[3] = v10;
  v11 = a2[5];
  v62[4] = a2[4];
  v62[5] = v11;
  v12 = a2[1];
  v62[0] = *a2;
  v62[1] = v12;
  sub_1DAA9B6F0(v62);
  v13 = [*sub_1DAA9B6E0(v62) identifier];
  v14 = sub_1DACB9324();
  v16 = v15;

  swift_beginAccess();
  v17 = *(a1 + 16);
  if (*(v17 + 16))
  {
    v18 = sub_1DAA4BF3C(v14, v16);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(v17 + 56) + 24 * v18 + 16);
      result = swift_endAccess();
      *v46 = v21;
      return result;
    }
  }

  else
  {
  }

  swift_endAccess();
  v23 = *(a1 + 32);
  sub_1DACB88F4();
  v24 = a2[7];
  v61[6] = a2[6];
  v61[7] = v24;
  v61[8] = a2[8];
  v25 = a2[3];
  v61[2] = a2[2];
  v61[3] = v25;
  v26 = a2[5];
  v61[4] = a2[4];
  v61[5] = v26;
  v27 = a2[1];
  v61[0] = *a2;
  v61[1] = v27;
  sub_1DAA9B6F0(v61);
  v28 = [*sub_1DAA9B6E0(v61) identifier];
  v29 = sub_1DACB9324();
  v31 = v30;

  *(&v53 + 1) = MEMORY[0x1E69E6158];
  *&v54 = MEMORY[0x1E69D62D8];
  *&v52 = v29;
  *(&v52 + 1) = v31;
  sub_1DACB8E04();
  __swift_destroy_boxed_opaque_existential_1(&v52);
  sub_1DACB8E24();
  (*(v5 + 8))(v8, v47);

  v32 = v50;
  if (v50)
  {
    v33 = v49;
    v34 = v51;
    v35 = a2[7];
    v58 = a2[6];
    v59 = v35;
    v60 = a2[8];
    v36 = a2[3];
    v54 = a2[2];
    v55 = v36;
    v37 = a2[5];
    v56 = a2[4];
    v57 = v37;
    v38 = a2[1];
    v52 = *a2;
    v53 = v38;
    sub_1DAA9B6F0(&v52);
    v39 = [*sub_1DAA9B6E0(&v52) identifier];
    v40 = sub_1DACB9324();
    v42 = v41;

    swift_beginAccess();
    sub_1DACB71E4();
    v43 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(a1 + 16);
    *(a1 + 16) = 0x8000000000000000;
    v34 &= 1u;
    sub_1DACA5F1C(v33, v32, v34, v40, v42, isUniquelyReferenced_nonNull_native);

    *(a1 + 16) = v48;
    swift_endAccess();

    *v46 = v34;
  }

  return result;
}

uint64_t sub_1DAC03490(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = a4;
  sub_1DAC04B0C(0, &qword_1EE11CF48, sub_1DAC04AB8, &type metadata for HeadlineHistoryModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC04AB8();
  sub_1DACBA304();
  v17 = 0;
  v12 = v14[1];
  sub_1DACBA094();
  if (!v12)
  {
    v16 = 1;
    sub_1DACBA0A4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAC0367C(uint64_t a1)
{
  v2 = sub_1DAC04AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC036B8(uint64_t a1)
{
  v2 = sub_1DAC04AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC036F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DAC04200(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DAC03748(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  sub_1DAC04B0C(0, &qword_1EE11CF30, sub_1DAC04984, &type metadata for HeadlineHistoryEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC04984();
  sub_1DACBA304();
  v16 = a2;
  v15 = 0;
  sub_1DAC041AC(0, &qword_1EE11D2F8, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6208]);
  sub_1DAC04A48(&qword_1EE11D308);
  sub_1DACBA0E4();
  if (!v3)
  {
    v16 = v14;
    v15 = 1;
    sub_1DAC041AC(0, &qword_1EE11D2E0, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], MEMORY[0x1E69D6208]);
    sub_1DAC049D8(&qword_1EE11D2F0);
    sub_1DACBA0E4();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DAC039B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465736F707865 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAC03A84(uint64_t a1)
{
  v2 = sub_1DAC04984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC03AC0(uint64_t a1)
{
  v2 = sub_1DAC04984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC03B20()
{
  v0 = *a100;
  sub_1DACB71E4();
  return v0;
}

uint64_t sub_1DAC03B58(uint64_t a1)
{
  v2 = sub_1DAAA2C20();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1DAC03BA4(uint64_t a1)
{
  v2 = sub_1DAAA2C20();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1DAC03BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAAA2C20();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1DAC03C54@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  sub_1DAC0413C(0, &qword_1EE11D310, &qword_1EE11D318, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0]);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - v6;
  v8 = MEMORY[0x1E69E6158];
  v9 = MEMORY[0x1E69D62D0];
  sub_1DAC0413C(0, &qword_1EE11D320, &qword_1EE11D328, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = MEMORY[0x1E69D6200];
  sub_1DAC041AC(0, &qword_1EE11D328, v8, v9, MEMORY[0x1E69D6200]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v20(v16, 1, 1, v18);
  v20(v14, 1, 1, v19);
  v21 = MEMORY[0x1E69D6208];
  sub_1DAC041AC(0, &qword_1EE11D2F8, v8, v9, MEMORY[0x1E69D6208]);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1DACB8E54();
  v26 = MEMORY[0x1E69E6370];
  v27 = MEMORY[0x1E69D62E0];
  sub_1DAC041AC(0, &qword_1EE11D318, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], v17);
  v29 = v28;
  v30 = *(*(v28 - 8) + 56);
  v30(v7, 1, 1, v28);
  v30(v5, 1, 1, v29);
  sub_1DAC041AC(0, &qword_1EE11D2E0, v26, v27, v21);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  result = sub_1DACB8E54();
  v35 = v37;
  *v37 = v25;
  v35[1] = result;
  return result;
}

uint64_t sub_1DAC03F64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAC0440C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DAC03FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAAA2C20();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1DAC03FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAAA2C20();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1DAC0404C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DAAA2C20();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

void sub_1DAC040B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  swift_unknownObjectRelease();
  if ((a14 & 0x8000000000000000) == 0)
  {
  }
}

void sub_1DAC0413C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1DAC041AC(255, a3, a4, a5, MEMORY[0x1E69D6200]);
    v6 = sub_1DACB9AF4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1DAC041AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1DAC04200(uint64_t *a1)
{
  sub_1DAC04B0C(0, &qword_1EE11CF70, sub_1DAC04AB8, &type metadata for HeadlineHistoryModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC04AB8();
  sub_1DACBA2F4();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1DACB9FA4();
    v12 = 1;
    sub_1DACB9FB4();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DAC0440C(uint64_t *a1)
{
  v47 = a1;
  sub_1DAC04B0C(0, &qword_1EE11CF68, sub_1DAC04984, &type metadata for HeadlineHistoryEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v41 - v3;
  sub_1DAC0413C(0, &qword_1EE11D310, &qword_1EE11D318, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v41 - v8;
  v9 = MEMORY[0x1E69E6158];
  v10 = MEMORY[0x1E69D62D0];
  sub_1DAC0413C(0, &qword_1EE11D320, &qword_1EE11D328, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = MEMORY[0x1E69D6200];
  sub_1DAC041AC(0, &qword_1EE11D328, v9, v10, MEMORY[0x1E69D6200]);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v21(v17, 1, 1, v19);
  v21(v15, 1, 1, v20);
  v22 = MEMORY[0x1E69D6208];
  sub_1DAC041AC(0, &qword_1EE11D2F8, v9, v10, MEMORY[0x1E69D6208]);
  v24 = v23;
  v25 = *(v23 + 48);
  v26 = *(v23 + 52);
  swift_allocObject();
  v46 = sub_1DACB8E54();
  v27 = MEMORY[0x1E69E6370];
  sub_1DAC041AC(0, &qword_1EE11D318, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], v18);
  v29 = v28;
  v30 = *(*(v28 - 8) + 56);
  v30(v44, 1, 1, v28);
  v30(v45, 1, 1, v29);
  v31 = v47;
  sub_1DAC041AC(0, &qword_1EE11D2E0, v27, MEMORY[0x1E69D62E0], v22);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1DACB8E54();
  v35 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1DAC04984();
  v36 = v49;
  v37 = v48;
  sub_1DACBA2F4();
  if (v36)
  {
  }

  else
  {
    v38 = v42;
    v50 = 0;
    sub_1DAC04A48(&qword_1EE11D300);
    v39 = v43;
    sub_1DACB9FE4();

    v24 = v51;
    v50 = 1;
    sub_1DAC049D8(&qword_1EE11D2E8);
    sub_1DACB9FE4();
    (*(v38 + 8))(v37, v39);
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v24;
}

unint64_t sub_1DAC04984()
{
  result = qword_1EE11E5B8;
  if (!qword_1EE11E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5B8);
  }

  return result;
}

uint64_t sub_1DAC049D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAC041AC(255, &qword_1EE11D2E0, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], MEMORY[0x1E69D6208]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAC04A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAC041AC(255, &qword_1EE11D2F8, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6208]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC04AB8()
{
  result = qword_1EE11E650;
  if (!qword_1EE11E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E650);
  }

  return result;
}

void sub_1DAC04B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAC04B98()
{
  result = qword_1ECBE8F78;
  if (!qword_1ECBE8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F78);
  }

  return result;
}

unint64_t sub_1DAC04BF0()
{
  result = qword_1ECBE8F80;
  if (!qword_1ECBE8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8F80);
  }

  return result;
}

unint64_t sub_1DAC04C48()
{
  result = qword_1EE11E640;
  if (!qword_1EE11E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E640);
  }

  return result;
}

unint64_t sub_1DAC04CA0()
{
  result = qword_1EE11E648;
  if (!qword_1EE11E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E648);
  }

  return result;
}

unint64_t sub_1DAC04CF8()
{
  result = qword_1EE11E5A8;
  if (!qword_1EE11E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5A8);
  }

  return result;
}

unint64_t sub_1DAC04D50()
{
  result = qword_1EE11E5B0;
  if (!qword_1EE11E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5B0);
  }

  return result;
}

uint64_t sub_1DAC04DB8()
{
  sub_1DAA65E94();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAC04E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DAA98788;
  *(v10 + 24) = v8;
  v12[4] = sub_1DAB4DBE8;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAA5796C;
  v12[3] = &block_descriptor_28;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();

  [v9 prepareForUseWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t sub_1DAC04F1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC04F54()
{
  v1 = *v0;
  sub_1DAA65E94();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAC04FA8()
{
  v1 = *(*v0 + 16);
  swift_getObjectType();
  return sub_1DACB9A24();
}

uint64_t sub_1DAC0503C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t sub_1DAC05064()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC050A4()
{
  sub_1DAC051C4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAC050F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DACB82E4();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB82D4();
}

void sub_1DAC051C4()
{
  if (!qword_1EE11D410)
  {
    sub_1DACB8704();
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D410);
    }
  }
}

void sub_1DAC0521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v25 = a2;
  v26 = a3;
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1DAB25E48(0, 4, 0);
  v14 = 0;
  v15 = v31;
  v24 = a1;
  v29 = *(a1 + 56);
  v30 = v7 + 32;
  do
  {
    v16 = byte_1F567EAD0[v14 + 32];
    sub_1DACB8BD4();
    sub_1DACB7A24();

    (*(v7 + 8))(v11, v6);
    v31 = v15;
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1DAB25E48(v17 > 1, v18 + 1, 1);
      v15 = v31;
    }

    ++v14;
    *(v15 + 16) = v18 + 1;
    v19 = (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v13, v6);
  }

  while (v14 != 4);
  MEMORY[0x1EEE9AC00](v19);
  *(&v24 - 2) = v24;
  *(&v24 - 1) = v15;
  sub_1DAC05A04();
  sub_1DACB8BB4();

  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  *(v20 + 24) = v26;
  sub_1DACB71F4();
  v21 = sub_1DACB89D4();
  sub_1DACB8A64();

  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  *(v22 + 24) = v28;
  sub_1DACB71F4();
  v23 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAC055C0()
{
  v0 = sub_1DACB7CC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *(type metadata accessor for SDSAuthToken() + 28);
  sub_1DACB7CB4();
  sub_1DAC05ACC(&qword_1EE123A48, MEMORY[0x1E6969530]);
  v9 = sub_1DACB9224();
  v10 = *(v1 + 8);
  v10(v7, v0);
  if (v9)
  {
    sub_1DACB7B84();
    sub_1DACB7BF4();
    sub_1DACB7CB4();
    v11 = sub_1DACB7C24();
    v10(v5, v0);
    v10(v7, v0);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_1DAC05780(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_1DACB8704();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6830], v3);
  a2(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DAC058DC()
{
  sub_1DAC051C4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAC05984()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(v2, sub_1DAC055C0, 0, v3, v4);
}

void sub_1DAC05A04()
{
  if (!qword_1EE124010)
  {
    sub_1DACB7AB4();
    type metadata accessor for SDSAuthToken();
    sub_1DAC05ACC(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124010);
    }
  }
}

uint64_t sub_1DAC05ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAC05B18()
{
  type metadata accessor for NoFavoritesPersonalizer();

  return swift_allocObject();
}

uint64_t sub_1DAC05B80(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (!result)
  {
    goto LABEL_10;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE121F40[0] != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (result)
  {
    v8 = result;
    sub_1DAA4E470(0, &qword_1EE11F490);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DACCB1F0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = sub_1DACB9634();

    v11 = [v4 recordTreeSourceWithRecordSources_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1DAC05D9C()
{
  if (qword_1EE121F40[0] != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E348;
  v0 = unk_1EE13E350;
  v3 = qword_1EE13E358;
  v2 = unk_1EE13E360;
  v4 = qword_1EE13E368;
  v5 = unk_1EE13E370;
  v6 = qword_1EE13E378;
  v7 = unk_1EE13E380;
  sub_1DAA4E470(0, &qword_1EE123B50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D30;
  *(v8 + 32) = v1;
  *(v8 + 40) = v0;
  *(v8 + 48) = v3;
  *(v8 + 56) = v2;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E69B5378]);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v10 = sub_1DACB92F4();
  v11 = sub_1DACB92F4();
  v12 = sub_1DACB9634();

  v13 = sub_1DACB9634();
  v14 = [v9 initWithRecordType:v10 recordIDPrefix:v11 keys:v12 localizableKeys:v13];

  return v14;
}

uint64_t sub_1DAC05F38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = sub_1DAC06054(*(a1 + 32), *(a1 + 40));
  v9 = v8;
  v10 = sub_1DAC06054(v5, v6);
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    if (a4)
    {
      if (v10 != v7 || v11 != v9)
      {
LABEL_16:
        a4 = sub_1DACBA174();

LABEL_17:

        return a4 & 1;
      }
    }

    else if (v7 != v10 || v9 != v11)
    {
      goto LABEL_16;
    }

LABEL_19:
    a4 = 0;
    return a4 & 1;
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  a4 = (a4 & 1) == 0;
  return a4 & 1;
}

uint64_t sub_1DAC06054(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DACB7664();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  v12 = (*(v11 + 8))(a1, a2, 0, v10, v11);
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    a1 = v14;
    a2 = v15;
  }

  else
  {

    sub_1DACB71E4();
  }

  v23 = a1;
  v24 = a2;
  sub_1DACB7614();
  sub_1DAA642D8();
  v17 = sub_1DACB9B34();
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v9, v5);

  v23 = v17;
  v24 = v19;
  sub_1DACB7644();
  sub_1DACB9B34();
  v20(v9, v5);

  v21 = sub_1DACB93B4();

  return v21;
}

uint64_t sub_1DAC06250(char *__src, char *a2, char *a3, char *__dst, uint64_t a5, int a6)
{
  v7 = v6;
  v114 = a6;
  v8 = __dst;
  v9 = a3;
  v10 = a2;
  v11 = __src;
  v12 = a2 - __src;
  v13 = (a2 - __src) / 136;
  v14 = a3 - a2;
  v15 = (a3 - a2) / 136;
  if (v13 < v15)
  {
    if (__dst != __src || &__src[136 * v13] <= __dst)
    {
      memmove(__dst, __src, 136 * v13);
    }

    v16 = (v8 + 136 * v13);
    if (v12 < 136)
    {
LABEL_6:
      v10 = v11;
      goto LABEL_48;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_6;
      }

      v96 = *v10;
      v19 = *(v10 + 1);
      v20 = *(v10 + 2);
      v21 = *(v10 + 4);
      v99 = *(v10 + 3);
      v100 = v21;
      v97 = v19;
      v98 = v20;
      v22 = *(v10 + 5);
      v23 = *(v10 + 6);
      v24 = *(v10 + 7);
      v104 = *(v10 + 16);
      v102 = v23;
      v103 = v24;
      v101 = v22;
      memmove(&__dsta, v10, 0x88uLL);
      v105 = *v8;
      v25 = *(v8 + 16);
      v26 = *(v8 + 32);
      v27 = *(v8 + 64);
      v108 = *(v8 + 48);
      v109 = v27;
      v106 = v25;
      v107 = v26;
      v28 = *(v8 + 80);
      v29 = *(v8 + 96);
      v30 = *(v8 + 112);
      v113 = *(v8 + 128);
      v111 = v29;
      v112 = v30;
      v110 = v28;
      memmove(&v78, v8, 0x88uLL);
      sub_1DAA806E4(&v96, &v69);
      sub_1DAA806E4(&v105, &v69);
      v31 = sub_1DAC0BBFC(&__dsta, &v78, v114 & 1);
      if (v6)
      {
        v66 = v84;
        v67 = v85;
        v68 = v86;
        v62 = v80;
        v63 = v81;
        v64 = v82;
        v65 = v83;
        v60 = v78;
        v61 = v79;
        sub_1DAA9B1C8(&v60);
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v71 = v89;
        v72 = v90;
        v73 = v91;
        v74 = v92;
        v69 = __dsta;
        v70 = v88;
        sub_1DAA9B1C8(&v69);
        v55 = &v16[-v8] / 136;
        if (v11 < v8 || v11 >= v8 + 136 * v55 || v11 != v8)
        {
          v56 = 136 * v55;
          v57 = v11;
          goto LABEL_52;
        }

        goto LABEL_53;
      }

      v32 = v31;
      v66 = v84;
      v67 = v85;
      v68 = v86;
      v62 = v80;
      v63 = v81;
      v64 = v82;
      v65 = v83;
      v60 = v78;
      v61 = v79;
      sub_1DAA9B1C8(&v60);
      v75 = v93;
      v76 = v94;
      v77 = v95;
      v71 = v89;
      v72 = v90;
      v73 = v91;
      v74 = v92;
      v69 = __dsta;
      v70 = v88;
      sub_1DAA9B1C8(&v69);
      if (v32)
      {
        break;
      }

      v17 = v8;
      v18 = v11 == v8;
      v8 += 136;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v11 += 136;
      if (v8 >= v16)
      {
        goto LABEL_6;
      }
    }

    v17 = v10;
    v18 = v11 == v10;
    v10 += 136;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v11, v17, 0x88uLL);
    goto LABEL_9;
  }

  if (__dst != a2 || &a2[136 * v15] <= __dst)
  {
    memmove(__dst, a2, 136 * v15);
  }

  v16 = (v8 + 136 * v15);
  if (v14 < 136 || v10 <= v11)
  {
LABEL_48:
    v54 = &v16[-v8] / 136;
    if (v10 < v8 || v10 >= v8 + 136 * v54 || v10 != v8)
    {
LABEL_51:
      v56 = 136 * v54;
      v57 = v10;
LABEL_52:
      memmove(v57, v8, v56);
    }

    goto LABEL_53;
  }

  v33 = -v8;
LABEL_22:
  v59 = v7;
  v34 = v10 - 136;
  v35 = &v16[v33];
  v9 -= 136;
  v36 = v16;
  while (1)
  {
    v16 = v36;
    v36 -= 136;
    v96 = *(v16 - 136);
    v37 = *(v16 - 120);
    v38 = *(v16 - 104);
    v39 = *(v16 - 72);
    v99 = *(v16 - 88);
    v100 = v39;
    v97 = v37;
    v98 = v38;
    v40 = *(v16 - 56);
    v41 = *(v16 - 40);
    v42 = *(v16 - 24);
    v104 = *(v16 - 1);
    v102 = v41;
    v103 = v42;
    v101 = v40;
    memmove(&__dsta, v36, 0x88uLL);
    v43 = *(v10 - 56);
    v44 = *(v10 - 24);
    v111 = *(v10 - 40);
    v112 = v44;
    v45 = *(v10 - 120);
    v46 = *(v10 - 88);
    v107 = *(v10 - 104);
    v108 = v46;
    v47 = *(v10 - 88);
    v48 = *(v10 - 56);
    v109 = *(v10 - 72);
    v110 = v48;
    v49 = *(v10 - 120);
    v105 = *v34;
    v106 = v49;
    v50 = *(v10 - 24);
    v84 = v111;
    v85 = v50;
    v80 = v107;
    v81 = v47;
    v82 = v109;
    v83 = v43;
    v113 = *(v10 - 1);
    v86 = *(v10 - 1);
    v78 = v105;
    v79 = v45;
    sub_1DAA806E4(&v96, &v69);
    sub_1DAA806E4(&v105, &v69);
    v51 = sub_1DAC0BBFC(&__dsta, &v78, v114 & 1);
    if (v59)
    {
      break;
    }

    v52 = v51;
    v66 = v84;
    v67 = v85;
    v68 = v86;
    v62 = v80;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v60 = v78;
    v61 = v79;
    sub_1DAA9B1C8(&v60);
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v71 = v89;
    v72 = v90;
    v73 = v91;
    v74 = v92;
    v69 = __dsta;
    v70 = v88;
    sub_1DAA9B1C8(&v69);
    v53 = v9 + 136;
    if (v52)
    {
      if (v53 < v10 || v9 >= v10)
      {
        memmove(v9, v10 - 136, 0x88uLL);
        v7 = 0;
        v33 = -v8;
      }

      else
      {
        v7 = 0;
        v33 = -v8;
        if (v53 != v10)
        {
          memmove(v9, v10 - 136, 0x88uLL);
        }
      }

      if (v16 <= v8 || (v10 -= 136, v34 <= v11))
      {
        v10 = v34;
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    if (v53 < v16 || v9 >= v16 || v53 != v16)
    {
      memmove(v9, v36, 0x88uLL);
    }

    v35 -= 136;
    v9 -= 136;
    if (v36 <= v8)
    {
      v16 = v36;
      goto LABEL_48;
    }
  }

  v66 = v84;
  v67 = v85;
  v68 = v86;
  v62 = v80;
  v63 = v81;
  v64 = v82;
  v65 = v83;
  v60 = v78;
  v61 = v79;
  sub_1DAA9B1C8(&v60);
  v75 = v93;
  v76 = v94;
  v77 = v95;
  v71 = v89;
  v72 = v90;
  v73 = v91;
  v74 = v92;
  v69 = __dsta;
  v70 = v88;
  sub_1DAA9B1C8(&v69);
  v54 = v35 / 136;
  if (v10 < v8 || v10 >= v8 + 136 * v54)
  {
    memmove(v10, v8, 136 * v54);

    return 1;
  }

  if (v10 != v8)
  {
    goto LABEL_51;
  }

LABEL_53:

  return 1;
}

uint64_t sub_1DAC068C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DAC0694C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

BOOL sub_1DAC069B0(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v8 = type metadata accessor for Quote();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v28 - v14);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = sub_1DAA4BF3C(*(a1 + 16), *(a1 + 24));
  if (v19)
  {
    sub_1DAC0F278(*(a3 + 56) + *(v9 + 72) * v18, v15);
    v20 = v15[2];
    v21 = *(v15 + 24);
    sub_1DAC0F2DC(v15);
    if (!*(a3 + 16))
    {
LABEL_10:
      if (v21)
      {
        return 0;
      }

      return a4;
    }
  }

  else
  {
    v21 = 1;
    v20 = 0.0;
    if (!*(a3 + 16))
    {
      goto LABEL_10;
    }
  }

  v22 = sub_1DAA4BF3C(v16, v17);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1DAC0F278(*(a3 + 56) + *(v9 + 72) * v22, v13);
  v24 = v13[2];
  v25 = *(v13 + 24);
  sub_1DAC0F2DC(v13);
  if (v21)
  {
    if (v25)
    {
      return 0;
    }

    return !a4;
  }

  else if ((v25 & 1) == 0)
  {
    if (a4)
    {
      return v24 < v20;
    }

    else
    {
      return v20 < v24;
    }
  }

  return a4;
}

uint64_t sub_1DAC06B68(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, int a6)
{
  v91 = a6;
  v90 = *(type metadata accessor for Quote() - 8);
  v11 = *(v90 + 64);
  v12 = MEMORY[0x1EEE9AC00](a3);
  v89 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v88 = &v85 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v85 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v86 = &v85 - v20;
  v21 = &a2[-a1];
  v22 = v21 / 136;
  v23 = a3 - a2;
  v24 = (a3 - a2) / 136;
  if (v21 / 136 < v24)
  {
    if (a4 != v19 || &v19[136 * v22] <= a4)
    {
      v25 = v18;
      v26 = v19;
      memmove(a4, v19, 136 * v22);
      v19 = v26;
      v18 = v25;
    }

    v27 = &a4[136 * v22];
    if (v21 < 136)
    {
      a2 = v19;
      goto LABEL_74;
    }

    v28 = v19;
    if (a2 >= v18)
    {
      goto LABEL_72;
    }

    v112 = v18;
    while (1)
    {
      v92 = v28;
      v94 = *a2;
      v29 = *(a2 + 1);
      v30 = *(a2 + 2);
      v31 = *(a2 + 4);
      v97 = *(a2 + 3);
      v98 = v31;
      v95 = v29;
      v96 = v30;
      v32 = *(a2 + 5);
      v33 = *(a2 + 6);
      v34 = *(a2 + 7);
      v102 = *(a2 + 16);
      v100 = v33;
      v101 = v34;
      v99 = v32;
      v103 = *a4;
      v35 = *(a4 + 1);
      v36 = *(a4 + 2);
      v37 = *(a4 + 4);
      v106 = *(a4 + 3);
      v107 = v37;
      v104 = v35;
      v105 = v36;
      v38 = *(a4 + 5);
      v39 = *(a4 + 6);
      v40 = *(a4 + 7);
      v111 = *(a4 + 16);
      v109 = v39;
      v110 = v40;
      v108 = v38;
      if (!*(a5 + 16))
      {
        break;
      }

      v41 = v95;
      sub_1DAA806E4(&v94, v93);
      sub_1DAA806E4(&v103, v93);
      v42 = sub_1DAA4BF3C(v41, *(&v41 + 1));
      if ((v43 & 1) == 0)
      {
        goto LABEL_12;
      }

      v44 = v86;
      sub_1DAC0F278(*(a5 + 56) + *(v90 + 72) * v42, v86);
      v45 = *(v44 + 16);
      v46 = *(v44 + 24);
      sub_1DAC0F2DC(v44);
LABEL_13:
      v47 = 0.0;
      if (*(a5 + 16) && (v48 = sub_1DAA4BF3C(v104, *(&v104 + 1)), (v49 & 1) != 0))
      {
        v50 = v87;
        sub_1DAC0F278(*(a5 + 56) + *(v90 + 72) * v48, v87);
        v47 = *(v50 + 16);
        v51 = *(v50 + 24);
        sub_1DAC0F2DC(v50);
      }

      else
      {
        v51 = 1;
      }

      sub_1DAA9B1C8(&v103);
      sub_1DAA9B1C8(&v94);
      if (v46)
      {
        v52 = v92;
        if (((v51 | v91) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (v51)
      {
        v52 = v92;
        if (v91)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v52 = v92;
        if (v91)
        {
          if (v47 < v45)
          {
            goto LABEL_24;
          }
        }

        else if (v45 < v47)
        {
LABEL_24:
          v53 = a2;
          v54 = v52 == a2;
          a2 += 136;
          if (v54)
          {
            goto LABEL_26;
          }

LABEL_25:
          memmove(v52, v53, 0x88uLL);
          goto LABEL_26;
        }
      }

      v53 = a4;
      v54 = v52 == a4;
      a4 += 136;
      if (!v54)
      {
        goto LABEL_25;
      }

LABEL_26:
      v28 = v52 + 136;
      if (a4 >= v27 || a2 >= v112)
      {
        goto LABEL_72;
      }
    }

    sub_1DAA806E4(&v94, v93);
    sub_1DAA806E4(&v103, v93);
LABEL_12:
    v46 = 1;
    v45 = 0.0;
    goto LABEL_13;
  }

  v92 = v19;
  if (a4 != a2 || &a2[136 * v24] <= a4)
  {
    v55 = v18;
    memmove(a4, a2, 136 * v24);
    v18 = v55;
  }

  v27 = &a4[136 * v24];
  if (v23 >= 136 && a2 > v92)
  {
LABEL_39:
    v28 = a2 - 136;
    v56 = v18 - 136;
    v57 = v27;
    v87 = a2;
    while (1)
    {
      v112 = v56;
      v27 = v57;
      v94 = *(v57 - 136);
      v59 = *(v57 - 120);
      v60 = *(v57 - 104);
      v61 = *(v57 - 72);
      v97 = *(v57 - 88);
      v98 = v61;
      v95 = v59;
      v96 = v60;
      v62 = *(v57 - 56);
      v63 = *(v57 - 40);
      v64 = *(v57 - 24);
      v102 = *(v57 - 8);
      v100 = v63;
      v101 = v64;
      v99 = v62;
      v65 = *(v28 + 3);
      v105 = *(v28 + 2);
      v106 = v65;
      v66 = *(v28 + 1);
      v103 = *v28;
      v104 = v66;
      v111 = *(v28 + 16);
      v67 = *(v28 + 7);
      v109 = *(v28 + 6);
      v110 = v67;
      v68 = *(v28 + 5);
      v107 = *(v28 + 4);
      v108 = v68;
      if (!*(a5 + 16))
      {
        break;
      }

      v69 = v95;
      sub_1DAA806E4(&v94, v93);
      sub_1DAA806E4(&v103, v93);
      v70 = sub_1DAA4BF3C(v69, *(&v69 + 1));
      if ((v71 & 1) == 0)
      {
        goto LABEL_46;
      }

      v72 = v88;
      sub_1DAC0F278(*(a5 + 56) + *(v90 + 72) * v70, v88);
      v73 = *(v72 + 16);
      v74 = *(v72 + 24);
      sub_1DAC0F2DC(v72);
LABEL_47:
      v75 = 0.0;
      if (*(a5 + 16) && (v76 = sub_1DAA4BF3C(v104, *(&v104 + 1)), (v77 & 1) != 0))
      {
        v78 = a4;
        v79 = v89;
        sub_1DAC0F278(*(a5 + 56) + *(v90 + 72) * v76, v89);
        v75 = *(v79 + 16);
        v80 = *(v79 + 24);
        v81 = v79;
        a4 = v78;
        a2 = v87;
        sub_1DAC0F2DC(v81);
      }

      else
      {
        v80 = 1;
      }

      sub_1DAA9B1C8(&v103);
      sub_1DAA9B1C8(&v94);
      if (v74)
      {
        v58 = v112;
        if (((v80 | v91) & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v58 = v112;
        if (v80)
        {
          if (v91)
          {
            goto LABEL_65;
          }
        }

        else if (v91)
        {
          if (v75 < v73)
          {
            goto LABEL_65;
          }
        }

        else if (v73 < v75)
        {
LABEL_65:
          if (v58 + 136 < a2 || v58 >= a2)
          {
            memmove(v58, v28, 0x88uLL);
            v82 = v92;
          }

          else
          {
            v82 = v92;
            if (v58 + 136 != a2)
            {
              memmove(v58, v28, 0x88uLL);
            }
          }

          if (v27 <= a4 || (a2 = v28, v18 = v112, v28 <= v82))
          {
LABEL_72:
            a2 = v28;
            goto LABEL_74;
          }

          goto LABEL_39;
        }
      }

      v57 = v27 - 136;
      if ((v58 + 136) < v27 || v58 >= v27 || v58 + 136 != v27)
      {
        memmove(v112, (v27 - 136), 0x88uLL);
        v58 = v112;
      }

      v56 = v58 - 136;
      if (v57 <= a4)
      {
        v27 -= 136;
        goto LABEL_74;
      }
    }

    sub_1DAA806E4(&v94, v93);
    sub_1DAA806E4(&v103, v93);
LABEL_46:
    v74 = 1;
    v73 = 0.0;
    goto LABEL_47;
  }

LABEL_74:
  v83 = (v27 - a4) / 136;
  if (a2 != a4 || a2 >= &a4[136 * v83])
  {
    memmove(a2, a4, 136 * v83);
  }

  return 1;
}

uint64_t sub_1DAC0723C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, int a7)
{
  v191 = a1;
  v12 = type metadata accessor for Quote();
  v208 = *(v12 - 8);
  v13 = *(v208 + 8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v205 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v204 = &v190 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v193 = &v190 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v192 = &v190 - v20;
  v199 = a3;
  v21 = a3[1];
  v282 = a5;
  v197 = a6;
  v206 = a7;
  if (v21 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v23 = MEMORY[0x1E69E7CC0];
LABEL_136:
    v205 = *v191;
    if (!v205)
    {
      goto LABEL_179;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_138:
      v177 = (v23 + 16);
      v178 = *(v23 + 2);
      if (v178 >= 2)
      {
        v200 = v23;
        do
        {
          v179 = *v199;
          if (!*v199)
          {
            goto LABEL_177;
          }

          v180 = &v23[16 * v178];
          v181 = *v180;
          v182 = &v177[2 * v178];
          v183 = v182[1];
          v184 = v179 + 136 * *v180;
          v185 = (v179 + 136 * *v182);
          v207 = v179 + 136 * v183;
          v208 = v185;
          v23 = v282;
          sub_1DACB71E4();
          sub_1DACB71F4();
          v186 = v184;
          v187 = v203;
          sub_1DAC06B68(v186, v208, v207, v205, v23, v206 & 1);
          v203 = v187;
          if (v187)
          {
            goto LABEL_134;
          }

          if (v183 < v181)
          {
            goto LABEL_165;
          }

          v188 = *v177;
          if (v178 - 2 >= *v177)
          {
            goto LABEL_166;
          }

          *v180 = v181;
          *(v180 + 1) = v183;
          v189 = v188 - v178;
          if (v188 < v178)
          {
            goto LABEL_167;
          }

          v178 = v188 - 1;
          memmove(v182, v182 + 2, 16 * v189);
          *v177 = v178;
          v23 = v200;
        }

        while (v178 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_173:
    v23 = sub_1DAC0694C(v23);
    goto LABEL_138;
  }

  v190 = a4;
  LODWORD(v207) = a7 & 1;
  v194 = v207 == 0;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = v22 + 1;
    v200 = v23;
    if (v22 + 1 >= v21)
    {
      v46 = v22 + 1;
      v23 = v282;
    }

    else
    {
      v25 = *v199;
      v26 = *v199 + 136 * v24;
      v264 = *v26;
      v27 = *(v26 + 16);
      v28 = *(v26 + 32);
      v29 = *(v26 + 64);
      v267 = *(v26 + 48);
      v268 = v29;
      v265 = v27;
      v266 = v28;
      v30 = *(v26 + 80);
      v31 = *(v26 + 96);
      v32 = *(v26 + 112);
      v272 = *(v26 + 128);
      v270 = v31;
      v271 = v32;
      v269 = v30;
      v260 = *(v26 + 80);
      v261 = *(v26 + 96);
      v262 = *(v26 + 112);
      v263 = *(v26 + 128);
      v256 = *(v26 + 16);
      v257 = *(v26 + 32);
      v258 = *(v26 + 48);
      v259 = *(v26 + 64);
      v255 = *v26;
      v33 = (v25 + 136 * v22);
      v273 = *v33;
      v34 = v33[1];
      v35 = v33[2];
      v36 = v33[3];
      v277 = v33[4];
      v276 = v36;
      v275 = v35;
      v274 = v34;
      v37 = v33[5];
      v38 = v33[6];
      v39 = v33[7];
      v281 = *(v33 + 16);
      v280 = v39;
      v279 = v38;
      v278 = v37;
      v40 = v33[7];
      v252 = v33[6];
      v253 = v40;
      v254 = *(v33 + 16);
      v41 = v33[3];
      v248 = v33[2];
      v249 = v41;
      v42 = v33[5];
      v250 = v33[4];
      v251 = v42;
      v43 = v33[1];
      v246 = *v33;
      v247 = v43;
      sub_1DAA806E4(&v264, &v237);
      sub_1DAA806E4(&v273, &v237);
      v44 = v203;
      LODWORD(v202) = sub_1DAC069B0(&v255, &v246, v282, v207);
      v203 = v44;
      if (v44)
      {
        v234 = v252;
        v235 = v253;
        v236 = v254;
        v230 = v248;
        v231 = v249;
        v232 = v250;
        v233 = v251;
        v228 = v246;
        v229 = v247;
        sub_1DAA9B1C8(&v228);
        v243 = v261;
        v244 = v262;
        v245 = v263;
        v239 = v257;
        v240 = v258;
        v241 = v259;
        v242 = v260;
        v237 = v255;
        v238 = v256;
        sub_1DAA9B1C8(&v237);

        swift_bridgeObjectRelease_n();
      }

      v234 = v252;
      v235 = v253;
      v236 = v254;
      v230 = v248;
      v231 = v249;
      v232 = v250;
      v233 = v251;
      v228 = v246;
      v229 = v247;
      sub_1DAA9B1C8(&v228);
      v243 = v261;
      v244 = v262;
      v245 = v263;
      v239 = v257;
      v240 = v258;
      v241 = v259;
      v242 = v260;
      v237 = v255;
      v238 = v256;
      sub_1DAA9B1C8(&v237);
      if (v22 + 2 < v21)
      {
        v45 = v25 + 136 * v22 + 272;
        v46 = v22 + 2;
        while (1)
        {
          v210 = *v45;
          v49 = *(v45 + 16);
          v50 = *(v45 + 32);
          v51 = *(v45 + 64);
          v213 = *(v45 + 48);
          v214 = v51;
          v211 = v49;
          v212 = v50;
          v52 = *(v45 + 80);
          v53 = *(v45 + 96);
          v54 = *(v45 + 112);
          v218 = *(v45 + 128);
          v216 = v53;
          v217 = v54;
          v215 = v52;
          v219 = *(v45 - 136);
          v55 = *(v45 - 120);
          v56 = *(v45 - 104);
          v57 = *(v45 - 72);
          v222 = *(v45 - 88);
          v223 = v57;
          v220 = v55;
          v221 = v56;
          v58 = *(v45 - 56);
          v59 = *(v45 - 40);
          v60 = *(v45 - 24);
          v227 = *(v45 - 8);
          v225 = v59;
          v226 = v60;
          v224 = v58;
          v61 = v282;
          if (*(v282 + 16))
          {
            v62 = v211;
            sub_1DAA806E4(&v210, v209);
            sub_1DAA806E4(&v219, v209);
            v63 = sub_1DAA4BF3C(v62, *(&v62 + 1));
            if (v64)
            {
              v65 = *(v61 + 56) + *(v208 + 9) * v63;
              v66 = v192;
              sub_1DAC0F278(v65, v192);
              v67 = *(v66 + 16);
              v68 = *(v66 + 24);
              sub_1DAC0F2DC(v66);
            }

            else
            {
              v68 = 1;
              v67 = 0.0;
            }
          }

          else
          {
            sub_1DAA806E4(&v210, v209);
            sub_1DAA806E4(&v219, v209);
            v68 = 1;
            v67 = 0.0;
          }

          v69 = v282;
          v70 = 0.0;
          if (*(v282 + 16) && (v71 = sub_1DAA4BF3C(v220, *(&v220 + 1)), (v72 & 1) != 0))
          {
            v73 = v46;
            v74 = v193;
            sub_1DAC0F278(*(v69 + 56) + *(v208 + 9) * v71, v193);
            v70 = *(v74 + 16);
            v75 = *(v74 + 24);
            v76 = v74;
            v46 = v73;
            sub_1DAC0F2DC(v76);
          }

          else
          {
            v75 = 1;
          }

          sub_1DAA9B1C8(&v219);
          sub_1DAA9B1C8(&v210);
          if ((v68 & 1) == 0)
          {
            break;
          }

          v48 = v194;
          if ((v75 & 1) == 0)
          {
            goto LABEL_12;
          }

          if (v202)
          {
            v24 = v46 - 1;
            v23 = v282;
            if (v46 < v22)
            {
              goto LABEL_170;
            }

            goto LABEL_35;
          }

LABEL_13:
          ++v46;
          v45 += 136;
          if (v21 == v46)
          {
            v24 = v46 - 1;
            v46 = v21;
            goto LABEL_33;
          }
        }

        v48 = v206;
        if ((v75 & 1) == 0)
        {
          if (v206)
          {
            v47 = v70 < v67;
          }

          else
          {
            v47 = v67 < v70;
          }

          v48 = v47;
        }

LABEL_12:
        if ((v202 ^ v48))
        {
          v24 = v46 - 1;
          goto LABEL_33;
        }

        goto LABEL_13;
      }

      v46 = v22 + 2;
LABEL_33:
      v23 = v282;
      if (v202)
      {
        if (v46 < v22)
        {
          goto LABEL_170;
        }

LABEL_35:
        if (v22 <= v24)
        {
          v77 = 136 * v46 - 136;
          v78 = v46;
          v79 = 136 * v22;
          v80 = v22;
          v198 = v78;
          do
          {
            if (v80 != --v78)
            {
              v82 = *v199;
              if (!*v199)
              {
                goto LABEL_176;
              }

              v81 = v82 + v77;
              v224 = *(v82 + v79 + 80);
              v225 = *(v82 + v79 + 96);
              v226 = *(v82 + v79 + 112);
              v227 = *(v82 + v79 + 128);
              v220 = *(v82 + v79 + 16);
              v221 = *(v82 + v79 + 32);
              v222 = *(v82 + v79 + 48);
              v223 = *(v82 + v79 + 64);
              v219 = *(v82 + v79);
              memmove((v82 + v79), (v82 + v77), 0x88uLL);
              *(v81 + 80) = v224;
              *(v81 + 96) = v225;
              *(v81 + 112) = v226;
              *(v81 + 128) = v227;
              *(v81 + 16) = v220;
              *(v81 + 32) = v221;
              *(v81 + 48) = v222;
              *(v81 + 64) = v223;
              *v81 = v219;
            }

            ++v80;
            v77 -= 136;
            v79 += 136;
          }

          while (v80 < v78);
          v23 = v282;
          v46 = v198;
        }
      }
    }

    v83 = v199[1];
    if (v46 < v83)
    {
      if (__OFSUB__(v46, v22))
      {
        goto LABEL_169;
      }

      if (v46 - v22 < v190)
      {
        break;
      }
    }

LABEL_78:
    if (v46 < v22)
    {
      goto LABEL_168;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v198 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v200 = sub_1DAADB818(0, *(v200 + 2) + 1, 1, v200);
    }

    v119 = *(v200 + 2);
    v118 = *(v200 + 3);
    v120 = v119 + 1;
    if (v119 >= v118 >> 1)
    {
      v200 = sub_1DAADB818((v118 > 1), v119 + 1, 1, v200);
    }

    v121 = v200;
    *(v200 + 2) = v120;
    v122 = v121 + 32;
    v123 = &v121[16 * v119 + 32];
    v124 = v198;
    *v123 = v22;
    *(v123 + 1) = v124;
    v196 = *v191;
    if (!v196)
    {
      goto LABEL_178;
    }

    if (v119)
    {
      v23 = v200;
      v195 = v122;
      while (1)
      {
        v125 = v120 - 1;
        if (v120 >= 4)
        {
          break;
        }

        if (v120 == 3)
        {
          v126 = *(v23 + 4);
          v127 = *(v23 + 5);
          v136 = __OFSUB__(v127, v126);
          v128 = v127 - v126;
          v129 = v136;
LABEL_99:
          if (v129)
          {
            goto LABEL_155;
          }

          v142 = &v23[16 * v120];
          v144 = *v142;
          v143 = *(v142 + 1);
          v145 = __OFSUB__(v143, v144);
          v146 = v143 - v144;
          v147 = v145;
          if (v145)
          {
            goto LABEL_157;
          }

          v148 = &v122[16 * v125];
          v150 = *v148;
          v149 = *(v148 + 1);
          v136 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v136)
          {
            goto LABEL_160;
          }

          if (__OFADD__(v146, v151))
          {
            goto LABEL_162;
          }

          if (v146 + v151 >= v128)
          {
            if (v128 < v151)
            {
              v125 = v120 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        if (v120 < 2)
        {
          goto LABEL_163;
        }

        v152 = &v23[16 * v120];
        v154 = *v152;
        v153 = *(v152 + 1);
        v136 = __OFSUB__(v153, v154);
        v146 = v153 - v154;
        v147 = v136;
LABEL_114:
        if (v147)
        {
          goto LABEL_159;
        }

        v155 = &v122[16 * v125];
        v157 = *v155;
        v156 = *(v155 + 1);
        v136 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v136)
        {
          goto LABEL_161;
        }

        if (v158 < v146)
        {
          goto LABEL_130;
        }

LABEL_121:
        if (v125 - 1 >= v120)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
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
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        v163 = *v199;
        if (!*v199)
        {
          goto LABEL_175;
        }

        v164 = &v122[16 * v125 - 16];
        v165 = *v164;
        v166 = v125;
        v167 = &v122[16 * v125];
        v168 = *(v167 + 1);
        v169 = v163 + 136 * *v164;
        v170 = (v163 + 136 * *v167);
        v201 = v163 + 136 * v168;
        v202 = v170;
        v171 = v282;
        sub_1DACB71E4();
        v23 = v197;
        sub_1DACB71F4();
        v172 = v169;
        v173 = v203;
        sub_1DAC06B68(v172, v202, v201, v196, v171, v207);
        v203 = v173;
        if (v173)
        {
LABEL_134:

          swift_bridgeObjectRelease_n();
        }

        if (v168 < v165)
        {
          goto LABEL_150;
        }

        v23 = v200;
        v174 = *(v200 + 2);
        if (v166 > v174)
        {
          goto LABEL_151;
        }

        *v164 = v165;
        *(v164 + 1) = v168;
        if (v166 >= v174)
        {
          goto LABEL_152;
        }

        v175 = v166;
        v120 = v174 - 1;
        memmove(v167, v167 + 16, 16 * (v174 - 1 - v175));
        *(v23 + 2) = v174 - 1;
        v122 = v195;
        if (v174 <= 2)
        {
          goto LABEL_130;
        }
      }

      v130 = &v122[16 * v120];
      v131 = *(v130 - 8);
      v132 = *(v130 - 7);
      v136 = __OFSUB__(v132, v131);
      v133 = v132 - v131;
      if (v136)
      {
        goto LABEL_153;
      }

      v135 = *(v130 - 6);
      v134 = *(v130 - 5);
      v136 = __OFSUB__(v134, v135);
      v128 = v134 - v135;
      v129 = v136;
      if (v136)
      {
        goto LABEL_154;
      }

      v137 = &v23[16 * v120];
      v139 = *v137;
      v138 = *(v137 + 1);
      v136 = __OFSUB__(v138, v139);
      v140 = v138 - v139;
      if (v136)
      {
        goto LABEL_156;
      }

      v136 = __OFADD__(v128, v140);
      v141 = v128 + v140;
      if (v136)
      {
        goto LABEL_158;
      }

      if (v141 >= v133)
      {
        v159 = &v122[16 * v125];
        v161 = *v159;
        v160 = *(v159 + 1);
        v136 = __OFSUB__(v160, v161);
        v162 = v160 - v161;
        if (v136)
        {
          goto LABEL_164;
        }

        if (v128 < v162)
        {
          v125 = v120 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_99;
    }

    v23 = v200;
LABEL_130:
    v22 = v198;
    v21 = v199[1];
    if (v198 >= v21)
    {
      goto LABEL_136;
    }
  }

  if (__OFADD__(v22, v190))
  {
    goto LABEL_171;
  }

  if (v22 + v190 >= v83)
  {
    v84 = v199[1];
  }

  else
  {
    v84 = (v22 + v190);
  }

  if (v84 < v22)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v46 == v84)
  {
    goto LABEL_78;
  }

  v85 = v46;
  v86 = *v199;
  v87 = (*v199 + 136 * v85);
  v198 = v85;
  v195 = v22;
  v196 = v84;
  v88 = v22 - v85 + 1;
LABEL_54:
  v201 = v88;
  v202 = v87;
  while (1)
  {
    v264 = *v87;
    v89 = *(v87 + 1);
    v90 = *(v87 + 2);
    v91 = *(v87 + 4);
    v267 = *(v87 + 3);
    v268 = v91;
    v265 = v89;
    v266 = v90;
    v92 = *(v87 + 5);
    v93 = *(v87 + 6);
    v94 = *(v87 + 7);
    v272 = *(v87 + 16);
    v270 = v93;
    v271 = v94;
    v269 = v92;
    v273 = *(v87 - 136);
    v95 = *(v87 - 120);
    v96 = *(v87 - 104);
    v97 = *(v87 - 88);
    v277 = *(v87 - 72);
    v276 = v97;
    v275 = v96;
    v274 = v95;
    v98 = *(v87 - 56);
    v99 = *(v87 - 40);
    v100 = *(v87 - 24);
    v281 = *(v87 - 1);
    v280 = v100;
    v279 = v99;
    v278 = v98;
    if (!*(v23 + 2))
    {
      sub_1DAA806E4(&v264, &v255);
      sub_1DAA806E4(&v273, &v255);
LABEL_59:
      v106 = 1;
      v105 = 0.0;
      goto LABEL_60;
    }

    v101 = v265;
    sub_1DAA806E4(&v264, &v255);
    sub_1DAA806E4(&v273, &v255);
    v23 = v282;
    v102 = sub_1DAA4BF3C(v101, *(&v101 + 1));
    if ((v103 & 1) == 0)
    {
      goto LABEL_59;
    }

    v104 = v204;
    sub_1DAC0F278(*(v23 + 7) + *(v208 + 9) * v102, v204);
    v105 = *(v104 + 16);
    v106 = *(v104 + 24);
    sub_1DAC0F2DC(v104);
LABEL_60:
    v107 = 0.0;
    if (*(v23 + 2) && (v108 = sub_1DAA4BF3C(v274, *(&v274 + 1)), (v109 & 1) != 0))
    {
      v110 = v205;
      sub_1DAC0F278(*(v23 + 7) + *(v208 + 9) * v108, v205);
      v107 = *(v110 + 2);
      v111 = v110[24];
      sub_1DAC0F2DC(v110);
    }

    else
    {
      v111 = 1;
    }

    sub_1DAA9B1C8(&v273);
    sub_1DAA9B1C8(&v264);
    if (v106)
    {
      if ((v111 | v207))
      {
        goto LABEL_53;
      }
    }

    else if (v111)
    {
      if ((v206 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if (v206)
    {
      if (v107 >= v105)
      {
        goto LABEL_53;
      }
    }

    else if (v105 >= v107)
    {
      goto LABEL_53;
    }

    if (!v86)
    {
      break;
    }

    v112 = v87 - 136;
    v260 = *(v87 + 5);
    v261 = *(v87 + 6);
    v262 = *(v87 + 7);
    v263 = *(v87 + 16);
    v256 = *(v87 + 1);
    v257 = *(v87 + 2);
    v258 = *(v87 + 3);
    v259 = *(v87 + 4);
    v255 = *v87;
    v113 = *(v87 - 56);
    *(v87 + 4) = *(v87 - 72);
    *(v87 + 5) = v113;
    v114 = *(v87 - 24);
    *(v87 + 6) = *(v87 - 40);
    *(v87 + 7) = v114;
    *(v87 + 16) = *(v87 - 1);
    v115 = *(v87 - 88);
    *(v87 + 2) = *(v87 - 104);
    *(v87 + 3) = v115;
    v116 = *(v87 - 120);
    *v87 = *(v87 - 136);
    *(v87 + 1) = v116;
    *(v112 + 4) = v259;
    *(v112 + 5) = v260;
    *(v112 + 6) = v261;
    *(v112 + 7) = v262;
    *(v112 + 16) = v263;
    *(v112 + 1) = v256;
    *(v112 + 2) = v257;
    *(v112 + 3) = v258;
    *v112 = v255;
    if (!v88)
    {
LABEL_53:
      v87 = v202 + 136;
      v88 = v201 - 1;
      if (++v198 == v196)
      {
        v46 = v196;
        v22 = v195;
        goto LABEL_78;
      }

      goto LABEL_54;
    }

    ++v88;
    v87 -= 136;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_175:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_176:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_177:

  __break(1u);
LABEL_178:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_179:

  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1DAC08190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  v82 = a6;
  v11 = type metadata accessor for Quote();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v49 - v17);
  v50 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *a4 + 136 * a3;
    v21 = a1 - a3 + 1;
LABEL_5:
    v52 = v20;
    v53 = a3;
    v22 = v20;
    v51 = v21;
    while (1)
    {
      v64 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      v25 = *(v22 + 64);
      v67 = *(v22 + 48);
      v68 = v25;
      v65 = v23;
      v66 = v24;
      v26 = *(v22 + 80);
      v27 = *(v22 + 96);
      v28 = *(v22 + 112);
      v72 = *(v22 + 128);
      v70 = v27;
      v71 = v28;
      v69 = v26;
      v73 = *(v22 - 136);
      v29 = *(v22 - 120);
      v30 = *(v22 - 104);
      v31 = *(v22 - 72);
      v76 = *(v22 - 88);
      v77 = v31;
      v74 = v29;
      v75 = v30;
      v32 = *(v22 - 56);
      v33 = *(v22 - 40);
      v34 = *(v22 - 24);
      v81 = *(v22 - 8);
      v79 = v33;
      v80 = v34;
      v78 = v32;
      if (!*(a5 + 16))
      {
        break;
      }

      v35 = v65;
      sub_1DAA806E4(&v64, &v55);
      sub_1DAA806E4(&v73, &v55);
      v36 = sub_1DAA4BF3C(v35, *(&v35 + 1));
      if ((v37 & 1) == 0)
      {
        goto LABEL_10;
      }

      sub_1DAC0F278(*(a5 + 56) + *(v54 + 72) * v36, v18);
      v38 = v18[2];
      v39 = *(v18 + 24);
      sub_1DAC0F2DC(v18);
LABEL_11:
      v40 = 0.0;
      if (*(a5 + 16) && (v41 = sub_1DAA4BF3C(v74, *(&v74 + 1)), (v42 & 1) != 0))
      {
        sub_1DAC0F278(*(a5 + 56) + *(v54 + 72) * v41, v15);
        v40 = v15[2];
        v43 = *(v15 + 24);
        sub_1DAC0F2DC(v15);
      }

      else
      {
        v43 = 1;
      }

      sub_1DAA9B1C8(&v73);
      result = sub_1DAA9B1C8(&v64);
      if (v39)
      {
        if ((v43 | v82))
        {
          goto LABEL_4;
        }
      }

      else if (v43)
      {
        if ((v82 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v82)
      {
        if (v40 >= v38)
        {
          goto LABEL_4;
        }
      }

      else if (v38 >= v40)
      {
        goto LABEL_4;
      }

      if (!v19)
      {
        __break(1u);
        return result;
      }

      v44 = v22 - 136;
      v60 = *(v22 + 80);
      v61 = *(v22 + 96);
      v62 = *(v22 + 112);
      v63 = *(v22 + 128);
      v56 = *(v22 + 16);
      v57 = *(v22 + 32);
      v58 = *(v22 + 48);
      v59 = *(v22 + 64);
      v55 = *v22;
      v45 = *(v22 - 56);
      *(v22 + 64) = *(v22 - 72);
      *(v22 + 80) = v45;
      v46 = *(v22 - 24);
      *(v22 + 96) = *(v22 - 40);
      *(v22 + 112) = v46;
      *(v22 + 128) = *(v22 - 8);
      v47 = *(v22 - 88);
      *(v22 + 32) = *(v22 - 104);
      *(v22 + 48) = v47;
      v48 = *(v22 - 120);
      *v22 = *(v22 - 136);
      *(v22 + 16) = v48;
      *(v44 + 64) = v59;
      *(v44 + 80) = v60;
      *(v44 + 96) = v61;
      *(v44 + 112) = v62;
      *(v44 + 128) = v63;
      *(v44 + 16) = v56;
      *(v44 + 32) = v57;
      *(v44 + 48) = v58;
      *v44 = v55;
      if (!v21)
      {
LABEL_4:
        a3 = v53 + 1;
        v20 = v52 + 136;
        v21 = v51 - 1;
        if (v53 + 1 == v50)
        {
          return result;
        }

        goto LABEL_5;
      }

      ++v21;
      v22 -= 136;
    }

    sub_1DAA806E4(&v64, &v55);
    sub_1DAA806E4(&v73, &v55);
LABEL_10:
    v39 = 1;
    v38 = 0.0;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1DAC08534(uint64_t *a1, uint64_t a2, char *a3, char a4)
{
  v8 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_1DACBA104();
  if (result >= v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {
        sub_1DACB71E4();
        sub_1DACB71F4();
        sub_1DAC08190(0, v8, 1, a1, a2, a4 & 1);
        swift_bridgeObjectRelease_n();
      }

      else
      {

        return swift_bridgeObjectRelease_n();
      }
    }

LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < -1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = v8 / 2;
  if (v8 <= 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = sub_1DACB96C4();
    *(v12 + 16) = v11;
  }

  v13[0] = (v12 + 32);
  v13[1] = v11;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DAC0723C(v13, v14, a1, v10, a2, a3, a4 & 1);

  *(v12 + 16) = 0;

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAC086E4(char **a1, uint64_t a2, char *a3, char a4)
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DACA671C(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = (v8 + 32);
  v11[1] = v9;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DAC08534(v11, a2, a3, a4 & 1);

  *a1 = v8;

  return swift_bridgeObjectRelease_n();
}

BOOL sub_1DAC087CC(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v9 = type metadata accessor for Quote();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v49 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v49 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v20 = (&v49 - v19);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v53 = v4;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);
  v51 = v18;
  v52 = v23;
  v25 = sub_1DAA4BF3C(v21, v22);
  v26 = 0.0;
  if (v27)
  {
    v50 = v24;
    v28 = *(v54 + 72);
    sub_1DAC0F278(*(a3 + 56) + v28 * v25, v20);
    v29 = *v20;
    v30 = *(v20 + 8);
    sub_1DAC0F2DC(v20);
    if (v30)
    {
      goto LABEL_7;
    }

    if (!*(a3 + 16))
    {
      return 0;
    }

    v31 = sub_1DAA4BF3C(v21, v22);
    if (v32 & 1) == 0 || (sub_1DAC0F278(*(a3 + 56) + v31 * v28, v17), v33 = v17[2], v34 = *(v17 + 24), sub_1DAC0F2DC(v17), (v34))
    {
LABEL_7:
      v35 = 1;
    }

    else
    {
      v35 = 0;
      if (v29 - v33 <= 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v33 / (v29 - v33);
      }
    }

    v24 = v50;
    if (!*(a3 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v35 = 1;
    if (!*(a3 + 16))
    {
      goto LABEL_16;
    }
  }

  v36 = sub_1DAA4BF3C(v52, v24);
  if (v37)
  {
    v38 = *(v54 + 72);
    sub_1DAC0F278(*(a3 + 56) + v38 * v36, v14);
    v39 = *v14;
    v40 = *(v14 + 8);
    sub_1DAC0F2DC(v14);
    if ((v40 & 1) == 0)
    {
      if (*(a3 + 16))
      {
        v41 = sub_1DAA4BF3C(v52, v24);
        if (v42)
        {
          v43 = v51;
          sub_1DAC0F278(*(a3 + 56) + v41 * v38, v51);
          v44 = *(v43 + 16);
          v45 = *(v43 + 24);
          sub_1DAC0F2DC(v43);
          if ((v45 & 1) == 0)
          {
            v47 = 0.0;
            if (v39 - v44 > 0.0)
            {
              v47 = v44 / (v39 - v44);
            }

            if (v35)
            {
              return !a4;
            }

            else if (a4)
            {
              return v47 < v26;
            }

            else
            {
              return v26 < v47;
            }
          }
        }
      }
    }
  }

LABEL_16:
  if (v35)
  {
    return 0;
  }

  return a4;
}

uint64_t sub_1DAC08AB0(char **a1, uint64_t a2, char **a3, uint64_t a4, char *a5, uint64_t a6, int a7)
{
  v8 = v7;
  v198 = a4;
  v199 = a1;
  v13 = type metadata accessor for Quote();
  v215 = *(v13 - 8);
  v14 = *(v215 + 8);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v202 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v200 = &v198 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v210 = &v198 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v211 = &v198 - v21;
  v212 = a3;
  v22 = a3[1];
  v207 = a6;
  v217 = a7;
  if (v22 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v209 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v215 = *v199;
    if (!v215)
    {
      goto LABEL_170;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_128:
      v214 = v8;
      v186 = (v209 + 16);
      v8 = *(v209 + 2);
      if (v8 < 2)
      {
LABEL_135:

        return swift_bridgeObjectRelease_n();
      }

      while (1)
      {
        v187 = *v212;
        if (!*v212)
        {
          goto LABEL_167;
        }

        v188 = &v209[16 * v8];
        v189 = *v188;
        v190 = &v186[2 * v8];
        v191 = v190[1];
        v192 = &v187[136 * *v188];
        v305 = &v187[136 * *v190];
        v216 = &v187[136 * v191];
        sub_1DACB71E4();
        sub_1DACB71F4();
        v193 = v192;
        v194 = v214;
        sub_1DAC09F94(v193, v305, v216, v215, a5, v217 & 1, sub_1DAC087CC);
        v214 = v194;
        if (v194)
        {

          swift_bridgeObjectRelease_n();
        }

        if (v191 < v189)
        {
          goto LABEL_155;
        }

        v195 = *v186;
        if (v8 - 2 >= *v186)
        {
          goto LABEL_156;
        }

        *v188 = v189;
        *(v188 + 1) = v191;
        v196 = v195 - v8;
        if (v195 < v8)
        {
          goto LABEL_157;
        }

        v8 = v195 - 1;
        memmove(v190, v190 + 2, 16 * v196);
        *v186 = v8;
        if (v8 <= 1)
        {
          goto LABEL_135;
        }
      }
    }

LABEL_161:
    v209 = sub_1DAC0694C(v209);
    goto LABEL_128;
  }

  v208 = a7 & 1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v23 = 0;
  v209 = MEMORY[0x1E69E7CC0];
  v305 = a5;
  while (2)
  {
    v24 = v23;
    v25 = v23 + 1;
    v201 = v23;
    if (v23 + 1 < v22)
    {
      v26 = *v212;
      v27 = &(*v212)[136 * v25];
      v287 = *v27;
      v28 = *(v27 + 16);
      v29 = *(v27 + 32);
      v30 = *(v27 + 48);
      v291 = *(v27 + 64);
      v290 = v30;
      v289 = v29;
      v288 = v28;
      v31 = *(v27 + 80);
      v32 = *(v27 + 96);
      v33 = *(v27 + 112);
      v295 = *(v27 + 128);
      v294 = v33;
      v293 = v32;
      v292 = v31;
      v283 = *(v27 + 80);
      v284 = *(v27 + 96);
      v285 = *(v27 + 112);
      v286 = *(v27 + 128);
      v279 = *(v27 + 16);
      v280 = *(v27 + 32);
      v281 = *(v27 + 48);
      v282 = *(v27 + 64);
      v278 = *v27;
      v34 = &v26[136 * v23];
      v296 = *v34;
      v35 = *(v34 + 1);
      v36 = *(v34 + 2);
      v37 = *(v34 + 4);
      v299 = *(v34 + 3);
      v300 = v37;
      v297 = v35;
      v298 = v36;
      v38 = *(v34 + 5);
      v39 = *(v34 + 6);
      v40 = *(v34 + 7);
      v304 = *(v34 + 16);
      v302 = v39;
      v303 = v40;
      v301 = v38;
      v41 = *(v34 + 7);
      v275 = *(v34 + 6);
      v276 = v41;
      v277 = *(v34 + 16);
      v42 = *(v34 + 3);
      v271 = *(v34 + 2);
      v272 = v42;
      v43 = *(v34 + 4);
      v274 = *(v34 + 5);
      v273 = v43;
      v44 = *v34;
      v270 = *(v34 + 1);
      v269 = v44;
      sub_1DAA806E4(&v287, &v260);
      sub_1DAA806E4(&v296, &v260);
      v45 = sub_1DAC087CC(&v278, &v269, a5, v208);
      if (v8)
      {
        v257 = v275;
        v258 = v276;
        v259 = v277;
        v253 = v271;
        v254 = v272;
        v256 = v274;
        v255 = v273;
        v252 = v270;
        v251 = v269;
        sub_1DAA9B1C8(&v251);
        v266 = v284;
        v267 = v285;
        v268 = v286;
        v262 = v280;
        v263 = v281;
        v265 = v283;
        v264 = v282;
        v261 = v279;
        v260 = v278;
        sub_1DAA9B1C8(&v260);

        swift_bridgeObjectRelease_n();
      }

      v46 = v45;
      v257 = v275;
      v258 = v276;
      v259 = v277;
      v253 = v271;
      v254 = v272;
      v256 = v274;
      v255 = v273;
      v252 = v270;
      v251 = v269;
      sub_1DAA9B1C8(&v251);
      v266 = v284;
      v267 = v285;
      v268 = v286;
      v262 = v280;
      v263 = v281;
      v265 = v283;
      v264 = v282;
      v261 = v279;
      v260 = v278;
      sub_1DAA9B1C8(&v260);
      v47 = v24 + 2;
      if (v24 + 2 >= v22)
      {
        v49 = v24 + 2;
        v71 = v198;
        if (!v46)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v48 = &v26[136 * v24 + 272];
        do
        {
          v49 = v47;
          v240[0] = *v48;
          v50 = *(v48 + 16);
          v51 = *(v48 + 32);
          v52 = *(v48 + 64);
          v240[3] = *(v48 + 48);
          v240[4] = v52;
          v240[1] = v50;
          v240[2] = v51;
          v53 = *(v48 + 80);
          v54 = *(v48 + 96);
          v55 = *(v48 + 112);
          v241 = *(v48 + 128);
          v240[6] = v54;
          v240[7] = v55;
          v240[5] = v53;
          v56 = *(v48 + 112);
          v237 = *(v48 + 96);
          v238 = v56;
          v239 = *(v48 + 128);
          v57 = *(v48 + 48);
          v233 = *(v48 + 32);
          v234 = v57;
          v58 = *(v48 + 80);
          v235 = *(v48 + 64);
          v236 = v58;
          v59 = *(v48 + 16);
          v231 = *v48;
          v232 = v59;
          v242 = *(v48 - 136);
          v60 = *(v48 - 120);
          v61 = *(v48 - 104);
          v62 = *(v48 - 72);
          v245 = *(v48 - 88);
          v246 = v62;
          v243 = v60;
          v244 = v61;
          v63 = *(v48 - 56);
          v64 = *(v48 - 40);
          v65 = *(v48 - 24);
          v250 = *(v48 - 8);
          v248 = v64;
          v249 = v65;
          v247 = v63;
          v66 = *(v48 - 56);
          v67 = *(v48 - 24);
          v228 = *(v48 - 40);
          v229 = v67;
          v230 = *(v48 - 8);
          v68 = *(v48 - 120);
          v69 = *(v48 - 88);
          v224 = *(v48 - 104);
          v225 = v69;
          v226 = *(v48 - 72);
          v227 = v66;
          v222 = *(v48 - 136);
          v223 = v68;
          sub_1DAA806E4(v240, v220);
          sub_1DAA806E4(&v242, v220);
          v70 = sub_1DAC087CC(&v231, &v222, a5, v208);
          v218[6] = v228;
          v218[7] = v229;
          v219 = v230;
          v218[2] = v224;
          v218[3] = v225;
          v218[4] = v226;
          v218[5] = v227;
          v218[0] = v222;
          v218[1] = v223;
          sub_1DAA9B1C8(v218);
          v220[6] = v237;
          v220[7] = v238;
          v221 = v239;
          v220[2] = v233;
          v220[3] = v234;
          v220[4] = v235;
          v220[5] = v236;
          v220[0] = v231;
          v220[1] = v232;
          sub_1DAA9B1C8(v220);
          if ((v46 ^ v70))
          {
            v25 = v49 - 1;
            v71 = v198;
            if (!v46)
            {
              goto LABEL_25;
            }

            goto LABEL_16;
          }

          v47 = v49 + 1;
          v48 += 136;
        }

        while (v22 != v49 + 1);
        v25 = v49;
        v49 = v22;
        v71 = v198;
        if (!v46)
        {
          goto LABEL_25;
        }
      }

LABEL_16:
      if (v49 < v201)
      {
        goto LABEL_164;
      }

      if (v201 > v25)
      {
        v25 = v49;
        v24 = v201;
        goto LABEL_26;
      }

      v214 = 0;
      v72 = v49;
      v73 = 136 * v49 - 136;
      v74 = 136 * v201;
      v75 = v201;
      do
      {
        if (v75 != --v72)
        {
          v76 = *v212;
          if (!*v212)
          {
            goto LABEL_168;
          }

          v77 = &v76[v73];
          v247 = *&v76[v74 + 80];
          v248 = *&v76[v74 + 96];
          v249 = *&v76[v74 + 112];
          v250 = *&v76[v74 + 128];
          v243 = *&v76[v74 + 16];
          v244 = *&v76[v74 + 32];
          v245 = *&v76[v74 + 48];
          v246 = *&v76[v74 + 64];
          v242 = *&v76[v74];
          memmove(&v76[v74], &v76[v73], 0x88uLL);
          *(v77 + 5) = v247;
          *(v77 + 6) = v248;
          *(v77 + 7) = v249;
          *(v77 + 16) = v250;
          *(v77 + 1) = v243;
          *(v77 + 2) = v244;
          *(v77 + 3) = v245;
          *(v77 + 4) = v246;
          *v77 = v242;
        }

        ++v75;
        v73 -= 136;
        v74 += 136;
      }

      while (v75 < v72);
      v8 = v214;
LABEL_25:
      v25 = v49;
      v24 = v201;
      goto LABEL_26;
    }

    v71 = v198;
LABEL_26:
    v78 = v212[1];
    if (v25 >= v78)
    {
      goto LABEL_74;
    }

    if (__OFSUB__(v25, v24))
    {
      goto LABEL_160;
    }

    if (v25 - v24 >= v71)
    {
      goto LABEL_74;
    }

    v79 = (v24 + v71);
    if (__OFADD__(v24, v71))
    {
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:

      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_166:

      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_167:

      __break(1u);
LABEL_168:

      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_169:

      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_170:

      result = swift_bridgeObjectRelease_n();
      __break(1u);
      return result;
    }

    if (v79 >= v78)
    {
      v79 = v212[1];
    }

    if (v79 < v24)
    {
      goto LABEL_163;
    }

    if (v25 == v79)
    {
      goto LABEL_74;
    }

    v214 = v8;
    v216 = *v212;
    v80 = v24 - v25;
    v81 = &v216[136 * v25];
    v82 = v80 + 1;
    v203 = v79;
    while (2)
    {
      v205 = v81;
      v206 = v25;
      v204 = v82;
      while (1)
      {
        v287 = *v81;
        v83 = *(v81 + 1);
        v84 = *(v81 + 2);
        v85 = *(v81 + 3);
        v291 = *(v81 + 4);
        v290 = v85;
        v289 = v84;
        v288 = v83;
        v86 = *(v81 + 5);
        v87 = *(v81 + 6);
        v88 = *(v81 + 7);
        v295 = *(v81 + 16);
        v294 = v88;
        v293 = v87;
        v292 = v86;
        v296 = *(v81 - 136);
        v89 = *(v81 - 120);
        v90 = *(v81 - 104);
        v91 = *(v81 - 72);
        v299 = *(v81 - 88);
        v300 = v91;
        v297 = v89;
        v298 = v90;
        v92 = *(v81 - 56);
        v93 = *(v81 - 40);
        v94 = *(v81 - 24);
        v304 = *(v81 - 1);
        v302 = v93;
        v303 = v94;
        v301 = v92;
        if (*(a5 + 2))
        {
          break;
        }

        sub_1DAA806E4(&v287, &v278);
        sub_1DAA806E4(&v296, &v278);
        v108 = 1;
        v97 = 0.0;
        if (!*(a5 + 2))
        {
          goto LABEL_62;
        }

LABEL_47:
        v109 = v297;
        v110 = sub_1DAA4BF3C(v297, *(&v297 + 1));
        a5 = v305;
        if ((v111 & 1) == 0)
        {
          goto LABEL_62;
        }

        v112 = *(v305 + 7);
        v213 = *(v215 + 9);
        v113 = v82;
        v114 = v305;
        v115 = v210;
        sub_1DAC0F278(v112 + v213 * v110, v210);
        v116 = *v115;
        v117 = *(v115 + 8);
        v118 = v115;
        a5 = v114;
        v82 = v113;
        sub_1DAC0F2DC(v118);
        if (v117)
        {
          goto LABEL_62;
        }

        if (!*(a5 + 2))
        {
          goto LABEL_62;
        }

        v119 = sub_1DAA4BF3C(v109, *(&v109 + 1));
        a5 = v305;
        if ((v120 & 1) == 0)
        {
          goto LABEL_62;
        }

        v121 = v200;
        sub_1DAC0F278(*(v305 + 7) + v119 * v213, v200);
        v122 = *(v121 + 16);
        v123 = *(v121 + 24);
        sub_1DAC0F2DC(v121);
        if (v123)
        {
          goto LABEL_62;
        }

        if (v116 - v122 <= 0.0)
        {
          v124 = 0.0;
        }

        else
        {
          v124 = v122 / (v116 - v122);
        }

        sub_1DAA9B1C8(&v296);
        sub_1DAA9B1C8(&v287);
        if (v108)
        {
          if (v208)
          {
            goto LABEL_36;
          }
        }

        else if (v217)
        {
          if (v124 >= v97)
          {
            goto LABEL_36;
          }
        }

        else if (v97 >= v124)
        {
          goto LABEL_36;
        }

LABEL_64:
        if (!v216)
        {
          goto LABEL_165;
        }

        v125 = v81 - 136;
        v283 = *(v81 + 5);
        v284 = *(v81 + 6);
        v285 = *(v81 + 7);
        v286 = *(v81 + 16);
        v279 = *(v81 + 1);
        v280 = *(v81 + 2);
        v281 = *(v81 + 3);
        v282 = *(v81 + 4);
        v278 = *v81;
        v126 = *(v81 - 56);
        *(v81 + 4) = *(v81 - 72);
        *(v81 + 5) = v126;
        v127 = *(v81 - 24);
        *(v81 + 6) = *(v81 - 40);
        *(v81 + 7) = v127;
        *(v81 + 16) = *(v81 - 1);
        v128 = *(v81 - 88);
        *(v81 + 2) = *(v81 - 104);
        *(v81 + 3) = v128;
        v129 = *(v81 - 120);
        *v81 = *(v81 - 136);
        *(v81 + 1) = v129;
        *(v125 + 4) = v282;
        *(v125 + 5) = v283;
        *(v125 + 6) = v284;
        *(v125 + 7) = v285;
        *(v125 + 16) = v286;
        *(v125 + 1) = v279;
        *(v125 + 2) = v280;
        *(v125 + 3) = v281;
        *v125 = v278;
        if (!v82)
        {
          goto LABEL_36;
        }

        ++v82;
        v81 -= 136;
      }

      v95 = v288;
      sub_1DAA806E4(&v287, &v278);
      sub_1DAA806E4(&v296, &v278);
      v96 = sub_1DAA4BF3C(v95, *(&v95 + 1));
      v97 = 0.0;
      if ((v98 & 1) == 0)
      {
        goto LABEL_44;
      }

      v99 = *(v215 + 9);
      v100 = v211;
      sub_1DAC0F278(*(a5 + 7) + v99 * v96, v211);
      v101 = *v100;
      v102 = *(v100 + 8);
      sub_1DAC0F2DC(v100);
      if (v102)
      {
        goto LABEL_44;
      }

      if (!*(a5 + 2))
      {
        goto LABEL_35;
      }

      v103 = sub_1DAA4BF3C(v95, *(&v95 + 1));
      if (v104 & 1) == 0 || (v105 = v202, sub_1DAC0F278(*(a5 + 7) + v103 * v99, v202), v106 = *(v105 + 16), v107 = *(v105 + 24), sub_1DAC0F2DC(v105), (v107))
      {
LABEL_44:
        v108 = 1;
        if (!*(a5 + 2))
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      }

      v108 = 0;
      if (v101 - v106 <= 0.0)
      {
        v97 = 0.0;
      }

      else
      {
        v97 = v106 / (v101 - v106);
      }

      if (*(a5 + 2))
      {
        goto LABEL_47;
      }

LABEL_62:
      if ((v108 & 1) == 0)
      {
        sub_1DAA9B1C8(&v296);
        sub_1DAA9B1C8(&v287);
        if ((v217 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_64;
      }

LABEL_35:
      sub_1DAA9B1C8(&v296);
      sub_1DAA9B1C8(&v287);
LABEL_36:
      v25 = v206 + 1;
      v81 = v205 + 136;
      v82 = v204 - 1;
      if ((v206 + 1) != v203)
      {
        continue;
      }

      break;
    }

    v25 = v203;
    v8 = v214;
    v24 = v201;
LABEL_74:
    a5 = v209;
    if (v25 < v24)
    {
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v206 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a5 = sub_1DAADB818(0, *(a5 + 2) + 1, 1, a5);
    }

    v132 = *(a5 + 2);
    v131 = *(a5 + 3);
    v133 = v132 + 1;
    if (v132 >= v131 >> 1)
    {
      a5 = sub_1DAADB818((v131 > 1), v132 + 1, 1, a5);
    }

    *(a5 + 2) = v133;
    v134 = a5 + 32;
    v135 = &a5[16 * v132 + 32];
    v136 = v206;
    *v135 = v201;
    *(v135 + 1) = v136;
    v213 = *v199;
    if (!v213)
    {
      goto LABEL_169;
    }

    v214 = v8;
    v209 = a5;
    if (!v132)
    {
LABEL_3:
      v22 = v212[1];
      v23 = v206;
      v8 = v214;
      a5 = v305;
      if (v206 >= v22)
      {
        goto LABEL_126;
      }

      continue;
    }

    break;
  }

  v205 = a5 + 32;
  while (2)
  {
    v137 = v133 - 1;
    if (v133 >= 4)
    {
      v142 = &v134[16 * v133];
      v143 = *(v142 - 8);
      v144 = *(v142 - 7);
      v148 = __OFSUB__(v144, v143);
      v145 = v144 - v143;
      if (v148)
      {
        goto LABEL_144;
      }

      v147 = *(v142 - 6);
      v146 = *(v142 - 5);
      v148 = __OFSUB__(v146, v147);
      v140 = v146 - v147;
      v141 = v148;
      if (v148)
      {
        goto LABEL_145;
      }

      v149 = &a5[16 * v133];
      v151 = *v149;
      v150 = *(v149 + 1);
      v148 = __OFSUB__(v150, v151);
      v152 = v150 - v151;
      if (v148)
      {
        goto LABEL_147;
      }

      v148 = __OFADD__(v140, v152);
      v153 = v140 + v152;
      if (v148)
      {
        goto LABEL_149;
      }

      if (v153 >= v145)
      {
        v171 = &v134[16 * v137];
        v173 = *v171;
        v172 = *(v171 + 1);
        v148 = __OFSUB__(v172, v173);
        v174 = v172 - v173;
        if (v148)
        {
          goto LABEL_158;
        }

        if (v140 < v174)
        {
          v137 = v133 - 2;
        }
      }

      else
      {
LABEL_95:
        if (v141)
        {
          goto LABEL_146;
        }

        v154 = &a5[16 * v133];
        v156 = *v154;
        v155 = *(v154 + 1);
        v157 = __OFSUB__(v155, v156);
        v158 = v155 - v156;
        v159 = v157;
        if (v157)
        {
          goto LABEL_148;
        }

        v160 = &v134[16 * v137];
        v162 = *v160;
        v161 = *(v160 + 1);
        v148 = __OFSUB__(v161, v162);
        v163 = v161 - v162;
        if (v148)
        {
          goto LABEL_151;
        }

        if (__OFADD__(v158, v163))
        {
          goto LABEL_153;
        }

        if (v158 + v163 < v140)
        {
          goto LABEL_110;
        }

        if (v140 < v163)
        {
          v137 = v133 - 2;
        }
      }
    }

    else
    {
      if (v133 == 3)
      {
        v138 = *(a5 + 4);
        v139 = *(a5 + 5);
        v148 = __OFSUB__(v139, v138);
        v140 = v139 - v138;
        v141 = v148;
        goto LABEL_95;
      }

      if (v133 < 2)
      {
        goto LABEL_154;
      }

      v164 = &a5[16 * v133];
      v166 = *v164;
      v165 = *(v164 + 1);
      v148 = __OFSUB__(v165, v166);
      v158 = v165 - v166;
      v159 = v148;
LABEL_110:
      if (v159)
      {
        goto LABEL_150;
      }

      v167 = &v134[16 * v137];
      v169 = *v167;
      v168 = *(v167 + 1);
      v148 = __OFSUB__(v168, v169);
      v170 = v168 - v169;
      if (v148)
      {
        goto LABEL_152;
      }

      if (v170 < v158)
      {
        goto LABEL_3;
      }
    }

    if (v137 - 1 >= v133)
    {
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
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
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
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v175 = *v212;
    if (!*v212)
    {
      goto LABEL_166;
    }

    v176 = &v134[16 * v137 - 16];
    v177 = *v176;
    v178 = v137;
    v179 = &v134[16 * v137];
    v180 = *(v179 + 1);
    v181 = &v175[136 * *v176];
    v216 = &v175[136 * *v179];
    v8 = &v175[136 * v180];
    v182 = v305;
    sub_1DACB71E4();
    sub_1DACB71F4();
    v183 = v181;
    v184 = v214;
    sub_1DAC09F94(v183, v216, v8, v213, v182, v208, sub_1DAC087CC);
    v214 = v184;
    if (!v184)
    {

      a5 = v209;
      if (v180 < v177)
      {
        goto LABEL_141;
      }

      v8 = *(v209 + 2);
      if (v178 > v8)
      {
        goto LABEL_142;
      }

      *v176 = v177;
      *(v176 + 1) = v180;
      if (v178 >= v8)
      {
        goto LABEL_143;
      }

      v185 = v178;
      v133 = v8 - 1;
      memmove(v179, v179 + 16, 16 * (v8 - 1 - v185));
      *(a5 + 2) = v8 - 1;
      v134 = v205;
      if (v8 <= 2)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAC09BF4(char **a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *, _OWORD *, __int128 **, uint64_t, uint64_t, uint64_t, void), uint64_t (*a6)(__int128 *, __int128 *, uint64_t, void))
{
  v12 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1DACA671C(v12);
  }

  v13 = *(v12 + 2);
  v15[0] = (v12 + 32);
  v15[1] = v13;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DAC0B750(v15, a2, a3, a4 & 1, a5, a6);

  *a1 = v12;

  return swift_bridgeObjectRelease_n();
}

BOOL sub_1DAC09CF4(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v8 = type metadata accessor for Quote();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v42 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v42 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v42 - v19);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a2 + 16);
  v43 = *(a2 + 24);
  v44 = v23;
  v24 = sub_1DAA4BF3C(v21, v22);
  if (v25)
  {
    sub_1DAC0F278(*(a3 + 56) + *(v45 + 72) * v24, v20);
    v26 = v20[4];
    v27 = *(v20 + 40);
    sub_1DAC0F2DC(v20);
    if ((v27 & 1) == 0 && v26 == 0.0)
    {
      goto LABEL_9;
    }
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v28 = sub_1DAA4BF3C(v21, v22);
  if ((v29 & 1) == 0)
  {
LABEL_9:
    v31 = 1;
    v30 = 0.0;
    if (!*(a3 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_1DAC0F278(*(a3 + 56) + *(v45 + 72) * v28, v18);
    v30 = v18[4];
    v31 = *(v18 + 40);
    sub_1DAC0F2DC(v18);
    if (!*(a3 + 16))
    {
      goto LABEL_18;
    }
  }

  v32 = sub_1DAA4BF3C(v44, v43);
  if (v33 & 1) == 0 || (sub_1DAC0F278(*(a3 + 56) + *(v45 + 72) * v32, v15), v34 = v15[4], v35 = *(v15 + 40), sub_1DAC0F2DC(v15), (v35) || v34 != 0.0)
  {
    if (*(a3 + 16))
    {
      v36 = sub_1DAA4BF3C(v44, v43);
      if (v37)
      {
        sub_1DAC0F278(*(a3 + 56) + *(v45 + 72) * v36, v12);
        v38 = v12[4];
        v39 = *(v12 + 40);
        sub_1DAC0F2DC(v12);
        if ((v31 & 1) == 0)
        {
          if ((v39 & 1) == 0)
          {
            if (a4)
            {
              return v38 < v30;
            }

            else
            {
              return v30 < v38;
            }
          }

          return a4;
        }

        if ((v39 & 1) == 0)
        {
          return !a4;
        }

        return 0;
      }
    }
  }

LABEL_18:
  if (v31)
  {
    return 0;
  }

  return a4;
}

uint64_t sub_1DAC09F94(char *__dst, char *__src, char *a3, char *a4, uint64_t a5, char a6, uint64_t (*a7)(__int128 *, __int128 *, uint64_t, void))
{
  v117 = a7;
  v8 = a4;
  v9 = a3;
  v10 = __src;
  v11 = __dst;
  v12 = __src - __dst;
  v13 = (__src - __dst) / 136;
  v14 = a3 - __src;
  v15 = (a3 - __src) / 136;
  if (v13 < v15)
  {
    if (a4 != __dst || &__dst[136 * v13] <= a4)
    {
      memmove(a4, __dst, 136 * v13);
    }

    v16 = (v8 + 136 * v13);
    if (v12 < 136)
    {
LABEL_6:
      v10 = v11;
      goto LABEL_51;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_6;
      }

      v99 = *v10;
      v19 = *(v10 + 1);
      v20 = *(v10 + 2);
      v21 = *(v10 + 4);
      v102 = *(v10 + 3);
      v103 = v21;
      v100 = v19;
      v101 = v20;
      v22 = *(v10 + 5);
      v23 = *(v10 + 6);
      v24 = *(v10 + 7);
      v107 = *(v10 + 16);
      v105 = v23;
      v106 = v24;
      v104 = v22;
      memmove(&__dsta, v10, 0x88uLL);
      v108 = *v8;
      v25 = *(v8 + 16);
      v26 = *(v8 + 32);
      v27 = *(v8 + 64);
      v111 = *(v8 + 48);
      v112 = v27;
      v109 = v25;
      v110 = v26;
      v28 = *(v8 + 80);
      v29 = *(v8 + 96);
      v30 = *(v8 + 112);
      v116 = *(v8 + 128);
      v114 = v29;
      v115 = v30;
      v113 = v28;
      memmove(&v81, v8, 0x88uLL);
      sub_1DAA806E4(&v99, &v72);
      sub_1DAA806E4(&v108, &v72);
      v31 = v117(&__dsta, &v81, a5, a6 & 1);
      if (v7)
      {
        v69 = v87;
        v70 = v88;
        v71 = v89;
        v65 = v83;
        v66 = v84;
        v67 = v85;
        v68 = v86;
        v63 = v81;
        v64 = v82;
        sub_1DAA9B1C8(&v63);
        v78 = v96;
        v79 = v97;
        v80 = v98;
        v74 = v92;
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v72 = __dsta;
        v73 = v91;
        sub_1DAA9B1C8(&v72);
        v56 = &v16[-v8] / 136;
        if (v11 < v8 || v11 >= v8 + 136 * v56 || v11 != v8)
        {
          v57 = 136 * v56;
          v58 = v11;
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      v32 = v31;
      v69 = v87;
      v70 = v88;
      v71 = v89;
      v65 = v83;
      v66 = v84;
      v67 = v85;
      v68 = v86;
      v63 = v81;
      v64 = v82;
      sub_1DAA9B1C8(&v63);
      v78 = v96;
      v79 = v97;
      v80 = v98;
      v74 = v92;
      v75 = v93;
      v76 = v94;
      v77 = v95;
      v72 = __dsta;
      v73 = v91;
      sub_1DAA9B1C8(&v72);
      if (v32)
      {
        break;
      }

      v17 = v8;
      v18 = v11 == v8;
      v8 += 136;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v11 += 136;
      if (v8 >= v16)
      {
        goto LABEL_6;
      }
    }

    v17 = v10;
    v18 = v11 == v10;
    v10 += 136;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v11, v17, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v15] <= a4)
  {
    memmove(a4, __src, 136 * v15);
  }

  v16 = (v8 + 136 * v15);
  if (v14 < 136)
  {
    goto LABEL_51;
  }

  v33 = a5;
  if (v10 <= v11)
  {
    goto LABEL_51;
  }

  v34 = -v8;
LABEL_22:
  v35 = v10 - 136;
  v36 = &v16[v34];
  v9 -= 136;
  v37 = v16;
  while (1)
  {
    v16 = v37;
    v37 -= 136;
    v99 = *(v16 - 136);
    v38 = *(v16 - 120);
    v39 = *(v16 - 104);
    v40 = *(v16 - 72);
    v102 = *(v16 - 88);
    v103 = v40;
    v100 = v38;
    v101 = v39;
    v41 = *(v16 - 56);
    v42 = *(v16 - 40);
    v43 = *(v16 - 24);
    v107 = *(v16 - 1);
    v105 = v42;
    v106 = v43;
    v104 = v41;
    memmove(&__dsta, v37, 0x88uLL);
    v44 = *(v10 - 56);
    v45 = *(v10 - 24);
    v114 = *(v10 - 40);
    v115 = v45;
    v46 = *(v10 - 120);
    v47 = *(v10 - 88);
    v110 = *(v10 - 104);
    v111 = v47;
    v48 = *(v10 - 88);
    v49 = *(v10 - 56);
    v112 = *(v10 - 72);
    v113 = v49;
    v50 = *(v10 - 120);
    v108 = *v35;
    v109 = v50;
    v51 = *(v10 - 24);
    v87 = v114;
    v88 = v51;
    v83 = v110;
    v84 = v48;
    v85 = v112;
    v86 = v44;
    v116 = *(v10 - 1);
    v89 = *(v10 - 1);
    v81 = v108;
    v82 = v46;
    sub_1DAA806E4(&v99, &v72);
    sub_1DAA806E4(&v108, &v72);
    v52 = v117(&__dsta, &v81, v33, a6 & 1);
    if (v7)
    {
      break;
    }

    v53 = v52;
    v69 = v87;
    v70 = v88;
    v71 = v89;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v68 = v86;
    v63 = v81;
    v64 = v82;
    sub_1DAA9B1C8(&v63);
    v78 = v96;
    v79 = v97;
    v80 = v98;
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v72 = __dsta;
    v73 = v91;
    sub_1DAA9B1C8(&v72);
    v54 = v9 + 136;
    if (v53)
    {
      if (v54 < v10 || v9 >= v10)
      {
        memmove(v9, v10 - 136, 0x88uLL);
        v34 = -v8;
        v33 = a5;
        if (v16 <= v8)
        {
LABEL_39:
          v10 = v35;
          goto LABEL_51;
        }
      }

      else
      {
        v34 = -v8;
        if (v54 != v10)
        {
          memmove(v9, v10 - 136, 0x88uLL);
        }

        v33 = a5;
        if (v16 <= v8)
        {
          goto LABEL_39;
        }
      }

      v10 -= 136;
      if (v35 > v11)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }

    if (v54 < v16 || v9 >= v16)
    {
      memmove(v9, v37, 0x88uLL);
      v33 = a5;
    }

    else
    {
      v33 = a5;
      if (v54 != v16)
      {
        memmove(v9, v37, 0x88uLL);
      }
    }

    v36 -= 136;
    v9 -= 136;
    if (v37 <= v8)
    {
      v16 = v37;
LABEL_51:
      v59 = &v16[-v8] / 136;
      if (v10 < v8 || v10 >= v8 + 136 * v59 || v10 != v8)
      {
        v57 = 136 * v59;
        v58 = v10;
LABEL_55:
        memmove(v58, v8, v57);
      }

LABEL_56:

      return 1;
    }
  }

  v69 = v87;
  v70 = v88;
  v71 = v89;
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v68 = v86;
  v63 = v81;
  v64 = v82;
  sub_1DAA9B1C8(&v63);
  v78 = v96;
  v79 = v97;
  v80 = v98;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v77 = v95;
  v72 = __dsta;
  v73 = v91;
  sub_1DAA9B1C8(&v72);
  v55 = v36 / 136;
  if (v10 >= v8 && v10 < v8 + 136 * v55)
  {
    if (v10 != v8)
    {
      memmove(v10, v8, 136 * v55);
    }

    goto LABEL_56;
  }

  memmove(v10, v8, 136 * v55);

  return 1;
}

uint64_t sub_1DAC0A664(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v193 = a4;
  v194 = a1;
  v11 = type metadata accessor for Quote();
  v313 = *(v11 - 8);
  v12 = *(v313 + 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v197 = &v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v201 = &v192 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v205 = &v192 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v202 = &v192 - v19;
  v204 = a3;
  v20 = a3[1];
  v200 = a6;
  v207 = a5;
  v209 = a7;
  if (v20 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v211 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v206 = *v194;
    if (!v206)
    {
      goto LABEL_167;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_123:
      v176 = v211 + 16;
      v177 = *(v211 + 2);
      if (v177 < 2)
      {
LABEL_130:

        return swift_bridgeObjectRelease_n();
      }

      while (1)
      {
        v178 = *v204;
        if (!*v204)
        {
          goto LABEL_164;
        }

        v179 = &v211[16 * v177];
        v180 = *v179;
        v181 = v176;
        v182 = &v176[16 * v177];
        v183 = *(v182 + 1);
        v184 = &v178[136 * *v179];
        v313 = &v178[136 * *v182];
        v210 = &v178[136 * v183];
        v185 = v207;
        sub_1DACB71E4();
        sub_1DACB71F4();
        v186 = v184;
        v187 = v208;
        sub_1DAC09F94(v186, v313, v210, v206, v185, v209 & 1, sub_1DAC09CF4);
        v208 = v187;
        if (v187)
        {

          swift_bridgeObjectRelease_n();
        }

        if (v183 < v180)
        {
          goto LABEL_152;
        }

        v188 = *v181;
        if (v177 - 2 >= *v181)
        {
          goto LABEL_153;
        }

        *v179 = v180;
        *(v179 + 1) = v183;
        v189 = v188 - v177;
        if (v188 < v177)
        {
          goto LABEL_154;
        }

        v176 = v181;
        v177 = v188 - 1;
        memmove(v182, v182 + 16, 16 * v189);
        *v181 = v177;
        if (v177 <= 1)
        {
          goto LABEL_130;
        }
      }
    }

LABEL_158:
    v211 = sub_1DAC0694C(v211);
    goto LABEL_123;
  }

  v203 = a7 & 1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v21 = 0;
  v211 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v22 = v21 + 1;
    v196 = v21;
    if (v21 + 1 >= v20)
    {
      ++v21;
      goto LABEL_14;
    }

    v23 = *v204;
    v24 = &(*v204)[136 * v22];
    v295 = *v24;
    v25 = *(v24 + 16);
    v26 = *(v24 + 32);
    v27 = *(v24 + 48);
    v299 = *(v24 + 64);
    v298 = v27;
    v297 = v26;
    v296 = v25;
    v28 = *(v24 + 80);
    v29 = *(v24 + 96);
    v30 = *(v24 + 112);
    v303 = *(v24 + 128);
    v302 = v30;
    v301 = v29;
    v300 = v28;
    v291 = *(v24 + 80);
    v292 = *(v24 + 96);
    v293 = *(v24 + 112);
    v294 = *(v24 + 128);
    v287 = *(v24 + 16);
    v288 = *(v24 + 32);
    v289 = *(v24 + 48);
    v290 = *(v24 + 64);
    v286 = *v24;
    v31 = &v23[136 * v21];
    v304 = *v31;
    v32 = *(v31 + 1);
    v33 = *(v31 + 2);
    v34 = *(v31 + 4);
    v307 = *(v31 + 3);
    v308 = v34;
    v305 = v32;
    v306 = v33;
    v35 = *(v31 + 5);
    v36 = *(v31 + 6);
    v37 = *(v31 + 7);
    v312 = *(v31 + 16);
    v310 = v36;
    v311 = v37;
    v309 = v35;
    v38 = *(v31 + 7);
    v283 = *(v31 + 6);
    v284 = v38;
    v285 = *(v31 + 16);
    v39 = *(v31 + 3);
    v279 = *(v31 + 2);
    v280 = v39;
    v40 = *(v31 + 4);
    v282 = *(v31 + 5);
    v281 = v40;
    v41 = *v31;
    v278 = *(v31 + 1);
    v277 = v41;
    sub_1DAA806E4(&v295, &v268);
    sub_1DAA806E4(&v304, &v268);
    v42 = v208;
    v43 = sub_1DAC09CF4(&v286, &v277, a5, v203);
    v208 = v42;
    if (v42)
    {
      v265 = v283;
      v266 = v284;
      v267 = v285;
      v261 = v279;
      v262 = v280;
      v264 = v282;
      v263 = v281;
      v260 = v278;
      v259 = v277;
      sub_1DAA9B1C8(&v259);
      v274 = v292;
      v275 = v293;
      v276 = v294;
      v270 = v288;
      v271 = v289;
      v273 = v291;
      v272 = v290;
      v269 = v287;
      v268 = v286;
      v191 = &v268;
      goto LABEL_133;
    }

    v44 = v43;
    v265 = v283;
    v266 = v284;
    v267 = v285;
    v261 = v279;
    v262 = v280;
    v264 = v282;
    v263 = v281;
    v260 = v278;
    v259 = v277;
    sub_1DAA9B1C8(&v259);
    v274 = v292;
    v275 = v293;
    v276 = v294;
    v270 = v288;
    v271 = v289;
    v273 = v291;
    v272 = v290;
    v269 = v287;
    v268 = v286;
    sub_1DAA9B1C8(&v268);
    v45 = (v21 + 2);
    if (v21 + 2 < v20)
    {
      v46 = &v23[136 * v21 + 272];
      while (1)
      {
        v21 = v45;
        v248[0] = *v46;
        v47 = *(v46 + 16);
        v48 = *(v46 + 32);
        v49 = *(v46 + 64);
        v248[3] = *(v46 + 48);
        v248[4] = v49;
        v248[1] = v47;
        v248[2] = v48;
        v50 = *(v46 + 80);
        v51 = *(v46 + 96);
        v52 = *(v46 + 112);
        v249 = *(v46 + 128);
        v248[6] = v51;
        v248[7] = v52;
        v248[5] = v50;
        v53 = *(v46 + 112);
        v245 = *(v46 + 96);
        v246 = v53;
        v247 = *(v46 + 128);
        v54 = *(v46 + 48);
        v241 = *(v46 + 32);
        v242 = v54;
        v55 = *(v46 + 80);
        v243 = *(v46 + 64);
        v244 = v55;
        v56 = *(v46 + 16);
        v239 = *v46;
        v240 = v56;
        v250 = *(v46 - 136);
        v57 = *(v46 - 120);
        v58 = *(v46 - 104);
        v59 = *(v46 - 72);
        v253 = *(v46 - 88);
        v254 = v59;
        v251 = v57;
        v252 = v58;
        v60 = *(v46 - 56);
        v61 = *(v46 - 40);
        v62 = *(v46 - 24);
        v258 = *(v46 - 8);
        v256 = v61;
        v257 = v62;
        v255 = v60;
        v63 = *(v46 - 56);
        v64 = *(v46 - 24);
        v236 = *(v46 - 40);
        v237 = v64;
        v238 = *(v46 - 8);
        v65 = *(v46 - 120);
        v66 = *(v46 - 88);
        v232 = *(v46 - 104);
        v233 = v66;
        v234 = *(v46 - 72);
        v235 = v63;
        v230 = *(v46 - 136);
        v231 = v65;
        sub_1DAA806E4(v248, &v221);
        sub_1DAA806E4(&v250, &v221);
        v67 = v208;
        v68 = sub_1DAC09CF4(&v239, &v230, a5, v203);
        v208 = v67;
        if (v67)
        {
          break;
        }

        v69 = v68;
        v218 = v236;
        v219 = v237;
        v220 = v238;
        v214 = v232;
        v215 = v233;
        v216 = v234;
        v217 = v235;
        v212 = v230;
        v213 = v231;
        sub_1DAA9B1C8(&v212);
        v227 = v245;
        v228 = v246;
        v229 = v247;
        v223 = v241;
        v224 = v242;
        v225 = v243;
        v226 = v244;
        v221 = v239;
        v222 = v240;
        sub_1DAA9B1C8(&v221);
        if ((v44 ^ v69))
        {
          v22 = v21 - 1;
          if (!v44)
          {
            goto LABEL_14;
          }

          goto LABEL_113;
        }

        v45 = (v21 + 1);
        v46 += 136;
        if (v20 == v21 + 1)
        {
          v22 = v21;
          v21 = v20;
          if (!v44)
          {
            goto LABEL_14;
          }

LABEL_113:
          v170 = v196;
          if (v21 >= v196)
          {
            if (v196 <= v22)
            {
              v171 = 136 * v21 - 136;
              v172 = 136 * v196;
              v173 = v21;
              while (1)
              {
                if (v170 != --v173)
                {
                  v174 = *v204;
                  if (!*v204)
                  {
                    goto LABEL_165;
                  }

                  v175 = &v174[v171];
                  v255 = *&v174[v172 + 80];
                  v256 = *&v174[v172 + 96];
                  v257 = *&v174[v172 + 112];
                  v258 = *&v174[v172 + 128];
                  v251 = *&v174[v172 + 16];
                  v252 = *&v174[v172 + 32];
                  v253 = *&v174[v172 + 48];
                  v254 = *&v174[v172 + 64];
                  v250 = *&v174[v172];
                  memmove(&v174[v172], &v174[v171], 0x88uLL);
                  *(v175 + 5) = v255;
                  *(v175 + 6) = v256;
                  *(v175 + 7) = v257;
                  *(v175 + 16) = v258;
                  *(v175 + 1) = v251;
                  *(v175 + 2) = v252;
                  *(v175 + 3) = v253;
                  *(v175 + 4) = v254;
                  *v175 = v250;
                }

                ++v170;
                v171 -= 136;
                v172 += 136;
                if (v170 >= v173)
                {
                  goto LABEL_14;
                }
              }
            }

            goto LABEL_14;
          }

LABEL_161:
          __break(1u);
LABEL_162:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_163:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_164:

          __break(1u);
LABEL_165:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_166:

          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_167:

          result = swift_bridgeObjectRelease_n();
          __break(1u);
          return result;
        }
      }

      v218 = v236;
      v219 = v237;
      v220 = v238;
      v214 = v232;
      v215 = v233;
      v216 = v234;
      v217 = v235;
      v212 = v230;
      v213 = v231;
      sub_1DAA9B1C8(&v212);
      v227 = v245;
      v228 = v246;
      v229 = v247;
      v223 = v241;
      v224 = v242;
      v225 = v243;
      v226 = v244;
      v221 = v239;
      v222 = v240;
      v191 = &v221;
LABEL_133:
      sub_1DAA9B1C8(v191);

      swift_bridgeObjectRelease_n();
    }

    v21 += 2;
    if (v44)
    {
      goto LABEL_113;
    }

LABEL_14:
    v70 = v204[1];
    if (v21 >= v70)
    {
      goto LABEL_61;
    }

    if (__OFSUB__(v21, v196))
    {
      goto LABEL_157;
    }

    if (v21 - v196 >= v193)
    {
      goto LABEL_61;
    }

    v71 = (v196 + v193);
    if (__OFADD__(v196, v193))
    {
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v71 >= v70)
    {
      v71 = v204[1];
    }

    if (v71 < v196)
    {
      goto LABEL_160;
    }

    if (v21 == v71)
    {
      goto LABEL_61;
    }

    v210 = *v204;
    v72 = v196 - v21 + 1;
    v73 = &v210[136 * v21];
    v195 = v71;
    while (2)
    {
      v206 = v21;
      v198 = v72;
      v199 = v73;
      while (1)
      {
        v74 = v73;
        v295 = *v73;
        v75 = *(v73 + 1);
        v76 = *(v73 + 2);
        v77 = *(v73 + 3);
        v299 = *(v73 + 4);
        v298 = v77;
        v297 = v76;
        v296 = v75;
        v78 = *(v73 + 5);
        v79 = *(v73 + 6);
        v80 = *(v73 + 7);
        v303 = *(v73 + 16);
        v302 = v80;
        v301 = v79;
        v300 = v78;
        v304 = *(v73 - 136);
        v81 = *(v73 - 120);
        v82 = *(v73 - 104);
        v83 = *(v73 - 72);
        v307 = *(v73 - 88);
        v308 = v83;
        v305 = v81;
        v306 = v82;
        v84 = *(v73 - 56);
        v85 = *(v73 - 40);
        v86 = *(v73 - 24);
        v312 = *(v73 - 1);
        v310 = v85;
        v311 = v86;
        v309 = v84;
        v87 = v296;
        if (*(a5 + 16))
        {
          sub_1DAA806E4(&v295, &v286);
          sub_1DAA806E4(&v304, &v286);
          v88 = sub_1DAA4BF3C(v87, *(&v87 + 1));
          if (v89)
          {
            v90 = v202;
            sub_1DAC0F278(*(a5 + 56) + *(v313 + 9) * v88, v202);
            v91 = *(v90 + 32);
            v92 = *(v90 + 40);
            sub_1DAC0F2DC(v90);
            if ((v92 & 1) == 0 && v91 == 0.0)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_1DAA806E4(&v295, &v286);
          sub_1DAA806E4(&v304, &v286);
        }

        if (!*(a5 + 16))
        {
          goto LABEL_23;
        }

        v93 = sub_1DAA4BF3C(v87, *(&v87 + 1));
        if (v94)
        {
          v95 = v205;
          sub_1DAC0F278(*(a5 + 56) + *(v313 + 9) * v93, v205);
          v96 = *(v95 + 32);
          v97 = *(v95 + 40);
          sub_1DAC0F2DC(v95);
          if (!*(a5 + 16))
          {
            goto LABEL_35;
          }

          goto LABEL_38;
        }

LABEL_37:
        v97 = 1;
        v96 = 0.0;
        if (!*(a5 + 16))
        {
LABEL_35:
          if (v97)
          {
            goto LABEL_23;
          }

LABEL_48:
          sub_1DAA9B1C8(&v304);
          sub_1DAA9B1C8(&v295);
          if ((a7 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_49;
        }

LABEL_38:
        v98 = v305;
        v99 = sub_1DAA4BF3C(v305, *(&v305 + 1));
        if (v100)
        {
          v101 = v201;
          sub_1DAC0F278(*(a5 + 56) + *(v313 + 9) * v99, v201);
          v102 = *(v101 + 32);
          v103 = *(v101 + 40);
          sub_1DAC0F2DC(v101);
          if ((v103 & 1) == 0 && v102 == 0.0)
          {
            break;
          }
        }

        if (!*(a5 + 16))
        {
          break;
        }

        v104 = sub_1DAA4BF3C(v98, *(&v98 + 1));
        if ((v105 & 1) == 0)
        {
          break;
        }

        v106 = v197;
        sub_1DAC0F278(*(a5 + 56) + *(v313 + 9) * v104, v197);
        v107 = *(v106 + 32);
        v108 = *(v106 + 40);
        sub_1DAC0F2DC(v106);
        if (v97)
        {
          LOBYTE(a7) = v209;
          if (v108)
          {
            goto LABEL_23;
          }

          sub_1DAA9B1C8(&v304);
          sub_1DAA9B1C8(&v295);
          if (v203)
          {
            goto LABEL_24;
          }
        }

        else
        {
          LOBYTE(a7) = v209;
          if (v108)
          {
            goto LABEL_48;
          }

          sub_1DAA9B1C8(&v304);
          sub_1DAA9B1C8(&v295);
          if (a7)
          {
            if (v107 >= v96)
            {
              goto LABEL_24;
            }
          }

          else if (v96 >= v107)
          {
            goto LABEL_24;
          }
        }

LABEL_49:
        if (!v210)
        {
          goto LABEL_162;
        }

        v73 = v74 - 136;
        v291 = *(v74 + 5);
        v292 = *(v74 + 6);
        v293 = *(v74 + 7);
        v294 = *(v74 + 16);
        v287 = *(v74 + 1);
        v288 = *(v74 + 2);
        v289 = *(v74 + 3);
        v290 = *(v74 + 4);
        v286 = *v74;
        v109 = *(v74 - 56);
        *(v74 + 4) = *(v74 - 72);
        *(v74 + 5) = v109;
        v110 = *(v74 - 24);
        *(v74 + 6) = *(v74 - 40);
        *(v74 + 7) = v110;
        *(v74 + 16) = *(v74 - 1);
        v111 = *(v74 - 88);
        *(v74 + 2) = *(v74 - 104);
        *(v74 + 3) = v111;
        v112 = *(v74 - 120);
        *v74 = *(v74 - 136);
        *(v74 + 1) = v112;
        *(v73 + 4) = v290;
        *(v73 + 5) = v291;
        *(v73 + 6) = v292;
        *(v73 + 7) = v293;
        *(v73 + 16) = v294;
        *(v73 + 1) = v287;
        *(v73 + 2) = v288;
        *(v73 + 3) = v289;
        *v73 = v286;
        if (!v72)
        {
          goto LABEL_24;
        }

        ++v72;
      }

      LOBYTE(a7) = v209;
      if ((v97 & 1) == 0)
      {
        goto LABEL_48;
      }

LABEL_23:
      sub_1DAA9B1C8(&v304);
      sub_1DAA9B1C8(&v295);
LABEL_24:
      v21 = (v206 + 1);
      v73 = v199 + 136;
      v72 = v198 - 1;
      if (v206 + 1 != v195)
      {
        continue;
      }

      break;
    }

    v21 = v195;
LABEL_61:
    if (v21 < v196)
    {
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v211 = sub_1DAADB818(0, *(v211 + 2) + 1, 1, v211);
    }

    v114 = *(v211 + 2);
    v113 = *(v211 + 3);
    v115 = v114 + 1;
    if (v114 >= v113 >> 1)
    {
      v211 = sub_1DAADB818((v113 > 1), v114 + 1, 1, v211);
    }

    v116 = v211;
    *(v211 + 2) = v115;
    v117 = v116 + 32;
    v118 = &v116[16 * v114 + 32];
    *v118 = v196;
    *(v118 + 1) = v21;
    v199 = *v194;
    if (!v199)
    {
      goto LABEL_166;
    }

    if (!v114)
    {
LABEL_3:
      v20 = v204[1];
      if (v21 >= v20)
      {
        goto LABEL_121;
      }

      continue;
    }

    break;
  }

  v206 = v21;
  v198 = v117;
  while (2)
  {
    v119 = v115 - 1;
    if (v115 >= 4)
    {
      v124 = &v117[16 * v115];
      v125 = *(v124 - 8);
      v126 = *(v124 - 7);
      v130 = __OFSUB__(v126, v125);
      v127 = v126 - v125;
      if (v130)
      {
        goto LABEL_141;
      }

      v129 = *(v124 - 6);
      v128 = *(v124 - 5);
      v130 = __OFSUB__(v128, v129);
      v122 = v128 - v129;
      v123 = v130;
      if (v130)
      {
        goto LABEL_142;
      }

      v131 = &v211[16 * v115];
      v133 = *v131;
      v132 = *(v131 + 1);
      v130 = __OFSUB__(v132, v133);
      v134 = v132 - v133;
      if (v130)
      {
        goto LABEL_144;
      }

      v130 = __OFADD__(v122, v134);
      v135 = v122 + v134;
      if (v130)
      {
        goto LABEL_146;
      }

      if (v135 >= v127)
      {
        v153 = &v117[16 * v119];
        v155 = *v153;
        v154 = *(v153 + 1);
        v130 = __OFSUB__(v154, v155);
        v156 = v154 - v155;
        if (v130)
        {
          goto LABEL_155;
        }

        if (v122 < v156)
        {
          v119 = v115 - 2;
        }
      }

      else
      {
LABEL_82:
        if (v123)
        {
          goto LABEL_143;
        }

        v136 = &v211[16 * v115];
        v138 = *v136;
        v137 = *(v136 + 1);
        v139 = __OFSUB__(v137, v138);
        v140 = v137 - v138;
        v141 = v139;
        if (v139)
        {
          goto LABEL_145;
        }

        v142 = &v117[16 * v119];
        v144 = *v142;
        v143 = *(v142 + 1);
        v130 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v130)
        {
          goto LABEL_148;
        }

        if (__OFADD__(v140, v145))
        {
          goto LABEL_150;
        }

        if (v140 + v145 < v122)
        {
          goto LABEL_97;
        }

        if (v122 < v145)
        {
          v119 = v115 - 2;
        }
      }
    }

    else
    {
      if (v115 == 3)
      {
        v120 = *(v211 + 4);
        v121 = *(v211 + 5);
        v130 = __OFSUB__(v121, v120);
        v122 = v121 - v120;
        v123 = v130;
        goto LABEL_82;
      }

      if (v115 < 2)
      {
        goto LABEL_151;
      }

      v146 = &v211[16 * v115];
      v148 = *v146;
      v147 = *(v146 + 1);
      v130 = __OFSUB__(v147, v148);
      v140 = v147 - v148;
      v141 = v130;
LABEL_97:
      if (v141)
      {
        goto LABEL_147;
      }

      v149 = &v117[16 * v119];
      v151 = *v149;
      v150 = *(v149 + 1);
      v130 = __OFSUB__(v150, v151);
      v152 = v150 - v151;
      if (v130)
      {
        goto LABEL_149;
      }

      if (v152 < v140)
      {
        goto LABEL_3;
      }
    }

    if (v119 - 1 >= v115)
    {
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
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v157 = *v204;
    if (!*v204)
    {
      goto LABEL_163;
    }

    v158 = &v117[16 * v119 - 16];
    v159 = *v158;
    v160 = v119;
    v161 = &v117[16 * v119];
    v162 = *(v161 + 1);
    v163 = &v157[136 * *v158];
    v210 = &v157[136 * *v161];
    v164 = &v157[136 * v162];
    v165 = v207;
    sub_1DACB71E4();
    sub_1DACB71F4();
    v166 = v163;
    v167 = v208;
    sub_1DAC09F94(v166, v210, v164, v199, v165, v203, sub_1DAC09CF4);
    v208 = v167;
    if (!v167)
    {

      if (v162 < v159)
      {
        goto LABEL_138;
      }

      v168 = *(v211 + 2);
      if (v160 > v168)
      {
        goto LABEL_139;
      }

      *v158 = v159;
      *(v158 + 1) = v162;
      if (v160 >= v168)
      {
        goto LABEL_140;
      }

      v169 = v160;
      v115 = v168 - 1;
      memmove(v161, v161 + 16, 16 * (v168 - 1 - v169));
      *(v211 + 2) = v168 - 1;
      v21 = v206;
      a5 = v207;
      LOBYTE(a7) = v209;
      v117 = v198;
      if (v168 <= 2)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAC0B750(__int128 **a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *, _OWORD *, __int128 **, uint64_t, uint64_t, uint64_t, void), uint64_t (*a6)(__int128 *, __int128 *, uint64_t, void))
{
  v13 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_1DACBA104();
  if (result < v13)
  {
    if (v13 >= -1)
    {
      v15 = result;
      v16 = v13 / 2;
      if (v13 <= 1)
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v17 = sub_1DACB96C4();
        *(v17 + 16) = v16;
      }

      *&v96[0] = v17 + 32;
      *(&v96[0] + 1) = v16;
      sub_1DACB71E4();
      sub_1DACB71F4();
      a5(v96, v94, a1, v15, a2, a3, a4 & 1);

      *(v17 + 16) = 0;

      swift_bridgeObjectRelease_n();
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v13 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v13)
  {
    if (v13 == 1)
    {
    }

    else
    {
      v18 = *a1;
      sub_1DACB71E4();
      sub_1DACB71F4();
      v19 = 0;
      v98 = 1;
      v20 = v18;
      while (2)
      {
        v47 = v20;
        v48 = v19;
        while (1)
        {
          v94[0] = *(v20 + 136);
          v21 = *(v20 + 152);
          v22 = *(v20 + 168);
          v23 = *(v20 + 200);
          v94[3] = *(v20 + 184);
          v94[4] = v23;
          v94[1] = v21;
          v94[2] = v22;
          v24 = *(v20 + 216);
          v25 = *(v20 + 232);
          v26 = *(v20 + 248);
          v95 = *(v20 + 33);
          v94[6] = v25;
          v94[7] = v26;
          v94[5] = v24;
          v27 = *(v20 + 216);
          v28 = *(v20 + 248);
          v91 = *(v20 + 232);
          v92 = v28;
          v93 = *(v20 + 33);
          v29 = *(v20 + 152);
          v30 = *(v20 + 184);
          v87 = *(v20 + 168);
          v88 = v30;
          v89 = *(v20 + 200);
          v90 = v27;
          v85 = *(v20 + 136);
          v86 = v29;
          v96[0] = *v20;
          v31 = v20[1];
          v32 = v20[2];
          v33 = v20[4];
          v96[3] = v20[3];
          v96[4] = v33;
          v96[1] = v31;
          v96[2] = v32;
          v34 = v20[5];
          v35 = v20[6];
          v36 = v20[7];
          v97 = *(v20 + 16);
          v96[6] = v35;
          v96[7] = v36;
          v96[5] = v34;
          v37 = v20[7];
          v82 = v20[6];
          v83 = v37;
          v84 = *(v20 + 16);
          v38 = v20[3];
          v78 = v20[2];
          v79 = v38;
          v39 = v20[5];
          v80 = v20[4];
          v81 = v39;
          v40 = v20[1];
          v76 = *v20;
          v77 = v40;
          sub_1DAA806E4(v94, &v67);
          sub_1DAA806E4(v96, &v67);
          v41 = a6(&v85, &v76, a2, a4 & 1);
          if (v6)
          {
            v64 = v82;
            v65 = v83;
            v66 = v84;
            v60 = v78;
            v61 = v79;
            v62 = v80;
            v63 = v81;
            v58 = v76;
            v59 = v77;
            sub_1DAA9B1C8(&v58);
            v73 = v91;
            v74 = v92;
            v75 = v93;
            v69 = v87;
            v70 = v88;
            v71 = v89;
            v72 = v90;
            v67 = v85;
            v68 = v86;
            sub_1DAA9B1C8(&v67);
            swift_bridgeObjectRelease_n();
          }

          v42 = v41;
          v64 = v82;
          v65 = v83;
          v66 = v84;
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v63 = v81;
          v58 = v76;
          v59 = v77;
          sub_1DAA9B1C8(&v58);
          v73 = v91;
          v74 = v92;
          v75 = v93;
          v69 = v87;
          v70 = v88;
          v71 = v89;
          v72 = v90;
          v67 = v85;
          v68 = v86;
          result = sub_1DAA9B1C8(&v67);
          if ((v42 & 1) == 0)
          {
            break;
          }

          if (!v18)
          {
            goto LABEL_26;
          }

          v55 = *(v20 + 232);
          v56 = *(v20 + 248);
          v51 = *(v20 + 168);
          v52 = *(v20 + 184);
          v53 = *(v20 + 200);
          v54 = *(v20 + 216);
          v49 = *(v20 + 136);
          v50 = *(v20 + 152);
          v43 = v20[5];
          *(v20 + 200) = v20[4];
          *(v20 + 216) = v43;
          v44 = v20[7];
          *(v20 + 232) = v20[6];
          *(v20 + 248) = v44;
          v45 = *v20;
          *(v20 + 152) = v20[1];
          v46 = v20[3];
          *(v20 + 168) = v20[2];
          v57 = *(v20 + 33);
          *(v20 + 33) = *(v20 + 16);
          *(v20 + 184) = v46;
          *(v20 + 136) = v45;
          v20[4] = v53;
          v20[5] = v54;
          v20[6] = v55;
          v20[7] = v56;
          *(v20 + 16) = v57;
          v20[2] = v51;
          v20[3] = v52;
          *v20 = v49;
          v20[1] = v50;
          if (!v19)
          {
            break;
          }

          v20 = (v20 - 136);
          ++v19;
        }

        if (v98 + 1 != v13)
        {
          ++v98;
          v20 = (v47 + 136);
          v19 = v48 - 1;
          continue;
        }

        break;
      }

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {

    return swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1DAC0BBFC(uint64_t a1, uint64_t a2, int a3)
{
  v31 = a3;
  v5 = sub_1DACB7664();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a2 + 72);
  v27 = *(a2 + 80);
  v28 = v12;
  v32 = v10;
  v33 = v11;
  sub_1DACB71E4();
  sub_1DACB7614();
  sub_1DAA642D8();
  v13 = sub_1DACB9B34();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v9, v5);

  v32 = v13;
  v33 = v15;
  sub_1DACB7644();
  sub_1DACB9B34();
  v16(v9, v5);

  v29 = sub_1DACB93B4();
  v30 = v17;

  v32 = v28;
  v33 = v27;
  sub_1DACB71E4();
  sub_1DACB7614();
  v18 = sub_1DACB9B34();
  v20 = v19;
  v16(v9, v5);

  v32 = v18;
  v33 = v20;
  sub_1DACB7644();
  sub_1DACB9B34();
  v16(v9, v5);

  v21 = sub_1DACB93B4();
  v23 = v22;

  if (v31)
  {
    if (v21 != v29 || v23 != v30)
    {
LABEL_8:
      v24 = sub_1DACBA174();
      goto LABEL_9;
    }
  }

  else if (v29 != v21 || v30 != v23)
  {
    goto LABEL_8;
  }

  v24 = 0;
LABEL_9:

  return v24 & 1;
}

uint64_t sub_1DAC0BEB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    swift_retain_n();
    v11 = MEMORY[0x1E69E7CC0];
LABEL_93:
    __dst = *a1;
    if (*a1)
    {
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  swift_retain_n();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v164 = a4;
  while (1)
  {
    v12 = v10;
    v13 = (v10 + 1);
    if ((v10 + 1) >= v8)
    {
      v63 = (v10 + 1);
    }

    else
    {
      v14 = *a3;
      v15 = *a3 + 136 * v13;
      v241 = *v15;
      v16 = *(v15 + 16);
      v17 = *(v15 + 32);
      v18 = *(v15 + 48);
      v245 = *(v15 + 64);
      v244 = v18;
      v243 = v17;
      v242 = v16;
      v19 = *(v15 + 80);
      v20 = *(v15 + 96);
      v21 = *(v15 + 112);
      v249 = *(v15 + 128);
      v248 = v21;
      v247 = v20;
      v246 = v19;
      v22 = *(v15 + 112);
      v238 = *(v15 + 96);
      v239 = v22;
      v240 = *(v15 + 128);
      v23 = *(v15 + 48);
      v234 = *(v15 + 32);
      v235 = v23;
      v24 = *(v15 + 64);
      v237 = *(v15 + 80);
      v236 = v24;
      v25 = *v15;
      v233 = *(v15 + 16);
      v232 = v25;
      v26 = (v14 + 136 * v12);
      v250 = *v26;
      v27 = v26[1];
      v28 = v26[2];
      v29 = v26[4];
      v253 = v26[3];
      v254 = v29;
      v251 = v27;
      v252 = v28;
      v30 = v26[5];
      v31 = v26[6];
      v32 = v26[7];
      v258 = *(v26 + 16);
      v256 = v31;
      v257 = v32;
      v255 = v30;
      v33 = v26[7];
      v229 = v26[6];
      v230 = v33;
      v231 = *(v26 + 16);
      v34 = v26[3];
      v225 = v26[2];
      v226 = v34;
      v35 = v26[4];
      v228 = v26[5];
      v227 = v35;
      v36 = *v26;
      v224 = v26[1];
      v223 = v36;
      sub_1DAA806E4(&v241, &v214);
      sub_1DAA806E4(&v250, &v214);
      v37 = sub_1DAC0BBFC(&v232, &v223, a6 & 1);
      if (v7)
      {
LABEL_104:
        v212 = v230;
        v213 = v231;
        v207 = v225;
        v208 = v226;
        v210 = v228;
        v211 = v229;
        v209 = v227;
        v205 = v223;
        v206 = v224;
        sub_1DAA9B1C8(&v205);
        v220 = v238;
        v221 = v239;
        v222 = v240;
        v216 = v234;
        v217 = v235;
        v219 = v237;
        v218 = v236;
        v215 = v233;
        v214 = v232;
        sub_1DAA9B1C8(&v214);
LABEL_105:
      }

      v38 = v37;
      v212 = v230;
      v213 = v231;
      v207 = v225;
      v208 = v226;
      v210 = v228;
      v211 = v229;
      v209 = v227;
      v205 = v223;
      v206 = v224;
      sub_1DAA9B1C8(&v205);
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v216 = v234;
      v217 = v235;
      v219 = v237;
      v218 = v236;
      v215 = v233;
      v214 = v232;
      sub_1DAA9B1C8(&v214);
      v39 = v12 + 2;
      if ((v12 + 2) >= v8)
      {
        v63 = (v12 + 2);
        if (v38)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __dst = v12;
        v40 = v14 + 136 * v12 + 272;
        while (1)
        {
          v41 = v39;
          v194[0] = *v40;
          v42 = *(v40 + 16);
          v43 = *(v40 + 32);
          v44 = *(v40 + 64);
          v194[3] = *(v40 + 48);
          v194[4] = v44;
          v194[1] = v42;
          v194[2] = v43;
          v45 = *(v40 + 80);
          v46 = *(v40 + 96);
          v47 = *(v40 + 112);
          v195 = *(v40 + 128);
          v194[6] = v46;
          v194[7] = v47;
          v194[5] = v45;
          v48 = *(v40 + 112);
          v191 = *(v40 + 96);
          v192 = v48;
          v193 = *(v40 + 128);
          v49 = *(v40 + 48);
          v187 = *(v40 + 32);
          v188 = v49;
          v50 = *(v40 + 80);
          v189 = *(v40 + 64);
          v190 = v50;
          v51 = *(v40 + 16);
          v185 = *v40;
          v186 = v51;
          v196 = *(v40 - 136);
          v52 = *(v40 - 120);
          v53 = *(v40 - 104);
          v54 = *(v40 - 72);
          v199 = *(v40 - 88);
          v200 = v54;
          v197 = v52;
          v198 = v53;
          v55 = *(v40 - 56);
          v56 = *(v40 - 40);
          v57 = *(v40 - 24);
          v204 = *(v40 - 8);
          v202 = v56;
          v203 = v57;
          v201 = v55;
          v58 = *(v40 - 56);
          v59 = *(v40 - 24);
          v182 = *(v40 - 40);
          v183 = v59;
          v184 = *(v40 - 8);
          v60 = *(v40 - 120);
          v61 = *(v40 - 88);
          v178 = *(v40 - 104);
          v179 = v61;
          v180 = *(v40 - 72);
          v181 = v58;
          v176 = *(v40 - 136);
          v177 = v60;
          sub_1DAA806E4(v194, v174);
          sub_1DAA806E4(&v196, v174);
          v62 = sub_1DAC0BBFC(&v185, &v176, a6 & 1);
          v172[6] = v182;
          v172[7] = v183;
          v173 = v184;
          v172[2] = v178;
          v172[3] = v179;
          v172[4] = v180;
          v172[5] = v181;
          v172[0] = v176;
          v172[1] = v177;
          sub_1DAA9B1C8(v172);
          v174[6] = v191;
          v174[7] = v192;
          v175 = v193;
          v174[2] = v187;
          v174[3] = v188;
          v174[4] = v189;
          v174[5] = v190;
          v174[0] = v185;
          v174[1] = v186;
          sub_1DAA9B1C8(v174);
          if ((v38 ^ v62))
          {
            break;
          }

          v39 = (v41 + 1);
          v40 += 136;
          if (v8 == v41 + 1)
          {
            v13 = v41;
            v63 = v8;
            goto LABEL_15;
          }
        }

        v63 = v41;
        v13 = v41 - 1;
LABEL_15:
        v12 = __dst;
        if (v38)
        {
LABEL_16:
          if (v63 < v12)
          {
            goto LABEL_127;
          }

          if (v12 <= v13)
          {
            v64 = v12;
            v65 = 136 * v63 - 136;
            v66 = 136 * v64;
            v67 = v63;
            __dst = v64;
            do
            {
              if (v64 != --v67)
              {
                v68 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v69 = v68 + v65;
                v201 = *(v68 + v66 + 80);
                v202 = *(v68 + v66 + 96);
                v203 = *(v68 + v66 + 112);
                v204 = *(v68 + v66 + 128);
                v197 = *(v68 + v66 + 16);
                v198 = *(v68 + v66 + 32);
                v199 = *(v68 + v66 + 48);
                v200 = *(v68 + v66 + 64);
                v196 = *(v68 + v66);
                memmove((v68 + v66), (v68 + v65), 0x88uLL);
                *(v69 + 80) = v201;
                *(v69 + 96) = v202;
                *(v69 + 112) = v203;
                *(v69 + 128) = v204;
                *(v69 + 16) = v197;
                *(v69 + 32) = v198;
                *(v69 + 48) = v199;
                *(v69 + 64) = v200;
                *v69 = v196;
              }

              ++v64;
              v65 -= 136;
              v66 += 136;
            }

            while (v64 < v67);
            v12 = __dst;
          }
        }
      }
    }

    v70 = a3[1];
    if (v63 >= v70)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v63, v12))
    {
      goto LABEL_123;
    }

    if (v63 - v12 >= a4)
    {
      goto LABEL_136;
    }

    v71 = &v12[a4];
    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:

      __break(1u);
LABEL_129:

      __break(1u);
      goto LABEL_130;
    }

    if (v71 >= v70)
    {
      v71 = a3[1];
    }

    if (v71 < v12)
    {
      goto LABEL_126;
    }

    if (v63 == v71)
    {
LABEL_136:
      if (v63 < v12)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v122 = *a3;
      v123 = *a3 + 136 * v63;
      v124 = &v12[-v63 + 1];
      v167 = v71;
      do
      {
        __dst = v124;
        v125 = v123;
        while (1)
        {
          v241 = *v123;
          v126 = *(v123 + 16);
          v127 = *(v123 + 32);
          v128 = *(v123 + 48);
          v245 = *(v123 + 64);
          v244 = v128;
          v243 = v127;
          v242 = v126;
          v129 = *(v123 + 80);
          v130 = *(v123 + 96);
          v131 = *(v123 + 112);
          v249 = *(v123 + 128);
          v248 = v131;
          v247 = v130;
          v246 = v129;
          v132 = *(v123 + 112);
          v238 = *(v123 + 96);
          v239 = v132;
          v240 = *(v123 + 128);
          v133 = *(v123 + 48);
          v234 = *(v123 + 32);
          v235 = v133;
          v134 = *(v123 + 64);
          v237 = *(v123 + 80);
          v236 = v134;
          v135 = *v123;
          v233 = *(v123 + 16);
          v232 = v135;
          v250 = *(v123 - 136);
          v136 = *(v123 - 120);
          v137 = *(v123 - 104);
          v138 = *(v123 - 72);
          v253 = *(v123 - 88);
          v254 = v138;
          v251 = v136;
          v252 = v137;
          v139 = *(v123 - 56);
          v140 = *(v123 - 40);
          v141 = *(v123 - 24);
          v258 = *(v123 - 8);
          v256 = v140;
          v257 = v141;
          v255 = v139;
          v142 = *(v123 - 56);
          v143 = *(v123 - 24);
          v229 = *(v123 - 40);
          v230 = v143;
          v231 = *(v123 - 8);
          v144 = *(v123 - 120);
          v145 = *(v123 - 88);
          v225 = *(v123 - 104);
          v226 = v145;
          v146 = *(v123 - 72);
          v228 = v142;
          v227 = v146;
          v147 = *(v123 - 136);
          v224 = v144;
          v223 = v147;
          sub_1DAA806E4(&v241, &v214);
          sub_1DAA806E4(&v250, &v214);
          v148 = sub_1DAC0BBFC(&v232, &v223, a6 & 1);
          if (v7)
          {
            goto LABEL_104;
          }

          v149 = v148;
          v212 = v230;
          v213 = v231;
          v207 = v225;
          v208 = v226;
          v210 = v228;
          v211 = v229;
          v209 = v227;
          v205 = v223;
          v206 = v224;
          sub_1DAA9B1C8(&v205);
          v220 = v238;
          v221 = v239;
          v222 = v240;
          v216 = v234;
          v217 = v235;
          v219 = v237;
          v218 = v236;
          v215 = v233;
          v214 = v232;
          sub_1DAA9B1C8(&v214);
          if ((v149 & 1) == 0)
          {
            break;
          }

          if (!v122)
          {
            goto LABEL_129;
          }

          v150 = v123 - 136;
          v201 = *(v123 + 80);
          v202 = *(v123 + 96);
          v203 = *(v123 + 112);
          v204 = *(v123 + 128);
          v197 = *(v123 + 16);
          v198 = *(v123 + 32);
          v199 = *(v123 + 48);
          v200 = *(v123 + 64);
          v196 = *v123;
          v151 = *(v123 - 56);
          *(v123 + 64) = *(v123 - 72);
          *(v123 + 80) = v151;
          v152 = *(v123 - 24);
          *(v123 + 96) = *(v123 - 40);
          *(v123 + 112) = v152;
          *(v123 + 128) = *(v123 - 8);
          v153 = *(v123 - 88);
          *(v123 + 32) = *(v123 - 104);
          *(v123 + 48) = v153;
          v154 = *(v123 - 120);
          *v123 = *(v123 - 136);
          *(v123 + 16) = v154;
          *(v150 + 64) = v200;
          *(v150 + 80) = v201;
          *(v150 + 96) = v202;
          *(v150 + 112) = v203;
          *(v150 + 128) = v204;
          *(v150 + 16) = v197;
          *(v150 + 32) = v198;
          *(v150 + 48) = v199;
          *v150 = v196;
          if (!v124)
          {
            break;
          }

          ++v124;
          v123 -= 136;
        }

        ++v63;
        v123 = v125 + 136;
        v124 = (__dst - 1);
      }

      while (v63 != v167);
      v63 = v167;
      if (v167 < v12)
      {
        goto LABEL_122;
      }
    }

    v166 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAADB818(0, *(v11 + 2) + 1, 1, v11);
    }

    v73 = *(v11 + 2);
    v72 = *(v11 + 3);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v11 = sub_1DAADB818((v72 > 1), v73 + 1, 1, v11);
    }

    *(v11 + 2) = v74;
    v75 = &v11[16 * v73];
    *(v75 + 4) = v12;
    *(v75 + 5) = v63;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v73)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v10 = v166;
    a4 = v164;
    if (v166 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v76 = v74 - 1;
    if (v74 >= 4)
    {
      v81 = &v11[16 * v74 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_109;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_110;
      }

      v88 = &v11[16 * v74];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_112;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_115;
      }

      if (v92 >= v84)
      {
        v110 = &v11[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_121;
        }

        if (v79 < v113)
        {
          v76 = v74 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v74 == 3)
    {
      v77 = *(v11 + 4);
      v78 = *(v11 + 5);
      v87 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      v80 = v87;
LABEL_52:
      if (v80)
      {
        goto LABEL_111;
      }

      v93 = &v11[16 * v74];
      v95 = *v93;
      v94 = *(v93 + 1);
      v96 = __OFSUB__(v94, v95);
      v97 = v94 - v95;
      v98 = v96;
      if (v96)
      {
        goto LABEL_114;
      }

      v99 = &v11[16 * v76 + 32];
      v101 = *v99;
      v100 = *(v99 + 1);
      v87 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v87)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v97, v102))
      {
        goto LABEL_118;
      }

      if (v97 + v102 >= v79)
      {
        if (v79 < v102)
        {
          v76 = v74 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v103 = &v11[16 * v74];
    v105 = *v103;
    v104 = *(v103 + 1);
    v87 = __OFSUB__(v104, v105);
    v97 = v104 - v105;
    v98 = v87;
LABEL_66:
    if (v98)
    {
      goto LABEL_113;
    }

    v106 = &v11[16 * v76];
    v108 = *(v106 + 4);
    v107 = *(v106 + 5);
    v87 = __OFSUB__(v107, v108);
    v109 = v107 - v108;
    if (v87)
    {
      goto LABEL_116;
    }

    if (v109 < v97)
    {
      goto LABEL_3;
    }

LABEL_73:
    v114 = v76 - 1;
    if (v76 - 1 >= v74)
    {
      break;
    }

    v115 = *a3;
    if (!*a3)
    {
      goto LABEL_128;
    }

    v116 = *&v11[16 * v114 + 32];
    v117 = *&v11[16 * v76 + 40];
    v118 = (v115 + 136 * v116);
    v119 = (v115 + 136 * *&v11[16 * v76 + 32]);
    v120 = (v115 + 136 * v117);
    sub_1DACB71F4();
    sub_1DAC06250(v118, v119, v120, __dst, a5, a6 & 1);
    if (v7)
    {
      goto LABEL_105;
    }

    if (v117 < v116)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAC0694C(v11);
    }

    if (v114 >= *(v11 + 2))
    {
      goto LABEL_108;
    }

    v121 = &v11[16 * v114];
    *(v121 + 4) = v116;
    *(v121 + 5) = v117;
    v259 = v11;
    sub_1DAC068C0(v76);
    v11 = v259;
    v74 = *(v259 + 2);
    if (v74 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_124:
  v11 = sub_1DAC0694C(v11);
LABEL_95:
  v259 = v11;
  v155 = *(v11 + 2);
  if (v155 < 2)
  {
LABEL_103:
  }

  else
  {
    while (1)
    {
      v156 = *a3;
      if (!*a3)
      {
        break;
      }

      v157 = *&v11[16 * v155];
      v158 = *&v11[16 * v155 + 24];
      v159 = (v156 + 136 * v157);
      v160 = (v156 + 136 * *&v11[16 * v155 + 16]);
      v161 = (v156 + 136 * v158);
      sub_1DACB71F4();
      sub_1DAC06250(v159, v160, v161, __dst, a5, a6 & 1);
      if (v7)
      {
        goto LABEL_103;
      }

      if (v158 < v157)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAC0694C(v11);
      }

      if (v155 - 2 >= *(v11 + 2))
      {
        goto LABEL_120;
      }

      v162 = &v11[16 * v155];
      *v162 = v157;
      *(v162 + 1) = v158;
      v259 = v11;
      sub_1DAC068C0(v155 - 1);
      v11 = v259;
      v155 = *(v259 + 2);
      if (v155 <= 1)
      {
        goto LABEL_103;
      }
    }

LABEL_130:

    __break(1u);
LABEL_131:

    __break(1u);
LABEL_132:

    __break(1u);
LABEL_133:

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC0CC80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v89 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 136 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    for (i = v9; ; i -= 136)
    {
      v85[0] = *i;
      v13 = *(i + 16);
      v14 = *(i + 32);
      v15 = *(i + 64);
      v85[3] = *(i + 48);
      v85[4] = v15;
      v85[1] = v13;
      v85[2] = v14;
      v16 = *(i + 80);
      v17 = *(i + 96);
      v18 = *(i + 112);
      v86 = *(i + 128);
      v85[6] = v17;
      v85[7] = v18;
      v85[5] = v16;
      v19 = *(i + 112);
      v82 = *(i + 96);
      v83 = v19;
      v84 = *(i + 128);
      v20 = *(i + 48);
      v78 = *(i + 32);
      v79 = v20;
      v21 = *(i + 80);
      v80 = *(i + 64);
      v81 = v21;
      v22 = *(i + 16);
      v76 = *i;
      v77 = v22;
      v87[0] = *(i - 136);
      v23 = *(i - 120);
      v24 = *(i - 104);
      v25 = *(i - 72);
      v87[3] = *(i - 88);
      v87[4] = v25;
      v87[1] = v23;
      v87[2] = v24;
      v26 = *(i - 56);
      v27 = *(i - 40);
      v28 = *(i - 24);
      v88 = *(i - 8);
      v87[6] = v27;
      v87[7] = v28;
      v87[5] = v26;
      v29 = *(i - 56);
      v30 = *(i - 24);
      v73 = *(i - 40);
      v74 = v30;
      v75 = *(i - 8);
      v31 = *(i - 120);
      v32 = *(i - 88);
      v69 = *(i - 104);
      v70 = v32;
      v71 = *(i - 72);
      v72 = v29;
      v67 = *(i - 136);
      v68 = v31;
      sub_1DAA806E4(v85, &v58);
      sub_1DAA806E4(v87, &v58);
      v33 = sub_1DAC0BBFC(&v76, &v67, a5 & 1);
      if (v5)
      {
        v55 = v73;
        v56 = v74;
        v57 = v75;
        v51 = v69;
        v52 = v70;
        v53 = v71;
        v54 = v72;
        v49 = v67;
        v50 = v68;
        sub_1DAA9B1C8(&v49);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        return sub_1DAA9B1C8(&v58);
      }

      v34 = v33;
      v55 = v73;
      v56 = v74;
      v57 = v75;
      v51 = v69;
      v52 = v70;
      v53 = v71;
      v54 = v72;
      v49 = v67;
      v50 = v68;
      sub_1DAA9B1C8(&v49);
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v60 = v78;
      v61 = v79;
      v62 = v80;
      v63 = v81;
      v58 = v76;
      v59 = v77;
      result = sub_1DAA9B1C8(&v58);
      if ((v34 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 += 136;
        --v10;
        if (v7 == v89)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v35 = i - 136;
      v46 = *(i + 96);
      v47 = *(i + 112);
      v48 = *(i + 128);
      v42 = *(i + 32);
      v43 = *(i + 48);
      v44 = *(i + 64);
      v45 = *(i + 80);
      v40 = *i;
      v41 = *(i + 16);
      v36 = *(i - 56);
      *(i + 64) = *(i - 72);
      *(i + 80) = v36;
      v37 = *(i - 24);
      *(i + 96) = *(i - 40);
      *(i + 112) = v37;
      *(i + 128) = *(i - 8);
      v38 = *(i - 88);
      *(i + 32) = *(i - 104);
      *(i + 48) = v38;
      v39 = *(i - 120);
      *i = *(i - 136);
      *(i + 16) = v39;
      *(v35 + 64) = v44;
      *(v35 + 80) = v45;
      *(v35 + 96) = v46;
      *(v35 + 112) = v47;
      *(v35 + 128) = v48;
      *(v35 + 32) = v42;
      *(v35 + 48) = v43;
      *v35 = v40;
      *(v35 + 16) = v41;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC0CF74(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = sub_1DACBA104();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1DACB96C4();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;
      sub_1DACB71F4();
      sub_1DAC0BEB8(v11, v12, a1, v8, a2, a3 & 1);

      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1DAC0CC80(0, v6, 1, a1, a3 & 1);
  }
}

uint64_t sub_1DAC0D0B8(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, char a6)
{
  v6 = a4;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = (__dst - __src) / 136;
  v89 = a3;
  v11 = a3 - __dst;
  v12 = (a3 - __dst) / 136;
  if (v10 < v12)
  {
    if (a4 != __src || &__src[136 * v10] <= a4)
    {
      memmove(a4, __src, 136 * v10);
    }

    v13 = &v6[136 * v10];
    if (v9 < 136 || v7 >= v89)
    {
LABEL_70:
      v7 = v8;
      goto LABEL_72;
    }

    while (1)
    {
      v71 = *v7;
      v14 = *(v7 + 1);
      v15 = *(v7 + 2);
      v16 = *(v7 + 4);
      v74 = *(v7 + 3);
      v75 = v16;
      v72 = v14;
      v73 = v15;
      v17 = *(v7 + 5);
      v18 = *(v7 + 6);
      v19 = *(v7 + 7);
      v20 = v7;
      v79 = *(v7 + 16);
      v77 = v18;
      v78 = v19;
      v76 = v17;
      v80 = *v6;
      v21 = *(v6 + 1);
      v22 = *(v6 + 2);
      v23 = *(v6 + 4);
      v83 = *(v6 + 3);
      v84 = v23;
      v81 = v21;
      v82 = v22;
      v24 = *(v6 + 5);
      v25 = *(v6 + 6);
      v26 = *(v6 + 7);
      v88 = *(v6 + 16);
      v86 = v25;
      v87 = v26;
      v85 = v24;
      v27 = v73;
      v28 = v82;
      sub_1DAA806E4(&v71, v70);
      sub_1DAA806E4(&v80, v70);
      v29 = sub_1DAC06054(v27, *(&v27 + 1));
      v31 = v30;
      v32 = sub_1DAC06054(v28, *(&v28 + 1));
      if (v31)
      {
        if (v33)
        {
          if (a6)
          {
            if (v32 == v29 && v33 == v31)
            {
              goto LABEL_21;
            }

            v34 = sub_1DACBA174();

            sub_1DAA9B1C8(&v80);
            sub_1DAA9B1C8(&v71);
            v7 = v20;
            if ((v34 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v29 == v32 && v31 == v33)
            {
LABEL_21:

LABEL_22:
              sub_1DAA9B1C8(&v80);
              sub_1DAA9B1C8(&v71);
              v7 = v20;
LABEL_23:
              v35 = v6;
              v36 = v8 == v6;
              v6 += 136;
              v37 = v89;
              if (v36)
              {
                goto LABEL_25;
              }

LABEL_24:
              memmove(v8, v35, 0x88uLL);
              goto LABEL_25;
            }

            v38 = sub_1DACBA174();

            sub_1DAA9B1C8(&v80);
            sub_1DAA9B1C8(&v71);
            v7 = v20;
            if ((v38 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {

          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          v7 = v20;
          if ((a6 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        if (!v33)
        {
          goto LABEL_22;
        }

        sub_1DAA9B1C8(&v80);
        sub_1DAA9B1C8(&v71);
        v7 = v20;
        if (a6)
        {
          goto LABEL_23;
        }
      }

      v35 = v7;
      v36 = v8 == v7;
      v7 += 136;
      v37 = v89;
      if (!v36)
      {
        goto LABEL_24;
      }

LABEL_25:
      v8 += 136;
      if (v6 >= v13 || v7 >= v37)
      {
        goto LABEL_70;
      }
    }
  }

  if (a4 != __dst || &__dst[136 * v12] <= a4)
  {
    memmove(a4, __dst, 136 * v12);
  }

  v13 = &v6[136 * v12];
  if (v11 >= 136 && v7 > __src)
  {
    v39 = v7;
    v40 = v89;
    v67 = v6;
    while (1)
    {
      v66 = v39;
      v7 = v39 - 136;
      v41 = v40 - 136;
      v42 = v13;
      while (1)
      {
        v89 = v41;
        v13 = v42;
        v71 = *(v42 - 136);
        v43 = *(v42 - 120);
        v44 = *(v42 - 104);
        v45 = *(v42 - 72);
        v74 = *(v42 - 88);
        v75 = v45;
        v72 = v43;
        v73 = v44;
        v46 = *(v42 - 56);
        v47 = *(v42 - 40);
        v48 = *(v42 - 24);
        v79 = *(v42 - 1);
        v77 = v47;
        v78 = v48;
        v76 = v46;
        v49 = *(v7 + 3);
        v82 = *(v7 + 2);
        v83 = v49;
        v50 = *(v7 + 1);
        v80 = *v7;
        v81 = v50;
        v88 = *(v7 + 16);
        v51 = *(v7 + 7);
        v86 = *(v7 + 6);
        v87 = v51;
        v52 = *(v7 + 5);
        v84 = *(v7 + 4);
        v85 = v52;
        v53 = v73;
        v54 = v82;
        sub_1DAA806E4(&v71, v70);
        sub_1DAA806E4(&v80, v70);
        v55 = sub_1DAC06054(v53, *(&v53 + 1));
        v57 = v56;
        v58 = sub_1DAC06054(v54, *(&v54 + 1));
        if (!v57)
        {
          v6 = v67;
          if (!v59)
          {
            goto LABEL_56;
          }

          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          if ((a6 & 1) == 0)
          {
            break;
          }

          goto LABEL_58;
        }

        if (!v59)
        {

          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          v6 = v67;
          if (a6)
          {
            break;
          }

          goto LABEL_58;
        }

        if (a6)
        {
          v6 = v67;
          if (v58 == v55 && v59 == v57)
          {
            goto LABEL_55;
          }

          v60 = sub_1DACBA174();

          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          if (v60)
          {
            break;
          }

          goto LABEL_58;
        }

        v6 = v67;
        if (v55 == v58 && v57 == v59)
        {
LABEL_55:

LABEL_56:
          sub_1DAA9B1C8(&v80);
          sub_1DAA9B1C8(&v71);
          goto LABEL_58;
        }

        v61 = sub_1DACBA174();

        sub_1DAA9B1C8(&v80);
        sub_1DAA9B1C8(&v71);
        if (v61)
        {
          break;
        }

LABEL_58:
        v62 = v89;
        v42 = v13 - 136;
        if (v89 + 136 < v13 || v89 >= v13 || v89 + 136 != v13)
        {
          memmove(v89, v13 - 136, 0x88uLL);
        }

        v41 = v62 - 136;
        if (v42 <= v6)
        {
          v13 -= 136;
          v7 = v66;
          goto LABEL_72;
        }
      }

      v40 = v89;
      if (v89 + 136 < v66 || v89 >= v66)
      {
        memmove(v89, v7, 0x88uLL);
        v63 = __src;
      }

      else
      {
        v63 = __src;
        if (v89 + 136 != v66)
        {
          memmove(v89, v7, 0x88uLL);
        }
      }

      if (v13 > v6)
      {
        v39 = v7;
        if (v7 > v63)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_72:
  v64 = (v13 - v6) / 136;
  if (v7 != v6 || v7 >= &v6[136 * v64])
  {
    memmove(v7, v6, 136 * v64);
  }

  return 1;
}

uint64_t sub_1DAC0D734(char *a1, char *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;
  sub_1DACB71F4();
  v27 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v27 = sub_1DAC0694C(v27);
  }

  v22 = v7;
  *v7 = v27;
  v9 = v27 + 16;
  v10 = *(v27 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v27;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v27[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __src = (v11 + 136 * *v13);
      v18 = (v11 + 136 * *v16);
      v7 = (v11 + 136 * v17);
      sub_1DACB71F4();
      sub_1DAC0D0B8(__src, v18, v7, a2, a4, a5 & 1);
      v6 = v12;

      if (v12)
      {
        *v22 = v27;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC0D8E8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v232 = a6;
  v222 = a1;
  v241 = sub_1DACB7664();
  v9 = *(*(v241 - 8) + 64);
  MEMORY[0x1EEE9AC00](v241);
  v240 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = MEMORY[0x1E69E7CC0];
  v227 = a3;
  v12 = a3[1];
  if (v12 < 1)
  {
    swift_retain_n();
LABEL_147:
    v216 = *v222;
    if (!*v222)
    {
      goto LABEL_175;
    }

    sub_1DACB71F4();
    v217 = v216;
    v218 = v229;
    sub_1DAC0D734(&v315, v217, v227, a5, v232 & 1);
    v229 = v218;

LABEL_149:
  }

  v221 = a4;
  v239 = (v10 + 8);
  swift_retain_n();
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v316 = a5;
  while (1)
  {
    v15 = v13 + 1;
    v224 = v13;
    if (v13 + 1 >= v12)
    {
      v89 = v13 + 1;
      goto LABEL_52;
    }

    v16 = v13;
    v228 = v14;
    v17 = *v227;
    v18 = *v227 + 136 * v15;
    v297 = *v18;
    v19 = *(v18 + 16);
    v20 = *(v18 + 32);
    v21 = *(v18 + 64);
    v300 = *(v18 + 48);
    v301 = v21;
    v298 = v19;
    v299 = v20;
    v22 = *(v18 + 80);
    v23 = *(v18 + 96);
    v24 = *(v18 + 112);
    v305 = *(v18 + 128);
    v303 = v23;
    v304 = v24;
    v302 = v22;
    v293 = *(v18 + 80);
    v294 = *(v18 + 96);
    v295 = *(v18 + 112);
    v296 = *(v18 + 128);
    v289 = *(v18 + 16);
    v290 = *(v18 + 32);
    v291 = *(v18 + 48);
    v292 = *(v18 + 64);
    v288 = *v18;
    v25 = v17 + 136 * v16;
    v306 = *v25;
    v26 = *(v25 + 16);
    v27 = *(v25 + 32);
    v28 = *(v25 + 48);
    v310 = *(v25 + 64);
    v309 = v28;
    v308 = v27;
    v307 = v26;
    v29 = *(v25 + 80);
    v30 = *(v25 + 96);
    v31 = *(v25 + 112);
    v314 = *(v25 + 128);
    v313 = v31;
    v312 = v30;
    v311 = v29;
    v32 = *(v25 + 112);
    v285 = *(v25 + 96);
    v286 = v32;
    v287 = *(v25 + 128);
    v33 = *(v25 + 48);
    v281 = *(v25 + 32);
    v282 = v33;
    v34 = *(v25 + 80);
    v283 = *(v25 + 64);
    v284 = v34;
    v35 = *(v25 + 16);
    v279 = *v25;
    v280 = v35;
    sub_1DAA806E4(&v297, &v270);
    sub_1DAA806E4(&v306, &v270);
    v36 = v229;
    LODWORD(v233) = sub_1DAC05F38(&v288, &v279, a5, v232 & 1);
    v229 = v36;
    if (v36)
    {
      v267 = v285;
      v268 = v286;
      v269 = v287;
      v263 = v281;
      v264 = v282;
      v265 = v283;
      v266 = v284;
      v261 = v279;
      v262 = v280;
      sub_1DAA9B1C8(&v261);
      v276 = v294;
      v277 = v295;
      v278 = v296;
      v272 = v290;
      v273 = v291;
      v274 = v292;
      v275 = v293;
      v270 = v288;
      v271 = v289;
      sub_1DAA9B1C8(&v270);
      goto LABEL_149;
    }

    v267 = v285;
    v268 = v286;
    v269 = v287;
    v263 = v281;
    v264 = v282;
    v265 = v283;
    v266 = v284;
    v261 = v279;
    v262 = v280;
    sub_1DAA9B1C8(&v261);
    v276 = v294;
    v277 = v295;
    v278 = v296;
    v272 = v290;
    v273 = v291;
    v274 = v292;
    v275 = v293;
    v270 = v288;
    v271 = v289;
    sub_1DAA9B1C8(&v270);
    v37 = v16 + 2;
    if (v16 + 2 >= v12)
    {
      v89 = v16 + 2;
      goto LABEL_43;
    }

    v38 = v17 + 136 * v16 + 272;
    v231 = v12;
    while (1)
    {
      v230 = v37;
      v244[0] = *v38;
      v39 = *(v38 + 16);
      v40 = *(v38 + 32);
      v41 = *(v38 + 64);
      v246 = *(v38 + 48);
      v247 = v41;
      v244[1] = v39;
      v245 = v40;
      v42 = *(v38 + 80);
      v43 = *(v38 + 96);
      v44 = *(v38 + 112);
      v251 = *(v38 + 128);
      v249 = v43;
      v250 = v44;
      v248 = v42;
      v252 = *(v38 - 136);
      v45 = *(v38 - 120);
      v46 = *(v38 - 104);
      v47 = *(v38 - 72);
      v255 = *(v38 - 88);
      v256 = v47;
      v253 = v45;
      v254 = v46;
      v48 = *(v38 - 56);
      v49 = *(v38 - 40);
      v50 = *(v38 - 24);
      v260 = *(v38 - 8);
      v258 = v49;
      v259 = v50;
      v257 = v48;
      v51 = v245;
      v52 = v316[5];
      v53 = v316[6];
      __swift_project_boxed_opaque_existential_1(v316 + 2, v52);
      v54 = *(v53 + 8);
      sub_1DAA806E4(v244, &v242);
      sub_1DAA806E4(&v252, &v242);
      v55 = v54(v51, *(&v51 + 1), 0, v52, v53);
      if (v56)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0;
      }

      if (v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = 0xE000000000000000;
      }

      v59 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v59 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (!v59)
      {

        v58 = sub_1DACB71E4();
        v57 = v51;
      }

      v238 = v58;
      v234 = v254;
      v242 = v57;
      v243 = v58;
      v60 = v240;
      sub_1DACB7614();
      v61 = sub_1DAA642D8();
      v62 = sub_1DACB9B34();
      v64 = v63;
      v65 = *v239;
      v66 = v241;
      (*v239)(v60, v241);

      v242 = v62;
      v243 = v64;
      sub_1DACB7644();
      v237 = v61;
      sub_1DACB9B34();
      v67 = v60;
      v68 = v234;
      v236 = v65;
      v65(v67, v66);
      v69 = *(&v234 + 1);

      v70 = sub_1DACB93B4();
      v72 = v71;

      v73 = v316[5];
      v74 = v316[6];
      __swift_project_boxed_opaque_existential_1(v316 + 2, v73);
      v75 = (*(v74 + 8))(v68, v69, 0, v73, v74);
      if (v76)
      {
        v77 = v75;
      }

      else
      {
        v77 = 0;
      }

      if (v76)
      {
        v78 = v76;
      }

      else
      {
        v78 = 0xE000000000000000;
      }

      v79 = HIBYTE(v78) & 0xF;
      if ((v78 & 0x2000000000000000) == 0)
      {
        v79 = v77 & 0xFFFFFFFFFFFFLL;
      }

      v238 = v72;
      v235 = v70;
      if (!v79)
      {

        v78 = sub_1DACB71E4();
        v77 = v68;
      }

      *&v234 = v78;
      v242 = v77;
      v243 = v78;
      v80 = v240;
      sub_1DACB7614();
      v81 = sub_1DACB9B34();
      v83 = v82;
      *(&v234 + 1) = v82;
      v84 = v241;
      v85 = v236;
      v236(v80, v241);

      v242 = v81;
      v243 = v83;
      sub_1DACB7644();
      sub_1DACB9B34();
      v85(v80, v84);

      v86 = sub_1DACB93B4();
      v88 = v87;

      if (v232)
      {
        v89 = v230;
        v90 = v231;
        if (v86 == v235 && v88 == v238)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v89 = v230;
        v90 = v231;
        if (v235 == v86 && v238 == v88)
        {
LABEL_35:
          v91 = 0;
          goto LABEL_37;
        }
      }

      v91 = sub_1DACBA174();
LABEL_37:

      sub_1DAA9B1C8(&v252);
      sub_1DAA9B1C8(v244);
      if ((v233 ^ v91))
      {
        break;
      }

      v37 = v89 + 1;
      v38 += 136;
      if (v90 == v89 + 1)
      {
        v15 = v89;
        v89 = v90;
        goto LABEL_43;
      }
    }

    v15 = v89 - 1;
LABEL_43:
    v14 = v228;
    if (v233)
    {
      break;
    }

LABEL_52:
    v98 = v227[1];
    if (v89 >= v98)
    {
      goto LABEL_95;
    }

    if (__OFSUB__(v89, v224))
    {
      goto LABEL_167;
    }

    if (v89 - v224 >= v221)
    {
      goto LABEL_95;
    }

    v99 = v224 + v221;
    if (__OFADD__(v224, v221))
    {
      goto LABEL_168;
    }

    if (v99 >= v98)
    {
      v99 = v227[1];
    }

    if (v99 < v224)
    {
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    if (v89 == v99)
    {
      goto LABEL_95;
    }

    v228 = v14;
    v231 = *v227;
    v100 = v231 + 136 * v89;
    v101 = v224 - v89 + 1;
    v223 = v99;
    while (2)
    {
      v230 = v89;
      v225 = v101;
      v226 = v100;
      v233 = v101;
      for (i = v100; ; i -= 136)
      {
        v297 = *i;
        v103 = *(i + 16);
        v104 = *(i + 32);
        v105 = *(i + 64);
        v300 = *(i + 48);
        v301 = v105;
        v298 = v103;
        v299 = v104;
        v106 = *(i + 80);
        v107 = *(i + 96);
        v108 = *(i + 112);
        v305 = *(i + 128);
        v303 = v107;
        v304 = v108;
        v302 = v106;
        v306 = *(i - 136);
        v109 = *(i - 120);
        v110 = *(i - 104);
        v111 = *(i - 88);
        v310 = *(i - 72);
        v309 = v111;
        v308 = v110;
        v307 = v109;
        v112 = *(i - 56);
        v113 = *(i - 40);
        v114 = *(i - 24);
        v314 = *(i - 8);
        v313 = v114;
        v312 = v113;
        v311 = v112;
        v115 = v299;
        v116 = v316[5];
        v117 = v316[6];
        __swift_project_boxed_opaque_existential_1(v316 + 2, v116);
        v118 = *(v117 + 8);
        sub_1DAA806E4(&v297, &v288);
        sub_1DAA806E4(&v306, &v288);
        v119 = v118(v115, *(&v115 + 1), 0, v116, v117);
        if (v120)
        {
          v121 = v119;
        }

        else
        {
          v121 = 0;
        }

        if (v120)
        {
          v122 = v120;
        }

        else
        {
          v122 = 0xE000000000000000;
        }

        v123 = HIBYTE(v122) & 0xF;
        if ((v122 & 0x2000000000000000) == 0)
        {
          v123 = v121 & 0xFFFFFFFFFFFFLL;
        }

        if (!v123)
        {

          v122 = sub_1DACB71E4();
          v121 = v115;
        }

        v238 = v122;
        v234 = v308;
        *&v288 = v121;
        *(&v288 + 1) = v122;
        v124 = v240;
        sub_1DACB7614();
        v125 = sub_1DAA642D8();
        v126 = sub_1DACB9B34();
        v128 = v127;
        v236 = v127;
        v129 = *v239;
        v130 = v241;
        (*v239)(v124, v241);

        *&v288 = v126;
        *(&v288 + 1) = v128;
        sub_1DACB7644();
        v237 = v125;
        sub_1DACB9B34();
        v131 = v130;
        v132 = v234;
        v235 = v129;
        v129(v124, v131);
        v133 = *(&v234 + 1);

        v236 = sub_1DACB93B4();
        v135 = v134;

        v137 = v316[5];
        v136 = v316[6];
        __swift_project_boxed_opaque_existential_1(v316 + 2, v137);
        v138 = (*(v136 + 8))(v132, v133, 0, v137, v136);
        if (v139)
        {
          v140 = v138;
        }

        else
        {
          v140 = 0;
        }

        if (v139)
        {
          v141 = v139;
        }

        else
        {
          v141 = 0xE000000000000000;
        }

        v142 = HIBYTE(v141) & 0xF;
        if ((v141 & 0x2000000000000000) == 0)
        {
          v142 = v140 & 0xFFFFFFFFFFFFLL;
        }

        v238 = v135;
        if (!v142)
        {

          sub_1DACB71E4();
          v140 = v132;
          v141 = v133;
        }

        *&v288 = v140;
        *(&v288 + 1) = v141;
        v143 = v240;
        sub_1DACB7614();
        *(&v234 + 1) = sub_1DACB9B34();
        v145 = v144;
        v146 = v241;
        v147 = v235;
        v235(v143, v241);

        *&v288 = *(&v234 + 1);
        *(&v288 + 1) = v145;
        sub_1DACB7644();
        sub_1DACB9B34();
        v147(v143, v146);

        v148 = sub_1DACB93B4();
        v150 = v149;

        if ((v232 & 1) == 0)
        {
          break;
        }

        if (v148 == v236 && v150 == v238)
        {
          goto LABEL_61;
        }

LABEL_90:
        v151 = sub_1DACBA174();

        sub_1DAA9B1C8(&v306);
        sub_1DAA9B1C8(&v297);
        v152 = v233;
        if ((v151 & 1) == 0)
        {
          goto LABEL_62;
        }

        if (!v231)
        {
          goto LABEL_171;
        }

        v153 = i - 136;
        v293 = *(i + 80);
        v294 = *(i + 96);
        v295 = *(i + 112);
        v296 = *(i + 128);
        v289 = *(i + 16);
        v290 = *(i + 32);
        v291 = *(i + 48);
        v292 = *(i + 64);
        v288 = *i;
        v154 = *(i - 56);
        *(i + 64) = *(i - 72);
        *(i + 80) = v154;
        v155 = *(i - 24);
        *(i + 96) = *(i - 40);
        *(i + 112) = v155;
        *(i + 128) = *(i - 8);
        v156 = *(i - 88);
        *(i + 32) = *(i - 104);
        *(i + 48) = v156;
        v157 = *(i - 120);
        *i = *(i - 136);
        *(i + 16) = v157;
        *(v153 + 64) = v292;
        *(v153 + 80) = v293;
        *(v153 + 96) = v294;
        *(v153 + 112) = v295;
        *(v153 + 128) = v296;
        *(v153 + 16) = v289;
        *(v153 + 32) = v290;
        *(v153 + 48) = v291;
        *v153 = v288;
        if (!v152)
        {
          goto LABEL_62;
        }

        v233 = v152 + 1;
      }

      if (v236 != v148 || v238 != v150)
      {
        goto LABEL_90;
      }

LABEL_61:

      sub_1DAA9B1C8(&v306);
      sub_1DAA9B1C8(&v297);
LABEL_62:
      v89 = v230 + 1;
      v100 = v226 + 136;
      v101 = v225 - 1;
      if (v230 + 1 != v223)
      {
        continue;
      }

      break;
    }

    v89 = v223;
    v14 = v228;
LABEL_95:
    if (v89 < v224)
    {
      goto LABEL_166;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v230 = v89;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1DAADB818(0, *(v14 + 2) + 1, 1, v14);
    }

    v160 = *(v14 + 2);
    v159 = *(v14 + 3);
    v161 = v160 + 1;
    if (v160 >= v159 >> 1)
    {
      v14 = sub_1DAADB818((v159 > 1), v160 + 1, 1, v14);
    }

    *(v14 + 2) = v161;
    v162 = v14 + 32;
    v163 = &v14[16 * v160 + 32];
    v164 = v230;
    *v163 = v224;
    *(v163 + 1) = v164;
    v315 = v14;
    v238 = *v222;
    if (!v238)
    {
      goto LABEL_174;
    }

    if (v160)
    {
      v237 = v14 + 32;
      v228 = v14;
      while (1)
      {
        v165 = v161 - 1;
        if (v161 >= 4)
        {
          break;
        }

        if (v161 == 3)
        {
          v166 = *(v14 + 4);
          v167 = *(v14 + 5);
          v176 = __OFSUB__(v167, v166);
          v168 = v167 - v166;
          v169 = v176;
LABEL_116:
          if (v169)
          {
            goto LABEL_157;
          }

          v182 = &v14[16 * v161];
          v184 = *v182;
          v183 = *(v182 + 1);
          v185 = __OFSUB__(v183, v184);
          v186 = v183 - v184;
          v187 = v185;
          if (v185)
          {
            goto LABEL_160;
          }

          v188 = &v162[16 * v165];
          v190 = *v188;
          v189 = *(v188 + 1);
          v176 = __OFSUB__(v189, v190);
          v191 = v189 - v190;
          if (v176)
          {
            goto LABEL_163;
          }

          if (__OFADD__(v186, v191))
          {
            goto LABEL_164;
          }

          if (v186 + v191 >= v168)
          {
            if (v168 < v191)
            {
              v165 = v161 - 2;
            }

            goto LABEL_137;
          }

          goto LABEL_130;
        }

        v192 = &v14[16 * v161];
        v194 = *v192;
        v193 = *(v192 + 1);
        v176 = __OFSUB__(v193, v194);
        v186 = v193 - v194;
        v187 = v176;
LABEL_130:
        if (v187)
        {
          goto LABEL_159;
        }

        v195 = &v162[16 * v165];
        v197 = *v195;
        v196 = *(v195 + 1);
        v176 = __OFSUB__(v196, v197);
        v198 = v196 - v197;
        if (v176)
        {
          goto LABEL_162;
        }

        if (v198 < v186)
        {
          goto LABEL_3;
        }

LABEL_137:
        if (v165 - 1 >= v161)
        {
          __break(1u);
LABEL_152:
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
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v203 = *v227;
        if (!*v227)
        {
          goto LABEL_172;
        }

        v204 = &v162[16 * v165 - 16];
        v205 = *v204;
        v206 = v165;
        v207 = &v162[16 * v165];
        v208 = *(v207 + 1);
        v209 = (v203 + 136 * *v204);
        v210 = (v203 + 136 * *v207);
        v211 = (v203 + 136 * v208);
        v212 = v316;
        sub_1DACB71F4();
        v213 = v209;
        v214 = v229;
        sub_1DAC0D0B8(v213, v210, v211, v238, v212, v232 & 1);
        v229 = v214;
        if (v214)
        {

          v315 = v228;
          goto LABEL_149;
        }

        if (v208 < v205)
        {
          goto LABEL_152;
        }

        v215 = *(v228 + 2);
        if (v206 > v215)
        {
          goto LABEL_153;
        }

        *v204 = v205;
        *(v204 + 1) = v208;
        if (v206 >= v215)
        {
          goto LABEL_154;
        }

        v161 = v215 - 1;
        memmove(v207, v207 + 16, 16 * (v215 - 1 - v206));
        v14 = v228;
        *(v228 + 2) = v215 - 1;
        v162 = v237;
        if (v215 <= 2)
        {
LABEL_3:
          v315 = v14;
          goto LABEL_4;
        }
      }

      v170 = &v162[16 * v161];
      v171 = *(v170 - 8);
      v172 = *(v170 - 7);
      v176 = __OFSUB__(v172, v171);
      v173 = v172 - v171;
      if (v176)
      {
        goto LABEL_155;
      }

      v175 = *(v170 - 6);
      v174 = *(v170 - 5);
      v176 = __OFSUB__(v174, v175);
      v168 = v174 - v175;
      v169 = v176;
      if (v176)
      {
        goto LABEL_156;
      }

      v177 = &v14[16 * v161];
      v179 = *v177;
      v178 = *(v177 + 1);
      v176 = __OFSUB__(v178, v179);
      v180 = v178 - v179;
      if (v176)
      {
        goto LABEL_158;
      }

      v176 = __OFADD__(v168, v180);
      v181 = v168 + v180;
      if (v176)
      {
        goto LABEL_161;
      }

      if (v181 >= v173)
      {
        v199 = &v162[16 * v165];
        v201 = *v199;
        v200 = *(v199 + 1);
        v176 = __OFSUB__(v200, v201);
        v202 = v200 - v201;
        if (v176)
        {
          goto LABEL_165;
        }

        if (v168 < v202)
        {
          v165 = v161 - 2;
        }

        goto LABEL_137;
      }

      goto LABEL_116;
    }

LABEL_4:
    v12 = v227[1];
    v13 = v230;
    a5 = v316;
    if (v230 >= v12)
    {
      goto LABEL_147;
    }
  }

  v92 = v224;
  if (v89 >= v224)
  {
    if (v224 <= v15)
    {
      v93 = 136 * v89 - 136;
      v94 = 136 * v224;
      v95 = v89;
      do
      {
        if (v92 != --v89)
        {
          v96 = *v227;
          if (!*v227)
          {
            goto LABEL_173;
          }

          v97 = v96 + v93;
          v257 = *(v96 + v94 + 80);
          v258 = *(v96 + v94 + 96);
          v259 = *(v96 + v94 + 112);
          v260 = *(v96 + v94 + 128);
          v253 = *(v96 + v94 + 16);
          v254 = *(v96 + v94 + 32);
          v255 = *(v96 + v94 + 48);
          v256 = *(v96 + v94 + 64);
          v252 = *(v96 + v94);
          memmove((v96 + v94), (v96 + v93), 0x88uLL);
          *(v97 + 80) = v257;
          *(v97 + 96) = v258;
          *(v97 + 112) = v259;
          *(v97 + 128) = v260;
          *(v97 + 16) = v253;
          *(v97 + 32) = v254;
          *(v97 + 48) = v255;
          *(v97 + 64) = v256;
          *v97 = v252;
        }

        ++v92;
        v93 -= 136;
        v94 += 136;
      }

      while (v92 < v89);
      v14 = v228;
      v89 = v95;
    }

    goto LABEL_52;
  }

LABEL_170:
  __break(1u);
LABEL_171:

  __break(1u);
LABEL_172:

  __break(1u);
LABEL_173:

  __break(1u);
LABEL_174:

  __break(1u);
LABEL_175:

  __break(1u);
  return result;
}