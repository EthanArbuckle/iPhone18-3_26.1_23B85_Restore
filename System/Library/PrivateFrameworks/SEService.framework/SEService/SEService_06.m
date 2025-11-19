void sub_1C7C315A8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_1C7C70398(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_1C7C70D18(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_1C7C70398(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
    v11 = sub_1C7C7DAF4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1C7C722EC();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v23[6] + 8 * v11) = v9;
  *(v23[7] + 8 * v11) = v10;
  v24 = v23[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C7C7D794();
    MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
    sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](39, 0xE100000000000000);
    sub_1C7C7D8D4();
    __break(1u);
    return;
  }

  v23[2] = v25;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v27 = *v6;
      v28 = *a3;
      v9 = *(v6 - 1);
      v10 = v27;
      v29 = sub_1C7C70398(v9);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1C7C70D18(v33, 1);
        v34 = *a3;
        v29 = sub_1C7C70398(v9);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v9;
      *(v36[7] + 8 * v29) = v10;
      v37 = v36[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v38;
      v6 += 2;
      if (v4 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1C7C31930(uint64_t a1, char a2, void *a3)
{
  v7 = sub_1C7C7D104();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v17 = v57 - v16;
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_22;
  }

  v57[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v61 = *(v15 + 72);
  v63 = a1;
  sub_1C7C329E4(a1 + v19, v57 - v16, &qword_1EC264448, &qword_1C7C90A20);
  v58 = v8;
  v64 = *(v8 + 32);
  v65 = v7;
  v64(v11, v17, v7);
  v60 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_1C7C703E8(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_1C7C70F8C(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_1C7C703E8(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_1C7C7DAF4();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_1C7C72450();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v68 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    v33 = swift_dynamicCast();
    v34 = v58;
    if ((v33 & 1) == 0)
    {

      (*(v34 + 8))(v11, v65);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v59 = *(v58 + 72);
  v38 = v22;
  v64((v37 + v59 * v22), v11, v65);
  *(v36[7] + 8 * v38) = v20;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v63;
    if (v62 == 1)
    {
LABEL_22:

      return;
    }

    v42 = v63 + v61 + v19;
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_1C7C329E4(v42, v17, &qword_1EC264448, &qword_1C7C90A20);
      v64(v11, v17, v65);
      v20 = *&v17[v60];
      v44 = *a3;
      v45 = sub_1C7C703E8(v11);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v26 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v26)
      {
        goto LABEL_23;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_1C7C70F8C(v49, 1);
        v51 = *a3;
        v45 = sub_1C7C703E8(v11);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v50)
      {
        goto LABEL_9;
      }

      v53 = *a3;
      *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v54 = v45;
      v64((v53[6] + v59 * v45), v11, v65);
      *(v53[7] + 8 * v54) = v20;
      v55 = v53[2];
      v26 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v53[2] = v56;
      v42 += v61;
      v41 = v63;
      if (v62 == v43)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](39, 0xE100000000000000);
  sub_1C7C7D8D4();
  __break(1u);
}

void sub_1C7C31E74(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1C7BDF708(v8, v7, *(a1 + 48));
  if (v5 == 255)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1C7C70278(v8, v7, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_1C7C704D4(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_1C7C70278(v8, v7, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1C7C7DAF4();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v10;
  sub_1C7C71E84();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C7BEA9D8(v8, v7, v5);

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = v22[6] + 24 * v10;
  *v23 = v8;
  *(v23 + 8) = v7;
  *(v23 + 16) = v5;
  *(v22[7] + 8 * v10) = v6;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v39 != 1)
    {
      v16 = (a1 + 88);
      v6 = 1;
      while (v6 < *(a1 + 16))
      {
        v5 = *(v16 - 8);
        v26 = *v16;
        v8 = *(v16 - 3);
        v7 = *(v16 - 2);
        sub_1C7BDF708(v8, v7, *(v16 - 8));
        if (v5 == 255)
        {
          goto LABEL_23;
        }

        v27 = *a3;
        v28 = sub_1C7C70278(v8, v7, v5);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v14 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v14)
        {
          goto LABEL_25;
        }

        a2 = v29;
        if (v27[3] < v32)
        {
          sub_1C7C704D4(v32, 1);
          v33 = *a3;
          v28 = sub_1C7C70278(v8, v7, v5);
          if ((a2 & 1) != (v34 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a2)
        {
          goto LABEL_9;
        }

        v35 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v36 = v35[6] + 24 * v28;
        *v36 = v8;
        *(v36 + 8) = v7;
        *(v36 + 16) = v5;
        *(v35[7] + 8 * v28) = v26;
        v37 = v35[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v6;
        v35[2] = v38;
        v16 += 4;
        if (v39 == v6)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_23:

    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](39, 0xE100000000000000);
  sub_1C7C7D8D4();
  __break(1u);
}

uint64_t sub_1C7C32260(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C7BED6A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C322B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1C7C322BC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  LODWORD(v7) = *(result + 48);
  v8 = *(result + 56);
  v10 = *(result + 32);
  v9 = *(result + 40);
  result = sub_1C7BDF708(v10, v9, v7);
  if (v7 == 255)
  {
    return result;
  }

  v41 = v8;
  v11 = *a3;
  result = sub_1C7C70278(v10, v9, v7);
  v13 = v11[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  LOBYTE(v17) = v12;
  if (v11[3] < v16)
  {
    sub_1C7C704D4(v16, v5 & 1);
    v18 = *a3;
    result = sub_1C7C70278(v10, v9, v7);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    result = sub_1C7C7DAF4();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    v20 = *a3;
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v23 = result;
  sub_1C7C71E84();
  result = v23;
  v20 = *a3;
  if ((v17 & 1) == 0)
  {
LABEL_13:
    v20[(result >> 6) + 8] |= 1 << result;
    v24 = v20[6] + 24 * result;
    *v24 = v10;
    *(v24 + 8) = v9;
    *(v24 + 16) = v7;
    *(v20[7] + 8 * result) = v41;
    v25 = v20[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v20[2] = v26;
      v17 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_9:
  v21 = result;
  v22 = *(v20[7] + 8 * result);
  result = sub_1C7BEA9D8(v10, v9, v7);
  if (__OFADD__(v22, v41))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  *(v20[7] + 8 * v21) = v22 + v41;
  v17 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

LABEL_16:
  v3 = (v6 + 88);
  v42 = a3;
  do
  {
    v6 = *(v3 - 8);
    v5 = *v3;
    v9 = *(v3 - 3);
    v7 = *(v3 - 2);
    result = sub_1C7BDF708(v9, v7, *(v3 - 8));
    if (v6 == 255)
    {
      break;
    }

    v30 = *a3;
    result = sub_1C7C70278(v9, v7, v6);
    v32 = *(v30 + 16);
    v33 = (v31 & 1) == 0;
    v15 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v15)
    {
      goto LABEL_27;
    }

    v10 = v31;
    if (*(v30 + 24) < v34)
    {
      sub_1C7C704D4(v34, 1);
      v35 = *a3;
      result = sub_1C7C70278(v9, v7, v6);
      if ((v10 & 1) != (v36 & 1))
      {
        goto LABEL_6;
      }
    }

    v37 = *a3;
    if (v10)
    {
      v38 = result;
      v39 = *(v37[7] + 8 * result);
      result = sub_1C7BEA9D8(v9, v7, v6);
      v15 = __OFADD__(v39, v5);
      v40 = v39 + v5;
      a3 = v42;
      if (v15)
      {
        goto LABEL_29;
      }

      *(v37[7] + 8 * v38) = v40;
    }

    else
    {
      v37[(result >> 6) + 8] |= 1 << result;
      v27 = v37[6] + 24 * result;
      *v27 = v9;
      *(v27 + 8) = v7;
      *(v27 + 16) = v6;
      *(v37[7] + 8 * result) = v5;
      v28 = v37[2];
      v15 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v15)
      {
        goto LABEL_28;
      }

      v37[2] = v29;
    }

    v3 += 4;
    --v17;
  }

  while (v17);
  return result;
}

unint64_t sub_1C7C325A4()
{
  result = qword_1EC264628;
  if (!qword_1EC264628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264628);
  }

  return result;
}

unint64_t sub_1C7C325F8()
{
  result = qword_1EC264648;
  if (!qword_1EC264648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264640, &qword_1C7C90828);
    sub_1C7C2F3D0(&qword_1EC262F00, 255, MEMORY[0x1E69695A8]);
    sub_1C7C2F3D0(&qword_1EC264658, 255, type metadata accessor for Reservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264648);
  }

  return result;
}

uint64_t sub_1C7C326EC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC264630, &qword_1C7C90820);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C32770()
{
  result = qword_1EC264678;
  if (!qword_1EC264678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264640, &qword_1C7C90828);
    sub_1C7C2F3D0(&qword_1EC264680, 255, MEMORY[0x1E69695A8]);
    sub_1C7C2F3D0(&unk_1EC264688, 255, type metadata accessor for Reservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264678);
  }

  return result;
}

unint64_t sub_1C7C328E0()
{
  result = qword_1EC264698;
  if (!qword_1EC264698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264698);
  }

  return result;
}

unint64_t sub_1C7C32938()
{
  result = qword_1EC2646A0;
  if (!qword_1EC2646A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2646A0);
  }

  return result;
}

unint64_t sub_1C7C32990()
{
  result = qword_1EC2646A8;
  if (!qword_1EC2646A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2646A8);
  }

  return result;
}

uint64_t sub_1C7C329E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C7C32A4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C7C32AB4()
{
  v0 = type metadata accessor for CredentialInternalXPCClient();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C7C90A30;
  *(v3 + 32) = 0x80000001C7C9F050;
  result = sub_1C7C7D1A4();
  qword_1EC288330 = v3;
  return result;
}

id sub_1C7C32B54()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C7C7D194();
    v5 = sub_1C7C7D574();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C7B9A000, v4, v5, "CredentialInternalXPCClient: already connected", v6, 2u);
      MEMORY[0x1CCA6C990](v6, -1, -1);
    }
  }

  else
  {
    v7 = sub_1C7C7D194();
    v8 = sub_1C7C7D574();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C7B9A000, v7, v8, "CredentialInternalXPCClient: Starting new XPC connection", v9, 2u);
      MEMORY[0x1CCA6C990](v9, -1, -1);
    }

    v10 = v1[3];
    v11 = v1[4];
    v12 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v13 = sub_1C7C7D2E4();
    v14 = [v12 initWithMachServiceName:v13 options:4096];

    v15 = v1[2];
    v1[2] = v14;
    v3 = v14;

    if (v3)
    {
      v16 = sub_1C7BFAB64();
      [v3 setRemoteObjectInterface_];

      [v3 setExportedObject_];
      v27 = sub_1C7C333E4;
      v28 = v1;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1C7C32EF8;
      v26 = &block_descriptor_8;
      v17 = _Block_copy(&v23);

      [v3 setInterruptionHandler_];
      _Block_release(v17);
      v27 = sub_1C7C33408;
      v28 = v1;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1C7C32EF8;
      v26 = &block_descriptor_11;
      v18 = _Block_copy(&v23);

      [v3 setInvalidationHandler_];
      _Block_release(v18);
      [v3 activate];
    }

    else
    {
      v19 = sub_1C7C7D194();
      v20 = sub_1C7C7D594();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1C7B9A000, v19, v20, "CredentialInternalXPCClient: Unable to start XPC Connection", v21, 2u);
        MEMORY[0x1CCA6C990](v21, -1, -1);
      }

      sub_1C7C33390();
      swift_allocError();
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_1C7C32EF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1C7C32F3C(uint64_t a1, const char *a2)
{
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D574();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C7B9A000, v4, v5, a2, v6, 2u);
    MEMORY[0x1CCA6C990](v6, -1, -1);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
}

uint64_t sub_1C7C32FFC()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC9SEService27CredentialInternalXPCClient_logger;
  v3 = sub_1C7C7D1B4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t type metadata accessor for CredentialInternalXPCClient()
{
  result = qword_1EDCF51F0;
  if (!qword_1EDCF51F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7C330FC()
{
  result = sub_1C7C7D1B4();
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

uint64_t sub_1C7C331A0(uint64_t a1)
{
  v2 = sub_1C7C32B54();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v7[4] = sub_1C7C33370;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C7C54C88;
  v7[3] = &block_descriptor_1;
  v4 = _Block_copy(v7);

  v5 = [v2 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v4);

  sub_1C7C7D664();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2646E0, &qword_1C7C90AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
  }

  sub_1C7C55DE8(&v8, a1);
  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C7C33390()
{
  result = qword_1EC2646E8;
  if (!qword_1EC2646E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2646E8);
  }

  return result;
}

id SEApplet.__allocating_init(identifier:moduleIdentifier:lifecycleState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = sub_1C7BFAA50(a5);
  v16 = 7;
  if ((v15 & 1) == 0)
  {
    v16 = v14;
  }

  *&v11[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = v16;
  v18.receiver = v11;
  v18.super_class = v5;
  return objc_msgSendSuper2(&v18, sel_init);
}

id SEApplet.init(identifier:moduleIdentifier:lifecycleState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = sub_1C7BFAA50(a5);
  v16 = 7;
  if ((v15 & 1) == 0)
  {
    v16 = v14;
  }

  *&v5[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = v16;
  v18.receiver = v5;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t static SEApplet.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC2646F0 = a1;
  return result;
}

Swift::Void __swiftcall SEApplet.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_identifier);
  v4 = *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_identifier + 8);
  v5 = sub_1C7C7D2E4();
  v6 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier);
  v8 = *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier + 8);
  v9 = sub_1C7C7D2E4();
  v10 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState);
  v12 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeInteger:v11 forKey:v12];
}

unint64_t SEApplet.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1C7C142A8();
  v5 = sub_1C7C7D5E4();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = sub_1C7C7D5E4();
  if (!v7)
  {

LABEL_6:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v7;
  v9 = sub_1C7C7D304();
  v10 = &v2[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
  *v10 = v9;
  v10[1] = v11;
  v12 = sub_1C7C7D304();
  v13 = &v2[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
  *v13 = v12;
  v13[1] = v14;
  v15 = sub_1C7C7D2E4();
  v16 = [a1 decodeIntegerForKey_];

  result = sub_1C7BFAA50(v16);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v19 = result;

    *&v2[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = v19;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v21, sel_init);

    return v20;
  }

  return result;
}

uint64_t SEApplet.description.getter()
{
  v1 = v0;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7C9F0C0);
  MEMORY[0x1CCA6B380](*(v1 + OBJC_IVAR____TtC9SEService8SEApplet_identifier), *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_identifier + 8));
  MEMORY[0x1CCA6B380](0xD000000000000014, 0x80000001C7C9F0E0);
  MEMORY[0x1CCA6B380](*(v1 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier), *(v1 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier + 8));
  MEMORY[0x1CCA6B380](0xD000000000000012, 0x80000001C7C9F100);
  v3 = *(v0 + OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](8194314, 0xE300000000000000);
  return 0;
}

id SEApplet.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C7C33CC8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C6379636566696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C7C33D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C34668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C33D60(uint64_t a1)
{
  v2 = sub_1C7C343C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C33D9C(uint64_t a1)
{
  v2 = sub_1C7C343C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SEApplet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SEApplet.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264718, &qword_1C7C90AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C343C8();
  sub_1C7C7DBA4();
  v11 = *(v3 + OBJC_IVAR____TtC9SEService8SEApplet_identifier);
  v12 = *(v3 + OBJC_IVAR____TtC9SEService8SEApplet_identifier + 8);
  v19 = 0;
  sub_1C7C7DA14();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier);
    v15 = *(v3 + OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier + 8);
    v18 = 1;
    sub_1C7C7DA14();
    v17 = *(v3 + OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState);
    v16[15] = 2;
    sub_1C7C3441C();
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v9, v5);
}

id SEApplet.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264730, &qword_1C7C90AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &ObjectType - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C343C8();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v21) = 0;
    v11 = sub_1C7C7D984();
    v13 = &v1[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v21) = 1;
    v15 = sub_1C7C7D984();
    v16 = &v1[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
    *v16 = v15;
    v16[1] = v17;
    v20 = 2;
    sub_1C7C34470();
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = v21;
    v19.receiver = v1;
    v19.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

id sub_1C7C34354@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SEApplet.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C343C8()
{
  result = qword_1EC264720;
  if (!qword_1EC264720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264720);
  }

  return result;
}

unint64_t sub_1C7C3441C()
{
  result = qword_1EC264728;
  if (!qword_1EC264728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264728);
  }

  return result;
}

unint64_t sub_1C7C34470()
{
  result = qword_1EC264738;
  if (!qword_1EC264738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264738);
  }

  return result;
}

unint64_t sub_1C7C34564()
{
  result = qword_1EC264748;
  if (!qword_1EC264748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264748);
  }

  return result;
}

unint64_t sub_1C7C345BC()
{
  result = qword_1EC264750;
  if (!qword_1EC264750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264750);
  }

  return result;
}

unint64_t sub_1C7C34614()
{
  result = qword_1EC264758;
  if (!qword_1EC264758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264758);
  }

  return result;
}

uint64_t sub_1C7C34668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9F0A0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6379636566696CLL && a2 == 0xEE00657461745365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SERInternalClient.getSESnapshot(token:targetDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 176) = a3;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v7 = type metadata accessor for SERXPCRequest();
  *(v5 + 192) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 81) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1C7C3483C, 0, 0);
}

uint64_t sub_1C7C3483C()
{
  v1 = *(v0 + 81);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  *v2 = v6;
  *(v2 + 8) = v4;
  *(v2 + 16) = v1;
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 16);
  *(v0 + 208) = v7;
  sub_1C7C19710(v6, v4);

  return MEMORY[0x1EEE6DFA0](sub_1C7C348D8, v7, 0);
}

uint64_t sub_1C7C348D8()
{
  v1 = v0[26];
  sub_1C7C35A1C(v0[25], v0 + 8);
  v0[27] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C34968, 0, 0);
}

uint64_t sub_1C7C34968()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 1)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C388FC;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C3890C;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264780, &qword_1C7C90C68);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 200));
  v7 = *(v0 + 200);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C7C34B38()
{
  v27 = v0;
  sub_1C7C21218(v0[25]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[7];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[27];
  swift_getErrorValue();
  v17 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  v19 = sub_1C7C7DB04();
  v21 = v20;

  v22 = v0[25];
  v23 = v0[20];
  *v23 = v19;
  *(v23 + 8) = v21;
  *(v23 + 16) = 257;

  v24 = v0[1];

  return v24();
}

uint64_t SERInternalClient.reclaimUnusedSEMemory(targetDevice:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v5 = type metadata accessor for SERXPCRequest();
  *(v3 + 176) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 81) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C7C34DD0, 0, 0);
}

uint64_t sub_1C7C34DD0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  **(v0 + 184) = *(v0 + 81);
  swift_storeEnumTagMultiPayload();
  v3 = *(v2 + 16);
  *(v0 + 192) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C7C34E4C, v3, 0);
}

uint64_t sub_1C7C34E4C()
{
  v1 = v0[24];
  sub_1C7C35A1C(v0[23], v0 + 8);
  v0[25] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C34EDC, 0, 0);
}

uint64_t sub_1C7C34EDC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 3)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38938;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264780, &qword_1C7C90C68);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 184));
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C7C350AC()
{
  v27 = v0;
  sub_1C7C21218(v0[23]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[7];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[25];
  swift_getErrorValue();
  v17 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  v19 = sub_1C7C7DB04();
  v21 = v20;

  v22 = v0[23];
  v23 = v0[20];
  *v23 = v19;
  *(v23 + 8) = v21;
  *(v23 + 16) = 257;

  v24 = v0[1];

  return v24();
}

uint64_t SERInternalClient.canFit(esimUsage:reclaimUnusedSEMemory:token:targetDevice:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 184) = a5;
  *(v7 + 192) = v6;
  *(v7 + 168) = a2;
  *(v7 + 176) = a4;
  *(v7 + 81) = a3;
  *(v7 + 160) = a1;
  v9 = type metadata accessor for SERXPCRequest();
  *(v7 + 200) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 82) = *a6;

  return MEMORY[0x1EEE6DFA0](sub_1C7C35350, 0, 0);
}

uint64_t sub_1C7C35350()
{
  v1 = *(v0 + 82);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 81);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  *v2 = v8;
  *(v2 + 8) = v6;
  *(v2 + 16) = v7;
  *(v2 + 24) = v4;
  *(v2 + 32) = v1;
  swift_storeEnumTagMultiPayload();
  v9 = *(v5 + 16);
  *(v0 + 216) = v9;
  v10 = v8;
  sub_1C7C19710(v7, v4);

  return MEMORY[0x1EEE6DFA0](sub_1C7C353FC, v9, 0);
}

uint64_t sub_1C7C353FC()
{
  v1 = v0[27];
  sub_1C7C35A1C(v0[26], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C3548C, 0, 0);
}

uint64_t sub_1C7C3548C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 8)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      v1 = (*(v0 + 64) & 1);
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38BE0;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38948;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 208));
  v7 = *(v0 + 208);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t SERInternalClient.canFit(usage:reclaimUnusedSEMemory:token:targetDevice:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  *(v7 + 184) = a5;
  *(v7 + 192) = v6;
  *(v7 + 168) = a2;
  *(v7 + 176) = a4;
  *(v7 + 81) = a3;
  *(v7 + 160) = a1;
  v9 = type metadata accessor for SERXPCRequest();
  *(v7 + 200) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 82) = *a6;

  return MEMORY[0x1EEE6DFA0](sub_1C7C3570C, 0, 0);
}

uint64_t sub_1C7C3570C()
{
  v1 = *(v0 + 82);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 81);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  *v2 = v8;
  *(v2 + 8) = v6;
  *(v2 + 16) = v7;
  *(v2 + 24) = v4;
  *(v2 + 32) = v1;
  swift_storeEnumTagMultiPayload();
  v9 = *(v5 + 16);
  *(v0 + 216) = v9;
  v10 = v8;
  sub_1C7C19710(v7, v4);

  return MEMORY[0x1EEE6DFA0](sub_1C7C357B8, v9, 0);
}

uint64_t sub_1C7C357B8()
{
  v1 = v0[27];
  sub_1C7C35A1C(v0[26], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C35848, 0, 0);
}

uint64_t sub_1C7C35848()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 8)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      v1 = (*(v0 + 64) & 1);
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7B9E994;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BDC;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 208));
  v7 = *(v0 + 208);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C7C35A1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v51 = a2;
  v7 = sub_1C7C7D1E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = (v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SERXPCRequest();
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v50 - v15;
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C7C7D1B4();
  v18 = __swift_project_value_buffer(v17, qword_1EC264768);
  sub_1C7C38A30(a1, v16, type metadata accessor for SERXPCRequest);
  v50[1] = v18;
  v19 = sub_1C7C7D194();
  v20 = sub_1C7C7D5A4();
  v21 = os_log_type_enabled(v19, v20);
  v52 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v50[0] = v5;
    v24 = v23;
    v55 = v23;
    *v22 = 136315138;
    sub_1C7C38A30(v16, v14, type metadata accessor for SERXPCRequest);
    v25 = sub_1C7C7D324();
    v27 = v26;
    sub_1C7C21218(v16);
    v28 = sub_1C7BE42F8(v25, v27, &v55);
    v4 = v3;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1C7B9A000, v19, v20, "SERXPCClient: Sending request %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v29 = v24;
    v5 = v50[0];
    MEMORY[0x1CCA6C990](v29, -1, -1);
    MEMORY[0x1CCA6C990](v22, -1, -1);
  }

  else
  {

    sub_1C7C21218(v16);
  }

  sub_1C7C7D224();
  v30 = *(v5 + 112);
  v31 = *(v5 + 120);

  sub_1C7C7D1D4();
  sub_1C7C7D1C4();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC263558, &unk_1C7C90D70);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C7C8F930;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1C7C7D794();

    v55 = 0xD000000000000016;
    v56 = 0x80000001C7C9F210;
    swift_getErrorValue();
    v33 = sub_1C7C7DB04();
    MEMORY[0x1CCA6B380](v33);

    v34 = v55;
    v35 = v56;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 32) = v34;
    *(v32 + 40) = v35;
    sub_1C7C7DB54();

    return swift_willThrow();
  }

  else
  {
    sub_1C7C38A98();
    sub_1C7C38AF0();
    sub_1C7C7D214();
    v37 = v55;
    v38 = v56;
    v39 = v57;
    sub_1C7C7D204();
    sub_1C7C38B44(v37, v38, v39);
    v40 = sub_1C7C7D194();
    v41 = sub_1C7C7D5A4();
    sub_1C7C212A4(v37, v38, v39);
    v53 = v40;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      v55 = v37;
      *v42 = 136315138;
      v56 = v38;
      v57 = v39;
      sub_1C7C38B44(v37, v38, v39);
      v43 = sub_1C7C7D324();
      v45 = v41;
      v46 = sub_1C7BE42F8(v43, v44, &v54);

      *(v42 + 4) = v46;
      v47 = v53;
      _os_log_impl(&dword_1C7B9A000, v53, v45, "SERXPCClient: Received response %s", v42, 0xCu);
      v48 = v52;
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x1CCA6C990](v48, -1, -1);
      MEMORY[0x1CCA6C990](v42, -1, -1);
    }

    else
    {
    }

    v49 = v51;
    *v51 = v37;
    v49[1] = v38;
    *(v49 + 16) = v39;
  }

  return result;
}

uint64_t sub_1C7C35F8C()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7C35FC4()
{
  type metadata accessor for SERInternalClient();
  v0 = swift_allocObject();
  type metadata accessor for SERXPCClient();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000029;
  *(v1 + 120) = 0x80000001C7C9F1E0;
  *(v0 + 16) = v1;
  off_1EC264760 = v0;
  return result;
}

uint64_t static SERInternalClient.shared.getter()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }
}

uint64_t SERInternalClient.getSESnapshot(token:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C7C24258;

  return SERInternalClient.getSESnapshot(token:targetDevice:)(a1, a2, a3, (v3 + 24));
}

uint64_t SERInternalClient.refresh(dataSource:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for SERXPCRequest();
  v5[25] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C361F0, 0, 0);
}

uint64_t sub_1C7C361F0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  *v1 = v6;
  v1[1] = v5;
  v1[2] = v3;
  swift_storeEnumTagMultiPayload();
  v7 = *(v4 + 16);
  v0[27] = v7;
  v8 = v6;
  sub_1C7BED654(v5, v3);

  return MEMORY[0x1EEE6DFA0](sub_1C7C3628C, v7, 0);
}

uint64_t sub_1C7C3628C()
{
  v1 = v0[27];
  sub_1C7C35A1C(v0[26], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C3631C, 0, 0);
}

uint64_t sub_1C7C3631C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 2)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38BD8;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264780, &qword_1C7C90C68);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 208));
  v7 = *(v0 + 208);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t SERInternalClient.addReservation(type:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a3;
  v7 = type metadata accessor for SERXPCRequest();
  *(v5 + 192) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = *a2;
  *(v5 + 81) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C7C36598, 0, 0);
}

uint64_t sub_1C7C36598()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 81);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v8;
  *(v3 + 24) = v7;
  *(v3 + 32) = v5;
  swift_storeEnumTagMultiPayload();
  v9 = *(v6 + 16);
  *(v0 + 224) = v9;
  sub_1C7BDF708(v1, v2, v8);
  sub_1C7BED654(v7, v5);

  return MEMORY[0x1EEE6DFA0](sub_1C7C36654, v9, 0);
}

uint64_t sub_1C7C36654()
{
  v1 = v0[28];
  sub_1C7C35A1C(v0[25], v0 + 8);
  v0[29] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C366E8, 0, 0);
}

uint64_t sub_1C7C366E8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 4)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38950;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264788, &qword_1C7C90CA8);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 200));
  v7 = *(v0 + 200);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C7C368B8()
{
  v27 = v0;
  sub_1C7C21218(v0[25]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[7];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[29];
  swift_getErrorValue();
  v17 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  v19 = sub_1C7C7DB04();
  v21 = v20;

  v22 = v0[25];
  v23 = v0[20];
  *v23 = v19;
  *(v23 + 8) = v21;
  *(v23 + 16) = 257;

  v24 = v0[1];

  return v24();
}

uint64_t SERInternalClient.editReservation(uuid:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = type metadata accessor for SERXPCRequest();
  v5[25] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C36B4C, 0, 0);
}

uint64_t sub_1C7C36B4C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264790, &qword_1C7C90CB8) + 48));
  v8 = sub_1C7C7D104();
  (*(*(v8 - 8) + 16))(v2, v6, v8);
  *v7 = v5;
  v7[1] = v3;
  swift_storeEnumTagMultiPayload();
  v9 = *(v4 + 16);
  v0[27] = v9;
  sub_1C7BED654(v5, v3);

  return MEMORY[0x1EEE6DFA0](sub_1C7C36C50, v9, 0);
}

uint64_t sub_1C7C36C50()
{
  v1 = v0[27];
  sub_1C7C35A1C(v0[26], v0 + 8);
  v0[28] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C36CE0, 0, 0);
}

uint64_t sub_1C7C36CE0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 5)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38960;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264788, &qword_1C7C90CA8);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 208));
  v7 = *(v0 + 208);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C7C36EB0()
{
  v27 = v0;
  sub_1C7C21218(v0[26]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[7];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[28];
  swift_getErrorValue();
  v17 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  v19 = sub_1C7C7DB04();
  v21 = v20;

  v22 = v0[26];
  v23 = v0[20];
  *v23 = v19;
  *(v23 + 8) = v21;
  *(v23 + 16) = 257;

  v24 = v0[1];

  return v24();
}

uint64_t SERInternalClient.findReservation(uuid:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for SERXPCRequest();
  v3[23] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C37140, 0, 0);
}

uint64_t sub_1C7C37140()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = sub_1C7C7D104();
  (*(*(v5 - 8) + 16))(v2, v3, v5);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 16);
  v0[25] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37200, v6, 0);
}

uint64_t sub_1C7C37200()
{
  v1 = v0[25];
  sub_1C7C35A1C(v0[24], v0 + 8);
  v0[26] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37290, 0, 0);
}

uint64_t sub_1C7C37290()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 6)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38970;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BE4;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264788, &qword_1C7C90CA8);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 192));
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t SERInternalClient.removeReservation(uuid:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = type metadata accessor for SERXPCRequest();
  v3[24] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C374F8, 0, 0);
}

uint64_t sub_1C7C374F8()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = sub_1C7C7D104();
  (*(*(v5 - 8) + 16))(v2, v3, v5);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 16);
  v0[26] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C7C375B8, v6, 0);
}

uint64_t sub_1C7C375B8()
{
  v1 = v0[26];
  sub_1C7C35A1C(v0[25], v0 + 8);
  v0[27] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37648, 0, 0);
}

uint64_t sub_1C7C37648()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (!(v3 >> 4))
  {
    goto LABEL_7;
  }

  v4 = v3 >> 4 == 10 && (v2 | v1) == 0;
  if (!v4 || v3 != 160)
  {
    sub_1C7C7D794();
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = -96;
    v5 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v5);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 0;
  LOBYTE(v3) = 0;
  v6 = 0;
LABEL_8:
  sub_1C7C21218(*(v0 + 200));
  v7 = *(v0 + 200);
  v8 = *(v0 + 168);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v6;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C7C377F0()
{
  v27 = v0;
  sub_1C7C21218(v0[25]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[7];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[27];
  swift_getErrorValue();
  v17 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  v19 = sub_1C7C7DB04();
  v21 = v20;

  v22 = v0[25];
  v23 = v0[21];
  *v23 = v19;
  *(v23 + 8) = v21;
  *(v23 + 16) = 257;

  v24 = v0[1];

  return v24();
}

uint64_t SERInternalClient.reservations()(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for SERXPCRequest();
  v2[22] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C37A7C, 0, 0);
}

uint64_t sub_1C7C37A7C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  swift_storeEnumTagMultiPayload();
  v4 = *(v3 + 16);
  v0[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37AF0, v4, 0);
}

uint64_t sub_1C7C37AF0()
{
  v1 = v0[24];
  sub_1C7C35A1C(v0[23], v0 + 8);
  v0[25] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37B80, 0, 0);
}

uint64_t sub_1C7C37B80()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 7)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C38980;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38990;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264798, &qword_1C7C90CD8);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 184));
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t SERInternalClient.clearReservations()(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = type metadata accessor for SERXPCRequest();
  v2[23] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C37DE4, 0, 0);
}

uint64_t sub_1C7C37DE4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  swift_storeEnumTagMultiPayload();
  v4 = *(v3 + 16);
  v0[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37E58, v4, 0);
}

uint64_t sub_1C7C37E58()
{
  v1 = v0[25];
  sub_1C7C35A1C(v0[24], v0 + 8);
  v0[26] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C37EE8, 0, 0);
}

uint64_t sub_1C7C37EE8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (!(v3 >> 4))
  {
    goto LABEL_10;
  }

  v5 = v3 >> 4 == 10 && v1 == 1 && v2 == 0;
  if (!v5 || v3 != 160)
  {
    sub_1C7C7D794();
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    *(v0 + 88) = xmmword_1C7C90C50;
    *(v0 + 104) = -96;
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v1 = 0;
  v2 = 0;
  LOBYTE(v3) = 0;
  v7 = 0;
LABEL_11:
  sub_1C7C21218(*(v0 + 192));
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  *v9 = v1;
  *(v9 + 8) = v2;
  *(v9 + 16) = v3;
  *(v9 + 17) = v7;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C7C38098()
{
  v27 = v0;
  sub_1C7C21218(v0[24]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[7];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[26];
  swift_getErrorValue();
  v17 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  v19 = sub_1C7C7DB04();
  v21 = v20;

  v22 = v0[24];
  v23 = v0[21];
  *v23 = v19;
  *(v23 + 8) = v21;
  *(v23 + 16) = 257;

  v24 = v0[1];

  return v24();
}

uint64_t SERInternalClient.addReservation(for:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for SERXPCRequest();
  v3[23] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C38328, 0, 0);
}

uint64_t sub_1C7C38328()
{
  v1 = v0[23];
  v2 = v0[22];
  sub_1C7C38A30(v0[21], v0[24], type metadata accessor for SECCredentialConfig);
  swift_storeEnumTagMultiPayload();
  v3 = *(v2 + 16);
  v0[25] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C7C383C8, v3, 0);
}

uint64_t sub_1C7C383C8()
{
  v1 = v0[25];
  sub_1C7C35A1C(v0[24], v0 + 8);
  v0[26] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C38458, 0, 0);
}

uint64_t sub_1C7C38458()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 9)
    {
      v2 = 0;
      LOBYTE(v3) = 0;
      v4 = 0;
      v1 = (*(v0 + 64) & 1);
      goto LABEL_6;
    }

    sub_1C7C7D794();
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C7C389BC;
    *(v5 + 24) = 0;
    *(v0 + 128) = sub_1C7C38BDC;
    *(v0 + 136) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v6 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v6);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    LOBYTE(v3) = 0;
    v1 = *(v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = 1;
LABEL_6:
  sub_1C7C21218(*(v0 + 192));
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  *v8 = v1;
  *(v8 + 8) = v2;
  *(v8 + 16) = v3;
  *(v8 + 17) = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1C7C3862C()
{
  v27 = v0;
  sub_1C7C21218(v0[24]);
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[7];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[26];
  swift_getErrorValue();
  v17 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  v19 = sub_1C7C7DB04();
  v21 = v20;

  v22 = v0[24];
  v23 = v0[20];
  *v23 = v19;
  *(v23 + 8) = v21;
  *(v23 + 16) = 257;

  v24 = v0[1];

  return v24();
}

uint64_t SERInternalClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SERInternalClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C7C3887C()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC264768);
  __swift_project_value_buffer(v0, qword_1EC264768);
  return sub_1C7C7D1A4();
}

id sub_1C7C388FC@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 16;
  return a1;
}

uint64_t sub_1C7C3890C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id sub_1C7C38938@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 48;
  return a1;
}

id sub_1C7C38950@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 64;
  return a1;
}

id sub_1C7C38960@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 80;
  return a1;
}

id sub_1C7C38970@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 96;
  return a1;
}

uint64_t sub_1C7C38980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 112;
}

uint64_t sub_1C7C38990(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1C7C389BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = -112;
  return result;
}

uint64_t sub_1C7C38A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C7C38A98()
{
  result = qword_1EC2647A0;
  if (!qword_1EC2647A0)
  {
    type metadata accessor for SERXPCRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2647A0);
  }

  return result;
}

unint64_t sub_1C7C38AF0()
{
  result = qword_1EC2647A8;
  if (!qword_1EC2647A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2647A8);
  }

  return result;
}

id sub_1C7C38B44(id result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 4;
  if (v3 > 3)
  {
    if ((a3 >> 4) > 5u)
    {
      if (v3 == 6)
      {
        return result;
      }

      if (v3 == 7)
      {
      }
    }

    else if (v3 == 4 || v3 == 5)
    {
      return result;
    }
  }

  else if ((a3 >> 4) > 1u)
  {
    if (v3 == 2 || v3 == 3)
    {
      return result;
    }
  }

  else
  {
    if (a3 >> 4)
    {
      return result;
    }

    return sub_1C7C38BB8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1C7C38BB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t SERXPCRequest.description.getter()
{
  v1 = type metadata accessor for SERXPCRequest();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C7C38CC0(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1C7C7D324();
}

uint64_t type metadata accessor for SERXPCRequest()
{
  result = qword_1EC264B90;
  if (!qword_1EC264B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7C38CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SERXPCRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7C38D64(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7469466E6163;
    v7 = 0x53457469466E6163;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0x7461767265736572;
    if (a1 != 7)
    {
      v9 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x616E534553746567;
    v2 = 0x7265736552646461;
    v3 = 0x6573655274696465;
    if (a1 != 4)
    {
      v3 = 0x65736552646E6966;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x68736572666572;
    if (a1 != 1)
    {
      v4 = 0xD000000000000015;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C7C38F30(uint64_t a1)
{
  v2 = sub_1C7C3B424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C38F6C(uint64_t a1)
{
  v2 = sub_1C7C3B424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C38FA8(uint64_t a1)
{
  v2 = sub_1C7C3B0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C38FE4(uint64_t a1)
{
  v2 = sub_1C7C3B0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39020(uint64_t a1)
{
  v2 = sub_1C7C3B22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3905C(uint64_t a1)
{
  v2 = sub_1C7C3B22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39098(uint64_t a1)
{
  v2 = sub_1C7C3B184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C390D4(uint64_t a1)
{
  v2 = sub_1C7C3B184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39110(uint64_t a1)
{
  v2 = sub_1C7C3B280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3914C(uint64_t a1)
{
  v2 = sub_1C7C3B280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C45A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C391B8(uint64_t a1)
{
  v2 = sub_1C7C3B080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C391F4(uint64_t a1)
{
  v2 = sub_1C7C3B080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39230(uint64_t a1)
{
  v2 = sub_1C7C3B3D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3926C(uint64_t a1)
{
  v2 = sub_1C7C3B3D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C392A8(uint64_t a1)
{
  v2 = sub_1C7C3B37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C392E4(uint64_t a1)
{
  v2 = sub_1C7C3B37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C39320()
{
  if (*v0)
  {
    result = 0x6544746567726174;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C39360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6544746567726174 && a2 == 0xEC00000065636976)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C3943C(uint64_t a1)
{
  v2 = sub_1C7C3B520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C39478(uint64_t a1)
{
  v2 = sub_1C7C3B520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C394D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6544746567726174 && a2 == 0xEC00000065636976)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C39560(uint64_t a1)
{
  v2 = sub_1C7C3B478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3959C(uint64_t a1)
{
  v2 = sub_1C7C3B478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C395D8()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C39604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C396D4(uint64_t a1)
{
  v2 = sub_1C7C3B4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C39710(uint64_t a1)
{
  v2 = sub_1C7C3B4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3974C(uint64_t a1)
{
  v2 = sub_1C7C3B328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C39788(uint64_t a1)
{
  v2 = sub_1C7C3B328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C397C4(uint64_t a1)
{
  v2 = sub_1C7C3B2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C39800(uint64_t a1)
{
  v2 = sub_1C7C3B2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SERXPCRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647B0, &qword_1C7C90D80);
  v158 = *(v2 - 8);
  v159 = v2;
  v3 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v157 = &v127 - v4;
  v155 = type metadata accessor for SECCredentialConfig();
  v5 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647B8, &qword_1C7C90D88);
  v164 = *(v7 - 8);
  v165 = v7;
  v8 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v163 = &v127 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647C0, &qword_1C7C90D90);
  v161 = *(v10 - 8);
  v162 = v10;
  v11 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v160 = &v127 - v12;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647C8, &qword_1C7C90D98);
  v152 = *(v154 - 8);
  v13 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v148 = &v127 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647D0, &qword_1C7C90DA0);
  v144 = *(v146 - 8);
  v15 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v141 = &v127 - v16;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647D8, &qword_1C7C90DA8);
  v149 = *(v150 - 8);
  v17 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v145 = &v127 - v18;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647E0, &qword_1C7C90DB0);
  v142 = *(v143 - 8);
  v19 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v140 = &v127 - v20;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647E8, &qword_1C7C90DB8);
  v151 = *(v153 - 8);
  v21 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v147 = &v127 - v22;
  v23 = sub_1C7C7D104();
  v24 = *(v23 - 8);
  v167 = v23;
  v168 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v137 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v136 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v166 = &v127 - v30;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647F0, &qword_1C7C90DC0);
  v138 = *(v139 - 8);
  v31 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v127 - v32;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2647F8, &qword_1C7C90DC8);
  v130 = *(v131 - 8);
  v33 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v35 = &v127 - v34;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264800, &qword_1C7C90DD0);
  v133 = *(v134 - 8);
  v36 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v127 - v37;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264808, &qword_1C7C90DD8);
  v128 = *(v129 - 8);
  v38 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v40 = &v127 - v39;
  v41 = type metadata accessor for SERXPCRequest();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264810, &unk_1C7C90DE0);
  v171 = *(v45 - 8);
  v172 = v45;
  v46 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v127 - v47;
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C3B080();
  v50 = v48;
  sub_1C7C7DBA4();
  sub_1C7C38CC0(v169, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v99 = v156;
        sub_1C7C3D358(v44, v156, type metadata accessor for SECCredentialConfig);
        LOBYTE(v173) = 11;
        sub_1C7C3B0D4();
        v100 = v157;
        v80 = v172;
        sub_1C7C7D9E4();
        sub_1C7C42BF8(&qword_1EC264828, type metadata accessor for SECCredentialConfig);
        v101 = v159;
        sub_1C7C7DA44();
        (*(v158 + 8))(v100, v101);
        sub_1C7C3B128(v99);
      }

      else if (EnumCaseMultiPayload == 10)
      {
        LOBYTE(v173) = 7;
        sub_1C7C3B2D4();
        v79 = v141;
        v80 = v172;
        sub_1C7C7D9E4();
        (*(v144 + 8))(v79, v146);
      }

      else
      {
        LOBYTE(v173) = 8;
        sub_1C7C3B280();
        v114 = v148;
        v80 = v172;
        sub_1C7C7D9E4();
        (*(v152 + 8))(v114, v154);
      }
    }

    else
    {
      v60 = v170;
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v61 = *v44;
          LODWORD(v168) = v44[8];
          v62 = *(v44 + 2);
          v169 = *(v44 + 3);
          v63 = v44[32];
          LOBYTE(v173) = 9;
          sub_1C7C3B22C();
          v64 = v160;
          v65 = v172;
          sub_1C7C7D9E4();
          v173 = v61;
          v176 = 0;
          type metadata accessor for MemoryUsage();
          sub_1C7C42BF8(&qword_1EC265240, type metadata accessor for MemoryUsage);
          v66 = v162;
          sub_1C7C7DA44();
          if (v60)
          {
            sub_1C7BE49C8(v62, v169);
            v67 = v161;
LABEL_28:
            (*(v67 + 8))(v64, v66);
            (*(v171 + 8))(v50, v65);

            return;
          }

          v170 = v50;
          v117 = v169;
          LOBYTE(v173) = 1;
          v118 = v64;
          sub_1C7C7DA24();
          v173 = v62;
          v174 = v117;
          v122 = v117;
          v176 = 2;
          sub_1C7BED7DC();
          sub_1C7C7DA04();
          v123 = v170;
          LOBYTE(v173) = v63;
          v176 = 3;
          sub_1C7C3B1D8();
          sub_1C7C7DA44();
          v125 = v172;
          sub_1C7BE49C8(v62, v122);

          v126 = v161;
        }

        else
        {
          v61 = *v44;
          LODWORD(v168) = v44[8];
          v105 = *(v44 + 2);
          v169 = *(v44 + 3);
          v106 = v44[32];
          LOBYTE(v173) = 10;
          sub_1C7C3B184();
          v64 = v163;
          v65 = v172;
          sub_1C7C7D9E4();
          v173 = v61;
          v176 = 0;
          type metadata accessor for MemoryUsage();
          sub_1C7C42BF8(&qword_1EC265240, type metadata accessor for MemoryUsage);
          v66 = v165;
          sub_1C7C7DA44();
          if (v60)
          {
            sub_1C7BE49C8(v105, v169);
            v67 = v164;
            goto LABEL_28;
          }

          v170 = v50;
          v121 = v169;
          LOBYTE(v173) = 1;
          v118 = v64;
          sub_1C7C7DA24();
          v173 = v105;
          v174 = v121;
          v124 = v121;
          v176 = 2;
          sub_1C7BED7DC();
          sub_1C7C7DA04();
          v123 = v170;
          LOBYTE(v173) = v106;
          v176 = 3;
          sub_1C7C3B1D8();
          sub_1C7C7DA44();
          v125 = v172;
          sub_1C7BE49C8(v105, v124);

          v126 = v164;
        }

        (*(v126 + 8))(v118, v66);
        (*(v171 + 8))(v123, v125);
        return;
      }

      v87 = v167;
      v88 = v168;
      v89 = v137;
      (*(v168 + 32))();
      LOBYTE(v173) = 6;
      sub_1C7C3B328();
      v90 = v145;
      v80 = v172;
      sub_1C7C7D9E4();
      sub_1C7C42BF8(&qword_1EC264680, MEMORY[0x1E69695A8]);
      v91 = v150;
      sub_1C7C7DA44();
      (*(v149 + 8))(v90, v91);
      (*(v88 + 8))(v89, v87);
    }

    v112 = *(v171 + 8);
    v113 = v50;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    v52 = v170;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v53 = *v44;
        v54 = *(v44 + 1);
        v55 = *(v44 + 2);
        LOBYTE(v173) = 1;
        sub_1C7C3B4CC();
        v56 = v132;
        v57 = v172;
        v58 = v50;
        sub_1C7C7D9E4();
        v173 = v53;
        v176 = 0;
        type metadata accessor for SERDataSource();
        sub_1C7C42BF8(&qword_1EC264888, type metadata accessor for SERDataSource);
        v59 = v134;
        sub_1C7C7DA44();
        if (v52)
        {
          sub_1C7BDF778(v54, v55);
          (*(v133 + 8))(v56, v59);
          (*(v171 + 8))(v58, v57);
        }

        else
        {
          v173 = v54;
          v174 = v55;
          v176 = 1;
          sub_1C7BED7DC();
          sub_1C7C7DA44();

          (*(v133 + 8))(v56, v59);
          (*(v171 + 8))(v58, v57);
          sub_1C7BDF778(v54, v55);
        }
      }

      else
      {
        v102 = *v44;
        LOBYTE(v173) = 2;
        sub_1C7C3B478();
        v103 = v172;
        sub_1C7C7D9E4();
        LOBYTE(v173) = v102;
        sub_1C7C3B1D8();
        v104 = v131;
        sub_1C7C7DA44();
        (*(v130 + 8))(v35, v104);
        (*(v171 + 8))(v48, v103);
      }
    }

    else
    {
      v81 = *v44;
      v82 = *(v44 + 1);
      v83 = v44[16];
      LOBYTE(v173) = 0;
      sub_1C7C3B520();
      v84 = v172;
      v85 = v50;
      sub_1C7C7D9E4();
      v173 = v81;
      v174 = v82;
      v176 = 0;
      sub_1C7BED7DC();
      v86 = v129;
      sub_1C7C7DA04();
      if (v52)
      {
        (*(v128 + 8))(v40, v86);
        (*(v171 + 8))(v85, v84);
        sub_1C7BE49C8(v81, v82);
      }

      else
      {
        LOBYTE(v173) = v83;
        v176 = 1;
        sub_1C7C3B1D8();
        sub_1C7C7DA44();
        sub_1C7BE49C8(v81, v82);
        (*(v128 + 8))(v40, v86);
        (*(v171 + 8))(v85, v84);
      }
    }

    return;
  }

  v68 = v170;
  if (EnumCaseMultiPayload != 3)
  {
    v69 = v48;
    if (EnumCaseMultiPayload == 4)
    {
      v70 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264790, &qword_1C7C90CB8) + 48)];
      v72 = *v70;
      v71 = v70[1];
      v165 = v72;
      v169 = v71;
      v73 = v167;
      v74 = v168;
      v75 = v166;
      (*(v168 + 32))(v166, v44, v167);
      LOBYTE(v173) = 4;
      sub_1C7C3B3D0();
      v76 = v147;
      v77 = v172;
      sub_1C7C7D9E4();
      LOBYTE(v173) = 0;
      sub_1C7C42BF8(&qword_1EC264680, MEMORY[0x1E69695A8]);
      v78 = v153;
      sub_1C7C7DA44();
      if (v68)
      {
        sub_1C7BDF778(v165, v169);
        (*(v151 + 8))(v76, v78);
        (*(v74 + 8))(v75, v73);
        (*(v171 + 8))(v69, v77);
      }

      else
      {
        v170 = v69;
        v119 = v165;
        v120 = v169;
        v173 = v165;
        v174 = v169;
        v176 = 1;
        sub_1C7BED7DC();
        sub_1C7C7DA44();
        (*(v151 + 8))(v76, v78);
        (*(v168 + 8))(v166, v73);
        (*(v171 + 8))(v170, v172);
        sub_1C7BDF778(v119, v120);
      }

      return;
    }

    v107 = v167;
    v108 = v168;
    v109 = v136;
    (*(v168 + 32))(v136, v44, v167);
    LOBYTE(v173) = 5;
    sub_1C7C3B37C();
    v110 = v140;
    v80 = v172;
    sub_1C7C7D9E4();
    sub_1C7C42BF8(&qword_1EC264680, MEMORY[0x1E69695A8]);
    v111 = v143;
    sub_1C7C7DA44();
    (*(v142 + 8))(v110, v111);
    (*(v108 + 8))(v109, v107);
    v112 = *(v171 + 8);
    v113 = v69;
LABEL_32:
    v112(v113, v80);
    return;
  }

  v92 = *v44;
  v93 = *(v44 + 1);
  v94 = v44[16];
  v95 = *(v44 + 3);
  v168 = *(v44 + 4);
  v169 = v95;
  LOBYTE(v173) = 3;
  sub_1C7C3B424();
  v96 = v135;
  v97 = v172;
  sub_1C7C7D9E4();
  v173 = v92;
  v174 = v93;
  v175 = v94;
  v176 = 0;
  sub_1C7BDF724();
  v98 = v139;
  sub_1C7C7DA44();
  if (v68)
  {
    sub_1C7BDF778(v169, v168);
    (*(v138 + 8))(v96, v98);
    (*(v171 + 8))(v50, v97);
    sub_1C7BEA9D8(v92, v93, v94);
  }

  else
  {
    sub_1C7BEA9D8(v92, v93, v94);
    v116 = v168;
    v115 = v169;
    v173 = v169;
    v174 = v168;
    v176 = 1;
    sub_1C7BED7DC();
    sub_1C7C7DA44();
    (*(v138 + 8))(v96, v98);
    (*(v171 + 8))(v50, v172);
    sub_1C7BDF778(v115, v116);
  }
}

unint64_t sub_1C7C3B080()
{
  result = qword_1EC264818;
  if (!qword_1EC264818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264818);
  }

  return result;
}

unint64_t sub_1C7C3B0D4()
{
  result = qword_1EC264820;
  if (!qword_1EC264820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264820);
  }

  return result;
}

uint64_t sub_1C7C3B128(uint64_t a1)
{
  v2 = type metadata accessor for SECCredentialConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7C3B184()
{
  result = qword_1EC264830;
  if (!qword_1EC264830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264830);
  }

  return result;
}

unint64_t sub_1C7C3B1D8()
{
  result = qword_1EC264838;
  if (!qword_1EC264838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264838);
  }

  return result;
}

unint64_t sub_1C7C3B22C()
{
  result = qword_1EC264840;
  if (!qword_1EC264840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264840);
  }

  return result;
}

unint64_t sub_1C7C3B280()
{
  result = qword_1EC264848;
  if (!qword_1EC264848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264848);
  }

  return result;
}

unint64_t sub_1C7C3B2D4()
{
  result = qword_1EC264850;
  if (!qword_1EC264850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264850);
  }

  return result;
}

unint64_t sub_1C7C3B328()
{
  result = qword_1EC264858;
  if (!qword_1EC264858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264858);
  }

  return result;
}

unint64_t sub_1C7C3B37C()
{
  result = qword_1EC264860;
  if (!qword_1EC264860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264860);
  }

  return result;
}

unint64_t sub_1C7C3B3D0()
{
  result = qword_1EC264868;
  if (!qword_1EC264868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264868);
  }

  return result;
}

unint64_t sub_1C7C3B424()
{
  result = qword_1EC264870;
  if (!qword_1EC264870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264870);
  }

  return result;
}

unint64_t sub_1C7C3B478()
{
  result = qword_1EC264878;
  if (!qword_1EC264878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264878);
  }

  return result;
}

unint64_t sub_1C7C3B4CC()
{
  result = qword_1EC264880;
  if (!qword_1EC264880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264880);
  }

  return result;
}

unint64_t sub_1C7C3B520()
{
  result = qword_1EC264890;
  if (!qword_1EC264890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264890);
  }

  return result;
}

uint64_t SERXPCRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264898, &qword_1C7C90DF0);
  v163 = *(v164 - 8);
  v3 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v176 = &v134 - v4;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648A0, &qword_1C7C90DF8);
  v168 = *(v166 - 8);
  v5 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v174 = &v134 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648A8, &qword_1C7C90E00);
  v167 = *(v165 - 8);
  v7 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v182 = &v134 - v8;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648B0, &qword_1C7C90E08);
  v161 = *(v162 - 8);
  v9 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v175 = &v134 - v10;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648B8, &qword_1C7C90E10);
  v155 = *(v156 - 8);
  v11 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v172 = &v134 - v12;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648C0, &qword_1C7C90E18);
  v157 = *(v159 - 8);
  v13 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v181 = &v134 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648C8, &qword_1C7C90E20);
  v153 = *(v154 - 8);
  v15 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v171 = &v134 - v16;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648D0, &qword_1C7C90E28);
  v158 = *(v160 - 8);
  v17 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v173 = &v134 - v18;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648D8, &qword_1C7C90E30);
  v152 = *(v151 - 8);
  v19 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v180 = &v134 - v20;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648E0, &qword_1C7C90E38);
  v147 = *(v148 - 8);
  v21 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v170 = &v134 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648E8, &qword_1C7C90E40);
  v150 = *(v149 - 8);
  v23 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v179 = &v134 - v24;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648F0, &qword_1C7C90E48);
  v145 = *(v146 - 8);
  v25 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v169 = &v134 - v26;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2648F8, &unk_1C7C90E50);
  v183 = *(v185 - 8);
  v27 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v29 = &v134 - v28;
  v178 = type metadata accessor for SERXPCRequest();
  v30 = *(*(v178 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v178);
  v143 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v140 = (&v134 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v139 = (&v134 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v142 = &v134 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v141 = &v134 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v144 = &v134 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v134 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v134 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v134 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v134 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v134 - v55;
  v58 = a1[3];
  v57 = a1[4];
  v187 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_1C7C3B080();
  v184 = v29;
  v59 = v186;
  sub_1C7C7DB94();
  if (v59)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v187);
  }

  v137 = v48;
  v134 = v54;
  v135 = v45;
  v136 = v51;
  v61 = v179;
  v60 = v180;
  v62 = v182;
  v186 = 0;
  v63 = v178;
  v138 = v56;
  v65 = v184;
  v64 = v185;
  v66 = sub_1C7C7D9D4();
  v67 = (2 * *(v66 + 16)) | 1;
  v191 = v66;
  v192 = v66 + 32;
  v193 = 0;
  v194 = v67;
  v68 = sub_1C7BEAAD4();
  if (v68 == 12 || v193 != v194 >> 1)
  {
    v72 = v64;
    v73 = sub_1C7C7D7C4();
    swift_allocError();
    v74 = v65;
    v76 = v75;
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
    *v76 = v63;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v73 - 8) + 104))(v76, *MEMORY[0x1E69E6AF8], v73);
    swift_willThrow();
    (*(v183 + 8))(v74, v72);
    goto LABEL_11;
  }

  if (v68 <= 5u)
  {
    if (v68 <= 2u)
    {
      v69 = v186;
      if (v68)
      {
        if (v68 == 1)
        {
          LOBYTE(v189) = 1;
          sub_1C7C3B4CC();
          v70 = v65;
          sub_1C7C7D944();
          if (!v69)
          {
            type metadata accessor for SERDataSource();
            LOBYTE(v189) = 0;
            sub_1C7C42BF8(&unk_1EC264FC0, type metadata accessor for SERDataSource);
            v71 = v149;
            sub_1C7C7D9B4();
            v120 = v65;
            v121 = v188;
            v196 = 1;
            sub_1C7BED744();
            sub_1C7C7D9B4();
            (*(v150 + 8))(v61, v71);
            (*(v183 + 8))(v120, v64);
            swift_unknownObjectRelease();
            v126 = v136;
            *v136 = v121;
            *(v126 + 8) = v189;
LABEL_50:
            swift_storeEnumTagMultiPayload();
            v124 = v126;
            goto LABEL_51;
          }
        }

        else
        {
          LOBYTE(v189) = 2;
          sub_1C7C3B478();
          v103 = v170;
          v70 = v65;
          sub_1C7C7D944();
          if (!v69)
          {
            sub_1C7C3D3C0();
            v104 = v148;
            sub_1C7C7D9B4();
            (*(v147 + 8))(v103, v104);
            (*(v183 + 8))(v65, v64);
            swift_unknownObjectRelease();
            v126 = v137;
            *v137 = v189;
            goto LABEL_50;
          }
        }

        goto LABEL_37;
      }

      LOBYTE(v189) = 0;
      sub_1C7C3B520();
      v96 = v169;
      v70 = v65;
      sub_1C7C7D944();
      if (v69)
      {
LABEL_37:
        (*(v183 + 8))(v70, v64);
        goto LABEL_11;
      }

      LOBYTE(v188) = 0;
      sub_1C7BED744();
      v97 = v146;
      sub_1C7C7D974();
      v114 = v189;
      v196 = 1;
      sub_1C7C3D3C0();
      sub_1C7C7D9B4();
      (*(v145 + 8))(v96, v97);
      (*(v183 + 8))(v65, v64);
      swift_unknownObjectRelease();
      v125 = v188;
      v133 = v134;
      *v134 = v114;
      *(v133 + 16) = v125;
      goto LABEL_49;
    }

    v87 = v186;
    if (v68 != 3)
    {
      if (v68 == 4)
      {
        LOBYTE(v189) = 4;
        sub_1C7C3B3D0();
        v88 = v173;
        v89 = v65;
        sub_1C7C7D944();
        if (!v87)
        {
          v90 = v64;
          sub_1C7C7D104();
          LOBYTE(v189) = 0;
          sub_1C7C42BF8(&qword_1EC262F00, MEMORY[0x1E69695A8]);
          v91 = v144;
          v92 = v160;
          sub_1C7C7D9B4();
          v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264790, &qword_1C7C90CB8) + 48);
          LOBYTE(v189) = 1;
          sub_1C7BED744();
          sub_1C7C7D9B4();
          v126 = v91;
          (*(v158 + 8))(v88, v92);
          (*(v183 + 8))(v89, v90);
          swift_unknownObjectRelease();
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      LOBYTE(v189) = 5;
      sub_1C7C3B37C();
      v107 = v171;
      v89 = v65;
      sub_1C7C7D944();
      if (!v87)
      {
        sub_1C7C7D104();
        sub_1C7C42BF8(&qword_1EC262F00, MEMORY[0x1E69695A8]);
        v108 = v141;
        v109 = v154;
        sub_1C7C7D9B4();
        (*(v153 + 8))(v107, v109);
        (*(v183 + 8))(v65, v64);
        swift_unknownObjectRelease();
LABEL_48:
        swift_storeEnumTagMultiPayload();
        v124 = v108;
LABEL_51:
        v86 = v138;
        sub_1C7C3D358(v124, v138, type metadata accessor for SERXPCRequest);
        v81 = v177;
        goto LABEL_52;
      }

LABEL_43:
      (*(v183 + 8))(v89, v64);
      goto LABEL_11;
    }

    LOBYTE(v189) = 3;
    sub_1C7C3B424();
    sub_1C7C7D944();
    if (!v87)
    {
      LOBYTE(v188) = 0;
      sub_1C7BE4974();
      v99 = v151;
      sub_1C7C7D9B4();
      v115 = v189;
      v116 = v190;
      v196 = 1;
      sub_1C7BED744();
      sub_1C7C7D9B4();
      (*(v152 + 8))(v60, v99);
      (*(v183 + 8))(v65, v185);
      swift_unknownObjectRelease();
      v133 = v135;
      *v135 = v115;
      *(v133 + 16) = v116;
      *(v133 + 3) = v188;
      goto LABEL_49;
    }

    (*(v183 + 8))(v65, v64);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v187);
  }

  if (v68 > 8u)
  {
    if (v68 == 9)
    {
      LOBYTE(v189) = 9;
      sub_1C7C3B22C();
      v100 = v62;
      v89 = v65;
      v101 = v186;
      sub_1C7C7D944();
      if (v101)
      {
        goto LABEL_43;
      }

      type metadata accessor for MemoryUsage();
      LOBYTE(v189) = 0;
      sub_1C7C42BF8(&qword_1EC264410, type metadata accessor for MemoryUsage);
      v102 = v165;
      sub_1C7C7D9B4();
      v117 = v188;
      LOBYTE(v189) = 1;
      v118 = v100;
      v119 = sub_1C7C7D994();
      v196 = 2;
      sub_1C7BED744();
      sub_1C7C7D974();
      v129 = v189;
      v195 = 3;
      sub_1C7C3D3C0();
      sub_1C7C7D9B4();
      (*(v167 + 8))(v118, v102);
      (*(v183 + 8))(v184, v64);
      swift_unknownObjectRelease();
      v131 = v196;
      v133 = v139;
      *v139 = v117;
      *(v133 + 8) = v119 & 1;
      *(v133 + 1) = v129;
      *(v133 + 32) = v131;
    }

    else
    {
      if (v68 != 10)
      {
        LOBYTE(v189) = 11;
        sub_1C7C3B0D4();
        v110 = v176;
        v89 = v65;
        v111 = v186;
        sub_1C7C7D944();
        if (!v111)
        {
          type metadata accessor for SECCredentialConfig();
          sub_1C7C42BF8(&qword_1EC264900, type metadata accessor for SECCredentialConfig);
          v108 = v143;
          v113 = v164;
          sub_1C7C7D9B4();
          (*(v163 + 8))(v110, v113);
          (*(v183 + 8))(v65, v64);
          swift_unknownObjectRelease();
          goto LABEL_48;
        }

        goto LABEL_43;
      }

      LOBYTE(v189) = 10;
      sub_1C7C3B184();
      v93 = v174;
      v89 = v65;
      v94 = v186;
      sub_1C7C7D944();
      if (v94)
      {
        goto LABEL_43;
      }

      type metadata accessor for MemoryUsage();
      LOBYTE(v189) = 0;
      sub_1C7C42BF8(&qword_1EC264410, type metadata accessor for MemoryUsage);
      v95 = v166;
      sub_1C7C7D9B4();
      v123 = v188;
      LOBYTE(v189) = 1;
      v127 = v93;
      v128 = sub_1C7C7D994();
      v196 = 2;
      sub_1C7BED744();
      sub_1C7C7D974();
      v130 = v189;
      v195 = 3;
      sub_1C7C3D3C0();
      sub_1C7C7D9B4();
      (*(v168 + 8))(v127, v95);
      (*(v183 + 8))(v184, v64);
      swift_unknownObjectRelease();
      v132 = v196;
      v133 = v140;
      *v140 = v123;
      *(v133 + 8) = v128 & 1;
      *(v133 + 1) = v130;
      *(v133 + 32) = v132;
    }

LABEL_49:
    swift_storeEnumTagMultiPayload();
    v124 = v133;
    goto LABEL_51;
  }

  v79 = v65;
  v80 = v64;
  v81 = v177;
  if (v68 == 6)
  {
    LOBYTE(v189) = 6;
    sub_1C7C3B328();
    v98 = v186;
    sub_1C7C7D944();
    if (!v98)
    {
      sub_1C7C7D104();
      sub_1C7C42BF8(&qword_1EC262F00, MEMORY[0x1E69695A8]);
      v108 = v142;
      v112 = v159;
      sub_1C7C7D9B4();
      (*(v157 + 8))(0, v112);
      (*(v183 + 8))(v79, v80);
      swift_unknownObjectRelease();
      goto LABEL_48;
    }

    (*(v183 + 8))(v79, v80);
    goto LABEL_11;
  }

  v82 = v186;
  if (v68 != 7)
  {
    LOBYTE(v189) = 8;
    sub_1C7C3B280();
    v105 = v175;
    v106 = v82;
    sub_1C7C7D944();
    v85 = v183;
    if (!v106)
    {
      (*(v161 + 8))(v105, v162);
      (*(v85 + 8))(v79, v80);
      swift_unknownObjectRelease();
      v86 = v138;
      goto LABEL_46;
    }

LABEL_39:
    (*(v85 + 8))(v79, v80);
    goto LABEL_11;
  }

  LOBYTE(v189) = 7;
  sub_1C7C3B2D4();
  v83 = v172;
  v84 = v82;
  sub_1C7C7D944();
  v85 = v183;
  if (v84)
  {
    goto LABEL_39;
  }

  (*(v155 + 8))(v83, v156);
  (*(v85 + 8))(v79, v80);
  swift_unknownObjectRelease();
  v86 = v138;
LABEL_46:
  swift_storeEnumTagMultiPayload();
LABEL_52:
  sub_1C7C3D358(v86, v81, type metadata accessor for SERXPCRequest);
  return __swift_destroy_boxed_opaque_existential_0Tm(v187);
}

uint64_t sub_1C7C3D358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C7C3D3C0()
{
  result = qword_1EC264908;
  if (!qword_1EC264908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264908);
  }

  return result;
}

unint64_t sub_1C7C3D414(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000011;
    v7 = 0x7469466E6163;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x65736552646E6966;
    v9 = 0xD000000000000011;
    if (a1 != 7)
    {
      v9 = 0x7461767265736572;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x726F727265;
    v2 = 0xD000000000000015;
    v3 = 0x7265736552646461;
    if (a1 != 4)
    {
      v3 = 0x6573655274696465;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x616E534553746567;
    if (a1 != 1)
    {
      v4 = 0x68736572666572;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C7C3D600(uint64_t a1)
{
  v2 = sub_1C7C3EEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D63C(uint64_t a1)
{
  v2 = sub_1C7C3EEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D678(uint64_t a1)
{
  v2 = sub_1C7C3EC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D6B4(uint64_t a1)
{
  v2 = sub_1C7C3EC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D6F0(uint64_t a1)
{
  v2 = sub_1C7C3ECCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D72C(uint64_t a1)
{
  v2 = sub_1C7C3ECCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D768(uint64_t a1)
{
  v2 = sub_1C7C3ED20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D7A4(uint64_t a1)
{
  v2 = sub_1C7C3ED20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C45E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C3D810(uint64_t a1)
{
  v2 = sub_1C7C3EC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D84C(uint64_t a1)
{
  v2 = sub_1C7C3EC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D888(uint64_t a1)
{
  v2 = sub_1C7C3EE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D8C4(uint64_t a1)
{
  v2 = sub_1C7C3EE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D900(uint64_t a1)
{
  v2 = sub_1C7C3F014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D93C(uint64_t a1)
{
  v2 = sub_1C7C3F014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D978(uint64_t a1)
{
  v2 = sub_1C7C3EE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3D9B4(uint64_t a1)
{
  v2 = sub_1C7C3EE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3D9F0(uint64_t a1)
{
  v2 = sub_1C7C3EFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DA2C(uint64_t a1)
{
  v2 = sub_1C7C3EFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3DA68(uint64_t a1)
{
  v2 = sub_1C7C3EF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DAA4(uint64_t a1)
{
  v2 = sub_1C7C3EF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3DAE0(uint64_t a1)
{
  v2 = sub_1C7C3EF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DB1C(uint64_t a1)
{
  v2 = sub_1C7C3EF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3DB58(uint64_t a1)
{
  v2 = sub_1C7C3EDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DB94(uint64_t a1)
{
  v2 = sub_1C7C3EDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C3DBD0(uint64_t a1)
{
  v2 = sub_1C7C3ED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3DC0C(uint64_t a1)
{
  v2 = sub_1C7C3ED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SERXPCResponse.encode(to:)(void *a1)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264910, &qword_1C7C90E60);
  v82 = *(v97 - 8);
  v3 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v69 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264918, &qword_1C7C90E68);
  v81 = *(v95 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v69 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264920, &qword_1C7C90E70);
  v74 = *(v75 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v69 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264928, &qword_1C7C90E78);
  v80 = *(v93 - 8);
  v9 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v69 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264930, &qword_1C7C90E80);
  v71 = *(v72 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v69 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264938, &qword_1C7C90E88);
  v79 = *(v91 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v69 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264940, &qword_1C7C90E90);
  v78 = *(v89 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v69 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264948, &qword_1C7C90E98);
  v76 = *(v87 - 8);
  v17 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v102 = &v69 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264950, &qword_1C7C90EA0);
  v77 = *(v84 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v101 = &v69 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264958, &qword_1C7C90EA8);
  v86 = *(v100 - 8);
  v21 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264960, &qword_1C7C90EB0);
  v85 = *(v23 - 8);
  v24 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v69 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264968, &qword_1C7C90EB8);
  v83 = *(v27 - 8);
  v28 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v69 - v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264970, &qword_1C7C90EC0);
  v103 = *(v106 - 8);
  v31 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v33 = &v69 - v32;
  v34 = v1[1];
  v104 = *v1;
  v98 = v34;
  v35 = *(v1 + 16);
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C3EC24();
  v105 = v33;
  sub_1C7C7DBA4();
  v37 = v35 >> 4;
  if (v35 >> 4 <= 4)
  {
    v43 = v30;
    v44 = v23;
    v46 = v99;
    v45 = v100;
    v48 = v101;
    v47 = v102;
    if (v35 >> 4 > 1)
    {
      if (v37 == 2)
      {
        LOBYTE(v107) = 2;
        sub_1C7C3EF6C();
        v59 = v105;
        v38 = v106;
        sub_1C7C7D9E4();
        v107 = v104;
        type metadata accessor for SEState();
        sub_1C7C42BF8(&qword_1EC264F20, type metadata accessor for SEState);
        sub_1C7C7DA44();
        (*(v86 + 8))(v46, v45);
        v60 = *(v103 + 8);
        v61 = v59;
      }

      else
      {
        v49 = v105;
        v38 = v106;
        if (v37 == 3)
        {
          LOBYTE(v107) = 3;
          sub_1C7C3EF18();
          sub_1C7C7D9E4();
          v107 = v104;
          type metadata accessor for SESnapshot();
          sub_1C7C42BF8(&qword_1EC2649D8, type metadata accessor for SESnapshot);
          v50 = v84;
          sub_1C7C7DA44();
          (*(v77 + 8))(v48, v50);
        }

        else
        {
          LOBYTE(v107) = 4;
          sub_1C7C3EEC4();
          sub_1C7C7D9E4();
          v107 = v104;
          type metadata accessor for Reservation();
          sub_1C7C42BF8(&unk_1EC264688, type metadata accessor for Reservation);
          v62 = v87;
          sub_1C7C7DA44();
          (*(v76 + 8))(v47, v62);
        }

        v60 = *(v103 + 8);
        v61 = v49;
      }

      return v60(v61, v38);
    }

    if (v37)
    {
      LOBYTE(v107) = 1;
      sub_1C7C3EFC0();
      v63 = v105;
      v64 = v106;
      sub_1C7C7D9E4();
      v107 = v104;
      type metadata accessor for SESnapshot();
      sub_1C7C42BF8(&qword_1EC2649D8, type metadata accessor for SESnapshot);
      sub_1C7C7DA44();
      (*(v85 + 8))(v26, v44);
      return (*(v103 + 8))(v63, v64);
    }

    else
    {
      LOBYTE(v107) = 0;
      sub_1C7C3F014();
      v56 = v105;
      v57 = v106;
      sub_1C7C7D9E4();
      v107 = v104;
      v108 = v98;
      v109 = v35;
      sub_1C7C3F068();
      sub_1C7C7DA44();
      (*(v83 + 8))(v43, v27);
      return (*(v103 + 8))(v56, v57);
    }
  }

  else
  {
    if (v35 >> 4 <= 7)
    {
      if (v37 == 5)
      {
        LOBYTE(v107) = 5;
        sub_1C7C3EE70();
        v40 = v88;
        v39 = v105;
        v38 = v106;
        sub_1C7C7D9E4();
        v107 = v104;
        type metadata accessor for Reservation();
        sub_1C7C42BF8(&unk_1EC264688, type metadata accessor for Reservation);
        v41 = v89;
        sub_1C7C7DA44();
        v42 = &v110;
      }

      else
      {
        v39 = v105;
        v38 = v106;
        if (v37 == 6)
        {
          LOBYTE(v107) = 6;
          sub_1C7C3EE1C();
          v40 = v90;
          sub_1C7C7D9E4();
          v107 = v104;
          type metadata accessor for Reservation();
          sub_1C7C42BF8(&unk_1EC264688, type metadata accessor for Reservation);
          v41 = v91;
          sub_1C7C7DA44();
          v42 = &v111;
        }

        else
        {
          LOBYTE(v107) = 8;
          sub_1C7C3ED74();
          v40 = v92;
          sub_1C7C7D9E4();
          v107 = v104;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2649A0, &qword_1C7C90EC8);
          sub_1C7C4067C(&qword_1EC2649A8, &unk_1EC264688);
          v41 = v93;
          sub_1C7C7DA44();
          v42 = &v112;
        }
      }

      (*(*(v42 - 32) + 8))(v40, v41);
      v60 = *(v103 + 8);
      v61 = v39;
      return v60(v61, v38);
    }

    if (v37 == 8)
    {
      LOBYTE(v107) = 10;
      sub_1C7C3ECCC();
      v51 = v94;
      v53 = v105;
      v52 = v106;
      sub_1C7C7D9E4();
      v54 = v95;
      sub_1C7C7DA24();
      v55 = &v113;
      goto LABEL_18;
    }

    if (v37 == 9)
    {
      LOBYTE(v107) = 11;
      sub_1C7C3EC78();
      v51 = v96;
      v53 = v105;
      v52 = v106;
      sub_1C7C7D9E4();
      v54 = v97;
      sub_1C7C7DA24();
      v55 = &v114;
LABEL_18:
      (*(*(v55 - 32) + 8))(v51, v54);
      return (*(v103 + 8))(v53, v52);
    }

    if (v98 | v104 || v35 != 160)
    {
      LOBYTE(v107) = 9;
      sub_1C7C3ED20();
      v68 = v73;
      v67 = v105;
      v66 = v106;
      sub_1C7C7D9E4();
      (*(v74 + 8))(v68, v75);
    }

    else
    {
      LOBYTE(v107) = 7;
      sub_1C7C3EDC8();
      v65 = v70;
      v67 = v105;
      v66 = v106;
      sub_1C7C7D9E4();
      (*(v71 + 8))(v65, v72);
    }

    return (*(v103 + 8))(v67, v66);
  }
}

unint64_t sub_1C7C3EC24()
{
  result = qword_1EC264978;
  if (!qword_1EC264978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264978);
  }

  return result;
}

unint64_t sub_1C7C3EC78()
{
  result = qword_1EC264980;
  if (!qword_1EC264980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264980);
  }

  return result;
}

unint64_t sub_1C7C3ECCC()
{
  result = qword_1EC264988;
  if (!qword_1EC264988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264988);
  }

  return result;
}

unint64_t sub_1C7C3ED20()
{
  result = qword_1EC264990;
  if (!qword_1EC264990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264990);
  }

  return result;
}

unint64_t sub_1C7C3ED74()
{
  result = qword_1EC264998;
  if (!qword_1EC264998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264998);
  }

  return result;
}

unint64_t sub_1C7C3EDC8()
{
  result = qword_1EC2649B0;
  if (!qword_1EC2649B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649B0);
  }

  return result;
}

unint64_t sub_1C7C3EE1C()
{
  result = qword_1EC2649B8;
  if (!qword_1EC2649B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649B8);
  }

  return result;
}

unint64_t sub_1C7C3EE70()
{
  result = qword_1EC2649C0;
  if (!qword_1EC2649C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649C0);
  }

  return result;
}

unint64_t sub_1C7C3EEC4()
{
  result = qword_1EC2649C8;
  if (!qword_1EC2649C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649C8);
  }

  return result;
}

unint64_t sub_1C7C3EF18()
{
  result = qword_1EC2649D0;
  if (!qword_1EC2649D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649D0);
  }

  return result;
}

unint64_t sub_1C7C3EF6C()
{
  result = qword_1EC2649E0;
  if (!qword_1EC2649E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649E0);
  }

  return result;
}

unint64_t sub_1C7C3EFC0()
{
  result = qword_1EC2649E8;
  if (!qword_1EC2649E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649E8);
  }

  return result;
}

unint64_t sub_1C7C3F014()
{
  result = qword_1EC2649F0;
  if (!qword_1EC2649F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649F0);
  }

  return result;
}

unint64_t sub_1C7C3F068()
{
  result = qword_1EC2649F8;
  if (!qword_1EC2649F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2649F8);
  }

  return result;
}

uint64_t SERXPCResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A00, &qword_1C7C90ED0);
  v118 = *(v115 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v122 = &v91 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A08, &qword_1C7C90ED8);
  v116 = *(v117 - 8);
  v5 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v129 = &v91 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A10, &qword_1C7C90EE0);
  v111 = *(v112 - 8);
  v7 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v128 = &v91 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A18, &qword_1C7C90EE8);
  v113 = *(v114 - 8);
  v9 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v123 = &v91 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A20, &qword_1C7C90EF0);
  v107 = *(v109 - 8);
  v11 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v121 = &v91 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A28, &qword_1C7C90EF8);
  v110 = *(v108 - 8);
  v13 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v127 = &v91 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A30, &qword_1C7C90F00);
  v105 = *(v106 - 8);
  v15 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v120 = &v91 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A38, &qword_1C7C90F08);
  v103 = *(v104 - 8);
  v17 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v126 = &v91 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A40, &qword_1C7C90F10);
  v101 = *(v102 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v125 = &v91 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A48, &qword_1C7C90F18);
  v99 = *(v100 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v119 = &v91 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A50, &qword_1C7C90F20);
  v97 = *(v98 - 8);
  v23 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v25 = &v91 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A58, &qword_1C7C90F28);
  v96 = *(v26 - 8);
  v27 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v91 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A60, &qword_1C7C90F30);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v91 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v138 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1C7C3EC24();
  v37 = v130;
  sub_1C7C7DB94();
  if (!v37)
  {
    v93 = v29;
    v92 = v26;
    v94 = v25;
    v38 = v125;
    v39 = v126;
    v40 = v127;
    v41 = v128;
    v42 = v129;
    v95 = 0;
    v130 = v31;
    v43 = sub_1C7C7D9D4();
    v44 = (2 * *(v43 + 16)) | 1;
    v134 = v43;
    v135 = v43 + 32;
    v136 = 0;
    v137 = v44;
    v45 = sub_1C7BEAAD4();
    if (v45 == 12 || v136 != v137 >> 1)
    {
      v49 = v34;
      v50 = sub_1C7C7D7C4();
      swift_allocError();
      v52 = v51;
      v53 = v30;
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
      *v52 = &type metadata for SERXPCResponse;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
      swift_willThrow();
      (*(v130 + 8))(v49, v53);
      goto LABEL_12;
    }

    if (v45 <= 5u)
    {
      if (v45 > 2u)
      {
        v61 = v130;
        v62 = v95;
        if (v45 == 3)
        {
          LOBYTE(v131) = 3;
          sub_1C7C3EF18();
          v73 = v38;
          sub_1C7C7D944();
          if (!v62)
          {
            type metadata accessor for SESnapshot();
            sub_1C7C42BF8(&qword_1EC264A70, type metadata accessor for SESnapshot);
            v74 = v102;
            sub_1C7C7D9B4();
            (*(v101 + 8))(v73, v74);
            (*(v61 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v86 = 0;
            v87 = v131;
            v88 = 48;
            goto LABEL_49;
          }
        }

        else if (v45 == 4)
        {
          LOBYTE(v131) = 4;
          sub_1C7C3EEC4();
          sub_1C7C7D944();
          if (!v62)
          {
            type metadata accessor for Reservation();
            sub_1C7C42BF8(&qword_1EC264658, type metadata accessor for Reservation);
            v63 = v104;
            sub_1C7C7D9B4();
            (*(v103 + 8))(v39, v63);
            (*(v61 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v86 = 0;
            v87 = v131;
            v88 = 64;
            goto LABEL_49;
          }
        }

        else
        {
          LOBYTE(v131) = 5;
          sub_1C7C3EE70();
          v78 = v120;
          sub_1C7C7D944();
          if (!v62)
          {
            type metadata accessor for Reservation();
            sub_1C7C42BF8(&qword_1EC264658, type metadata accessor for Reservation);
            v84 = v106;
            sub_1C7C7D9B4();
            (*(v105 + 8))(v78, v84);
            (*(v61 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v86 = 0;
            v87 = v131;
            v88 = 80;
            goto LABEL_49;
          }
        }

        (*(v61 + 8))(v34, v30);
      }

      else
      {
        v46 = v95;
        if (v45)
        {
          if (v45 == 1)
          {
            LOBYTE(v131) = 1;
            sub_1C7C3EFC0();
            v47 = v94;
            sub_1C7C7D944();
            if (!v46)
            {
              type metadata accessor for SESnapshot();
              sub_1C7C42BF8(&qword_1EC264A70, type metadata accessor for SESnapshot);
              v48 = v98;
              sub_1C7C7D9B4();
              (*(v97 + 8))(v47, v48);
              (*(v130 + 8))(v34, v30);
              swift_unknownObjectRelease();
              v86 = 0;
              v87 = v131;
              v88 = 16;
LABEL_49:
              v57 = v124;
              goto LABEL_50;
            }
          }

          else
          {
            LOBYTE(v131) = 2;
            sub_1C7C3EF6C();
            v76 = v119;
            sub_1C7C7D944();
            if (!v46)
            {
              type metadata accessor for SEState();
              sub_1C7C42BF8(&qword_1EC264A78, type metadata accessor for SEState);
              v81 = v100;
              sub_1C7C7D9B4();
              v82 = v130;
              (*(v99 + 8))(v76, v81);
              (*(v82 + 8))(v34, v30);
              swift_unknownObjectRelease();
              v86 = 0;
              v87 = v131;
              v88 = 32;
              goto LABEL_49;
            }
          }
        }

        else
        {
          LOBYTE(v131) = 0;
          sub_1C7C3F014();
          v68 = v93;
          sub_1C7C7D944();
          if (!v46)
          {
            sub_1C7C40718();
            v69 = v92;
            sub_1C7C7D9B4();
            (*(v96 + 8))(v68, v69);
            (*(v130 + 8))(v34, v30);
            swift_unknownObjectRelease();
            v87 = v131;
            v86 = v132;
            v88 = v133;
            goto LABEL_49;
          }
        }

        (*(v130 + 8))(v34, v30);
      }

      goto LABEL_12;
    }

    v56 = v34;
    if (v45 <= 8u)
    {
      v57 = v124;
      v58 = v130;
      if (v45 == 6)
      {
        LOBYTE(v131) = 6;
        sub_1C7C3EE1C();
        v70 = v56;
        v71 = v95;
        sub_1C7C7D944();
        if (!v71)
        {
          type metadata accessor for Reservation();
          sub_1C7C42BF8(&qword_1EC264658, type metadata accessor for Reservation);
          v72 = v108;
          sub_1C7C7D9B4();
          (*(v110 + 8))(v40, v72);
          (*(v58 + 8))(v56, v30);
          swift_unknownObjectRelease();
          v86 = 0;
          v87 = v131;
          v88 = 96;
          goto LABEL_49;
        }
      }

      else
      {
        v59 = v95;
        if (v45 == 7)
        {
          LOBYTE(v131) = 7;
          sub_1C7C3EDC8();
          v60 = v121;
          sub_1C7C7D944();
          if (v59)
          {
            (*(v58 + 8))(v56, v30);
LABEL_12:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0Tm(v138);
          }

          (*(v107 + 8))(v60, v109);
          (*(v58 + 8))(v56, v30);
          swift_unknownObjectRelease();
          v87 = 0;
          v86 = 0;
          v88 = -96;
          goto LABEL_50;
        }

        LOBYTE(v131) = 8;
        sub_1C7C3ED74();
        v77 = v123;
        v70 = v56;
        sub_1C7C7D944();
        if (!v59)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2649A0, &qword_1C7C90EC8);
          sub_1C7C4067C(&qword_1EC264A68, &qword_1EC264658);
          v83 = v114;
          sub_1C7C7D9B4();
          (*(v113 + 8))(v77, v83);
          (*(v58 + 8))(v56, v30);
          swift_unknownObjectRelease();
          v86 = 0;
          v87 = v131;
          v88 = 112;
          goto LABEL_49;
        }
      }

      (*(v58 + 8))(v70, v30);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v138);
    }

    v57 = v124;
    v64 = v130;
    if (v45 == 9)
    {
      LOBYTE(v131) = 9;
      sub_1C7C3ED20();
      v75 = v95;
      sub_1C7C7D944();
      if (v75)
      {
        (*(v64 + 8))(v56, v30);
        goto LABEL_12;
      }

      (*(v111 + 8))(v41, v112);
      (*(v64 + 8))(v56, v30);
      swift_unknownObjectRelease();
      v86 = 0;
      v88 = -96;
      v87 = 1;
LABEL_50:
      *v57 = v87;
      *(v57 + 8) = v86;
      *(v57 + 16) = v88;
      return __swift_destroy_boxed_opaque_existential_0Tm(v138);
    }

    if (v45 == 10)
    {
      LOBYTE(v131) = 10;
      sub_1C7C3ECCC();
      v65 = v56;
      v66 = v95;
      sub_1C7C7D944();
      if (!v66)
      {
        v67 = v117;
        v89 = sub_1C7C7D994();
        (*(v116 + 8))(v42, v67);
        (*(v64 + 8))(v56, v30);
        swift_unknownObjectRelease();
        v86 = 0;
        v87 = v89 & 1;
        v88 = 0x80;
        goto LABEL_49;
      }
    }

    else
    {
      LOBYTE(v131) = 11;
      sub_1C7C3EC78();
      v79 = v122;
      v65 = v56;
      v80 = v95;
      sub_1C7C7D944();
      if (!v80)
      {
        v85 = v115;
        v90 = sub_1C7C7D994();
        (*(v118 + 8))(v79, v85);
        (*(v64 + 8))(v56, v30);
        swift_unknownObjectRelease();
        v86 = 0;
        v87 = v90 & 1;
        v88 = -112;
        goto LABEL_49;
      }
    }

    (*(v64 + 8))(v65, v30);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v138);
}

uint64_t sub_1C7C4067C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2649A0, &qword_1C7C90EC8);
    sub_1C7C42BF8(a2, type metadata accessor for Reservation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C40718()
{
  result = qword_1EC264A80;
  if (!qword_1EC264A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264A80);
  }

  return result;
}

unint64_t sub_1C7C4079C()
{
  v1 = *v0;
  v2 = 0x456E776F6E6B6E75;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x724574616D726F66;
  }

  v4 = 0x6C616E7265746E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D73694D65707974;
  if (v1 != 1)
  {
    v5 = 0x726F727245637078;
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

uint64_t sub_1C7C408A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C46250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C408D0(uint64_t a1)
{
  v2 = sub_1C7C41470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C4090C(uint64_t a1)
{
  v2 = sub_1C7C41470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40948(uint64_t a1)
{
  v2 = sub_1C7C4156C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40984(uint64_t a1)
{
  v2 = sub_1C7C4156C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C409C0(uint64_t a1)
{
  v2 = sub_1C7C414C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C409FC(uint64_t a1)
{
  v2 = sub_1C7C414C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40A38(uint64_t a1)
{
  v2 = sub_1C7C415C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40A74(uint64_t a1)
{
  v2 = sub_1C7C415C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40AB0(uint64_t a1)
{
  v2 = sub_1C7C41518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40AEC(uint64_t a1)
{
  v2 = sub_1C7C41518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40B28(uint64_t a1)
{
  v2 = sub_1C7C41668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40B64(uint64_t a1)
{
  v2 = sub_1C7C41668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40BA0(uint64_t a1)
{
  v2 = sub_1C7C416BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40BDC(uint64_t a1)
{
  v2 = sub_1C7C416BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C40C18(uint64_t a1)
{
  v2 = sub_1C7C41614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C40C54(uint64_t a1)
{
  v2 = sub_1C7C41614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SERXPCInternalErrors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A88, &qword_1C7C90F38);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A90, &qword_1C7C90F40);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264A98, &qword_1C7C90F48);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v54 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AA0, &qword_1C7C90F50);
  v56 = *(v70 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AA8, &qword_1C7C90F58);
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AB0, &qword_1C7C90F60);
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AB8, &qword_1C7C90F68);
  v54 = *(v55 - 8);
  v22 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v24 = &v54 - v23;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264AC0, &qword_1C7C90F70);
  v75 = *(v74 - 8);
  v25 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v27 = &v54 - v26;
  v28 = v1[1];
  v71 = *v1;
  v72 = v28;
  v29 = *(v1 + 16);
  v30 = a1;
  v32 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(v30, v32);
  sub_1C7C41470();
  v73 = v27;
  sub_1C7C7DBA4();
  if (v29 > 2)
  {
    if (v29 > 4)
    {
      v33 = v74;
      v34 = v73;
      if (v29 != 5)
      {
        v76 = 0;
        sub_1C7C416BC();
        sub_1C7C7D9E4();
        v49 = *(v54 + 8);
        v50 = v24;
        v53 = v55;
        goto LABEL_16;
      }

      v82 = 6;
      sub_1C7C414C4();
      v48 = v63;
      sub_1C7C7D9E4();
      v36 = v65;
      sub_1C7C7DA14();
      v49 = *(v64 + 8);
      v50 = v48;
    }

    else
    {
      v33 = v74;
      v34 = v73;
      if (v29 == 3)
      {
        v80 = 4;
        sub_1C7C4156C();
        v35 = v57;
        sub_1C7C7D9E4();
        v36 = v59;
        sub_1C7C7DA14();
        v37 = v58;
      }

      else
      {
        v81 = 5;
        sub_1C7C41518();
        v35 = v60;
        sub_1C7C7D9E4();
        v36 = v62;
        sub_1C7C7DA14();
        v37 = v61;
      }

      v49 = *(v37 + 8);
      v50 = v35;
    }

    v53 = v36;
LABEL_16:
    v49(v50, v53);
    return (*(v75 + 8))(v34, v33);
  }

  v39 = v66;
  v38 = v67;
  v40 = v17;
  v42 = v68;
  v41 = v69;
  v43 = v70;
  if (!v29)
  {
    v77 = 1;
    sub_1C7C41668();
    v51 = v73;
    v52 = v74;
    sub_1C7C7D9E4();
    sub_1C7C7DA14();
    (*(v39 + 8))(v21, v18);
    return (*(v75 + 8))(v51, v52);
  }

  if (v29 == 1)
  {
    v78 = 2;
    sub_1C7C41614();
    v44 = v40;
    v45 = v73;
    v46 = v74;
    sub_1C7C7D9E4();
    sub_1C7C7DA14();
    (*(v38 + 8))(v44, v42);
    return (*(v75 + 8))(v45, v46);
  }

  v79 = 3;
  sub_1C7C415C0();
  v34 = v73;
  v33 = v74;
  sub_1C7C7D9E4();
  sub_1C7C7DA14();
  (*(v56 + 8))(v41, v43);
  return (*(v75 + 8))(v34, v33);
}

unint64_t sub_1C7C41470()
{
  result = qword_1EC264AC8;
  if (!qword_1EC264AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AC8);
  }

  return result;
}

unint64_t sub_1C7C414C4()
{
  result = qword_1EC264AD0;
  if (!qword_1EC264AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AD0);
  }

  return result;
}

unint64_t sub_1C7C41518()
{
  result = qword_1EC264AD8;
  if (!qword_1EC264AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AD8);
  }

  return result;
}

unint64_t sub_1C7C4156C()
{
  result = qword_1EC264AE0;
  if (!qword_1EC264AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AE0);
  }

  return result;
}

unint64_t sub_1C7C415C0()
{
  result = qword_1EC264AE8;
  if (!qword_1EC264AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AE8);
  }

  return result;
}

unint64_t sub_1C7C41614()
{
  result = qword_1EC264AF0;
  if (!qword_1EC264AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AF0);
  }

  return result;
}

unint64_t sub_1C7C41668()
{
  result = qword_1EC264AF8;
  if (!qword_1EC264AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264AF8);
  }

  return result;
}

unint64_t sub_1C7C416BC()
{
  result = qword_1EC264B00;
  if (!qword_1EC264B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264B00);
  }

  return result;
}

uint64_t SERXPCInternalErrors.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B08, &qword_1C7C90F78);
  v110 = *(v107 - 8);
  v3 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v116 = &v94 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B10, &qword_1C7C90F80);
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B18, &qword_1C7C90F88);
  v105 = *(v8 - 8);
  v106 = v8;
  v9 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B20, &qword_1C7C90F90);
  v103 = *(v11 - 8);
  v104 = v11;
  v12 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v94 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B28, &qword_1C7C90F98);
  v101 = *(v102 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v113 = &v94 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B30, &qword_1C7C90FA0);
  v99 = *(v100 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v18 = &v94 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B38, &qword_1C7C90FA8);
  v98 = *(v19 - 8);
  v20 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v94 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B40, &qword_1C7C90FB0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v94 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1C7C41470();
  v30 = v118;
  sub_1C7C7DB94();
  if (v30)
  {
    goto LABEL_12;
  }

  v97 = 0;
  v31 = v22;
  v95 = v19;
  v96 = v18;
  v33 = v113;
  v32 = v114;
  v35 = v115;
  v34 = v116;
  v118 = v24;
  v36 = v23;
  v37 = sub_1C7C7D9D4();
  v38 = (2 * *(v37 + 16)) | 1;
  v119 = v37;
  v120 = v37 + 32;
  v121 = 0;
  v122 = v38;
  v39 = sub_1C7BDF210();
  if (v39 == 7 || v121 != v122 >> 1)
  {
    v46 = sub_1C7C7D7C4();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30) + 48);
    *v48 = &type metadata for SERXPCInternalErrors;
    v50 = v36;
    sub_1C7C7D954();
    sub_1C7C7D7B4();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v39 <= 2u)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        v123 = 1;
        sub_1C7C41668();
        v53 = v96;
        v54 = v97;
        sub_1C7C7D944();
        if (v54)
        {
          (*(v118 + 8))(v27, v23);
          goto LABEL_11;
        }

        v70 = v100;
        v74 = sub_1C7C7D984();
        v75 = v53;
        v77 = v76;
        (*(v99 + 8))(v75, v70);
        (*(v118 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v81 = v77;
        v82 = v74;
        v83 = 0;
LABEL_32:
        v51 = v117;
        v55 = v112;
LABEL_35:
        *v55 = v82;
        *(v55 + 8) = v81;
        *(v55 + 16) = v83;
        return __swift_destroy_boxed_opaque_existential_0Tm(v51);
      }

      v123 = 2;
      sub_1C7C41614();
      v61 = v33;
      v50 = v23;
      v62 = v97;
      sub_1C7C7D944();
      v55 = v112;
      if (!v62)
      {
        v63 = v102;
        v64 = sub_1C7C7D984();
        v65 = v118;
        v71 = v64;
        v73 = v72;
        (*(v101 + 8))(v61, v63);
        (*(v65 + 8))(v27, v50);
        swift_unknownObjectRelease();
        v81 = v73;
        v82 = v71;
        v83 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v123 = 0;
      sub_1C7C416BC();
      v50 = v23;
      v60 = v97;
      sub_1C7C7D944();
      if (!v60)
      {
        (*(v98 + 8))(v31, v95);
        (*(v118 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v82 = 0;
        v81 = 0;
        v83 = 6;
        goto LABEL_32;
      }
    }

LABEL_10:
    (*(v118 + 8))(v27, v50);
    goto LABEL_11;
  }

  if (v39 <= 4u)
  {
    v40 = v112;
    v41 = v118;
    v42 = v36;
    v43 = v97;
    if (v39 == 3)
    {
      v123 = 3;
      sub_1C7C415C0();
      v44 = v32;
      sub_1C7C7D944();
      if (!v43)
      {
        v45 = v104;
        v78 = sub_1C7C7D984();
        v80 = v79;
        (*(v103 + 8))(v44, v45);
        (*(v41 + 8))(v27, v42);
        swift_unknownObjectRelease();
        v81 = v80;
        v82 = v78;
        v83 = 2;
LABEL_33:
        v51 = v117;
        v55 = v40;
        goto LABEL_35;
      }
    }

    else
    {
      v123 = 4;
      sub_1C7C4156C();
      v66 = v35;
      sub_1C7C7D944();
      if (!v43)
      {
        v67 = v106;
        v87 = sub_1C7C7D984();
        v89 = v88;
        (*(v105 + 8))(v66, v67);
        (*(v41 + 8))(v27, v42);
        swift_unknownObjectRelease();
        v81 = v89;
        v82 = v87;
        v83 = 3;
        goto LABEL_33;
      }
    }

    (*(v41 + 8))(v27, v42);
    goto LABEL_11;
  }

  v55 = v112;
  v56 = v118;
  v57 = v97;
  if (v39 == 5)
  {
    v123 = 5;
    sub_1C7C41518();
    v58 = v111;
    sub_1C7C7D944();
    if (!v57)
    {
      v59 = v109;
      v84 = sub_1C7C7D984();
      v86 = v85;
      (*(v108 + 8))(v58, v59);
      (*(v56 + 8))(v27, v36);
      swift_unknownObjectRelease();
      v81 = v86;
      v82 = v84;
      v83 = 4;
LABEL_34:
      v51 = v117;
      goto LABEL_35;
    }
  }

  else
  {
    v123 = 6;
    sub_1C7C414C4();
    sub_1C7C7D944();
    if (!v57)
    {
      v68 = v107;
      v69 = sub_1C7C7D984();
      v90 = v34;
      v91 = v69;
      v93 = v92;
      (*(v110 + 8))(v90, v68);
      (*(v56 + 8))(v27, v36);
      swift_unknownObjectRelease();
      v81 = v93;
      v82 = v91;
      v83 = 5;
      goto LABEL_34;
    }
  }

  (*(v56 + 8))(v27, v36);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v51 = v117;
  return __swift_destroy_boxed_opaque_existential_0Tm(v51);
}

uint64_t SERState.init(reservationState:deviceCapability:credentialSizes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_1C7C423A4()
{
  v1 = 0x69746E6564657263;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C7C42414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C464B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C4243C(uint64_t a1)
{
  v2 = sub_1C7C42724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C42478(uint64_t a1)
{
  v2 = sub_1C7C42724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SERState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B48, &qword_1C7C90FB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v16 = *(v1 + 16);
  v17 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C42724();
  v12 = v10;
  sub_1C7C7DBA4();
  v19 = v12;
  v18 = 0;
  type metadata accessor for ReservationState();
  sub_1C7C42BF8(&unk_1EC264F30, type metadata accessor for ReservationState);
  sub_1C7C7DA44();

  if (!v2)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    type metadata accessor for DeviceCapability();
    sub_1C7C42BF8(&unk_1EC264F90, type metadata accessor for DeviceCapability);
    sub_1C7C7DA44();
    v19 = v13;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B58, &qword_1C7C90FC0);
    sub_1C7C42778();
    sub_1C7C7DA44();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C7C42724()
{
  result = qword_1EC264B50;
  if (!qword_1EC264B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264B50);
  }

  return result;
}

unint64_t sub_1C7C42778()
{
  result = qword_1EC264B60;
  if (!qword_1EC264B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264B58, &qword_1C7C90FC0);
    sub_1C7C42BF8(&qword_1EC264B68, type metadata accessor for SERCredentialInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264B60);
  }

  return result;
}

void SERState.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B70, &qword_1C7C90FC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C42724();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    type metadata accessor for ReservationState();
    v17 = 0;
    sub_1C7C42BF8(&unk_1EC264FB0, type metadata accessor for ReservationState);
    sub_1C7C7D9B4();
    v11 = v18;
    type metadata accessor for DeviceCapability();
    v17 = 1;
    sub_1C7C42BF8(&qword_1EC264B78, type metadata accessor for DeviceCapability);
    sub_1C7C7D9B4();
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264B58, &qword_1C7C90FC0);
    v17 = 2;
    sub_1C7C42B3C();
    sub_1C7C7D9B4();
    (*(v6 + 8))(v9, v5);
    v13 = v18;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
    v14 = v11;
    v15 = v12;

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

unint64_t sub_1C7C42B3C()
{
  result = qword_1EC264B80;
  if (!qword_1EC264B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264B58, &qword_1C7C90FC0);
    sub_1C7C42BF8(&qword_1EC264B88, type metadata accessor for SERCredentialInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264B80);
  }

  return result;
}

uint64_t sub_1C7C42BF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C7C42CC0()
{
  sub_1C7C42DAC();
  if (v0 <= 0x3F)
  {
    sub_1C7C42E24();
    if (v1 <= 0x3F)
    {
      sub_1C7C42E90();
      if (v2 <= 0x3F)
      {
        sub_1C7C42EC0();
        if (v3 <= 0x3F)
        {
          sub_1C7C42F20();
          if (v4 <= 0x3F)
          {
            sub_1C7C7D104();
            if (v5 <= 0x3F)
            {
              sub_1C7C42F88(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for SECCredentialConfig();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C7C42DAC()
{
  if (!qword_1EC264BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264BA8, &qword_1C7C91170);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC264BA0);
    }
  }
}

void sub_1C7C42E24()
{
  if (!qword_1EC264BB0)
  {
    type metadata accessor for SERDataSource();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC264BB0);
    }
  }
}

ValueMetadata *sub_1C7C42E90()
{
  result = qword_1EC264BB8;
  if (!qword_1EC264BB8)
  {
    result = &type metadata for SESnapshot.TargetDevice;
    atomic_store(&type metadata for SESnapshot.TargetDevice, &qword_1EC264BB8);
  }

  return result;
}

void sub_1C7C42EC0()
{
  if (!qword_1EC264BC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC264BC0);
    }
  }
}

void sub_1C7C42F20()
{
  if (!qword_1EC264BC8)
  {
    sub_1C7C7D104();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC264BC8);
    }
  }
}

void sub_1C7C42F88(uint64_t a1)
{
  if (!qword_1EC264BD0)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for MemoryUsage();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC264BA8, &qword_1C7C91170);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC264BD0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SEService20SERXPCInternalErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_9SEService14SERXPCResponseO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x9F)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1C7C430F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x16 && *(a1 + 17))
  {
    return (*a1 + 22);
  }

  v3 = ((*(a1 + 16) >> 4) & 0xFFFFFFEF | (16 * ((*(a1 + 16) >> 3) & 1))) ^ 0x1F;
  if (v3 >= 0x15)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C7C43144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x15)
  {
    *(result + 16) = 0;
    *result = a2 - 22;
    *(result + 8) = 0;
    if (a3 >= 0x16)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x16)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t sub_1C7C431A8(uint64_t result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    *(result + 16) = *(result + 16) & 7 | (16 * a2);
  }

  else
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    *(result + 16) = -96;
  }

  return result;
}

uint64_t sub_1C7C431E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C7C4322C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C7C43270(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C7C432AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C7C432F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C7C434A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C7C43534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C7C436B8()
{
  result = qword_1EC264BD8;
  if (!qword_1EC264BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BD8);
  }

  return result;
}

unint64_t sub_1C7C43710()
{
  result = qword_1EC264BE0;
  if (!qword_1EC264BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BE0);
  }

  return result;
}

unint64_t sub_1C7C43768()
{
  result = qword_1EC264BE8;
  if (!qword_1EC264BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BE8);
  }

  return result;
}

unint64_t sub_1C7C437C0()
{
  result = qword_1EC264BF0;
  if (!qword_1EC264BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BF0);
  }

  return result;
}

unint64_t sub_1C7C43818()
{
  result = qword_1EC264BF8;
  if (!qword_1EC264BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264BF8);
  }

  return result;
}

unint64_t sub_1C7C43870()
{
  result = qword_1EC264C00;
  if (!qword_1EC264C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C00);
  }

  return result;
}

unint64_t sub_1C7C438C8()
{
  result = qword_1EC264C08;
  if (!qword_1EC264C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C08);
  }

  return result;
}

unint64_t sub_1C7C43920()
{
  result = qword_1EC264C10;
  if (!qword_1EC264C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C10);
  }

  return result;
}

unint64_t sub_1C7C43978()
{
  result = qword_1EC264C18;
  if (!qword_1EC264C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C18);
  }

  return result;
}

unint64_t sub_1C7C439D0()
{
  result = qword_1EC264C20;
  if (!qword_1EC264C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C20);
  }

  return result;
}

unint64_t sub_1C7C43A28()
{
  result = qword_1EC264C28;
  if (!qword_1EC264C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C28);
  }

  return result;
}

unint64_t sub_1C7C43A80()
{
  result = qword_1EC264C30;
  if (!qword_1EC264C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C30);
  }

  return result;
}

unint64_t sub_1C7C43AD8()
{
  result = qword_1EC264C38;
  if (!qword_1EC264C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C38);
  }

  return result;
}

unint64_t sub_1C7C43B30()
{
  result = qword_1EC264C40;
  if (!qword_1EC264C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C40);
  }

  return result;
}

unint64_t sub_1C7C43B88()
{
  result = qword_1EC264C48;
  if (!qword_1EC264C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C48);
  }

  return result;
}

unint64_t sub_1C7C43BE0()
{
  result = qword_1EC264C50;
  if (!qword_1EC264C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C50);
  }

  return result;
}

unint64_t sub_1C7C43C38()
{
  result = qword_1EC264C58;
  if (!qword_1EC264C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C58);
  }

  return result;
}

unint64_t sub_1C7C43C90()
{
  result = qword_1EC264C60;
  if (!qword_1EC264C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C60);
  }

  return result;
}

unint64_t sub_1C7C43CE8()
{
  result = qword_1EC264C68;
  if (!qword_1EC264C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C68);
  }

  return result;
}

unint64_t sub_1C7C43D40()
{
  result = qword_1EC264C70;
  if (!qword_1EC264C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C70);
  }

  return result;
}

unint64_t sub_1C7C43D98()
{
  result = qword_1EC264C78;
  if (!qword_1EC264C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C78);
  }

  return result;
}

unint64_t sub_1C7C43DF0()
{
  result = qword_1EC264C80;
  if (!qword_1EC264C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C80);
  }

  return result;
}

unint64_t sub_1C7C43E48()
{
  result = qword_1EC264C88;
  if (!qword_1EC264C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C88);
  }

  return result;
}

unint64_t sub_1C7C43EA0()
{
  result = qword_1EC264C90;
  if (!qword_1EC264C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C90);
  }

  return result;
}

unint64_t sub_1C7C43EF8()
{
  result = qword_1EC264C98;
  if (!qword_1EC264C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264C98);
  }

  return result;
}

unint64_t sub_1C7C43F50()
{
  result = qword_1EC264CA0;
  if (!qword_1EC264CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CA0);
  }

  return result;
}

unint64_t sub_1C7C43FA8()
{
  result = qword_1EC264CA8;
  if (!qword_1EC264CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CA8);
  }

  return result;
}

unint64_t sub_1C7C44000()
{
  result = qword_1EC264CB0;
  if (!qword_1EC264CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CB0);
  }

  return result;
}

unint64_t sub_1C7C44058()
{
  result = qword_1EC264CB8;
  if (!qword_1EC264CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CB8);
  }

  return result;
}

unint64_t sub_1C7C440B0()
{
  result = qword_1EC264CC0;
  if (!qword_1EC264CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CC0);
  }

  return result;
}

unint64_t sub_1C7C44108()
{
  result = qword_1EC264CC8;
  if (!qword_1EC264CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CC8);
  }

  return result;
}

unint64_t sub_1C7C44160()
{
  result = qword_1EC264CD0;
  if (!qword_1EC264CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CD0);
  }

  return result;
}

unint64_t sub_1C7C441B8()
{
  result = qword_1EC264CD8;
  if (!qword_1EC264CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CD8);
  }

  return result;
}

unint64_t sub_1C7C44210()
{
  result = qword_1EC264CE0;
  if (!qword_1EC264CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CE0);
  }

  return result;
}

unint64_t sub_1C7C44268()
{
  result = qword_1EC264CE8;
  if (!qword_1EC264CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CE8);
  }

  return result;
}

unint64_t sub_1C7C442C0()
{
  result = qword_1EC264CF0;
  if (!qword_1EC264CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CF0);
  }

  return result;
}

unint64_t sub_1C7C44318()
{
  result = qword_1EC264CF8;
  if (!qword_1EC264CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264CF8);
  }

  return result;
}

unint64_t sub_1C7C44370()
{
  result = qword_1EC264D00;
  if (!qword_1EC264D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D00);
  }

  return result;
}

unint64_t sub_1C7C443C8()
{
  result = qword_1EC264D08;
  if (!qword_1EC264D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D08);
  }

  return result;
}

unint64_t sub_1C7C44420()
{
  result = qword_1EC264D10;
  if (!qword_1EC264D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D10);
  }

  return result;
}

unint64_t sub_1C7C44478()
{
  result = qword_1EC264D18;
  if (!qword_1EC264D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D18);
  }

  return result;
}

unint64_t sub_1C7C444D0()
{
  result = qword_1EC264D20;
  if (!qword_1EC264D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D20);
  }

  return result;
}

unint64_t sub_1C7C44528()
{
  result = qword_1EC264D28;
  if (!qword_1EC264D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D28);
  }

  return result;
}

unint64_t sub_1C7C44580()
{
  result = qword_1EC264D30;
  if (!qword_1EC264D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D30);
  }

  return result;
}

unint64_t sub_1C7C445D8()
{
  result = qword_1EC264D38;
  if (!qword_1EC264D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D38);
  }

  return result;
}

unint64_t sub_1C7C44630()
{
  result = qword_1EC264D40;
  if (!qword_1EC264D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D40);
  }

  return result;
}

unint64_t sub_1C7C44688()
{
  result = qword_1EC264D48;
  if (!qword_1EC264D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D48);
  }

  return result;
}

unint64_t sub_1C7C446E0()
{
  result = qword_1EC264D50;
  if (!qword_1EC264D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D50);
  }

  return result;
}

unint64_t sub_1C7C44738()
{
  result = qword_1EC264D58;
  if (!qword_1EC264D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D58);
  }

  return result;
}

unint64_t sub_1C7C44790()
{
  result = qword_1EC264D60;
  if (!qword_1EC264D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D60);
  }

  return result;
}

unint64_t sub_1C7C447E8()
{
  result = qword_1EC264D68;
  if (!qword_1EC264D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D68);
  }

  return result;
}

unint64_t sub_1C7C44840()
{
  result = qword_1EC264D70;
  if (!qword_1EC264D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D70);
  }

  return result;
}

unint64_t sub_1C7C44898()
{
  result = qword_1EC264D78;
  if (!qword_1EC264D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D78);
  }

  return result;
}

unint64_t sub_1C7C448F0()
{
  result = qword_1EC264D80;
  if (!qword_1EC264D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D80);
  }

  return result;
}

unint64_t sub_1C7C44948()
{
  result = qword_1EC264D88;
  if (!qword_1EC264D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D88);
  }

  return result;
}

unint64_t sub_1C7C449A0()
{
  result = qword_1EC264D90;
  if (!qword_1EC264D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D90);
  }

  return result;
}

unint64_t sub_1C7C449F8()
{
  result = qword_1EC264D98;
  if (!qword_1EC264D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264D98);
  }

  return result;
}

unint64_t sub_1C7C44A50()
{
  result = qword_1EC264DA0;
  if (!qword_1EC264DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DA0);
  }

  return result;
}

unint64_t sub_1C7C44AA8()
{
  result = qword_1EC264DA8;
  if (!qword_1EC264DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DA8);
  }

  return result;
}

unint64_t sub_1C7C44B00()
{
  result = qword_1EC264DB0;
  if (!qword_1EC264DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DB0);
  }

  return result;
}

unint64_t sub_1C7C44B58()
{
  result = qword_1EC264DB8;
  if (!qword_1EC264DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DB8);
  }

  return result;
}

unint64_t sub_1C7C44BB0()
{
  result = qword_1EC264DC0;
  if (!qword_1EC264DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DC0);
  }

  return result;
}

unint64_t sub_1C7C44C08()
{
  result = qword_1EC264DC8;
  if (!qword_1EC264DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DC8);
  }

  return result;
}

unint64_t sub_1C7C44C60()
{
  result = qword_1EC264DD0;
  if (!qword_1EC264DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DD0);
  }

  return result;
}

unint64_t sub_1C7C44CB8()
{
  result = qword_1EC264DD8;
  if (!qword_1EC264DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DD8);
  }

  return result;
}

unint64_t sub_1C7C44D10()
{
  result = qword_1EC264DE0;
  if (!qword_1EC264DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DE0);
  }

  return result;
}

unint64_t sub_1C7C44D68()
{
  result = qword_1EC264DE8;
  if (!qword_1EC264DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DE8);
  }

  return result;
}

unint64_t sub_1C7C44DC0()
{
  result = qword_1EC264DF0;
  if (!qword_1EC264DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DF0);
  }

  return result;
}

unint64_t sub_1C7C44E18()
{
  result = qword_1EC264DF8;
  if (!qword_1EC264DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264DF8);
  }

  return result;
}

unint64_t sub_1C7C44E70()
{
  result = qword_1EC264E00;
  if (!qword_1EC264E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E00);
  }

  return result;
}

unint64_t sub_1C7C44EC8()
{
  result = qword_1EC264E08;
  if (!qword_1EC264E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E08);
  }

  return result;
}

unint64_t sub_1C7C44F20()
{
  result = qword_1EC264E10;
  if (!qword_1EC264E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E10);
  }

  return result;
}

unint64_t sub_1C7C44F78()
{
  result = qword_1EC264E18;
  if (!qword_1EC264E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E18);
  }

  return result;
}

unint64_t sub_1C7C44FD0()
{
  result = qword_1EC264E20;
  if (!qword_1EC264E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E20);
  }

  return result;
}

unint64_t sub_1C7C45028()
{
  result = qword_1EC264E28;
  if (!qword_1EC264E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E28);
  }

  return result;
}

unint64_t sub_1C7C45080()
{
  result = qword_1EC264E30;
  if (!qword_1EC264E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E30);
  }

  return result;
}

unint64_t sub_1C7C450D8()
{
  result = qword_1EC264E38;
  if (!qword_1EC264E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E38);
  }

  return result;
}

unint64_t sub_1C7C45130()
{
  result = qword_1EC264E40;
  if (!qword_1EC264E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E40);
  }

  return result;
}

unint64_t sub_1C7C45188()
{
  result = qword_1EC264E48;
  if (!qword_1EC264E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E48);
  }

  return result;
}

unint64_t sub_1C7C451E0()
{
  result = qword_1EC264E50;
  if (!qword_1EC264E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E50);
  }

  return result;
}

unint64_t sub_1C7C45238()
{
  result = qword_1EC264E58;
  if (!qword_1EC264E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E58);
  }

  return result;
}

unint64_t sub_1C7C45290()
{
  result = qword_1EC264E60;
  if (!qword_1EC264E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E60);
  }

  return result;
}

unint64_t sub_1C7C452E8()
{
  result = qword_1EC264E68;
  if (!qword_1EC264E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E68);
  }

  return result;
}

unint64_t sub_1C7C45340()
{
  result = qword_1EC264E70;
  if (!qword_1EC264E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E70);
  }

  return result;
}

unint64_t sub_1C7C45398()
{
  result = qword_1EC264E78;
  if (!qword_1EC264E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E78);
  }

  return result;
}

unint64_t sub_1C7C453F0()
{
  result = qword_1EC264E80;
  if (!qword_1EC264E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E80);
  }

  return result;
}

unint64_t sub_1C7C45448()
{
  result = qword_1EC264E88;
  if (!qword_1EC264E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E88);
  }

  return result;
}

unint64_t sub_1C7C454A0()
{
  result = qword_1EC264E90;
  if (!qword_1EC264E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E90);
  }

  return result;
}

unint64_t sub_1C7C454F8()
{
  result = qword_1EC264E98;
  if (!qword_1EC264E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264E98);
  }

  return result;
}

unint64_t sub_1C7C45550()
{
  result = qword_1EC264EA0;
  if (!qword_1EC264EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EA0);
  }

  return result;
}

unint64_t sub_1C7C455A8()
{
  result = qword_1EC264EA8;
  if (!qword_1EC264EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EA8);
  }

  return result;
}

unint64_t sub_1C7C45600()
{
  result = qword_1EC264EB0;
  if (!qword_1EC264EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EB0);
  }

  return result;
}

unint64_t sub_1C7C45658()
{
  result = qword_1EC264EB8;
  if (!qword_1EC264EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EB8);
  }

  return result;
}

unint64_t sub_1C7C456B0()
{
  result = qword_1EC264EC0;
  if (!qword_1EC264EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EC0);
  }

  return result;
}

unint64_t sub_1C7C45708()
{
  result = qword_1EC264EC8;
  if (!qword_1EC264EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EC8);
  }

  return result;
}

unint64_t sub_1C7C45760()
{
  result = qword_1EC264ED0;
  if (!qword_1EC264ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264ED0);
  }

  return result;
}

unint64_t sub_1C7C457B8()
{
  result = qword_1EC264ED8;
  if (!qword_1EC264ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264ED8);
  }

  return result;
}

unint64_t sub_1C7C45810()
{
  result = qword_1EC264EE0;
  if (!qword_1EC264EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EE0);
  }

  return result;
}

unint64_t sub_1C7C45868()
{
  result = qword_1EC264EE8;
  if (!qword_1EC264EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EE8);
  }

  return result;
}

unint64_t sub_1C7C458C0()
{
  result = qword_1EC264EF0;
  if (!qword_1EC264EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264EF0);
  }

  return result;
}

uint64_t sub_1C7C45914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617375 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9F280 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6544746567726174 && a2 == 0xEC00000065636976)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1C7C45A7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616E534553746567 && a2 == 0xED0000746F687370;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68736572666572 && a2 == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9F280 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265736552646461 && a2 == 0xEE006E6F69746176 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573655274696465 && a2 == 0xEF6E6F6974617672 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736552646E6966 && a2 == 0xEF6E6F6974617672 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9F2A0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461767265736572 && a2 == 0xEC000000736E6F69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9F2C0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7469466E6163 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x53457469466E6163 && a2 == 0xEA00000000006D69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9F2E0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1C7C45E6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616E534553746567 && a2 == 0xED0000746F687370 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68736572666572 && a2 == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9F280 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265736552646461 && a2 == 0xEE006E6F69746176 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6573655274696465 && a2 == 0xEF6E6F6974617672 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65736552646E6966 && a2 == 0xEF6E6F6974617672 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9F2A0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461767265736572 && a2 == 0xEC000000736E6F69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C7C9F2C0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7469466E6163 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9F2E0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1C7C46250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x456E776F6E6B6E75 && a2 == 0xEC000000726F7272;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D73694D65707974 && a2 == 0xEC00000068637461 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727245637078 && a2 == 0xE800000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9F300 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C7C9F320 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x724574616D726F66 && a2 == 0xEB00000000726F72)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1C7C464B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C7C9CC30 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9CC70 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEF73657A69536C61)
  {

    return 2;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C7C46608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x80000001C7C9CC70;
  if (a1 != 4)
  {
    v4 = 0x72756F5361746164;
    v5 = 0xEA00000000006563;
  }

  if (a1 == 3)
  {
    v4 = 1684632949;
    v5 = 0xE400000000000000;
  }

  v6 = 0xD000000000000010;
  v7 = 0x80000001C7C9CC30;
  if (a1 != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x80000001C7C9CC50;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x65746174536573;
  }

  if (a1 <= 2u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE400000000000000;
      if (v8 != 1684632949)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x80000001C7C9CC70;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0xEA00000000006563;
      if (v8 != 0x72756F5361746164)
      {
LABEL_34:
        v11 = sub_1C7C7DAA4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x80000001C7C9CC30;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v10 = 0x80000001C7C9CC50;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    if (v8 != 0x65746174536573)
    {
      goto LABEL_34;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_1C7C467DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7061654870;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6582115;
    }

    else
    {
      v4 = 0x69646E4964657375;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xEB00000000736563;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7499619;
    }

    else
    {
      v4 = 0x7061654870;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE300000000000000;
  v8 = 6582115;
  if (a2 != 2)
  {
    v8 = 0x69646E4964657375;
    v7 = 0xEB00000000736563;
  }

  if (a2)
  {
    v2 = 7499619;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C7C7DAA4();
  }

  return v11 & 1;
}

uint64_t sub_1C7C46914()
{
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C46A20()
{
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t SESnapshot.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1C7C7CFB4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1C7C7CFA4();
  v5 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v35 = *(v1 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264630, &qword_1C7C90820);
  sub_1C7C4F884(&qword_1EC264668, sub_1C7BDF724);
  v33 = sub_1C7C7CF94();
  v34 = v6;

  v7 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  v11 = v8;
  sub_1C7C7CFA4();
  type metadata accessor for SEState();
  sub_1C7C4C6C8(&qword_1EC264F20, type metadata accessor for SEState);
  v12 = sub_1C7C7CF94();
  v14 = v13;
  v15 = sub_1C7C7D034();
  v17 = v16;

  sub_1C7BDF778(v12, v14);

  MEMORY[0x1CCA6B380](v15, v17);

  MEMORY[0x1CCA6B380](33, 0xE100000000000000);
  v18 = *(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v19 = *(v2 + 48);
  v20 = *(v2 + 52);
  swift_allocObject();
  sub_1C7C7CFA4();
  type metadata accessor for ReservationState();
  sub_1C7C4C6C8(&unk_1EC264F30, type metadata accessor for ReservationState);
  v21 = sub_1C7C7CF94();
  v23 = v22;
  v24 = sub_1C7C7D034();
  v26 = v25;
  sub_1C7BDF778(v21, v23);

  MEMORY[0x1CCA6B380](v24, v26);

  MEMORY[0x1CCA6B380](33, 0xE100000000000000);
  v27 = sub_1C7C7D034();
  MEMORY[0x1CCA6B380](v27);

  MEMORY[0x1CCA6B380](33, 0xE100000000000000);
  v28 = [*(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource) description];
  v29 = sub_1C7C7D304();
  v31 = v30;

  MEMORY[0x1CCA6B380](v29, v31);

  sub_1C7BDF778(v33, v34);

  return 0;
}

uint64_t SESnapshot.maxAllowedIndices.getter()
{
  v1 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  if (*(*(v0 + v1) + OBJC_IVAR____TtC9SEService7SEState_seType) >= 3u)
  {
    return 14000;
  }

  else
  {
    return 24526;
  }
}

uint64_t SESnapshot.CanFitResult.FailureReason.debugDescription.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_1C7C2A8F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1C7C2A8F0((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x7061654870;
    *(v5 + 5) = 0xE500000000000000;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  if ((v1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1C7C2A8F0(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1C7C2A8F0((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 7499619;
    *(v9 + 5) = 0xE300000000000000;
    if ((v1 & 4) == 0)
    {
LABEL_8:
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

LABEL_21:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1C7C2A8F0(0, *(v2 + 2) + 1, 1, v2);
      }

      v14 = *(v2 + 2);
      v13 = *(v2 + 3);
      if (v14 >= v13 >> 1)
      {
        v2 = sub_1C7C2A8F0((v13 > 1), v14 + 1, 1, v2);
      }

      *(v2 + 2) = v14 + 1;
      v15 = &v2[16 * v14];
      *(v15 + 4) = 0x73656369646E69;
      *(v15 + 5) = 0xE700000000000000;
      goto LABEL_26;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C7C2A8F0(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v2 = sub_1C7C2A8F0((v10 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v11 + 1;
  v12 = &v2[16 * v11];
  *(v12 + 4) = 6582115;
  *(v12 + 5) = 0xE300000000000000;
  if ((v1 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (*(v2 + 2))
  {
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    sub_1C7C4F0D4();
    v6 = sub_1C7C7D2A4();

    return v6;
  }

  return 0x73736563637573;
}

BOOL sub_1C7C47528(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1C7C47558@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1C7C47584@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

BOOL static SESnapshot.CanFitResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2[1];
  if (a1[1] == 1)
  {
    return (a2[1] & 1) != 0;
  }

  if (a2[1])
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_1C7C476A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2[1];
  if (a1[1] == 1)
  {
    return (a2[1] & 1) != 0;
  }

  if (a2[1])
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1C7C476FC()
{
  v1 = *(v0 + 40);
  v2 = sub_1C7C54984(v0 + 16);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 33) = 0;
  v4 = v2;
  v5 = v3;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1C7C15364;

  return sub_1C7C15A44(v4, v5, (v0 + 33));
}

uint64_t SESnapshot.refresh(with:seid:)(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C7C47860, 0, 0);
}

uint64_t sub_1C7C47860()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = *(v0[15] + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource);
  v3 = sub_1C7C54984((v0 + 8));
  v0[16] = v4;
  v0[17] = v3;
  v5 = v3;
  v6 = v4;
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1C7C479E8;

  return SERInternalClient.refresh(dataSource:token:)((v0 + 5), v2, v5, v6);
}

uint64_t sub_1C7C479E8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v5 = *v0;

  sub_1C7BDF778(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1C7C47B18, 0, 0);
}

uint64_t sub_1C7C47B18()
{
  v25 = v0;
  if (*(v0 + 57))
  {
    v1 = *(v0 + 56);
    *(v0 + 88) = *(v0 + 40);
    *(v0 + 104) = v1;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    v23 = *(v0 + 40);
    swift_beginAccess();
    v10 = *(v8 + v9);
    *(v8 + v9) = v23;

    if (qword_1EC2621E8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 120);
    v12 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v12, qword_1EC288338);
    v13 = v11;
    v14 = sub_1C7C7D194();
    v15 = sub_1C7C7D5A4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 120);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = SESnapshot.debugDescription.getter();
      v21 = sub_1C7BE42F8(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1C7B9A000, v14, v15, "Refreshed Snapshot %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1CCA6C990](v18, -1, -1);
      MEMORY[0x1CCA6C990](v17, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1C7C47D98()
{
  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  *(v0 + 34) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1C7C47E74;

  return SERInternalClient.reclaimUnusedSEMemory(targetDevice:)(v0 + 16, (v0 + 34));
}

uint64_t sub_1C7C47E74()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C15F90, 0, 0);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.canFit(credentials:)(Swift::OpaquePointer credentials)
{
  SESnapshot.canFitWithReason(credentials:)(credentials._rawValue, v4);
  if (!v1)
  {
    v2 = v4[1];
  }

  return v2 & 1;
}

void SESnapshot.canFitWithReason(credentials:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v154 = MEMORY[0x1E69E7CC0];
    sub_1C7C25C0C(0, v3, 0);
    v6 = v154;
    v7 = (a1 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v10 = v8;
      v11 = *(v7 - 1);
      v12 = *v7;
      if (v9 == 3)
      {
        v10 = *(v7 - 2);
        v11 = *(v7 - 1);
        v12 = 3;
        if (v8 <= 0x19)
        {
          v11 = 0;
          v12 = 0;
          v10 = qword_1C7C93DA8[v8];
        }
      }

      sub_1C7BDF708(v8, *(v7 - 1), v9);
      v154 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_1C7C25C0C((v13 > 1), v14 + 1, 1);
        v15 = v14 + 1;
        v6 = v154;
      }

      v7 += 24;
      *(v6 + 16) = v15;
      v16 = v6 + 24 * v14;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;
      *(v16 + 48) = v12;
      --v3;
    }

    while (v3);
    v17 = v144;
  }

  else
  {
    v17 = v2;
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v15)
    {
      v139 = 0;
      v26 = 1;
      v146 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  v146 = v6;
  v18 = (v6 + 48);
  v19 = v15;
  do
  {
    v22 = *(v18 - 2);
    v21 = *(v18 - 1);
    v23 = *v18;
    if (v23 == 3)
    {
      if (v22 == 26 && v21 == 0)
      {

        sub_1C7BEADA0();
        swift_allocError();
        *v27 = 0xD000000000000038;
        *(v27 + 8) = 0x80000001C7C9F370;
        *(v27 + 16) = 2;
        swift_willThrow();
        return;
      }
    }

    else if (v23 == 2)
    {
      v24 = *(v18 - 1);

      sub_1C7BEADA0();
      swift_allocError();
      *v25 = 0xD000000000000035;
      *(v25 + 8) = 0x80000001C7C9F3B0;
      *(v25 + 16) = 2;
      swift_willThrow();
      sub_1C7BEA9D8(v22, v21, 2u);
      return;
    }

    v18 += 24;
    --v19;
  }

  while (v19);
  v139 = v15;
  v26 = 0;
LABEL_24:
  v28 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v134 = v28;
  v29 = *(v17 + v28);
  v30 = *(*(v29 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  if (v30 <= 0)
  {
    v31 = *(v29 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v32 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
    swift_beginAccess();
    v30 = *(v31 + v32);
  }

  v131 = v30;
  v33 = *(v29 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
  v34 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  v137 = *(v33 + v34);
  v35 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  v135 = *(v33 + v35);
  v155 = v26;
  if (v26)
  {
    if (!*(v4 + 16))
    {
      v36 = MEMORY[0x1E69E7CC8];
      goto LABEL_35;
    }
  }

  else
  {
    v153[0] = v4;
    v37 = v139;
    sub_1C7C25BEC(0, v139, 0);
    v38 = (v146 + 48);
    do
    {
      v40 = *(v38 - 2);
      v39 = *(v38 - 1);
      v41 = *v38;
      sub_1C7BDF708(v40, v39, *v38);
      v153[0] = v4;
      v43 = *(v4 + 16);
      v42 = *(v4 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C7C25BEC((v42 > 1), v43 + 1, 1);
        v4 = v153[0];
      }

      v38 += 24;
      *(v4 + 16) = v43 + 1;
      v44 = v4 + 32 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v39;
      *(v44 + 48) = v41;
      *(v44 + 56) = 1;
      --v37;
    }

    while (v37);
    v17 = v144;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  v36 = sub_1C7C7D914();
LABEL_35:
  v153[0] = v36;

  sub_1C7C322BC(v45, 1, v153);
  v46 = v141;
  if (v141)
  {
LABEL_124:

    __break(1u);

    __break(1u);
    return;
  }

  swift_bridgeObjectRelease_n();
  v47 = v153[0];
  v48 = *(v17 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v49 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v50 = *(v48 + v49);
  v51 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v52 = *(v17 + v51);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v152[0] = v50;
  sub_1C7BFC468(v52, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, v152);

  v54 = v152[0];
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v152[0] = v54;
  sub_1C7BFC468(v47, sub_1C7C4F7A8, 0, v55, v152);
  v46 = 0;

  v56 = v152[0];
  v57 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  LOBYTE(v152[0]) = 0;
  v58 = sub_1C7BFE8C4(v57, v17, v152, 0, 1, 0, 1);

  LOBYTE(v152[0]) = 0;
  v59 = sub_1C7BFE8C4(v56, v17, v152, 0, 1, 0, 1);
  v60 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  LOBYTE(v152[0]) = 1;
  v61 = v17;
  v62 = sub_1C7BFE8C4(v60, v17, v152, 3uLL, 0, 0, 0);

  v63 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  LOBYTE(v152[0]) = 1;
  v64 = sub_1C7BFE8C4(v63, v61, v152, 1uLL, 0, 1uLL, 0);

  v65 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  LOBYTE(v152[0]) = 2;
  v142 = sub_1C7BFE8C4(v65, v61, v152, 1uLL, 0, 0, 1);

  v66 = v62 + v64;
  if (__OFADD__(v62, v64))
  {
    __break(1u);
    goto LABEL_106;
  }

  LOBYTE(v152[0]) = 1;
  v67 = sub_1C7BFE8C4(v56, v61, v152, 3uLL, 0, 0, 0);
  LOBYTE(v152[0]) = 1;
  v68 = sub_1C7BFE8C4(v56, v61, v152, 1uLL, 0, 1uLL, 0);
  LOBYTE(v152[0]) = 2;
  v46 = 0;
  v130 = sub_1C7BFE8C4(v56, v61, v152, 1uLL, 0, 0, 1);
  v69 = __OFADD__(v67, v68);
  v64 = v67 + v68;
  if (v69)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  LOBYTE(v152[0]) = 3;
  sub_1C7BFFC28(v56, v61, v152);
  v71 = v70;

  v156 = 0;
  if ((v71 / 32 - 0x40000000000000) >> 55 != 511)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v72 = (v71 / 32) << 9;
  v129 = v71;
  if ((v71 < 0) ^ __OFSUB__((v71 / 32 - 0x40000000000000) >> 55, 511) | ((v71 & 0x800000000000001FLL) == 0))
  {
LABEL_43:
    v128 = v72;
    goto LABEL_44;
  }

  v69 = __OFADD__(v72, 512);
  v72 += 512;
  v128 = v72;
  if (v69)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_44:
  v73 = v131 + v58;
  if (__OFADD__(v131, v58))
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v69 = __OFSUB__(v73, v59);
  v74 = v73 - v59;
  if (v69)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v69 = __OFADD__(v74, -25600);
  v75 = v74 - 25600;
  if (v69)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v76 = v75 - v128;
  if (__OFSUB__(v75, v128))
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v76 < 0)
  {
    if (qword_1EC2621E8 != -1)
    {
      goto LABEL_118;
    }

    goto LABEL_51;
  }

  for (i = 0; ; i = 1)
  {
    if (__OFSUB__(v64, v66))
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v127 = v64 - v66;
    if (v137 < v64 - v66)
    {
      if (qword_1EC2621E8 != -1)
      {
        swift_once();
      }

      v81 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v81, qword_1EC288338);
      v82 = sub_1C7C7D194();
      v83 = sub_1C7C7D564();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 134217984;
        if (__OFSUB__(v127, v137))
        {
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

        v66 = v84;
        *(v84 + 4) = v127 - v137;
        _os_log_impl(&dword_1C7B9A000, v82, v83, "Missing %ld bytes COR", v84, 0xCu);
        MEMORY[0x1CCA6C990](v66, -1, -1);
      }

      i |= 2u;
      v156 = i;
    }

    if (__OFSUB__(v130, v142))
    {
      goto LABEL_113;
    }

    if (((v130 - v142) / 16 - 0x7FFFFFFFFFFFFFFLL) >> 60 != 15)
    {
      goto LABEL_114;
    }

    v142 = ((v130 - v142 + (v130 - v142 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0) + 16;
    if (v135 < v142)
    {
      if (qword_1EC2621E8 != -1)
      {
        swift_once();
      }

      v85 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v85, qword_1EC288338);
      v86 = sub_1C7C7D194();
      v87 = sub_1C7C7D564();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 134217984;
        if (__OFSUB__(v142, v135))
        {
          goto LABEL_120;
        }

        v89 = v88;
        *(v88 + 4) = v142 - v135;
        _os_log_impl(&dword_1C7B9A000, v86, v87, "Missing %ld bytes COD", v88, 0xCu);
        MEMORY[0x1CCA6C990](v89, -1, -1);
      }

      i |= 4u;
      v156 = i;
    }

    v66 = *&v61[v134];
    v90 = *(v66 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v91 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
    swift_beginAccess();
    v92 = *(v90 + v91);
    v69 = __OFADD__(v129, v92);
    v93 = v129 + v92;
    if (!v69)
    {
      if (*(v66 + OBJC_IVAR____TtC9SEService7SEState_seType) >= 3u)
      {
        if (v93 <= 14000)
        {
          goto LABEL_87;
        }
      }

      else if (v93 < 24527)
      {
        goto LABEL_87;
      }

      if (qword_1EC2621E8 != -1)
      {
        swift_once();
      }

      v94 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v94, qword_1EC288338);
      v137 = v61;
      v95 = sub_1C7C7D194();
      LODWORD(v135) = sub_1C7C7D564();
      if (os_log_type_enabled(v95, v135))
      {
        v96 = swift_slowAlloc();
        *v96 = 134217984;
        v97 = *&v61[v134];
        v64 = *(v97 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
        v66 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
        swift_beginAccess();
        v98 = *(v64 + v66);
        v69 = __OFADD__(v129, v98);
        v99 = v129 + v98;
        if (v69)
        {
          goto LABEL_121;
        }

        v100 = 14000;
        if (*(v97 + OBJC_IVAR____TtC9SEService7SEState_seType) < 3u)
        {
          v100 = 24526;
        }

        v69 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v69)
        {
          goto LABEL_122;
        }

        *(v96 + 4) = v101;

        _os_log_impl(&dword_1C7B9A000, v95, v135, "Missing %ld indices", v96, 0xCu);
        MEMORY[0x1CCA6C990](v96, -1, -1);
      }

      else
      {

        v95 = v137;
      }

      v156 = i | 8;
LABEL_87:
      if (qword_1EC2621E8 == -1)
      {
        goto LABEL_88;
      }

      goto LABEL_116;
    }

LABEL_115:
    __break(1u);
LABEL_116:
    swift_once();
LABEL_88:
    v102 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v102, qword_1EC288338);
    v76 = sub_1C7C7D194();
    v103 = sub_1C7C7D564();
    if (!os_log_type_enabled(v76, v103))
    {
      goto LABEL_91;
    }

    v104 = swift_slowAlloc();
    *v104 = 134219008;
    if (!__OFSUB__(v59, v58))
    {
      break;
    }

    __break(1u);
LABEL_118:
    swift_once();
LABEL_51:
    v77 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v77, qword_1EC288338);
    v78 = sub_1C7C7D194();
    v133 = sub_1C7C7D564();
    if (os_log_type_enabled(v78, v133))
    {
      v79 = swift_slowAlloc();
      *v79 = 134217984;
      if (__OFSUB__(0, v76))
      {
        goto LABEL_123;
      }

      v80 = v79;
      *(v79 + 4) = -v76;
      _os_log_impl(&dword_1C7B9A000, v78, v133, "Missing %ld bytes pHeap", v79, 0xCu);
      MEMORY[0x1CCA6C990](v80, -1, -1);
    }

    v156 = 1;
  }

  v105 = v104;
  *(v104 + 4) = v59 - v58;
  *(v104 + 12) = 2048;
  *(v104 + 14) = v142;
  *(v104 + 22) = 2048;
  *(v104 + 24) = v127;
  *(v104 + 32) = 2048;
  *(v104 + 34) = v129;
  *(v104 + 42) = 2048;
  *(v104 + 44) = v128;
  _os_log_impl(&dword_1C7B9A000, v76, v103, "Requires pHeap:%ld COD:%ld COR:%ld Indices:%ld IndicesPHeap:%ld", v104, 0x34u);
  MEMORY[0x1CCA6C990](v105, -1, -1);
LABEL_91:

  v106 = v156;

  v107 = sub_1C7C7D194();
  v108 = sub_1C7C7D564();

  v145 = v108;
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v148 = v143;
    *v109 = 136315650;
    *(v109 + 4) = sub_1C7BE42F8(0xD00000000000001ELL, 0x80000001C7C9F3F0, &v148);
    *(v109 + 12) = 2080;
    if (v155)
    {

      v110 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v147 = MEMORY[0x1E69E7CC0];
      sub_1C7C2599C(0, v139, 0);
      v110 = v147;
      v111 = (v146 + 48);
      do
      {
        v112 = *(v111 - 1);
        v113 = *v111;
        v149 = *(v111 - 2);
        v150 = v112;
        v151 = v113;
        sub_1C7BDF708(v149, v112, v113);
        v114 = sub_1C7C7D324();
        v117 = *(v147 + 16);
        v116 = *(v147 + 24);
        if (v117 >= v116 >> 1)
        {
          v136 = v115;
          v138 = v114;
          sub_1C7C2599C((v116 > 1), v117 + 1, 1);
          v115 = v136;
          v114 = v138;
        }

        v111 += 24;
        *(v147 + 16) = v117 + 1;
        v118 = v147 + 16 * v117;
        *(v118 + 32) = v114;
        *(v118 + 40) = v115;
        --v139;
      }

      while (v139);
    }

    v119 = MEMORY[0x1CCA6B440](v110, MEMORY[0x1E69E6158]);
    v121 = v120;

    v122 = sub_1C7BE42F8(v119, v121, &v148);

    *(v109 + 14) = v122;
    *(v109 + 22) = 2080;
    LOBYTE(v149) = v106;
    CanFit = SESnapshot.CanFitResult.FailureReason.debugDescription.getter();
    v125 = sub_1C7BE42F8(CanFit, v124, &v148);

    *(v109 + 24) = v125;
    _os_log_impl(&dword_1C7B9A000, v107, v145, "%s %s => %s", v109, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v143, -1, -1);
    MEMORY[0x1CCA6C990](v109, -1, -1);
  }

  else
  {
  }

  if (v106)
  {
    swift_beginAccess();
    v126 = v156;
  }

  else
  {
    v126 = 0;
  }

  *a2 = v126;
  a2[1] = v106 == 0;
}