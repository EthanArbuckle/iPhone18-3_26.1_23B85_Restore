uint64_t sub_25F266704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25F1B7118((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void sub_25F266750(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, id *, uint64_t *), uint64_t a6)
{
  v8 = v6;
  v50 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v43 = a1;
  v44 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v45 = v11;
  v46 = 0;
  v47 = v14 & v12;
  v48 = a2;
  v49 = a3;

  sub_25F218F8C(&v41);
  v15 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
LABEL_5:
    sub_25F1BF034();

    return;
  }

  while (1)
  {
    v16 = v41;
    v39 = v41;
    v40 = v15;
    sub_25F1B707C(&v42, v38);
    v17 = *v8;
    v19 = sub_25F219234(v16, v15);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_25F30665C();
      __break(1u);
      goto LABEL_24;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a4)
    {
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_25F21DA60();
      if (v23)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v29 = *v8;
    *(*v8 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v30 = (v29[6] + 16 * v19);
    *v30 = v16;
    v30[1] = v15;
    sub_25F1B707C(v38, (v29[7] + 32 * v19));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_22;
    }

    v29[2] = v33;
LABEL_6:
    sub_25F218F8C(&v41);
    v15 = *(&v41 + 1);
    a4 = 1;
    if (!*(&v41 + 1))
    {
      goto LABEL_5;
    }
  }

  sub_25F219F3C(v22, a4 & 1);
  v24 = *v8;
  v25 = sub_25F219234(v16, v15);
  if ((v23 & 1) != (v26 & 1))
  {
    goto LABEL_23;
  }

  v19 = v25;
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v27 = *v8;
  sub_25F1B7118(*(*v8 + 56) + 32 * v19, v36);
  a5(v37, v36, v38);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v38);

    v28 = (v27[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_25F1B707C(v37, v28);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  v36[0] = v7;
  v34 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_25F1BF034();

    return;
  }

LABEL_24:
  *&v37[0] = 0;
  *(&v37[0] + 1) = 0xE000000000000000;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD00000000000001BLL, 0x800000025F319800);
  sub_25F30619C();
  MEMORY[0x25F8D7130](39, 0xE100000000000000);
  sub_25F30627C();
  __break(1u);
}

uint64_t sub_25F266AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  v7 = sub_25F305C1C();
  return (*(*(v7 - 8) + 16))(a2, a1, v7);
}

uint64_t sub_25F266B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v21 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a7;
  v13[8] = sub_25F267C38;
  v13[9] = &v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_25F304B4C();
  WitnessTable = swift_getWitnessTable();
  return Sequence.keyedMap<A, B>(_:)(sub_25F267C68, v13, v10, a2, a3, WitnessTable, a5);
}

uint64_t sub_25F266CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  v4 = sub_25F30539C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  WitnessTable = swift_getWitnessTable();
  return sub_25F1C1AC4(sub_25F267CA4, v8, v4, a2, v5, WitnessTable, MEMORY[0x277D84950], v9);
}

uint64_t sub_25F266DBC(uint64_t *a1)
{
  v2 = *a1;
  v9[3] = &_s3KeyON_1;
  v9[4] = &off_287164638;
  v3 = sub_25F1FDB80(v9, v2);

  __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v1)
  {
    if (v3[2] == 8)
    {
      v2 = v3[4];
      v4 = v3[5];
      v5 = v3[6];
      v6 = v3[7];
    }

    else
    {
      sub_25F267B68();
      swift_allocError();
      *v7 = v3;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_25F266E90(uint64_t *a1)
{
  v2 = *a1;
  v5 = &_s3KeyON_0;
  v6 = &off_287164628;
  LOBYTE(v4[0]) = 0;

  sub_25F1FDA48(v4, v2);
  if (v1)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
    v5 = &_s3KeyON_0;
    v6 = &off_287164628;
    LOBYTE(v4[0]) = 1;
    sub_25F1FDA48(v4, v2);

    __swift_destroy_boxed_opaque_existential_1(v4);
    v5 = &_s3KeyON;
    v6 = &off_287164618;
    LOBYTE(v4[0]) = 0;
    sub_25F1FDA48(v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v4);
    v5 = &_s3KeyON;
    v6 = &off_287164618;
    LOBYTE(v4[0]) = 1;
    sub_25F1FDA48(v4, v2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_25F266FF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a2;
  v10 = a3;
  LOBYTE(v8[0]) = 0;
  sub_25F1FDA48(v8, v6);
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    v9 = a2;
    v10 = a3;
    LOBYTE(v8[0]) = 1;
    sub_25F1FDA48(v8, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_25F2670B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v66 = a9;
  v13 = -1 << *(a1 + 32);
  v14 = ~v13;
  v15 = *(a1 + 64);
  v16 = -v13;
  v59 = a1;
  v60 = a1 + 64;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v61 = v14;
  v62 = 0;
  v63 = v17 & v15;
  v64 = a2;
  v65 = a3;

  sub_25F218F8C(&v57);
  v18 = *(&v57 + 1);
  if (!*(&v57 + 1))
  {
LABEL_24:
    sub_25F1BF034();
  }

  v19 = v57;
  sub_25F1B707C(v58, v56);
  v20 = *a5;
  v22 = sub_25F219234(v19, v18);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_25;
  }

  LOBYTE(v10) = v21;
  if (v20[3] >= v25)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
LABEL_10:
      v29 = *a5;
      if (v10)
      {
        v49 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/PropertyList.swift";
        v50 = 124;
        v51 = 2;
        v52 = a6;
        v53 = v66;
        v54 = a10;
        v55 = 2;
        sub_25F213F98(&v49);

        v10 = v29[7] + 32 * v22;
        __swift_destroy_boxed_opaque_existential_1(v10);
        sub_25F1B707C(v56, v10);
      }

      else
      {
        v29[(v22 >> 6) + 8] |= 1 << v22;
        v30 = (v29[6] + 16 * v22);
        *v30 = v19;
        v30[1] = v18;
        sub_25F1B707C(v56, (v29[7] + 32 * v22));
        v31 = v29[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        v29[2] = v33;
      }

      sub_25F218F8C(&v57);
      v18 = *(&v57 + 1);
      if (!*(&v57 + 1))
      {
        goto LABEL_24;
      }

      v22 = 124;
      while (1)
      {
        v19 = v57;
        sub_25F1B707C(v58, v56);
        v35 = *a5;
        v36 = sub_25F219234(v19, v18);
        v38 = v35[2];
        v39 = (v37 & 1) == 0;
        v32 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v32)
        {
          break;
        }

        LOBYTE(v10) = v37;
        if (v35[3] < v40)
        {
          sub_25F219F3C(v40, 1);
          v41 = *a5;
          v36 = sub_25F219234(v19, v18);
          if ((v10 & 1) != (v42 & 1))
          {
            goto LABEL_28;
          }
        }

        v43 = *a5;
        if (v10)
        {
          v49 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/PropertyList.swift";
          v50 = 124;
          v51 = 2;
          v52 = a6;
          v53 = v66;
          v54 = a10;
          v55 = 2;
          v34 = v36;
          sub_25F213F98(&v49);

          v10 = v43[7] + 32 * v34;
          __swift_destroy_boxed_opaque_existential_1(v10);
          sub_25F1B707C(v56, v10);
        }

        else
        {
          v43[(v36 >> 6) + 8] |= 1 << v36;
          v44 = (v43[6] + 16 * v36);
          *v44 = v19;
          v44[1] = v18;
          sub_25F1B707C(v56, (v43[7] + 32 * v36));
          v45 = v43[2];
          v32 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v32)
          {
            goto LABEL_26;
          }

          v43[2] = v46;
        }

        sub_25F218F8C(&v57);
        v18 = *(&v57 + 1);
        if (!*(&v57 + 1))
        {
          goto LABEL_24;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      sub_25F21DA60();
    }
  }

  sub_25F219F3C(v25, a4 & 1);
  v26 = *a5;
  v27 = sub_25F219234(v19, v18);
  if ((v10 & 1) == (v28 & 1))
  {
    v22 = v27;
    goto LABEL_10;
  }

LABEL_28:

  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F2674B8()
{
  v1 = v0[3];
  v2 = v0[6];
  (*(v0[4] + 24))(v0[2]);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_25F26753C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v10 = v3[8];
  v9 = v3[9];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v10(a1, a2, a3, a3 + *(TupleTypeMetadata2 + 48));
}

unint64_t sub_25F2675B4()
{
  result = qword_27FD56830;
  if (!qword_27FD56830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56830);
  }

  return result;
}

uint64_t sub_25F2676D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_25F26773C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  v9 = *(a2 + 24);
  v10 = *(a1 + 24);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25F267890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 113))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 112);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2678CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F267924(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    v2 = a2 - 4;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 112) = a2;
  return result;
}

unint64_t sub_25F267994()
{
  result = qword_27FD56838;
  if (!qword_27FD56838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56838);
  }

  return result;
}

unint64_t sub_25F2679E8()
{
  result = qword_27FD56840;
  if (!qword_27FD56840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56840);
  }

  return result;
}

uint64_t *sub_25F267A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_25F255944(a1, *(v2 + 56), *(v2 + 64), *(v2 + 24), a2);
}

uint64_t sub_25F267A9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  return sub_25F255614(a1, v2[3], a2);
}

unint64_t sub_25F267AE4()
{
  result = qword_27FD56858;
  if (!qword_27FD56858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56850, &qword_25F310B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56858);
  }

  return result;
}

unint64_t sub_25F267B68()
{
  result = qword_27FD56870;
  if (!qword_27FD56870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56870);
  }

  return result;
}

unint64_t sub_25F267BBC()
{
  result = qword_27FD56890;
  if (!qword_27FD56890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56878, &qword_25F310B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56890);
  }

  return result;
}

uint64_t sub_25F267C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 72);
  v10 = *(v3 + 56);
  v9 = *(v3 + 40);
  return sub_25F256780(a1, a2, a3, *(v3 + 64));
}

__n128 sub_25F267CC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(v10);
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

unint64_t sub_25F267D8C()
{
  result = qword_27FD56898;
  if (!qword_27FD56898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56898);
  }

  return result;
}

uint64_t sub_25F267E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F267E4C()
{
  result = qword_27FD568A0;
  if (!qword_27FD568A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD568A0);
  }

  return result;
}

unint64_t sub_25F267EA0()
{
  result = qword_27FD568A8;
  if (!qword_27FD568A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD568A8);
  }

  return result;
}

unint64_t sub_25F267EF8()
{
  result = qword_27FD568B0;
  if (!qword_27FD568B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD568B0);
  }

  return result;
}

unint64_t sub_25F267F50()
{
  result = qword_27FD568B8[0];
  if (!qword_27FD568B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD568B8);
  }

  return result;
}

uint64_t AsyncObservableEvent.init(file:line:column:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>)
{
  v15 = type metadata accessor for AsyncObservableEvent.Observer();
  type metadata accessor for ObserverAndTokenStorage();
  type metadata accessor for FulfillOnceState();
  sub_25F1E5808(v15, &v33);
  v31 = v33;
  v32 = v34;
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v24 = a3;
  *v25 = v35[0];
  *&v25[3] = *(v35 + 3);
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v21 = xmmword_25F3077E0;
  v22 = 2;
  v16 = sub_25F1D1EE4(&v31, &v23, 0, 0, &v21, 0xD000000000000016, 0x800000025F319820, 0x6465726966, 0xE500000000000000);

  *a9 = v16;
  return result;
}

uint64_t AsyncObservableEvent.fire(file:line:column:function:with:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 184) = a7;
  *(v9 + 192) = v20;
  *(v9 + 74) = a8;
  *(v9 + 168) = a5;
  *(v9 + 176) = a6;
  *(v9 + 152) = a2;
  *(v9 + 160) = a4;
  *(v9 + 73) = a3;
  *(v9 + 144) = a1;
  v10 = *(v21 + 16);
  *(v9 + 200) = v10;
  v11 = *(v10 - 8);
  *(v9 + 208) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = type metadata accessor for AsyncObservableEvent.Observer();
  *(v9 + 232) = type metadata accessor for ObserverAndTokenStorage();
  v13 = type metadata accessor for FulfillOnceState.FulfillmentOutcome();
  *(v9 + 240) = v13;
  v14 = *(v13 - 8);
  *(v9 + 248) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 256) = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *v8;
  *(v9 + 264) = v16;
  *(v9 + 272) = v17;

  return MEMORY[0x2822009F8](sub_25F26833C, 0, 0);
}

uint64_t sub_25F26833C()
{
  v60 = v0;
  v1 = *(v0 + 160);
  v55 = *(v0 + 144);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v52 = *(v0 + 232);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 74);
  v56 = *(v0 + 73);
  v57 = v1;
  v58 = *(v0 + 176);
  v59 = v9;
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v11 = swift_task_alloc();
  *(v11 + 16) = v8;
  FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(&v55, sub_25F269BA8, v10, sub_25F269BD8, v11);

  (*(v5 + 16))(v4, v3, v6);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v4, 1, TupleTypeMetadata2) == 1)
  {
    v13 = *(v0 + 256);
    v14 = *(v0 + 240);
    v15 = *(*(v0 + 248) + 8);
    v15(*(v0 + 264), v14);
    v15(v13, v14);
LABEL_3:
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 216);

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 256);
  v51 = *v21;
  v22 = *(v21 + 2);
  (*(*(v0 + 208) + 32))(*(v0 + 216), v21 + *(TupleTypeMetadata2 + 48), *(v0 + 200));
  v53 = v22[2];
  if (!v53)
  {
    goto LABEL_10;
  }

  v24 = v22[4];
  v23 = v22[5];
  v25 = v22[6];
  *(v0 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncObservableEvent.swift";
  *(v0 + 24) = 132;
  *(v0 + 32) = 2;
  *(v0 + 40) = xmmword_25F310EE0;
  *(v0 + 56) = "fire(file:line:column:function:with:)";
  *(v0 + 64) = 37;
  *(v0 + 72) = 2;
  v26 = *(v25 + 152);
  v27 = swift_task_alloc();
  v27[2] = nullsub_2;
  v27[3] = 0;
  v27[4] = v0 + 16;
  v27[5] = v25;
  v27[6] = sub_25F1D3340;
  v27[7] = 0;

  os_unfair_lock_lock(v26 + 19);
  sub_25F1D3DD4(&v26[4], &v55);
  os_unfair_lock_unlock(v26 + 19);

  if ((v55 & 1) == 0)
  {
    v24(v28);
  }

  if (v53 != 1)
  {
    v43 = v22 + 9;
    v44 = 1;
    while (v44 < v22[2])
    {
      v46 = *(v43 - 2);
      v45 = *(v43 - 1);
      v47 = *v43;
      *(v0 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncObservableEvent.swift";
      *(v0 + 24) = 132;
      *(v0 + 32) = 2;
      *(v0 + 40) = xmmword_25F310EE0;
      *(v0 + 56) = "fire(file:line:column:function:with:)";
      *(v0 + 64) = 37;
      *(v0 + 72) = 2;
      v48 = *(v47 + 152);
      v49 = swift_task_alloc();
      v49[2] = nullsub_2;
      v49[3] = 0;
      v49[4] = v0 + 16;
      v49[5] = v47;
      v49[6] = sub_25F1D3340;
      v49[7] = 0;

      os_unfair_lock_lock(v48 + 19);
      sub_25F1D3DD4(&v48[4], &v55);
      os_unfair_lock_unlock(v48 + 19);

      if ((v55 & 1) == 0)
      {
        v46(v50);
      }

      ++v44;

      v43 += 3;
      if (v53 == v44)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v29 = *(v0 + 224);
    *(v0 + 80) = v51;

    *(v0 + 96) = 0;
    sub_25F1E6B9C();
    v30 = type metadata accessor for OrderedDictionary();
    *(v0 + 280) = v30;
    if (!OrderedDictionary.endIndex.getter(v30))
    {
      v38 = *(v0 + 264);
      v39 = *(v0 + 240);
      v40 = *(v0 + 248);
      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      (*(v40 + 8))(v38, v39);
      v41 = *(v0 + 80);
      v42 = *(v0 + 88);

      goto LABEL_3;
    }

    v31 = *(v0 + 80);
    v32 = *(v0 + 88);
    *(v0 + 288) = v31;
    *(v0 + 296) = v32;
    v33 = *(v0 + 280);
    *(v0 + 128) = v31;
    *(v0 + 136) = v32;
    OrderedDictionary.subscript.getter(v0 + 104, v0 + 112, 0, v33);
    v34 = *(v0 + 112);
    *(v0 + 304) = *(v0 + 120);
    *(v0 + 312) = 1;

    v54 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 320) = v36;
    *v36 = v0;
    v36[1] = sub_25F268948;
    v37 = *(v0 + 216);

    return v54(v37);
  }

  return result;
}

uint64_t sub_25F268948()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F268A60, 0, 0);
}

uint64_t sub_25F268A60()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);

  if (v2 == OrderedDictionary.endIndex.getter(v3))
  {
    *(v0 + 96) = *(v0 + 312);
    v4 = *(v0 + 264);
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v6 + 8))(v4, v5);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);

    v10 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 216);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    *(v0 + 128) = *(v0 + 288);
    v14 = *(v0 + 312);
    result = OrderedDictionary.subscript.getter(v0 + 104, v0 + 112, v14, *(v0 + 280));
    v15 = *(v0 + 112);
    *(v0 + 304) = *(v0 + 120);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 312) = v14 + 1;

      v19 = (v15 + *v15);
      v16 = v15[1];
      v17 = swift_task_alloc();
      *(v0 + 320) = v17;
      *v17 = v0;
      v17[1] = sub_25F268948;
      v18 = *(v0 + 216);

      return v19(v18);
    }
  }

  return result;
}

uint64_t AsyncObservableEvent.observe(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v4[6] = a3;
  v4[7] = v8;
  v4[5] = v8;
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_25F268D28;

  return AsyncObservableEvent.addCancelableObserver(_:)((v4 + 2), a1, a2, a3);
}

uint64_t sub_25F268D28()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F268E24, 0, 0);
}

uint64_t sub_25F268E24()
{
  v9 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[6];
    v4 = v0[3];
    v3 = v0[4];
    v7 = v0[7];
    v8[0] = v0[2];
    v8[1] = v4;
    v8[2] = v3;
    sub_25F269568(v8, v2);
    sub_25F1DF100(v1);
  }

  v5 = v0[1];

  return v5();
}

uint64_t AsyncObservableEvent.addCancelableObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a4 + 16);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  type metadata accessor for AsyncObservableEvent.Observer();
  type metadata accessor for ObserverAndTokenStorage();
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();
  v5[8] = updated;
  v10 = *(updated - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *v4;
  v5[11] = v12;
  v5[12] = v13;

  return MEMORY[0x2822009F8](sub_25F26902C, 0, 0);
}

uint64_t sub_25F26902C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F269BF4, v7, &type metadata for Identifier);

  (*(v4 + 16))(v3, v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 40);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v0 + 24);
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 80), *(v0 + 40));
    v32 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_25F2693A8;
    v14 = *(v0 + 56);
    v15 = *(v0 + 32);

    return v32(v14);
  }

  else
  {
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);
    v19 = *(v0 + 72);
    v20 = *(v0 + 64);
    v21 = *(v0 + 16);
    v22 = **(v0 + 80);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v10;
    v24[3] = v23;
    v24[4] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
    v25 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
    v26 = swift_allocObject();
    *(v26 + 76) = 0;
    *(v26 + 73) = 0;
    *(v25 + 152) = v26;
    *(v25 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncObservableEvent.swift";
    *(v25 + 24) = 132;
    *(v25 + 32) = 2;
    *(v25 + 40) = xmmword_25F310EF0;
    *(v25 + 56) = "addCancelableObserver(_:)";
    *(v25 + 64) = 25;
    *(v25 + 72) = 2;
    *(v25 + 80) = 0;
    *(v25 + 88) = 0;
    *(v25 + 96) = xmmword_25F3077E0;
    *(v25 + 112) = 2;
    *(v25 + 120) = 0xD000000000000011;
    *(v25 + 128) = 0x800000025F319920;
    *(v25 + 136) = 0x64656C65636E6163;
    *(v25 + 144) = 0xE800000000000000;
    (*(v19 + 8))(v17, v20);
    *v21 = sub_25F269C00;
    v28 = *(v0 + 80);
    v27 = *(v0 + 88);
    v29 = *(v0 + 56);
    v30 = *(v0 + 16);
    *(v30 + 8) = v24;
    *(v30 + 16) = v25;

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_25F2693A8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2694A4, 0, 0);
}

uint64_t sub_25F2694A4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v3 + 8))(v1, v2);
  *v4 = 0;
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];
  v8 = v0[2];
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F269568(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for AsyncObservableEvent.Observer();
  type metadata accessor for ObserverAndTokenStorage();
  v5 = MEMORY[0x277D84F78];
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](updated);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-v12];
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *v2;
  v23 = v4;
  v24 = v15;
  v25 = v14;
  v26 = v16;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F269CA4, v22, v5 + 8);
  (*(v7 + 16))(v11, v13, updated);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    return (*(v7 + 8))(v13, updated);
  }

  v28[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncObservableEvent.swift";
  v28[1] = 132;
  v31 = "manage(_:)";
  v32 = 10;
  v29 = 2;
  v30 = xmmword_25F310F00;
  v33 = 2;
  v19 = *(v16 + 152);
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  *&v22[-48] = nullsub_2;
  *&v22[-40] = 0;
  *&v22[-32] = v28;
  *&v22[-24] = v16;
  *&v22[-16] = sub_25F1D3340;
  *&v22[-8] = 0;
  os_unfair_lock_lock(v19 + 19);
  sub_25F1D3F70(&v19[4], &v27);
  os_unfair_lock_unlock(v19 + 19);
  if ((v27 & 1) == 0)
  {
    v15();
  }

  v20 = *(v7 + 8);
  v20(v13, updated);
  return (v20)(v11, updated);
}

uint64_t sub_25F269804@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  type metadata accessor for AsyncObservableEvent.Observer();
  v4 = type metadata accessor for ObserverAndTokenStorage();

  sub_25F1E55A8(v6, v4, a3);
}

uint64_t sub_25F26988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AsyncObservableEvent.Observer();
  type metadata accessor for ObserverAndTokenStorage();
  v5 = MEMORY[0x277D84F78];
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *(&v15 - 2) = a3;
    *(&v15 - 1) = a2;
    FulfillOnceState.updateWaitingState<A>(update:)(sub_25F269C9C, (&v15 - 4), v5 + 8);

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(*(updated - 8) + 56))(v11, v13, 1, updated);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_25F269A70(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  type metadata accessor for AsyncObservableEvent.Observer();
  v2 = type metadata accessor for ObserverAndTokenStorage();
  return sub_25F1E5724(&v4, v2);
}

uint64_t sub_25F269AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_25F2EFFD8(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_25F2EFFD8((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[3 * v10];
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  *(a1 + 16) = v8;
}

uint64_t sub_25F269C0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F269C60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Inhabited<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v7);
  sub_25F304BBC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t KeyedEncodingContainer.encodeIfNotEmpty<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a2;
  v23[1] = a3;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 8);
  v15 = type metadata accessor for Inhabited();
  v16 = sub_25F305C1C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v23 - v19;
  (*(v9 + 16))(v12, a1, a4);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.init(_:)(v12, v15, WitnessTable, v20);
  v23[5] = a6;
  swift_getWitnessTable();
  sub_25F30645C();
  return (*(v17 + 8))(v20, v16);
}

uint64_t KeyedEncodingContainer.encodeIf<A>(_:forKey:predicate:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a8;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = a3(a1);
  v17 = *(a6 - 8);
  v18 = v17;
  if (v16)
  {
    (*(v17 + 16))(v15, a1, a6);
    (*(v18 + 56))(v15, 0, 1, a6);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, a6);
  }

  sub_25F30645C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t KeyValueMap.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v52 = a1;
  v63 = a6;
  v9 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_25F305C1C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v48 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x28223BE20](v15);
  v48 = &v48 - v17;
  v58 = v18;
  v60 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_25F305C1C();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v48 - v23;
  v25 = *(a3 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = swift_getAssociatedTypeWitness();
  v49 = *(v29 - 8);
  v30 = *(v49 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v48 - v31;
  v33 = *(a4 + 24);
  v59 = a2;
  v61 = a4;
  v33(a2, a4);
  v50 = v25;
  (*(v25 + 16))(v28, v52, a3);
  v34 = v24;
  sub_25F3050DC();
  v51 = a3;
  v35 = v48;
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v36 = *(TupleTypeMetadata2 - 8);
  v37 = *(v36 + 48);
  v38 = v36 + 48;
  if (v37(v34, 1, TupleTypeMetadata2) != 1)
  {
    v39 = *(v62 + 32);
    v62 += 32;
    v54 = v60 - 8;
    v55 = v39;
    v40 = v60;
    v53 = v61 + 40;
    v56 = v38;
    v57 = v37;
    do
    {
      v41 = *(TupleTypeMetadata2 + 48);
      v55(v35, v34, v58);
      v42 = v32;
      v43 = TupleTypeMetadata2;
      v44 = v29;
      v45 = v35;
      v46 = *(v40 - 8);
      (*(v46 + 32))(v14, &v34[v41], v40);
      (*(v46 + 56))(v14, 0, 1, v40);
      v35 = v45;
      v29 = v44;
      TupleTypeMetadata2 = v43;
      v32 = v42;
      (*(v61 + 40))(v14, v35, v59);
      sub_25F305CDC();
    }

    while (v57(v34, 1, TupleTypeMetadata2) != 1);
  }

  (*(v50 + 8))(v52, v51);
  return (*(v49 + 8))(v32, v29);
}

uint64_t KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a1;
  v34 = a3;
  v35 = a2;
  v36 = a6;
  v8 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v33 = &v29 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = sub_25F305C1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v30 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v29 - v22;
  (*(a5 + 32))(v38, a4, a5);
  if ((*(v13 + 48))(v23, 1, v12) == 1)
  {
    v24 = (*(v18 + 8))(v23, v17);
    v25 = v37;
    result = v35(v24);
    if (v25)
    {
      return result;
    }

    v27 = v33;
    (*(v31 + 16))(v33, v38, v32);
    v28 = v30;
    (*(v13 + 16))(v30, v16, v12);
    (*(v13 + 56))(v28, 0, 1, v12);
    (*(a5 + 40))(v28, v27, a4, a5);
  }

  else
  {
    v16 = v23;
  }

  return (*(v13 + 32))(v36, v16, v12);
}

uint64_t KeyValueMap.setting(value:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v25 = a1;
  v11 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_25F305C1C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - v20;
  (*(*(a3 - 8) + 16))(a5, v6, a3);
  (*(v18 + 16))(v21, a2, v17);
  v22 = *(AssociatedTypeWitness - 8);
  (*(v22 + 16))(v16, v25, AssociatedTypeWitness);
  (*(v22 + 56))(v16, 0, 1, AssociatedTypeWitness);
  return (*(a4 + 40))(v16, v21, a3, a4);
}

uint64_t KeyValueMap<>.appending(contentsOf:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v51 = a1;
  v49 = a4;
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25F305C1C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v43 = &v39 - v15;
  v44 = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = sub_25F305C1C();
  v46 = *(v48 - 8);
  v17 = *(v46 + 64);
  v18 = MEMORY[0x28223BE20](v48);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v39 - v22;
  v24 = *(a2 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(*(a3 + 8) + 8);
  v52 = swift_getAssociatedTypeWitness();
  v40 = *(v52 - 8);
  v28 = *(v40 + 64);
  MEMORY[0x28223BE20](v52);
  v30 = &v39 - v29;
  v31 = *(v24 + 16);
  v31(v49, v47, a2);
  v31(v27, v51, a2);
  v51 = v30;
  sub_25F3050DC();
  v45 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = (v46 + 32);
  v46 = TupleTypeMetadata2 - 8;
  v47 = AssociatedConformanceWitness;
  v34 = v43;
  v35 = (v42 + 32);
  v41 = v50 + 40;
  v42 = AssociatedTypeWitness - 8;
  while (1)
  {
    sub_25F305CDC();
    (*v33)(v23, v20, v48);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v23, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v36 = *(TupleTypeMetadata2 + 48);
    (*v35)(v34, v23, v44);
    v37 = *(AssociatedTypeWitness - 8);
    (*(v37 + 32))(v11, &v23[v36], AssociatedTypeWitness);
    (*(v37 + 56))(v11, 0, 1, AssociatedTypeWitness);
    (*(v50 + 40))(v11, v34, v45);
  }

  return (*(v40 + 8))(v51, v52);
}

uint64_t sub_25F26B0D4(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return sub_25F304B8C();
}

void (*sub_25F26B0EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25F304B7C();
  return sub_25F1DC004;
}

uint64_t sub_25F26B174(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t ExecutionExclusivity.hashValue.getter(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

unint64_t sub_25F26B2B4()
{
  result = qword_27FD569C0;
  if (!qword_27FD569C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD569C0);
  }

  return result;
}

uint64_t withTimeout<A>(_:perform:makeTimeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  *(v7 + 64) = *a2;
  *(v7 + 96) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_25F26B3B8, 0, 0);
}

uint64_t sub_25F26B3B8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = sub_25F305C1C();
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v6;
  *(v5 + 56) = v7;
  v8 = *(MEMORY[0x277D859B8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_25F26B4D4;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return MEMORY[0x282200740](v11, v4);
}

uint64_t sub_25F26B4D4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F26B610, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25F26B610()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_25F26B674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v18;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 184) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_25F305C1C();
  *(v8 + 80) = v9;
  v10 = sub_25F305C1C();
  *(v8 + 88) = v10;
  v11 = *(v10 - 8);
  *(v8 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v13 = *(v9 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F26B7F8, 0, 0);
}

uint64_t sub_25F26B7F8()
{
  v1 = *(v0 + 184);
  if (v1 != 2)
  {
    v2 = *(v0 + 136);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = sub_25F30546C();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v4;
    *(v8 + 40) = v6;
    *(v8 + 48) = v1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v9 = sub_25F3055DC();
    sub_25F28EAB4(v2, &unk_25F311200, v8, v9);
    sub_25F1B47B0(v2);
  }

  v10 = *(v0 + 136);
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  v15 = *(v0 + 24);
  v16 = sub_25F30546C();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v12;
  v17[5] = v14;
  v17[6] = v13;

  *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v18 = sub_25F3055DC();
  sub_25F28EAB4(v10, &unk_25F3111E8, v17, v18);
  sub_25F1B47B0(v10);
  v19 = *(MEMORY[0x277D85818] + 4);
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  *v20 = v0;
  v20[1] = sub_25F26BA6C;
  v21 = *(v0 + 104);
  v22 = *(v0 + 24);

  return MEMORY[0x2822004D0](v21, 0, 0, v18);
}

uint64_t sub_25F26BA6C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_25F26C0D0;
  }

  else
  {
    v3 = sub_25F26BB80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F26BB80()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 96) + 8))(v1, *(v0 + 88));
    goto LABEL_5;
  }

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 72);
  (*(v2 + 32))(v4, v1, v3);
  (*(v2 + 16))(v5, v4, v3);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 80);
    v10 = *(*(v0 + 112) + 8);
    v10(*(v0 + 128), v9);
    v10(v8, v9);
LABEL_5:
    v11 = *(v0 + 144);
    v12 = *(v0 + 80);
    v13 = *(v0 + 184);
    v14 = **(v0 + 24);
    sub_25F3055CC();
    v15 = 0.0;
    if (v13 != 2)
    {
      v15 = *(v0 + 32);
      if (*(v0 + 184))
      {
        if (qword_27FD52858 != -1)
        {
          swift_once();
        }

        if (byte_27FD56FF0)
        {
          if (qword_27FD52860 != -1)
          {
            swift_once();
          }

          if (byte_27FD56FF1)
          {
            v15 = v15 * 20.0;
          }
        }

        else
        {
          v15 = *&qword_27FD56FE8;
        }
      }
    }

    v30 = (*(v0 + 56) + **(v0 + 56));
    v26 = *(*(v0 + 56) + 4);
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_25F26BF34;
    v28 = *(v0 + 64);
    v29.n128_f64[0] = v15;

    return v30(v29);
  }

  v16 = *(v0 + 136);
  v17 = *(v0 + 144);
  v18 = *(v0 + 128);
  v19 = *(v0 + 104);
  v20 = *(v0 + 112);
  v21 = *(v0 + 80);
  v22 = *(v0 + 24);
  (*(v7 + 32))(*(v0 + 16), *(v0 + 120), *(v0 + 72));
  v23 = *v22;
  sub_25F3055CC();
  (*(v20 + 8))(v18, v21);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_25F26BF34(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_25F26C034, 0, 0);
}

uint64_t sub_25F26C034()
{
  v1 = v0[22];
  swift_willThrow();
  v2 = v0[22];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F26C0D0()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F26C15C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 32);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F1B51E0;

  return sub_25F26B674(a1, a2, v6, v12, v8, v9, v10, v11);
}

uint64_t sub_25F26C24C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  v7 = sub_25F30614C();
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F26C318, 0, 0);
}

uint64_t sub_25F26C318()
{
  if (*(v0 + 80))
  {
    if (qword_27FD52858 != -1)
    {
      swift_once();
    }

    if (byte_27FD56FF0)
    {
      if (qword_27FD52860 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 24);
    }
  }

  else
  {
    v2 = *(v0 + 24);
  }

  v3 = *(v0 + 56);
  v4 = sub_25F30682C();
  v6 = v5;
  sub_25F30668C();
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_25F26C494;
  v8 = *(v0 + 56);

  return sub_25F26CE14(v4, v6, 0, 0, 1);
}

uint64_t sub_25F26C494()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_25F1F4CEC;
  }

  else
  {
    v6 = sub_25F26C604;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F26C604()
{
  v1 = v0[7];
  (*(*(v0[4] - 8) + 56))(v0[2], 1, 1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F26C6A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_25F26C7A0;

  return v11(a1);
}

uint64_t sub_25F26C7A0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25F26C8D0, 0, 0);
  }
}

uint64_t sub_25F26C8D0()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t withTimeout<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 8);
  *(v5 + 16) = *a2;
  *(v5 + 24) = v10;
  v11 = swift_task_alloc();
  *(v5 + 32) = v11;
  *v11 = v5;
  v11[1] = sub_25F26CA50;

  return withTimeout<A>(_:perform:makeTimeoutError:)(a1, v5 + 16, a3, a4, &unk_25F3111D0, 0, a5);
}

uint64_t sub_25F26CA50()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F26CB84, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25F26CBB8()
{
  sub_25F26CC2C();
  v1 = swift_allocError();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_25F26CC2C()
{
  result = qword_27FD569C8;
  if (!qword_27FD569C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD569C8);
  }

  return result;
}

uint64_t sub_25F26CC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1AFDB0;

  return sub_25F26C6A4(a1, v4, v5, v7, v8, v6);
}

uint64_t sub_25F26CD48(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1B51E0;

  return sub_25F26C24C(a1, v7, v6, v5, v8, v4);
}

uint64_t sub_25F26CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25F30613C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25F26CF14, 0, 0);
}

uint64_t sub_25F26CF14()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_25F30614C();
  v7 = sub_25F26D2CC(&qword_27FD569D0, MEMORY[0x277D85928]);
  sub_25F30666C();
  sub_25F26D2CC(&qword_27FD569D8, MEMORY[0x277D858F8]);
  sub_25F30616C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_25F26D0A4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_25F26D0A4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F26D260, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_25F26D260()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_25F26D2CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F26D324(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v14 - v10);
  sub_25F1B7174(a2, v7, &qword_27FD53BB0, &unk_25F309BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v11 = *v7;
  }

  else
  {
    sub_25F1D932C(v7, v11);
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A20, &qword_25F311450);
  swift_allocObject();
  v12 = sub_25F1C0138(a1);

  sub_25F1C0AC8(v11);

  sub_25F1AF698(v11, qword_27FD53BB8, &qword_25F311350);
  return v12;
}

uint64_t sub_25F26D4C8(_OWORD *a1, void (*a2)(uint64_t))
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  type metadata accessor for CrashReport(0);
  sub_25F1D6CC0(v5, a2);
  return v7;
}

uint64_t sub_25F26D544(_OWORD *a1, void (*a2)(uint64_t))
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
  sub_25F1D6CC0(v5, a2);
  return v7;
}

uint64_t CrashLogSymbolicator.__allocating_init()()
{
  v0 = swift_allocObject();
  CrashLogSymbolicator.init()();
  return v0;
}

uint64_t CrashLogSymbolicator.init()()
{
  v0 = sub_25F305A9C();
  v29 = *(v0 - 8);
  v30 = v0;
  v1 = *(v29 + 64);
  MEMORY[0x28223BE20](v0);
  v28 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25F305A4C();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v27 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = sub_25F30494C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v25 - v15;
  v25[1] = "cancelation token";
  sub_25F30493C();
  v34 = MEMORY[0x277D84F90];
  sub_25F2783D0(&qword_27FD556F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556F8, &qword_25F30E2F0);
  v17 = v26;
  sub_25F278418(&qword_27FD55700, &qword_27FD556F8, &qword_25F30E2F0);
  sub_25F305E5C();
  sub_25F1F54F4();
  v31 = v10;
  v32 = v9;
  (*(v10 + 16))(v14, v16, v9);
  (*(v17 + 16))(v27, v8, v3);
  (*(v29 + 104))(v28, *MEMORY[0x277D85260], v30);
  v18 = sub_25F305ACC();
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v19 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v20 = *(v19 + 2);
  *(v19 + 2) = v20 + 1;
  os_unfair_lock_unlock(v19 + 6);
  if (qword_27FD52770 != -1)
  {
    swift_once();
  }

  v34 = v20;
  v35 = 0;
  sub_25F305A7C();
  (*(v17 + 8))(v8, v3);
  (*(v31 + 8))(v16, v32);
  v21 = v33;
  *(v33 + 16) = v18;
  *(v21 + 24) = v20;
  v22 = sub_25F1B692C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569E0, &qword_25F311348);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v22;
  *(v21 + 32) = v23;
  return v21;
}

void CrashLogSymbolicator.symbolicate(_:with:)(uint64_t a1, __int128 **a2)
{
  v207 = sub_25F30490C();
  v206 = *(v207 - 8);
  v5 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v203 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_25F30494C();
  v204 = *(v205 - 8);
  v7 = *(v204 + 64);
  MEMORY[0x28223BE20](v205);
  v202 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v9 = *(v217 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v217);
  v13 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v188 = &v184 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v187 = &v184 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v196 = &v184 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v195 = &v184 - v21;
  MEMORY[0x28223BE20](v20);
  v194 = &v184 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569E8, &unk_25F311358);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v192 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v184 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v190 = &v184 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v191 = &v184 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v189 = &v184 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v193 = &v184 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v200 = &v184 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v201 = &v184 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v198 = &v184 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v199 = &v184 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v197 = &v184 - v47;
  MEMORY[0x28223BE20](v46);
  v209 = &v184 - v48;
  v215 = type metadata accessor for CrashReport(0);
  v213 = *(v215 - 8);
  v49 = *(v213 + 64);
  v50 = MEMORY[0x28223BE20](v215);
  v210 = &v184 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v50);
  v221 = &v184 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v184 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v212 = &v184 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v184 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v184 - v61;
  v218 = *a2;
  v219 = a1;
  v214 = v2;
  v63 = *(v2 + 32);
  v222 = a1;
  os_unfair_lock_lock((v63 + 24));
  sub_25F278254((v63 + 16), &aBlock);
  os_unfair_lock_unlock((v63 + 24));
  v220 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v184 = v13;
    v216 = v9;
    v208 = aBlock;
    if (qword_27FD52918 != -1)
    {
      swift_once();
    }

    v64 = sub_25F30479C();
    __swift_project_value_buffer(v64, qword_27FD571A8);
    v65 = v219;
    sub_25F278740(v219, v62, type metadata accessor for CrashReport);
    sub_25F278740(v65, v60, type metadata accessor for CrashReport);
    v66 = sub_25F30477C();
    v67 = sub_25F3059EC();
    v68 = os_log_type_enabled(v66, v67);
    v211 = v55;
    v185 = v29;
    v186 = 0;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&aBlock = v70;
      *v69 = 136446466;
      v71 = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
      v73 = v72;
      sub_25F1AF760(v62);
      v74 = sub_25F1C53AC(v71, v73, &aBlock);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v75 = &v60[*(v215 + 20)];
      v76 = *v75;
      v77 = v75[1];

      sub_25F1AF760(v60);
      v78 = sub_25F1C53AC(v76, v77, &aBlock);

      *(v69 + 14) = v78;
      _os_log_impl(&dword_25F1A2000, v66, v67, "Starting symbolication of report %{public}s for %s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v70, -1, -1);
      v55 = v211;
      MEMORY[0x25F8D9510](v69, -1, -1);
    }

    else
    {

      sub_25F1AF760(v60);
      sub_25F1AF760(v62);
    }

    v79 = *(v214 + 24);
    v215 = *(v214 + 16);
    v80 = v212;
    sub_25F278740(v219, v212, type metadata accessor for CrashReport);
    sub_25F278740(v80, v55, type metadata accessor for CrashReport);
    sub_25F278740(v80, v221, type metadata accessor for CrashReport);
    v81 = *(v213 + 80);
    v214 = ~v81;
    v82 = (v81 + 16) & ~v81;
    v83 = (v49 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
    v86 = swift_allocObject();
    sub_25F1D932C(v80, v86 + v82);
    v87 = v218;
    *(v86 + v83) = v218;
    v88 = (v86 + v84);
    v89 = v215;
    *v88 = v215;
    v88[1] = v79;
    v90 = v220;
    *(v86 + v85) = v220;
    v91 = v90;
    *&aBlock = v89;
    *(&aBlock + 1) = v79;

    sub_25F2033CC(v89);
    swift_bridgeObjectRetain_n();
    v219 = v79;
    sub_25F2033CC(v89);

    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F270388(v87);
      v92 = v210;
      sub_25F278740(v55, v210, type metadata accessor for CrashReport);
      v93 = (v81 + 32) & v214;
      v94 = swift_allocObject();
      v95 = v219;
      *(v94 + 16) = v89;
      *(v94 + 24) = v95;
      sub_25F1D932C(v92, v94 + v93);
      *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
      *(&aBlock + 1) = 132;
      LOBYTE(v225) = 2;
      v226 = xmmword_25F311290;
      v227 = "symbolicate(with:on:)";
      v228 = 21;
      v229 = 2;
      sub_25F2033CC(v89);
      v96 = sub_25F27779C(&aBlock, 0, 0, sub_25F279174, v94);

      v97 = v91[2];
      if (v97 != v96)
      {
        v98 = swift_allocObject();
        v98[2] = 0;
        v98[3] = 0;
        v98[4] = sub_25F2791C8;
        v98[5] = v91;
        v99 = v96[11];
        v100 = MEMORY[0x28223BE20](v98);
        *(&v184 - 2) = sub_25F2790FC;
        *(&v184 - 1) = v100;
        v101 = *(*v99 + *MEMORY[0x277D841D0] + 16);
        v102 = (*(*v99 + 48) + 3) & 0x1FFFFFFFCLL;
        swift_retain_n();
        os_unfair_lock_lock((v99 + v102));
        v103 = (v99 + v101);
        v104 = v209;
        v105 = v186;
        sub_25F279180(v103, v209);
        if (!v105)
        {
          os_unfair_lock_unlock((v99 + v102));
          v106 = v197;
          sub_25F1B7174(v104, v197, &qword_27FD569E8, &unk_25F311358);
          v107 = *(v216 + 48);
          v216 += 48;
          v108 = v107(v106, 1, v217);
          v213 = v86;
          if (v108 == 1)
          {

            sub_25F1AF698(v104, &qword_27FD569E8, &unk_25F311358);
            v109 = v106;
            v110 = v220;
          }

          else
          {
            v140 = v194;
            sub_25F23F614(v106, v194, qword_27FD53BB8, &qword_25F311350);
            v110 = v220;

            sub_25F2C9E5C(v140, 0, 0, v110);

            v109 = v209;
            sub_25F1AF698(v140, qword_27FD53BB8, &qword_25F311350);
          }

          sub_25F1AF698(v109, &qword_27FD569E8, &unk_25F311358);

          v141 = swift_allocObject();
          v141[2] = 0;
          v141[3] = 0;
          v141[4] = sub_25F27916C;
          v141[5] = v110;
          v142 = v96[11];
          v143 = MEMORY[0x28223BE20](v141);
          *(&v184 - 2) = sub_25F2790F8;
          *(&v184 - 1) = v143;
          v144 = *(*v142 + *MEMORY[0x277D841D0] + 16);
          v145 = (*(*v142 + 48) + 3) & 0x1FFFFFFFCLL;
          swift_retain_n();
          os_unfair_lock_lock((v142 + v145));
          v146 = (v142 + v144);
          v147 = v199;
          sub_25F279180(v146, v199);
          os_unfair_lock_unlock((v142 + v145));
          v148 = v198;
          sub_25F1B7174(v147, v198, &qword_27FD569E8, &unk_25F311358);
          if (v107(v148, 1, v217) == 1)
          {

            sub_25F1AF698(v147, &qword_27FD569E8, &unk_25F311358);
          }

          else
          {
            v149 = v195;
            sub_25F23F614(v148, v195, qword_27FD53BB8, &qword_25F311350);
            v148 = v147;
            v150 = v220;

            sub_25F2CA63C(v149, 0, 0, v150);

            sub_25F1AF698(v149, qword_27FD53BB8, &qword_25F311350);
          }

          sub_25F1AF698(v148, &qword_27FD569E8, &unk_25F311358);

          v151 = swift_allocObject();
          v151[2] = 0;
          v151[3] = 0;
          v151[4] = sub_25F279178;
          v151[5] = v96;
          v152 = v97[11];
          v153 = MEMORY[0x28223BE20](v151);
          *(&v184 - 2) = sub_25F2790F8;
          *(&v184 - 1) = v153;
          v154 = *(*v152 + *MEMORY[0x277D841D0] + 16);
          v155 = (*(*v152 + 48) + 3) & 0x1FFFFFFFCLL;
          swift_retain_n();
          os_unfair_lock_lock((v152 + v155));
          v156 = (v152 + v154);
          v157 = v201;
          sub_25F279180(v156, v201);
          os_unfair_lock_unlock((v152 + v155));
          v158 = v200;
          sub_25F1B7174(v157, v200, &qword_27FD569E8, &unk_25F311358);
          if (v107(v158, 1, v217) == 1)
          {

            sub_25F1AF698(v157, &qword_27FD569E8, &unk_25F311358);
            v159 = v158;
          }

          else
          {
            v160 = v158;
            v161 = v196;
            sub_25F23F614(v160, v196, qword_27FD53BB8, &qword_25F311350);

            sub_25F2CAB90(v161, 0, 0, v96);

            sub_25F1AF698(v161, qword_27FD53BB8, &qword_25F311350);
            v159 = v157;
          }

          sub_25F1AF698(v159, &qword_27FD569E8, &unk_25F311358);

          v117 = v211;
          v89 = v215;
          goto LABEL_40;
        }

        os_unfair_lock_unlock((v99 + v102));
        __break(1u);

        os_unfair_lock_unlock((v99 + v104));
        __break(1u);
LABEL_43:

        os_unfair_lock_unlock((v96 + v86));
        __break(1u);

        os_unfair_lock_unlock((&v184 + v96));
        __break(1u);

        os_unfair_lock_unlock((v96 + v104));
        __break(1u);
        return;
      }

      v89 = v215;
      v117 = v211;
    }

    else
    {
      v111 = v214;
      if (v89)
      {
        if (v89 == 1)
        {
          sub_25F1F54F4();
          v112 = sub_25F305AAC();
          *(&v226 + 1) = sub_25F278270;
          v227 = v86;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v225 = sub_25F1D8C38;
          *&v226 = &block_descriptor_18_0;
          v217 = _Block_copy(&aBlock);

          v113 = v202;
          sub_25F30492C();
          *&aBlock = MEMORY[0x277D84F90];
          sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
          v114 = v203;
          v115 = v207;
          sub_25F305E5C();
          v116 = v217;
          MEMORY[0x25F8D7C70](0, v113, v114, v217);
          _Block_release(v116);

          (*(v206 + 8))(v114, v115);
          (*(v204 + 8))(v113, v205);
        }

        else
        {
          *(&v226 + 1) = sub_25F278270;
          v227 = v86;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v225 = sub_25F1D8C38;
          *&v226 = &block_descriptor_7;
          v217 = _Block_copy(&aBlock);
          sub_25F2033CC(v89);

          v136 = v202;
          sub_25F30492C();
          v223 = MEMORY[0x277D84F90];
          sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
          v137 = v203;
          v138 = v207;
          sub_25F305E5C();
          v139 = v217;
          MEMORY[0x25F8D7C70](0, v136, v137, v217);
          _Block_release(v139);
          sub_25F2033DC(v89);
          (*(v206 + 8))(v137, v138);
          (*(v204 + 8))(v136, v205);
        }

        v117 = v211;
        goto LABEL_40;
      }

      v118 = v221;
      sub_25F270388(v87);
      v119 = v210;
      sub_25F278740(v118, v210, type metadata accessor for CrashReport);
      v120 = (v81 + 32) & v111;
      v121 = swift_allocObject();
      v122 = v219;
      *(v121 + 16) = 0;
      *(v121 + 24) = v122;
      sub_25F1D932C(v119, v121 + v120);
      *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
      *(&aBlock + 1) = 132;
      LOBYTE(v225) = 2;
      v226 = xmmword_25F311290;
      v227 = "symbolicate(with:on:)";
      v228 = 21;
      v229 = 2;
      sub_25F2033CC(0);
      v123 = sub_25F27779C(&aBlock, 0, v122, sub_25F278318, v121);

      sub_25F2033DC(0);
      v124 = v91[2];
      if (v124 == v123)
      {

        v117 = v211;
      }

      else
      {
        v213 = v86;
        v125 = swift_allocObject();
        v126 = v219;
        v125[2] = 0;
        v125[3] = v126;
        v125[4] = sub_25F27831C;
        v125[5] = v91;
        v96 = *(v123 + 88);
        v127 = MEMORY[0x28223BE20](v125);
        *(&v184 - 2) = sub_25F278340;
        *(&v184 - 1) = v127;
        v128 = *(*v96 + *MEMORY[0x277D841D0] + 16);
        v86 = (*(*v96 + 48) + 3) & 0x1FFFFFFFCLL;

        sub_25F2033CC(0);
        swift_retain_n();
        os_unfair_lock_lock((v96 + v86));
        v129 = (v96 + v128);
        v104 = v193;
        v130 = v186;
        sub_25F27834C(v129, v193);
        if (v130)
        {
          goto LABEL_43;
        }

        os_unfair_lock_unlock((v96 + v86));
        v131 = v189;
        sub_25F1B7174(v104, v189, &qword_27FD569E8, &unk_25F311358);
        v132 = *(v216 + 48);
        v216 += 48;
        v214 = v132;
        if (v132(v131, 1, v217) == 1)
        {

          v133 = &qword_27FD569E8;
          v134 = &unk_25F311358;
          v135 = v104;
        }

        else
        {
          v162 = v187;
          sub_25F23F614(v131, v187, qword_27FD53BB8, &qword_25F311350);

          sub_25F2C9E5C(v162, 0, v219, v91);

          v135 = v162;
          v131 = v193;
          v133 = qword_27FD53BB8;
          v134 = &qword_25F311350;
        }

        sub_25F1AF698(v135, v133, v134);
        sub_25F1AF698(v131, &qword_27FD569E8, &unk_25F311358);

        v163 = swift_allocObject();
        v164 = v219;
        v163[2] = 0;
        v163[3] = v164;
        v163[4] = sub_25F278368;
        v163[5] = v91;
        v165 = *(v123 + 88);
        v166 = MEMORY[0x28223BE20](v163);
        *(&v184 - 2) = sub_25F2783A8;
        *(&v184 - 1) = v166;
        v167 = *(*v165 + *MEMORY[0x277D841D0] + 16);
        v168 = (*(*v165 + 48) + 3) & 0x1FFFFFFFCLL;
        sub_25F2033CC(0);
        swift_retain_n();
        os_unfair_lock_lock((v165 + v168));
        v169 = v191;
        sub_25F279180((v165 + v167), v191);
        os_unfair_lock_unlock((v165 + v168));
        v170 = v190;
        sub_25F1B7174(v169, v190, &qword_27FD569E8, &unk_25F311358);
        if ((v214)(v170, 1, v217) == 1)
        {

          sub_25F1AF698(v169, &qword_27FD569E8, &unk_25F311358);
          v169 = v170;
        }

        else
        {
          v171 = v188;
          sub_25F23F614(v170, v188, qword_27FD53BB8, &qword_25F311350);
          v172 = v220;

          sub_25F2CA63C(v171, 0, v219, v172);

          sub_25F1AF698(v171, qword_27FD53BB8, &qword_25F311350);
        }

        sub_25F1AF698(v169, &qword_27FD569E8, &unk_25F311358);

        v173 = swift_allocObject();
        v174 = v219;
        v173[2] = 0;
        v173[3] = v174;
        v173[4] = sub_25F2783B4;
        v173[5] = v123;
        v175 = *(v124 + 88);
        v176 = MEMORY[0x28223BE20](v173);
        *(&v184 - 2) = sub_25F2790F8;
        *(&v184 - 1) = v176;
        v177 = *(*v175 + *MEMORY[0x277D841D0] + 16);
        v178 = (*(*v175 + 48) + 3) & 0x1FFFFFFFCLL;

        sub_25F2033CC(0);
        swift_retain_n();
        os_unfair_lock_lock((v175 + v178));
        v179 = v185;
        sub_25F279180((v175 + v177), v185);
        os_unfair_lock_unlock((v175 + v178));
        v180 = v192;
        sub_25F1B7174(v179, v192, &qword_27FD569E8, &unk_25F311358);
        if ((v214)(v180, 1, v217) == 1)
        {

          sub_25F1AF698(v179, &qword_27FD569E8, &unk_25F311358);
          v181 = v180;
        }

        else
        {
          v182 = v180;
          v183 = v184;
          sub_25F23F614(v182, v184, qword_27FD53BB8, &qword_25F311350);

          sub_25F2CAB90(v183, 0, v219, v123);

          sub_25F1AF698(v183, qword_27FD53BB8, &qword_25F311350);
          v181 = v179;
        }

        sub_25F1AF698(v181, &qword_27FD569E8, &unk_25F311358);

        v117 = v211;
        v89 = v215;
      }

      sub_25F2033DC(0);
    }

LABEL_40:
    sub_25F1AF760(v221);

    sub_25F2033DC(v89);

    sub_25F1AF760(v117);
  }
}

uint64_t sub_25F26F6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A80, &qword_25F3114E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_25F219494(a2), (v12 & 1) != 0))
  {
    *a3 = *(*(v10 + 56) + 8 * v11);
    a3[1] = 0;
  }

  else
  {
    *&v24 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
    *(&v24 + 1) = 132;
    v25 = 2;
    v26 = xmmword_25F3112A0;
    v27 = "symbolicate(_:with:)";
    v28 = 20;
    v29 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A88, &qword_25F3114F0);
    v14 = swift_allocObject();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A90, &qword_25F3114F8);
    v17 = *(v16 + 52);
    v18 = (*(v16 + 48) + 3) & 0x1FFFFFFFCLL;
    v19 = swift_allocObject();
    *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_25F23F614(v9, v19 + *(*v19 + *MEMORY[0x277D841D0] + 16), &qword_27FD56A80, &qword_25F3114E8);
    *(v14 + 104) = v19;
    v20 = sub_25F1C0138(&v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A98, &unk_25F311500);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    swift_retain_n();
    v22 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *a1;
    result = sub_25F2111C0(v20, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v30;
    *a3 = v20;
    a3[1] = v21;
  }

  return result;
}

uint64_t sub_25F26F944(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v73 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569E8, &unk_25F311358);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v78 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v79 = &v70 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v76 = &v70 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v77 = &v70 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v70 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v70 - v30;
  v32 = type metadata accessor for CrashReport(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32 - 8);
  sub_25F270388(a2);
  sub_25F278740(a1, &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CrashReport);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = a3;
  *(v36 + 24) = a4;
  sub_25F1D932C(&v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
  *&v82 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v82 + 1) = 132;
  v83 = 2;
  v84 = xmmword_25F311290;
  v85 = "symbolicate(with:on:)";
  v86 = 21;
  v87 = 2;
  sub_25F2033CC(a3);
  v37 = sub_25F27779C(&v82, 0, 0, sub_25F279174, v36);

  if (a5[2] == v37)
  {
  }

  v72 = a5[2];
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = sub_25F2791C8;
  v38[5] = a5;
  v39 = *(v37 + 88);
  v40 = MEMORY[0x28223BE20](v38);
  *(&v70 - 2) = sub_25F2790FC;
  *(&v70 - 1) = v40;
  v41 = *(*v39 + *MEMORY[0x277D841D0] + 16);
  v42 = (*(*v39 + 48) + 3) & 0x1FFFFFFFCLL;
  swift_retain_n();
  os_unfair_lock_lock((v39 + v42));
  sub_25F279180((v39 + v41), v31);
  os_unfair_lock_unlock((v39 + v42));
  sub_25F1B7174(v31, v29, &qword_27FD569E8, &unk_25F311358);
  v43 = v80 + 48;
  v44 = *(v80 + 48);
  v45 = v44(v29, 1, v81);
  v80 = v43;
  v71 = v44;
  if (v45 == 1)
  {

    sub_25F1AF698(v31, &qword_27FD569E8, &unk_25F311358);
    v31 = v29;
  }

  else
  {
    v47 = v29;
    v48 = v73;
    sub_25F23F614(v47, v73, qword_27FD53BB8, &qword_25F311350);

    sub_25F2C9E5C(v48, 0, 0, a5);

    sub_25F1AF698(v48, qword_27FD53BB8, &qword_25F311350);
  }

  sub_25F1AF698(v31, &qword_27FD569E8, &unk_25F311358);

  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = sub_25F27916C;
  v49[5] = a5;
  v50 = *(v37 + 88);
  v51 = MEMORY[0x28223BE20](v49);
  *(&v70 - 2) = sub_25F2790F8;
  *(&v70 - 1) = v51;
  v52 = *(*v50 + *MEMORY[0x277D841D0] + 16);
  v53 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;
  swift_retain_n();
  os_unfair_lock_lock((v50 + v53));
  v54 = v77;
  sub_25F279180((v50 + v52), v77);
  os_unfair_lock_unlock((v50 + v53));
  v55 = v76;
  sub_25F1B7174(v54, v76, &qword_27FD569E8, &unk_25F311358);
  v56 = v71;
  if (v71(v55, 1, v81) == 1)
  {

    sub_25F1AF698(v54, &qword_27FD569E8, &unk_25F311358);
    v54 = v55;
  }

  else
  {
    v57 = v55;
    v58 = v74;
    sub_25F23F614(v57, v74, qword_27FD53BB8, &qword_25F311350);

    sub_25F2CA63C(v58, 0, 0, a5);

    sub_25F1AF698(v58, qword_27FD53BB8, &qword_25F311350);
  }

  sub_25F1AF698(v54, &qword_27FD569E8, &unk_25F311358);

  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v59[4] = sub_25F279178;
  v59[5] = v37;
  v60 = *(v72 + 88);
  v61 = MEMORY[0x28223BE20](v59);
  *(&v70 - 2) = sub_25F2790F8;
  *(&v70 - 1) = v61;
  v62 = *(*v60 + *MEMORY[0x277D841D0] + 16);
  v63 = (*(*v60 + 48) + 3) & 0x1FFFFFFFCLL;
  swift_retain_n();
  os_unfair_lock_lock((v60 + v63));
  v64 = (v60 + v62);
  v65 = v79;
  sub_25F279180(v64, v79);
  os_unfair_lock_unlock((v60 + v63));
  v66 = v78;
  sub_25F1B7174(v65, v78, &qword_27FD569E8, &unk_25F311358);
  if (v56(v66, 1, v81) == 1)
  {

    sub_25F1AF698(v65, &qword_27FD569E8, &unk_25F311358);
    v67 = v66;
  }

  else
  {
    v68 = v66;
    v69 = v75;
    sub_25F23F614(v68, v75, qword_27FD53BB8, &qword_25F311350);

    sub_25F2CAB90(v69, 0, 0, v37);

    sub_25F1AF698(v69, qword_27FD53BB8, &qword_25F311350);
    v67 = v65;
  }

  sub_25F1AF698(v67, &qword_27FD569E8, &unk_25F311358);
}

uint64_t CrashLogSymbolicator.deinit()
{
  v1 = *(v0 + 24);
  sub_25F2033DC(*(v0 + 16));
  v2 = *(v0 + 32);

  return v0;
}

uint64_t CrashLogSymbolicator.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_25F2033DC(*(v0 + 16));
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F270314()
{
  v1 = v0[11];
  v2 = v0[12];
  CSRelease();
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[8];
  v6 = v0[10];

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_25F270388(__int128 *a1)
{
  result = type metadata accessor for CrashReport(0);
  v39 = v1;
  v3 = *(v1 + *(result + 44));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 32;
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = (v7 + 72 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v47 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v12 = v8[3];
        *&v51 = *(v8 + 8);
        v49 = v11;
        v50 = v12;
        v48 = v10;
        v13 = *(v8 + 8);
        v15 = v8[2];
        v14 = v8[3];
        v16 = *v8;
        v17 = v8[1];
        *v54 = v9;
        *&v54[24] = v17;
        *&v54[40] = v15;
        *&v54[56] = v14;
        *&v54[72] = v13;
        *&v54[8] = v16;
        v18 = v14;
        if (v14)
        {
          break;
        }

        sub_25F2787A8(&v47, &v42);
LABEL_5:
        result = sub_25F1AF698(v54, &qword_27FD52DF8, &qword_25F311460);
        ++v9;
        v8 = (v8 + 72);
        if (v4 == v9)
        {
          v5 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      v19 = *&v54[48];
      v40 = *&v54[48];
      v41 = v14;
      v52 = 0xD000000000000010;
      v53 = 0x800000025F319BD0;
      sub_25F2787A8(&v47, &v42);
      sub_25F1BF118();
      if (sub_25F305D5C())
      {
        goto LABEL_5;
      }

      *&v42 = v19;
      *(&v42 + 1) = v18;
      v40 = 0x2F7273752FLL;
      v41 = 0xE500000000000000;
      if (sub_25F305D5C())
      {
        goto LABEL_5;
      }

      v20 = v37;
      result = swift_isUniquelyReferenced_nonNull_native();
      v55 = v37;
      if ((result & 1) == 0)
      {
        result = sub_25F1BD148(0, *(v37 + 16) + 1, 1);
        v20 = v55;
      }

      v5 = MEMORY[0x277D84F90];
      v7 = v3 + 32;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_25F1BD148((v21 > 1), v22 + 1, 1);
        v20 = v55;
      }

      v6 = v9 + 1;
      *(v20 + 16) = v22 + 1;
      v37 = v20;
      v23 = (v20 + 80 * v22);
      v23[2] = *v54;
      v24 = *&v54[16];
      v25 = *&v54[32];
      v26 = *&v54[64];
      v23[5] = *&v54[48];
      v23[6] = v26;
      v23[3] = v24;
      v23[4] = v25;
      if (v4 - 1 == v9)
      {
        goto LABEL_18;
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_18:
  v27 = *(v37 + 16);
  if (v27)
  {
    v52 = v5;
    sub_25F3060DC();
    if (*(v37 + 16))
    {
      v28 = 0;
      v29 = 32;
      while (1)
      {
        v47 = *(v37 + v29);
        v30 = *(v37 + v29 + 16);
        v31 = *(v37 + v29 + 32);
        v32 = *(v37 + v29 + 64);
        v50 = *(v37 + v29 + 48);
        v51 = v32;
        v48 = v30;
        v49 = v31;
        v33 = v47;
        v44 = v31;
        v45 = v50;
        v46 = v32;
        v42 = v47;
        v43 = v30;
        sub_25F1B7174(&v47, &v40, &qword_27FD52DF8, &qword_25F311460);
        sub_25F271864(v33, (&v42 + 8), a1, v39);
        *&v54[32] = v44;
        *&v54[48] = v45;
        *&v54[64] = v46;
        *v54 = v42;
        *&v54[16] = v43;
        sub_25F1AF698(v54, &qword_27FD52DF8, &qword_25F311460);
        sub_25F3060AC();
        v34 = *(v52 + 16);
        sub_25F3060EC();
        sub_25F3060FC();
        sub_25F3060BC();
        if (v27 - 1 == v28)
        {
          break;
        }

        ++v28;
        v29 += 80;
        if (v28 >= *(v37 + 16))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      __break(1u);
    }

    v35 = v52;
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  *v54 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *&v54[8] = 132;
  v54[16] = 2;
  *&v54[24] = xmmword_25F3112B0;
  *&v54[40] = "resolveObfuscatedImagePaths(using:)";
  *&v54[48] = 35;
  v54[56] = 2;
  v36 = sub_25F205490(v54, 0, v35);

  return v36;
}

uint64_t sub_25F2707A4(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A28, &qword_25F311458);
  *&v3 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v3 + 1) = 132;
  v4 = 2;
  v5 = xmmword_25F3112C0;
  v6 = "symbolicate(with:on:)";
  v7 = 21;
  v8 = 2;
  return sub_25F26D4C8(&v3, sub_25F278678);
}

uint64_t sub_25F270844(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v8 = sub_25F30490C();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v14 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v16 = &v53 - v15;
  v17 = type metadata accessor for CrashReport(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8);
  v61 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v53 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  sub_25F278740(a4, &v53 - v27, type metadata accessor for CrashReport);
  sub_25F278740(v28, v26, type metadata accessor for CrashReport);
  sub_25F278740(v28, v23, type metadata accessor for CrashReport);
  v29 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v30 = (v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v28;
  v33 = v63;
  sub_25F1D932C(v32, v31 + v29);
  *(v31 + v30) = a5;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock = v33;
  v67 = v64;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    v34 = v61;
    sub_25F271148(a5, v61);
    sub_25F278740(v34, v16, type metadata accessor for CrashReport);
    swift_storeEnumTagMultiPayload();
    v35 = *(a1 + 16);
    sub_25F1D7358(v16);

    sub_25F1AF760(v23);

    sub_25F1AF698(v16, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1AF760(v34);
    v36 = v26;
  }

  else
  {
    v37 = v16;
    v38 = v61;
    v53 = v26;
    v54 = v23;
    if (v33)
    {
      v61 = a5;
      v62 = a1;
      if (v33 == 1)
      {
        sub_25F1F54F4();
        v39 = sub_25F305AAC();
        v70 = sub_25F278684;
        v71 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v67 = 1107296256;
        v68 = sub_25F1D8C38;
        v69 = &block_descriptor_111;
        v40 = _Block_copy(&aBlock);

        v41 = v55;
        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v42 = v56;
        v43 = v60;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v41, v42, v40);
        _Block_release(v40);

        (*(v59 + 8))(v42, v43);
        (*(v57 + 8))(v41, v58);
      }

      else
      {
        v70 = sub_25F278684;
        v71 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v67 = 1107296256;
        v68 = sub_25F1D8C38;
        v69 = &block_descriptor_108;
        v47 = _Block_copy(&aBlock);

        sub_25F2033CC(v33);
        v48 = v55;
        sub_25F30492C();
        v65 = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        v49 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v50 = v56;
        v51 = v60;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v48, v50, v47);
        _Block_release(v47);
        sub_25F2033DC(v49);
        (*(v59 + 8))(v50, v51);
        (*(v57 + 8))(v48, v58);
      }

      v46 = v54;
    }

    else
    {
      v44 = v54;
      sub_25F271148(a5, v61);
      sub_25F278740(v38, v37, type metadata accessor for CrashReport);
      swift_storeEnumTagMultiPayload();
      v45 = *(a1 + 16);
      sub_25F1D7358(v37);
      sub_25F1AF698(v37, &qword_27FD53BB0, &unk_25F309BA0);
      sub_25F1AF760(v38);

      v46 = v44;
    }

    sub_25F1AF760(v46);

    v36 = v53;
  }

  return sub_25F1AF760(v36);
}

uint64_t sub_25F271000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CrashReport(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F271148(a2, v12);
  sub_25F278740(v12, v8, type metadata accessor for CrashReport);
  swift_storeEnumTagMultiPayload();
  v13 = *(a3 + 16);
  sub_25F1D7358(v8);
  sub_25F1AF698(v8, &qword_27FD53BB0, &unk_25F309BA0);
  return sub_25F1AF760(v12);
}

uint64_t sub_25F271148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v5 = type metadata accessor for CrashReport(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_25F1B6AFC(MEMORY[0x277D84F90]);
  v81 = v5;
  v9 = *(v3 + *(v5 + 44));
  v10 = *(a1 + 16);
  v89 = 0;
  if (!v10)
  {

    v15 = v9;
LABEL_30:
    v93 = v15;
    *&__dst = sub_25F1B6C04(MEMORY[0x277D84F90]);
    v59 = v81;
    v60 = *(v3 + v81[12]);
    MEMORY[0x28223BE20](__dst);
    *(&v81 - 4) = &__dst;
    *(&v81 - 3) = &v113;
    *(&v81 - 2) = v3;
    v92 = sub_25F2DDA90(sub_25F27871C, (&v81 - 6), v61);
    v62 = v82;
    sub_25F278740(v3, v82, type metadata accessor for CrashReport.ID);
    v63 = v59[6];
    v64 = (v3 + v59[5]);
    v66 = *v64;
    v65 = v64[1];
    v67 = *(v3 + v63);
    v68 = *(v3 + v63 + 8);
    v69 = v59[8];
    v70 = *(v3 + v59[7]);
    v71 = sub_25F30462C();
    (*(*(v71 - 8) + 16))(v62 + v69, v3 + v69, v71);
    v72 = *(v3 + v59[9]);
    v73 = (v3 + v59[13]);
    v74 = (v62 + v59[5]);
    *v74 = v66;
    v74[1] = v65;
    v75 = (v62 + v59[6]);
    *v75 = v67;
    v75[1] = v68;
    *(v62 + v59[7]) = v70;
    *(v62 + v59[9]) = v72;
    v76 = v62 + v59[10];
    *v76 = 0u;
    *(v76 + 16) = 0u;
    *(v76 + 32) = 0;
    *(v76 + 40) = 1;
    *(v76 + 80) = 0u;
    *(v76 + 96) = 0u;
    *(v76 + 48) = 0u;
    *(v76 + 64) = 0u;
    v77 = v92;
    *(v62 + v59[11]) = v93;
    *(v62 + v59[12]) = v77;
    v79 = *v73;
    v78 = v73[1];
    v80 = (v62 + v59[13]);
    *v80 = v79;
    v80[1] = v78;
  }

  v88 = v8;
  v11 = *(v9 + 16);
  v90 = v9 + 32;

  v13 = (a1 + 48);
  *&v14 = 136446466;
  v83 = v14;
  v15 = v9;
  v84 = v3;
  v91 = v11;
  v92 = v9;
  while (1)
  {
    v23 = *(v13 - 2);
    if (v23 >= v11)
    {
      goto LABEL_4;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v23 >= *(v9 + 16))
    {
      goto LABEL_32;
    }

    v93 = v15;
    v25 = *(v13 - 1);
    v24 = *v13;
    v26 = (v90 + 72 * v23);
    v27 = v26[8];
    v28 = *(v26 + 3);
    v29 = *(v26 + 1);
    v105 = *(v26 + 2);
    v106 = v28;
    v30 = *v26;
    v107 = v27;
    v103 = v30;
    v104 = v29;
    v31 = *(&v105 + 1);
    v32 = v106;
    memmove(&__dst, v26, 0x48uLL);
    if (!v24)
    {

      v24 = v32;
      v25 = v31;
    }

    swift_beginAccess();
    *(&v110 + 1) = v25;
    *&v111 = v24;

    sub_25F2787A8(&v103, &v98);

    if (!v24)
    {
      goto LABEL_14;
    }

    v33 = *(&v104 + 1);
    if (!*(&v104 + 1))
    {

LABEL_14:
      if (qword_27FD52918 != -1)
      {
        swift_once();
      }

      v45 = sub_25F30479C();
      __swift_project_value_buffer(v45, qword_27FD571A8);
      v46 = v88;
      sub_25F278740(v3, v88, type metadata accessor for CrashReport);
      v47 = sub_25F30477C();
      v48 = sub_25F3059FC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = v107;
        v85 = *(&v106 + 1);
        v50 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v98 = v87;
        *v50 = v83;
        v86 = v48;
        v51 = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
        v53 = v52;
        sub_25F1AF760(v46);
        v54 = sub_25F1C53AC(v51, v53, &v98);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        if (v49)
        {
          v55 = v85;
        }

        else
        {
          v55 = 0x6E776F6E6B6E753CLL;
        }

        if (v49)
        {
          v56 = v49;
        }

        else
        {
          v56 = 0xE90000000000003ELL;
        }

        v57 = sub_25F1C53AC(v55, v56, &v98);
        v3 = v84;

        *(v50 + 14) = v57;
        _os_log_impl(&dword_25F1A2000, v47, v86, "[%{public}s] Ignoring image without path or arch: %s", v50, 0x16u);
        v58 = v87;
        swift_arrayDestroy();
        MEMORY[0x25F8D9510](v58, -1, -1);
        MEMORY[0x25F8D9510](v50, -1, -1);
      }

      else
      {

        sub_25F1AF760(v46);
      }

      goto LABEL_25;
    }

    v34 = v104;

    v35 = v89;
    sub_25F272988(v34, v33);

    v36 = sub_25F272A3C(v25, v24);
    v38 = v37;
    v89 = v35;

    v100 = v110;
    v101 = v111;
    v102 = v112;
    v98 = __dst;
    v99 = v109;
    type metadata accessor for ImageEntry();
    v39 = swift_allocObject();
    v40 = v111;
    *(v39 + 48) = v110;
    *(v39 + 64) = v40;
    v41 = v112;
    v42 = v109;
    *(v39 + 16) = __dst;
    *(v39 + 32) = v42;
    *(v39 + 80) = v41;
    *(v39 + 88) = v36;
    *(v39 + 96) = v38;
    sub_25F2787A8(&v98, v96);
    v43 = v113;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v96[0] = v43;
    sub_25F211350(v39, v23, isUniquelyReferenced_nonNull_native);
    v113 = *&v96[0];
LABEL_25:
    v9 = v92;
    v15 = v93;
    v11 = v91;
    v100 = v110;
    v101 = v111;
    v102 = v112;
    v98 = __dst;
    v99 = v109;
    sub_25F2787A8(&v98, v96);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F1E10EC(v15);
      v15 = result;
    }

    if (v23 >= *(v15 + 16))
    {
      goto LABEL_33;
    }

    v16 = v15 + 72 * v23;
    v94[0] = *(v16 + 32);
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    v19 = *(v16 + 80);
    v95 = *(v16 + 96);
    v94[2] = v18;
    v94[3] = v19;
    v94[1] = v17;
    v21 = v100;
    v20 = v101;
    v22 = v99;
    *(v16 + 96) = v102;
    *(v16 + 64) = v21;
    *(v16 + 80) = v20;
    *(v16 + 48) = v22;
    *(v16 + 32) = v98;
    sub_25F278804(v94);
    v96[2] = v110;
    v96[3] = v111;
    v97 = v112;
    v96[0] = __dst;
    v96[1] = v109;
    result = sub_25F278804(v96);
LABEL_4:
    v13 += 3;
    if (!--v10)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_25F271864(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v8 = type metadata accessor for CrashReport(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[1];
  v13 = a2[3];
  v63 = a2[2];
  v64 = v13;
  v14 = a2[1];
  v61 = *a2;
  v62 = v14;
  v15 = a2[3];
  v51[0] = v63;
  v51[1] = v15;
  v65 = *(a2 + 8);
  v52 = *(a2 + 8);
  v49 = v61;
  v50 = v12;
  sub_25F271E48(a3);
  v17 = v16;
  sub_25F278740(a4, v11, type metadata accessor for CrashReport);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_25F1D932C(v11, v20 + v18);
  v21 = v20 + v19;
  v22 = v64;
  *(v21 + 32) = v63;
  *(v21 + 48) = v22;
  *(v21 + 64) = v65;
  v23 = v62;
  *v21 = v61;
  *(v21 + 16) = v23;
  *(v20 + ((v19 + 79) & 0xFFFFFFFFFFFFFFF8)) = a1;
  *&v55 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v55 + 1) = 132;
  v56 = 2;
  v57 = xmmword_25F3112D0;
  v58 = "resolveObfuscatedImagePaths(using:)";
  v59 = 35;
  v60 = 2;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25F2788B4;
  *(v24 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A38, &qword_25F311470);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A40, &unk_25F311478);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v17;
  *(v25 + 104) = v26;
  *(v25 + 112) = sub_25F27896C;
  *(v25 + 120) = v24;
  *(v25 + 128) = 0u;
  *(v25 + 144) = 0u;
  sub_25F2787A8(&v61, &v49);

  v27 = sub_25F1C07A0(&v55);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = sub_25F278974;
  v28[5] = v27;
  v29 = *(v17 + 88);
  v34[4] = sub_25F278984;
  v34[5] = v28;
  swift_retain_n();
  os_unfair_lock_lock(v29 + 25);
  sub_25F208BF4(&v29[4], &v46);
  os_unfair_lock_unlock(v29 + 25);
  *(v45 + 10) = *(v48 + 10);
  v44[0] = v46;
  v44[1] = v47;
  v45[0] = v48[0];
  if (BYTE9(v48[1]) == 255)
  {
  }

  else
  {
    v49 = v46;
    v50 = v47;
    v51[0] = v48[0];
    *(v51 + 10) = *(v48 + 10);

    sub_25F1B7174(v44, v42, &qword_27FD54C28, &unk_25F30CD20);
    sub_25F2CC468(&v49, 0, 0, v27);

    sub_25F1AF698(v44, &qword_27FD54C28, &unk_25F30CD20);
  }

  v42[0] = v46;
  v42[1] = v47;
  v43[0] = v48[0];
  *(v43 + 10) = *(v48 + 10);
  sub_25F1AF698(v42, &qword_27FD54C28, &unk_25F30CD20);

  v30 = swift_allocObject();
  v34[1] = v34;
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = sub_25F27899C;
  v30[5] = v27;
  v31 = *(v17 + 88);
  v32 = MEMORY[0x28223BE20](v30);
  v34[-2] = sub_25F2789EC;
  v34[-1] = v32;
  swift_retain_n();
  os_unfair_lock_lock(v31 + 25);
  sub_25F209764(&v31[4], &v39);
  os_unfair_lock_unlock(v31 + 25);
  *(v38 + 10) = *(v41 + 10);
  v37[0] = v39;
  v37[1] = v40;
  v38[0] = v41[0];
  if (BYTE9(v41[1]) == 255)
  {
  }

  else
  {
    if (BYTE9(v41[1]) > 1u)
    {
      v53[0] = v39;
      v53[1] = v40;
      v54[0] = v41[0];
      *(v54 + 9) = *(v41 + 9);

      sub_25F2737AC(v53, sub_25F1C1170);
    }

    else
    {
      sub_25F1B7174(v37, v35, &qword_27FD54C28, &unk_25F30CD20);
    }

    sub_25F1AF698(v37, &qword_27FD54C28, &unk_25F30CD20);
  }

  v35[0] = v39;
  v35[1] = v40;
  v36[0] = v41[0];
  *(v36 + 10) = *(v41 + 10);
  sub_25F1AF698(v35, &qword_27FD54C28, &unk_25F30CD20);

  return v27;
}

void sub_25F271E48(__int128 *a1)
{
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (!v8)
  {
    *&v46 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
    *(&v46 + 1) = 132;
    LOBYTE(v47[0]) = 2;
    *(v47 + 8) = xmmword_25F311310;
    *(&v47[1] + 1) = "resolvePath(with:)";
    *&v47[2] = 18;
    BYTE8(v47[2]) = 2;
    v68[0] = v7;
    v69[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A50, &qword_25F311488);
    swift_allocObject();
    sub_25F1C04D8(&v46);

    sub_25F1C0E30(v68);

    return;
  }

  if (v34 >> 62)
  {
    v9 = sub_25F30631C();
  }

  else
  {
    v9 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    *&v68[0] = MEMORY[0x277D84F90];
    sub_25F3060DC();
    if (v9 < 0)
    {
      __break(1u);

      os_unfair_lock_unlock(v2 + 25);
      __break(1u);

      os_unfair_lock_unlock(v43 + 1);
      __break(1u);
      return;
    }

    v33 = v7;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A58, &qword_25F311498);
    v12 = 0;
    v31 = v34 & 0xC000000000000001;
    v32 = v11;
    v30 = xmmword_25F3112E0;
    do
    {
      if (v31)
      {
        v13 = MEMORY[0x25F8D81E0](v12, v34);
      }

      else
      {
        v13 = *(v34 + v12 + 4);
      }

      v14 = v33;
      ++v12;
      v15 = sub_25F30546C();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = v13;
      v16[3] = v14;
      v16[4] = v8;
      *&v62 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
      *(&v62 + 1) = 132;
      v63 = 2;
      v64 = v30;
      v65 = "resolvePath(with:)";
      v66 = 18;
      v67 = 2;
      v17 = MEMORY[0x28223BE20](v16);
      *(&v30 - 6) = v6;
      *(&v30 - 5) = &unk_25F3114A0;
      *(&v30 - 4) = v17;
      *(&v30 - 3) = nullsub_2;
      *(&v30 - 2) = 0;

      sub_25F26D544(&v62, sub_25F278B28);

      sub_25F1AF698(v6, &qword_27FD52B40, &qword_25F307EA0);
      sub_25F3060AC();
      v18 = *(*&v68[0] + 16);
      sub_25F3060EC();
      sub_25F3060FC();
      sub_25F3060BC();
    }

    while (v9 != v12);
    v10 = *&v68[0];
  }

  *&v56 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v56 + 1) = 132;
  v57 = 2;
  v58 = xmmword_25F3112F0;
  v59 = "resolvePath(with:)";
  v60 = 18;
  v61 = 2;
  v19 = sub_25F2055A0(&v56, 0, v10);

  *&v50 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v50 + 1) = 132;
  v51 = 2;
  v52 = xmmword_25F311300;
  v53 = "resolvePath(with:)";
  v54 = 18;
  v55 = 2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F273530;
  *(v20 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A60, &qword_25F3114A8);
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A68, &qword_25F3114B0);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v19;
  *(v21 + 104) = v22;
  *(v21 + 112) = sub_25F278B38;
  *(v21 + 120) = v20;
  *(v21 + 128) = 0u;
  *(v21 + 144) = 0u;

  v23 = sub_25F1C04D8(&v50);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = sub_25F278B40;
  v24[5] = v23;
  v25 = *(v19 + 88);
  v26 = MEMORY[0x28223BE20](v24);
  *(&v30 - 2) = sub_25F278B50;
  *(&v30 - 1) = v26;
  swift_retain_n();
  os_unfair_lock_lock(v25 + 25);
  sub_25F278BB4(&v25[4], &v46);
  os_unfair_lock_unlock(v25 + 25);
  *(v45 + 10) = *(&v47[1] + 10);
  v44[0] = v46;
  v44[1] = v47[0];
  v45[0] = v47[1];
  v34 = &v30;
  if (BYTE9(v47[2]) == 255)
  {
  }

  else
  {
    v68[0] = v46;
    v68[1] = v47[0];
    *v69 = v47[1];
    *&v69[10] = *(&v47[1] + 10);

    sub_25F1B7174(v44, v42, &qword_27FD56A70, &qword_25F3114B8);
    sub_25F2CBECC(v68, 0, 0, v23);

    sub_25F1AF698(v44, &qword_27FD56A70, &qword_25F3114B8);
  }

  v42[0] = v46;
  v42[1] = v47[0];
  v43[0] = v47[1];
  *(v43 + 10) = *(&v47[1] + 10);
  sub_25F1AF698(v42, &qword_27FD56A70, &qword_25F3114B8);

  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = sub_25F278BD0;
  v27[5] = v23;
  v28 = *(v19 + 88);
  v29 = MEMORY[0x28223BE20](v27);
  *(&v30 - 2) = sub_25F278C20;
  *(&v30 - 1) = v29;
  swift_retain_n();
  os_unfair_lock_lock(v28 + 25);
  sub_25F2791B0(&v28[4], &v39);
  os_unfair_lock_unlock(v28 + 25);
  *(v38 + 10) = *(v41 + 10);
  v37[0] = v39;
  v37[1] = v40;
  v38[0] = v41[0];
  if (BYTE9(v41[1]) == 255)
  {
  }

  else
  {
    if (BYTE9(v41[1]) > 1u)
    {
      v48[0] = v39;
      v48[1] = v40;
      v49[0] = v41[0];
      *(v49 + 9) = *(v41 + 9);

      sub_25F2737AC(v48, sub_25F1C0E30);
    }

    else
    {
      sub_25F1B7174(v37, v35, &qword_27FD56A70, &qword_25F3114B8);
    }

    sub_25F1AF698(v37, &qword_27FD56A70, &qword_25F3114B8);
  }

  v35[0] = v39;
  v35[1] = v40;
  v36[0] = v41[0];
  *(v36 + 10) = *(v41 + 10);
  sub_25F1AF698(v35, &qword_27FD56A70, &qword_25F3114B8);
}

uint64_t sub_25F272678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for CrashReport(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v36 = v14;
  if (qword_27FD52918 != -1)
  {
    swift_once();
  }

  v16 = sub_25F30479C();
  __swift_project_value_buffer(v16, qword_27FD571A8);
  sub_25F278740(a2, v13, type metadata accessor for CrashReport);
  sub_25F2787A8(a3, v37);

  v17 = sub_25F30477C();
  v18 = sub_25F3059FC();
  sub_25F278804(a3);

  if (os_log_type_enabled(v17, v18))
  {
    v35 = a4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37[0] = v20;
    *v19 = 136446722;
    v21 = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
    v23 = v22;
    sub_25F1AF760(v13);
    v24 = sub_25F1C53AC(v21, v23, v37);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = *(a3 + 48);
    if (v25)
    {
      v26 = *(a3 + 40);
      v27 = v25;
    }

    else
    {
      v27 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_25F1C53AC(v26, v27, v37);

    *(v19 + 14) = v29;
    *(v19 + 22) = 2080;
    v28 = v36;
    if (v15)
    {
      v30 = v36;
    }

    else
    {
      v30 = 7104878;
    }

    if (v15)
    {
      v31 = v15;
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v32 = sub_25F1C53AC(v30, v31, v37);

    *(v19 + 24) = v32;
    _os_log_impl(&dword_25F1A2000, v17, v18, "[%{public}s] Resolved %s to %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v20, -1, -1);
    MEMORY[0x25F8D9510](v19, -1, -1);

    a4 = v35;
  }

  else
  {

    sub_25F1AF760(v13);
    v28 = v36;
  }

  *a5 = a4;
  a5[1] = v28;
  a5[2] = v15;
}

uint64_t sub_25F272958@<X0>(uint64_t *a1@<X8>)
{
  result = CSArchitectureGetArchitectureForName();
  *a1 = result;
  return result;
}

uint64_t sub_25F272988(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return CSArchitectureGetArchitectureForName();
  }

  type metadata accessor for _CSArchitecture(0);
  result = sub_25F305F6C();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_25F272A3C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return CSSymbolicatorCreateWithPathAndArchitecture();
  }

  type metadata accessor for _CSTypeRef(0);
  result = sub_25F305F6C();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_25F272AF4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v77 = a4;
  v11 = type metadata accessor for CrashReport(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v90[9] = *(a1 + 57);
  v15 = a1[3];
  v89 = a1[2];
  *v90 = v15;
  v16 = a1[1];
  v87 = *a1;
  v88 = v16;
  v18 = *(&v87 + 1);
  v17 = v87;
  v91 = a2;
  v19 = *a2;
  if (*(v19 + 16))
  {
    v20 = *(&v87 + 1);
    v21 = v87;
    v22 = sub_25F219518(v87, *(&v87 + 1));
    v17 = v21;
    v18 = v20;
    v6 = v5;
    if (v23)
    {
      v24 = (*(v19 + 56) + 80 * v22);
      v83 = *v24;
      v26 = v24[2];
      v25 = v24[3];
      v27 = *(v24 + 57);
      v84 = v24[1];
      v85 = v26;
      *(v86 + 9) = v27;
      v86[0] = v25;
      v28 = v24[3];
      *(a5 + 32) = v24[2];
      *(a5 + 48) = v28;
      *(a5 + 57) = *(v24 + 57);
      v29 = v24[1];
      *a5 = *v24;
      *(a5 + 16) = v29;
      return sub_25F1DF984(&v83, v78);
    }
  }

  v31 = *a3;
  if (!*(*a3 + 16) || (v76 = v17, v32 = sub_25F2192AC(v17), (v33 & 1) == 0))
  {
    v54 = a1[3];
    *(a5 + 32) = a1[2];
    *(a5 + 48) = v54;
    *(a5 + 57) = *(a1 + 57);
    v55 = a1[1];
    *a5 = *a1;
    *(a5 + 16) = v55;
    return sub_25F1DF984(&v87, &v83);
  }

  v34 = v6;
  v35 = *(*(v31 + 56) + 8 * v32);
  v36 = qword_27FD52918;

  if (v36 != -1)
  {
    swift_once();
  }

  v74 = v18;
  v37 = sub_25F30479C();
  __swift_project_value_buffer(v37, qword_27FD571A8);
  sub_25F278740(v77, v14, type metadata accessor for CrashReport);
  sub_25F1DF984(&v87, &v83);

  v38 = sub_25F30477C();
  v39 = sub_25F3059FC();
  sub_25F1DF9E0(&v87);

  v40 = os_log_type_enabled(v38, v39);
  v77 = v35;
  v75 = v34;
  if (v40)
  {
    LODWORD(v72) = v39;
    v73 = v38;
    v41 = 0xE90000000000003ELL;
    v42 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v83 = v71;
    *v42 = 136446722;
    v43 = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
    v45 = v44;
    sub_25F1AF760(v14);
    v46 = sub_25F1C53AC(v43, v45, &v83);
    v47 = 0x6E776F6E6B6E753CLL;

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    if (*(&v88 + 1))
    {
      v48 = v88;
    }

    else
    {
      v48 = 0x6E776F6E6B6E753CLL;
    }

    if (*(&v88 + 1))
    {
      v49 = *(&v88 + 1);
    }

    else
    {
      v49 = 0xE90000000000003ELL;
    }

    v50 = sub_25F1C53AC(v48, v49, &v83);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2080;
    v35 = v77;
    if (*(v77 + 80))
    {
      v47 = *(v77 + 72);
      v41 = *(v77 + 80);
    }

    v51 = sub_25F1C53AC(v47, v41, &v83);

    *(v42 + 24) = v51;
    v52 = v73;
    _os_log_impl(&dword_25F1A2000, v73, v72, "[%{public}s] Attempting to symbolicate %s in %s", v42, 0x20u);
    v53 = v71;
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v53, -1, -1);
    MEMORY[0x25F8D9510](v42, -1, -1);
  }

  else
  {

    sub_25F1AF760(v14);
  }

  v85 = v89;
  v86[0] = *v90;
  *(v86 + 9) = *&v90[9];
  v83 = v87;
  v84 = v88;
  v57 = sub_25F273048(v35);
  v59 = v58;
  v60 = v56;
  v62 = v61;
  v63 = *&v90[8];
  v64 = v90[24];
  v72 = *v90;
  v73 = *&v90[16];
  v80 = v87;
  v81 = v88;
  v82 = v89;
  if (v58 >= 2)
  {
    v71 = v56;
    sub_25F1DF984(&v87, &v83);

    v63 = v59;
LABEL_25:
    v65 = v73;
    if ((v62 & 1) == 0)
    {
      v65 = v71;
    }

    v64 &= v62;
    goto LABEL_28;
  }

  sub_25F1DF984(&v87, &v83);
  sub_25F27888C(v57, v59);
  if (v59 != 1)
  {
    v71 = v60;
    sub_25F27888C(v57, v59);
    v57 = v72;
    goto LABEL_25;
  }

  v57 = v72;
  v65 = v73;
LABEL_28:
  v66 = v64 & 1;
  v79 = v66;
  v83 = v80;
  v84 = v81;
  v85 = v82;
  *&v86[0] = v57;
  *(&v86[0] + 1) = v63;
  *&v86[1] = v65;
  BYTE8(v86[1]) = v66;
  sub_25F1DF984(&v83, v78);
  v67 = v91;
  v68 = *v91;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = *v67;
  *v67 = 0x8000000000000000;
  sub_25F21149C(&v83, v76, v74, isUniquelyReferenced_nonNull_native);
  *v67 = v78[0];

  v70 = v81;
  *a5 = v80;
  *(a5 + 16) = v70;
  *(a5 + 32) = v82;
  *(a5 + 48) = v57;
  *(a5 + 56) = v63;
  *(a5 + 64) = v65;
  *(a5 + 72) = v66;
  return result;
}

uint64_t sub_25F273048(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  CSSymbolicatorGetSymbolOwner();
  if (CSIsNull())
  {
    return 0;
  }

  result = CSSymbolOwnerGetBaseAddress();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__CFADD__(result, v2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!(result + v2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  CSSymbolOwnerGetSymbolWithAddress();
  if (CSIsNull())
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  aBlock[4] = sub_25F2788A0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F273734;
  aBlock[3] = &block_descriptor_123;
  v9 = _Block_copy(aBlock);

  CSSymbolOwnerForEachStackFrameAtAddress();
  _Block_release(v9);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v13 = *(v7 + 24);

  return v10;
}

uint64_t sub_25F273274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_25F273294, a2, 0);
}

uint64_t sub_25F273294()
{
  v1 = v0[5];
  v2 = sub_25F23DA24();
  v0[8] = v2;
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_25F273348;

  return MEMORY[0x282200460](v0 + 2, v2, &type metadata for BuiltProductPathResolver.Cache);
}

uint64_t sub_25F273348()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_25F273474, v3, 0);
}

uint64_t sub_25F273474()
{
  v1 = sub_25F23E418(v0[6], v0[7], v0[2], v0[3]);
  v3 = v2;

  v0[10] = v1;
  v0[11] = v3;

  return MEMORY[0x2822009F8](sub_25F27350C, 0, 0);
}

uint64_t sub_25F273530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_25F2DE23C(*a1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_25F273590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = CSIsNull();
  if (result)
  {
    return result;
  }

  if (CSSourceInfoGetPath())
  {
    v10 = sub_25F304F8C();
    v11 = v9;
    if (v10 == 0xD000000000000014 && 0x800000025F319BB0 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_25F30659C() ^ 1;
    }

    swift_beginAccess();
    v13 = *(a5 + 24);
    if (v13)
    {
      if (*(a5 + 16) == 0xD000000000000014 && v13 == 0x800000025F319BB0)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = *(a5 + 24);
        if ((sub_25F30659C() & v12 & 1) == 0)
        {
LABEL_14:

          goto LABEL_15;
        }
      }
    }

    swift_beginAccess();
    *(a5 + 16) = v10;
    *(a5 + 24) = v11;
    goto LABEL_14;
  }

LABEL_15:
  LineNumber = CSSourceInfoGetLineNumber();
  result = swift_beginAccess();
  if ((*(a6 + 24) & 1) != 0 || *(a6 + 16) <= 0 && LineNumber)
  {
    result = swift_beginAccess();
    *(a6 + 16) = LineNumber;
    *(a6 + 24) = 0;
  }

  return result;
}

uint64_t sub_25F273734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

void sub_25F2737AC(_OWORD *a1, void (*a2)(_OWORD *))
{
  v5 = *(v2 + 104);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  *(v5 + 16) = 1;
  os_unfair_lock_unlock((v5 + 24));
  if (v6 >= 2)
  {
    v7 = a1[1];
    v11[0] = *a1;
    v11[1] = v7;
    *v12 = a1[2];
    *&v12[9] = *(a1 + 41);
    v13 = 2;
    a2(v11);
    v8 = a1[1];
    v9[0] = *a1;
    v9[1] = v8;
    v10[0] = a1[2];
    *(v10 + 9) = *(a1 + 41);
    (*(*v6 + 192))(v9);
  }
}

uint64_t sub_25F273888(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v64 = a2;
  v65 = a5;
  v63 = a4;
  v67 = a3;
  v6 = sub_25F30490C();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F30494C();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v9);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v56 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569F8, &unk_25F311420);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v56 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v66 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v69 = &v56 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  MEMORY[0x28223BE20](v26);
  v68 = &v56 - v29;
  sub_25F1B7174(a1, v15, qword_27FD53BB8, &qword_25F311350);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25F1D932C(v15, v19);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *v19 = *v15;
LABEL_5:
    v31 = v69;
    swift_storeEnumTagMultiPayload();
    v32 = 0;
    goto LABEL_7;
  }

  v32 = 1;
  v31 = v69;
LABEL_7:
  (*(v21 + 56))(v19, v32, 1, v20);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v36 = v19;
    v37 = v68;
    sub_25F23F614(v36, v68, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1B7174(v37, v28, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1B7174(v28, v31, &qword_27FD53BB0, &unk_25F309BA0);
    v38 = v66;
    sub_25F1B7174(v28, v66, &qword_27FD53BB0, &unk_25F309BA0);
    v39 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v40 = swift_allocObject();
    v41 = v63;
    v42 = v65;
    *(v40 + 16) = v63;
    *(v40 + 24) = v42;
    sub_25F23F614(v28, v40 + v39, &qword_27FD53BB0, &unk_25F309BA0);
    v43 = v64;
    aBlock = v64;
    v72 = v67;
    swift_retain_n();
    if (ExecutionLane.isCurrentLane.getter())
    {
      v44 = v31;
    }

    else
    {
      if (v43)
      {
        if (v43 == 1)
        {
          sub_25F1F54F4();
          v45 = sub_25F305AAC();
          v75 = sub_25F278524;
          v76 = v40;
          aBlock = MEMORY[0x277D85DD0];
          v72 = 1107296256;
          v73 = sub_25F1D8C38;
          v74 = &block_descriptor_70;
          v46 = _Block_copy(&aBlock);

          v47 = v57;
          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
          v48 = v58;
          v49 = v62;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v47, v48, v46);
          _Block_release(v46);

          (*(v61 + 8))(v48, v49);
          v50 = v47;
          v38 = v66;
          (*(v59 + 8))(v50, v60);
        }

        else
        {
          v75 = sub_25F278524;
          v76 = v40;
          aBlock = MEMORY[0x277D85DD0];
          v72 = 1107296256;
          v73 = sub_25F1D8C38;
          v74 = &block_descriptor_67;
          v63 = _Block_copy(&aBlock);

          sub_25F2033CC(v43);
          v51 = v57;
          sub_25F30492C();
          v70 = MEMORY[0x277D84F90];
          sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
          v52 = v58;
          v53 = v62;
          sub_25F305E5C();
          v54 = v63;
          MEMORY[0x25F8D7C70](0, v51, v52, v63);
          _Block_release(v54);
          sub_25F2033DC(v43);
          (*(v61 + 8))(v52, v53);
          (*(v59 + 8))(v51, v60);
        }

        v31 = v69;
        goto LABEL_18;
      }

      v44 = v38;
    }

    v41(v44);

LABEL_18:
    sub_25F1AF698(v38, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1AF698(v31, &qword_27FD53BB0, &unk_25F309BA0);
    v35 = v68;
    v33 = &qword_27FD53BB0;
    v34 = &unk_25F309BA0;
    return sub_25F1AF698(v35, v33, v34);
  }

  v33 = &qword_27FD569F8;
  v34 = &unk_25F311420;
  v35 = v19;
  return sub_25F1AF698(v35, v33, v34);
}

void sub_25F2740C4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v10 = *a1;
  v11 = sub_25F30490C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v38 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F30494C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 57);
  if (*(a1 + 57))
  {
    if (v21 != 1)
    {
      return;
    }

    v34 = v18;
    v35 = v17;
    v36 = v12;
    v37 = v11;
    v22 = v10;
  }

  else
  {
    v34 = v18;
    v35 = v17;
    v36 = v12;
    v37 = v11;
  }

  v46 = v21 & 1;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = v10;
  *(v23 + 40) = v46;
  aBlock = a2;
  v41 = a3;
  sub_25F1A7AB4(v10, v21);
  sub_25F1A7AB4(v10, v21);

  sub_25F1A7AB4(v10, v21);

  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1A7AE0(v10, v21);
    aBlock = v10;
    LOBYTE(v41) = v21 & 1;
    a4(&aBlock);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v33 = sub_25F305AAC();
        v44 = sub_25F27866C;
        v45 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v41 = 1107296256;
        v42 = sub_25F1D8C38;
        v43 = &block_descriptor_102;
        v32 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v24 = v37;
        v25 = v38;
        sub_25F305E5C();
        v27 = v32;
        v26 = v33;
        MEMORY[0x25F8D7C70](0, v20, v25, v32);
        _Block_release(v27);

        (*(v36 + 8))(v25, v24);
        (*(v34 + 8))(v20, v35);
      }

      else
      {
        v44 = sub_25F27866C;
        v45 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v41 = 1107296256;
        v42 = sub_25F1D8C38;
        v43 = &block_descriptor_99;
        v32 = _Block_copy(&aBlock);

        v33 = a3;
        sub_25F2033CC(a2);
        sub_25F30492C();
        v39 = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v28 = v37;
        v29 = v38;
        sub_25F305E5C();
        v30 = v32;
        MEMORY[0x25F8D7C70](0, v20, v29, v32);
        _Block_release(v30);
        sub_25F2033DC(a2);
        (*(v36 + 8))(v29, v28);
        (*(v34 + 8))(v20, v35);
      }
    }

    else
    {
      aBlock = v10;
      LOBYTE(v41) = v21 & 1;
      a4(&aBlock);
    }

    sub_25F1A7AE0(v10, v21);
  }

  sub_25F1A7AE0(v10, v21);
  sub_25F1A7AE0(v10, v21);
}

void sub_25F274658(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v42 = a3;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = sub_25F30490C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F30494C();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 57);
  if (*(a1 + 57))
  {
    if (v22 != 1)
    {
      return;
    }

    v41 = v21;
    v36 = v19;
    v37 = v18;
    v38 = v13;
    v39 = v12;
    v23 = v9;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v41 = v21;
    v36 = v19;
    v37 = v18;
    v38 = v13;
    v39 = v12;
  }

  v50 = v22 & 1;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  *(v24 + 32) = v9;
  *(v24 + 40) = v10;
  *(v24 + 48) = v11;
  *(v24 + 56) = v50;
  aBlock = a2;
  v45 = v42;
  sub_25F208938(v9, v10, v11, v22);
  sub_25F208938(v9, v10, v11, v22);

  sub_25F208938(v9, v10, v11, v22);

  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F208960(v9, v10, v11, v22);
    aBlock = v9;
    v45 = v10;
    v46 = v11;
    LOBYTE(v47) = v22 & 1;
    a4(&aBlock);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v42 = sub_25F305AAC();
        v48 = sub_25F2788A8;
        v49 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v45 = 1107296256;
        v46 = sub_25F1D8C38;
        v47 = &block_descriptor_145;
        v35 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        v34 = sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v25 = v40;
        v26 = v39;
        sub_25F305E5C();
        v27 = v42;
        v28 = v35;
        MEMORY[0x25F8D7C70](0, v41, v25, v35);
        _Block_release(v28);

        (*(v38 + 8))(v25, v26);
        (*(v36 + 8))(v41, v37);
      }

      else
      {
        v48 = sub_25F2788A8;
        v49 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v45 = 1107296256;
        v46 = sub_25F1D8C38;
        v47 = &block_descriptor_142;
        v35 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v43 = MEMORY[0x277D84F90];
        v34 = sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v29 = v39;
        v30 = v40;
        sub_25F305E5C();
        v31 = v30;
        v32 = v35;
        MEMORY[0x25F8D7C70](0, v41, v31, v35);
        _Block_release(v32);
        sub_25F2033DC(a2);
        (*(v38 + 8))(v40, v29);
        (*(v36 + 8))(v41, v37);
      }
    }

    else
    {
      aBlock = v9;
      v45 = v10;
      v46 = v11;
      LOBYTE(v47) = v22 & 1;
      a4(&aBlock);
    }

    sub_25F208960(v9, v10, v11, v22);
  }

  sub_25F208960(v9, v10, v11, v22);
  sub_25F208960(v9, v10, v11, v22);
}

void sub_25F274C48(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v10 = *a1;
  v11 = sub_25F30490C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v38 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F30494C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 57);
  if (*(a1 + 57))
  {
    if (v21 != 1)
    {
      return;
    }

    v34 = v18;
    v35 = v17;
    v36 = v12;
    v37 = v11;
    v22 = v10;
  }

  else
  {
    v34 = v18;
    v35 = v17;
    v36 = v12;
    v37 = v11;
  }

  v46 = v21 & 1;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = v10;
  *(v23 + 40) = v46;
  aBlock = a2;
  v41 = a3;
  sub_25F1A7AB4(v10, v21);
  sub_25F1A7AB4(v10, v21);

  sub_25F1A7AB4(v10, v21);

  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1A7AE0(v10, v21);
    aBlock = v10;
    LOBYTE(v41) = v21 & 1;
    a4(&aBlock);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v33 = sub_25F305AAC();
        v44 = sub_25F27866C;
        v45 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v41 = 1107296256;
        v42 = sub_25F1D8C38;
        v43 = &block_descriptor_216;
        v32 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v24 = v37;
        v25 = v38;
        sub_25F305E5C();
        v27 = v32;
        v26 = v33;
        MEMORY[0x25F8D7C70](0, v20, v25, v32);
        _Block_release(v27);

        (*(v36 + 8))(v25, v24);
        (*(v34 + 8))(v20, v35);
      }

      else
      {
        v44 = sub_25F27866C;
        v45 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v41 = 1107296256;
        v42 = sub_25F1D8C38;
        v43 = &block_descriptor_213;
        v32 = _Block_copy(&aBlock);

        v33 = a3;
        sub_25F2033CC(a2);
        sub_25F30492C();
        v39 = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v28 = v37;
        v29 = v38;
        sub_25F305E5C();
        v30 = v32;
        MEMORY[0x25F8D7C70](0, v20, v29, v32);
        _Block_release(v30);
        sub_25F2033DC(a2);
        (*(v36 + 8))(v29, v28);
        (*(v34 + 8))(v20, v35);
      }
    }

    else
    {
      aBlock = v10;
      LOBYTE(v41) = v21 & 1;
      a4(&aBlock);
    }

    sub_25F1A7AE0(v10, v21);
  }

  sub_25F1A7AE0(v10, v21);
  sub_25F1A7AE0(v10, v21);
}

void sub_25F2751DC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v40 = a3;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = sub_25F30490C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F30494C();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 57);
  if (*(a1 + 57))
  {
    if (v22 != 1)
    {
      return;
    }

    v38 = v11;
    v39 = v21;
    v35 = v15;
    v36 = v19;
    v37 = v18;
    v23 = v9;
    v10 = 0;
  }

  else
  {
    v38 = v11;
    v39 = v21;
    v35 = v15;
    v36 = v19;
    v37 = v18;
  }

  v48 = v22 & 1;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  *(v24 + 32) = v9;
  *(v24 + 40) = v10;
  *(v24 + 48) = v48;
  aBlock = a2;
  v43 = v40;
  sub_25F208B84(v9, v10, v22);
  sub_25F208B84(v9, v10, v22);

  sub_25F208B84(v9, v10, v22);

  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F208B9C(v9, v10, v22);
    aBlock = v9;
    v43 = v10;
    LOBYTE(v44) = v22 & 1;
    a4(&aBlock);
  }

  else
  {
    v34 = v12;
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v40 = sub_25F305AAC();
        v46 = sub_25F278A68;
        v47 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v43 = 1107296256;
        v44 = sub_25F1D8C38;
        v45 = &block_descriptor_180;
        v25 = _Block_copy(&aBlock);

        v26 = v39;
        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        v33 = sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v27 = v35;
        v28 = v38;
        sub_25F305E5C();
        v29 = v40;
        MEMORY[0x25F8D7C70](0, v26, v27, v25);
        _Block_release(v25);

        (*(v34 + 8))(v27, v28);
        (*(v36 + 8))(v26, v37);
      }

      else
      {
        v46 = sub_25F278A68;
        v47 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v43 = 1107296256;
        v44 = sub_25F1D8C38;
        v45 = &block_descriptor_177;
        v30 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v41 = MEMORY[0x277D84F90];
        v33 = sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v31 = v35;
        v32 = v38;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v39, v31, v30);
        _Block_release(v30);
        sub_25F2033DC(a2);
        (*(v34 + 8))(v31, v32);
        (*(v36 + 8))(v39, v37);
      }
    }

    else
    {
      aBlock = v9;
      v43 = v10;
      LOBYTE(v44) = v22 & 1;
      a4(&aBlock);
    }

    sub_25F208B9C(v9, v10, v22);
  }

  sub_25F208B9C(v9, v10, v22);
  sub_25F208B9C(v9, v10, v22);
}

uint64_t sub_25F2757A0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v33 = a5;
  v29 = sub_25F30490C();
  v32 = *(v29 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25F30494C();
  v30 = *(v31 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v29 - v17);
  sub_25F1B7174(a1, &v29 - v17, qword_27FD53BB8, &qword_25F311350);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_25F1AF698(v18, qword_27FD53BB8, &qword_25F311350);
  }

  v20 = v18[1];
  v38 = *v18;
  v39 = v20;
  v40[0] = v18[2];
  *(v40 + 9) = *(v18 + 41);
  v21 = swift_allocObject();
  v22 = v33;
  *(v21 + 16) = a4;
  *(v21 + 24) = v22;
  v23 = v18[1];
  *(v21 + 32) = *v18;
  *(v21 + 48) = v23;
  *(v21 + 64) = v18[2];
  *(v21 + 73) = *(v18 + 41);
  *&aBlock = a2;
  *(&aBlock + 1) = a3;
  swift_retain_n();
  if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
  {
    aBlock = v38;
    v36 = v39;
    v37[0] = v40[0];
    *(v37 + 9) = *(v40 + 9);
    a4(&aBlock);
  }

  else
  {
    if (a2 != 1)
    {
      *&v37[0] = sub_25F2784F0;
      *(&v37[0] + 1) = v21;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v36 = sub_25F1D8C38;
      *(&v36 + 1) = &block_descriptor_55;
      v27 = _Block_copy(&aBlock);

      sub_25F2033CC(a2);
      sub_25F30492C();
      v34 = MEMORY[0x277D84F90];
      sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
      v28 = v29;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v14, v11, v27);
      _Block_release(v27);
      sub_25F2033DC(a2);
      (*(v32 + 8))(v11, v28);
      (*(v30 + 8))(v14, v31);
    }

    sub_25F1F54F4();
    v24 = sub_25F305AAC();
    *&v37[0] = sub_25F2784F0;
    *(&v37[0] + 1) = v21;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v36 = sub_25F1D8C38;
    *(&v36 + 1) = &block_descriptor_58;
    v25 = _Block_copy(&aBlock);

    sub_25F30492C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
    v26 = v29;
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v14, v11, v25);
    _Block_release(v25);

    (*(v32 + 8))(v11, v26);
    (*(v30 + 8))(v14, v31);
  }
}

uint64_t sub_25F275DD4(__int128 *a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a8;
  v38 = sub_25F30490C();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v38);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25F30494C();
  v20 = *(*(v19 - 8) + 64);
  result = MEMORY[0x28223BE20](v19);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57) >= 2u)
  {
    v34 = v22;
    v35 = v15;
    v36 = result;
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v26 = a1[1];
    *(v25 + 32) = *a1;
    *(v25 + 48) = v26;
    *(v25 + 64) = a1[2];
    *(v25 + 73) = *(a1 + 41);
    *&aBlock = a2;
    *(&aBlock + 1) = a3;
    v33[1] = a3;
    swift_retain_n();
    if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || (v33[0] = a5, !a2))
    {
      v30 = a1[1];
      aBlock = *a1;
      v41 = v30;
      v42[0] = a1[2];
      *(v42 + 9) = *(a1 + 41);
      a4(&aBlock);
    }

    else
    {
      if (a2 != 1)
      {
        *&v42[0] = a7;
        *(&v42[0] + 1) = v25;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v41 = sub_25F1D8C38;
        *(&v41 + 1) = v37;
        v31 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v39 = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v32 = v38;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v24, v18, v31);
        _Block_release(v31);
        sub_25F2033DC(a2);
        (*(v35 + 8))(v18, v32);
        (*(v34 + 8))(v24, v36);
      }

      sub_25F1F54F4();
      v27 = sub_25F305AAC();
      *&v42[0] = a7;
      *(&v42[0] + 1) = v25;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v41 = sub_25F1D8C38;
      *(&v41 + 1) = a9;
      v28 = _Block_copy(&aBlock);

      sub_25F30492C();
      *&aBlock = MEMORY[0x277D84F90];
      sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
      v29 = v38;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v24, v18, v28);
      _Block_release(v28);

      (*(v35 + 8))(v18, v29);
      (*(v34 + 8))(v24, v36);
    }
  }

  return result;
}

double sub_25F27635C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD569F0, &unk_25F311410);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD569F0, &unk_25F311410);
    sub_25F1AF698(v22, &qword_27FD569F0, &unk_25F311410);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F0370(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F0370((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F279170;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

uint64_t sub_25F276560@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F00, &qword_25F308550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v20 - v10);
  sub_25F1B7174(a1, v20 - v10, &qword_27FD52F00, &qword_25F308550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25F23F614(v11, a4, qword_27FD53BB8, &qword_25F311350);
    v12 = 0;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD52F00, &qword_25F308550);
    v13 = *v11;
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_25F2F0994(0, v13[2] + 1, 1, v13);
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_25F2F0994((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_25F2784FC;
    v17[5] = v14;
    *a1 = v13;
    swift_storeEnumTagMultiPayload();
    v12 = 1;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  return (*(*(v18 - 8) + 56))(a4, v12, 1, v18);
}

double sub_25F27677C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD56A18, &qword_25F311448);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD56A18, &qword_25F311448);
    sub_25F1AF698(v22, &qword_27FD56A18, &qword_25F311448);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F09A8(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F09A8((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F279170;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

double sub_25F276980@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD56A30, &qword_25F311468);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD56A30, &qword_25F311468);
    sub_25F1AF698(v22, &qword_27FD56A30, &qword_25F311468);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F09BC(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F09BC((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F279170;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

double sub_25F276B84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD56A78, &unk_25F3114C0);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD56A78, &unk_25F3114C0);
    sub_25F1AF698(v22, &qword_27FD56A78, &unk_25F3114C0);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F0EDC(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F0EDC((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F279170;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

double sub_25F276D88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *(a1 + 80);
  v6 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v6;
  v24[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v7;
  v8 = *&v24[0];
  if (v25)
  {
    *a4 = *&v24[0];
    *(a4 + 8) = *(a1 + 8);
    *(a4 + 24) = *(a1 + 24);
    *(a4 + 40) = *(a1 + 40);
    *(a4 + 56) = *(a1 + 56);
    sub_25F1B7174(v24, v22, &qword_27FD56A48, &qword_25F314C80);
  }

  else
  {
    v12 = *(a1 + 48);
    v22[2] = *(a1 + 32);
    v22[3] = v12;
    v22[4] = *(a1 + 64);
    v23 = *(a1 + 80);
    v13 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v13;
    sub_25F1B7174(v24, v20, &qword_27FD56A48, &qword_25F314C80);
    sub_25F1AF698(v22, &qword_27FD56A48, &qword_25F314C80);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F2F0EF0(0, v8[2] + 1, 1, v8);
    }

    v16 = v8[2];
    v15 = v8[3];
    if (v16 >= v15 >> 1)
    {
      v8 = sub_25F2F0EF0((v15 > 1), v16 + 1, 1, v8);
    }

    v8[2] = v16 + 1;
    v17 = &v8[2 * v16];
    v17[4] = sub_25F278A1C;
    v17[5] = v14;
    v18 = v20[0];
    *(a1 + 24) = v20[1];
    v19 = v20[3];
    *(a1 + 40) = v20[2];
    *(a1 + 56) = v19;
    *a1 = v8;
    *(a1 + 72) = v21;
    *(a1 + 8) = v18;
    *(a1 + 80) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
    *(a4 + 56) = -256;
  }

  return result;
}

uint64_t sub_25F276F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22[-v14];
  sub_25F1B7174(a2, &v22[-v14], &qword_27FD52B40, &qword_25F307EA0);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a1;
  v16[7] = a5;
  v16[8] = a6;

  v17 = sub_25F1B1524(0, 0, v15, &unk_25F3114D8, v16);
  v18 = *(a1 + 16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = sub_25F278D70;
  v19[5] = v17;
  v20 = *(v18 + 88);
  v23 = sub_25F27917C;
  v24 = v19;
  swift_retain_n();
  os_unfair_lock_lock(v20 + 25);
  sub_25F209764(&v20[4], &v29);
  os_unfair_lock_unlock(v20 + 25);
  *&v28[10] = *(v31 + 10);
  v27[0] = v29;
  v27[1] = v30;
  *v28 = v31[0];
  if (BYTE9(v31[1]) == 255)
  {
  }

  else
  {
    if (BYTE9(v31[1]) > 1u)
    {

      sub_25F30555C();
    }

    else
    {
      sub_25F1B7174(v27, v25, &qword_27FD54C28, &unk_25F30CD20);
    }

    sub_25F1AF698(v27, &qword_27FD54C28, &unk_25F30CD20);
  }

  v25[0] = v29;
  v25[1] = v30;
  v26[0] = v31[0];
  *(v26 + 10) = *(v31 + 10);
  sub_25F1AF698(v25, &qword_27FD54C28, &unk_25F30CD20);
}

uint64_t sub_25F27725C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[41] = a7;
  v8[42] = a8;
  v8[40] = a6;
  v10 = sub_25F30543C();
  v8[43] = v10;
  v11 = *(v10 - 8);
  v8[44] = v11;
  v12 = *(v11 + 64) + 15;
  v8[45] = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v8[46] = v14;
  *v14 = v8;
  v14[1] = sub_25F2773B8;

  return v16(v8 + 36);
}

uint64_t sub_25F2773B8()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_25F2775D0;
  }

  else
  {
    v3 = sub_25F2774CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F2774CC()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[36];
  v3 = v0[37];
  v5 = *(v0[40] + 16);

  sub_25F1D75B4(v4, v3, 0);

  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v6[5] = v3;

  sub_25F205208(0, 0, sub_25F278E24, v6);

  v7 = v0[45];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F2775D0()
{
  v1 = *(v0 + 376);
  *(v0 + 304) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 376);
    v4 = *(v0 + 320);
    v6 = *(v0 + 16);
    v5 = *(v0 + 32);
    *(v0 + 104) = v5;
    v7 = *(v0 + 48);
    *(v0 + 136) = *(v0 + 64);
    *(v0 + 120) = v7;
    *(v0 + 152) = *(v0 + 80);
    *(v0 + 88) = v6;
    *(v0 + 224) = v6;
    *(v0 + 240) = v5;
    *(v0 + 256) = v7;
    *(v0 + 265) = *(v0 + 57);
    v8 = *(v4 + 16);
    sub_25F2FB66C((v0 + 224));

    sub_25F278DD0(v0 + 88);
  }

  else
  {
    v9 = *(v0 + 376);
    v10 = *(v0 + 360);
    v11 = *(v0 + 344);
    *(v0 + 312) = v9;
    v12 = v9;
    v13 = swift_dynamicCast();
    v14 = *(v0 + 376);
    if (v13)
    {
      v15 = *(v0 + 320);
      (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
      *(v0 + 160) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
      *(v0 + 168) = 118;
      *(v0 + 176) = 2;
      *(v0 + 184) = xmmword_25F311320;
      *(v0 + 200) = "init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)";
      *(v0 + 208) = 82;
      *(v0 + 216) = 2;
      v16 = *(v15 + 16);
      sub_25F2FB66C((v0 + 160));
    }

    else
    {
      v17 = *(*(v0 + 320) + 16);
      v18 = v14;
      sub_25F1D75B4(v14, 0, 1);
    }
  }

  v19 = *(v0 + 360);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_25F27779C(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A00, &qword_25F311430);
  v13 = swift_allocObject();
  v13[13] = sub_25F278594;
  v13[14] = v12;
  v13[15] = a2;
  v13[16] = a3;
  v13[17] = 0;
  v13[18] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A08, &qword_25F311438);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v6;
  v13[19] = v14;

  sub_25F2033CC(a2);

  v15 = sub_25F1C0138(a1);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = sub_25F2785A8;
  v16[5] = v15;
  v17 = *(v6 + 88);
  swift_retain_n();
  os_unfair_lock_lock(v17 + 25);
  sub_25F2785D0(&v17[4], &v31);
  os_unfair_lock_unlock(v17 + 25);
  *&v30[10] = *(v33 + 10);
  v29[0] = v31;
  v29[1] = v32;
  *v30 = v33[0];
  if (BYTE9(v33[1]) == 255)
  {
  }

  else
  {
    v36[0] = v31;
    v36[1] = v32;
    v37[0] = v33[0];
    *(v37 + 10) = *(v33 + 10);

    sub_25F1B7174(v29, v27, &qword_27FD56A10, &qword_25F311440);
    sub_25F2CB790(v36, 0, 0, v15);

    sub_25F1AF698(v29, &qword_27FD56A10, &qword_25F311440);
  }

  v27[0] = v31;
  v27[1] = v32;
  v28[0] = v33[0];
  *(v28 + 10) = *(v33 + 10);
  sub_25F1AF698(v27, &qword_27FD56A10, &qword_25F311440);

  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = sub_25F2785EC;
  v18[5] = v15;
  MEMORY[0x28223BE20](v18);
  swift_retain_n();
  os_unfair_lock_lock(v17 + 25);
  sub_25F279198(&v17[4], &v24);
  os_unfair_lock_unlock(v17 + 25);
  *(v23 + 10) = *(v26 + 10);
  v22[0] = v24;
  v22[1] = v25;
  v23[0] = v26[0];
  if (BYTE9(v26[1]) == 255)
  {
  }

  else
  {
    if (BYTE9(v26[1]) > 1u)
    {
      v34[0] = v24;
      v34[1] = v25;
      v35[0] = v26[0];
      *(v35 + 9) = *(v26 + 9);

      sub_25F277D14(v34);
    }

    else
    {
      sub_25F1B7174(v22, v20, &qword_27FD56A10, &qword_25F311440);
    }

    sub_25F1AF698(v22, &qword_27FD56A10, &qword_25F311440);
  }

  v20[0] = v24;
  v20[1] = v25;
  v21[0] = v26[0];
  *(v21 + 10) = *(v26 + 10);
  sub_25F1AF698(v20, &qword_27FD56A10, &qword_25F311440);

  return v15;
}

uint64_t sub_25F277BCC(void *a1, char a2, uint64_t (*a3)(__int128 *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - v8);
  if (a2)
  {
    *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
    *(&v13 + 1) = 125;
    v14 = 2;
    v15 = xmmword_25F311330;
    v16 = "then(callsite:on:transform:)";
    v17 = 28;
    v18 = 2;
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    v10 = a1;
    v11 = sub_25F26D324(&v13, v9);
    sub_25F1AF698(v9, &qword_27FD53BB0, &unk_25F309BA0);
  }

  else
  {
    *&v13 = a1;

    v11 = a3(&v13);
    sub_25F1C5980(a1, 0);
  }

  return v11;
}

void sub_25F277D14(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - v5);
  v7 = *(v1 + 152);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  v9 = v8 >> 62;
  if (!(v8 >> 62))
  {
    *(v7 + 16) = 0x8000000000000008;
    os_unfair_lock_unlock((v7 + 24));
    v14 = a1[1];
    v17 = *a1;
    v18 = v14;
    v19[0] = a1[2];
    *(v19 + 9) = *(a1 + 41);
    v15 = *(*v8 + 192);

    v15(&v17);
    v12 = v8;
    v13 = 0;
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    v8 &= 0x3FFFFFFFFFFFFFFFuLL;
    *(v7 + 16) = 0x8000000000000008;
    os_unfair_lock_unlock((v7 + 24));
    v10 = a1[1];
    v17 = *a1;
    v18 = v10;
    v19[0] = a1[2];
    *(v19 + 9) = *(a1 + 41);
    v11 = *(*v8 + 192);

    v11(&v17);
    v12 = v8;
    v13 = 1;
LABEL_5:
    sub_25F278658(v12, v13);
    v16 = a1[1];
    *v6 = *a1;
    v6[1] = v16;
    v6[2] = a1[2];
    *(v6 + 41) = *(a1 + 41);
    swift_storeEnumTagMultiPayload();
    sub_25F1C0AC8(v6);
    sub_25F278658(v8, v9);
    sub_25F1AF698(v6, qword_27FD53BB8, &qword_25F311350);
    return;
  }

  *(v7 + 16) = 0x8000000000000008;

  os_unfair_lock_unlock((v7 + 24));
}

uint64_t sub_25F277F48(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return sub_25F2C4A14(v4, a2);
}

uint64_t sub_25F277F84(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return (*(*a2 + 192))(v4);
}

void sub_25F27801C(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, void **)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4;
    v7 = 0;
  }

  else
  {
    v10 = *a1;

    a2(v9, &v10);
    sub_25F1C5980(v4, 0);
    v4 = v9[0];
    v7 = v9[1];
  }

  *a3 = v4;
  *(a3 + 8) = v7;
  *(a3 + 16) = v5;
}

uint64_t sub_25F2780DC(__int128 *a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 10) = *(a1 + 42);
  return sub_25F275DD4(v7, a2, a3, a4, a5, &unk_287165010, sub_25F279100, &block_descriptor_165, &block_descriptor_168);
}

void sub_25F278148(_OWORD *a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v5 = a1[1];
  v6[0] = *a1;
  v6[1] = v5;
  v7[0] = a1[2];
  *(v7 + 10) = *(a1 + 42);
  sub_25F2751DC(v6, a2, a3, a4, a5);
}

void sub_25F278184(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, void *)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v4;
    v7 = 0uLL;
  }

  else
  {
    v9 = *(a1 + 8);
    v12[0] = *a1;
    v12[1] = v9;

    a2(&v10, v12);
    sub_25F1D93BC(v4, v9, 0);
    v4 = v10;
    v7 = v11;
  }

  *a3 = v4;
  *(a3 + 8) = v7;
  *(a3 + 24) = v5;
}

uint64_t sub_25F278270()
{
  v1 = *(type metadata accessor for CrashReport(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_25F26F944(v0 + v2, v5, v7, v8, v6);
}

uint64_t sub_25F278368(_OWORD *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return sub_25F2C4A14(v4, v1);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F2783D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F278418(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F2784FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F278524()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_25F2CCCC8(v2, v3, v4);
}

void sub_25F2785EC(__int128 *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v3[0] = a1[2];
  *(v3 + 9) = *(a1 + 41);
  sub_25F277D14(v2);
}

uint64_t sub_25F278658(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_25F278684()
{
  v1 = *(type metadata accessor for CrashReport(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F271000(v0 + v2, v4, v5);
}

uint64_t sub_25F278740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F278858@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = CSSymbolicatorCreateWithPathAndArchitecture();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25F27888C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_25F2788B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for CrashReport(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + ((v7 + 79) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F272678(a1, v2 + v6, v2 + v7, v8, a2);
}

void sub_25F27899C(_OWORD *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v3[0] = a1[2];
  *(v3 + 9) = *(a1 + 41);
  sub_25F2737AC(v2, sub_25F1C1170);
}

uint64_t sub_25F278A1C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 10) = *(a1 + 42);
  return v2(v6);
}

uint64_t sub_25F278A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F273274(a1, v4, v5, v6);
}

uint64_t sub_25F278B68(_OWORD *a1, uint64_t (*a2)(_OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  v11[0] = a1[2];
  *(v11 + 10) = *(a1 + 42);
  return a2(v10, v4, v5, v6, v7);
}

void sub_25F278BD0(_OWORD *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  v3[0] = a1[2];
  *(v3 + 9) = *(a1 + 41);
  sub_25F2737AC(v2, sub_25F1C0E30);
}

uint64_t objectdestroy_95Tm()
{
  v1 = *(v0 + 24);

  sub_25F1C5980(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_25F278C94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F1AFDB0;

  return sub_25F27725C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25F278D78(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[4];
  v12 = v5[5];
  v13 = a1[1];
  v15[0] = *a1;
  v15[1] = v13;
  v16[0] = a1[2];
  *(v16 + 10) = *(a1 + 42);
  return sub_25F275DD4(v15, v9, v10, v11, v12, a2, a3, a4, a5);
}

uint64_t sub_25F278E24()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  return v2(&v4);
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = type metadata accessor for CrashReport(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  if (v4 >= 2)
  {
  }

  v5 = v0 + v2;
  v6 = sub_25F30467C();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  v9 = v1[8];
  v10 = sub_25F30462C();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  v11 = *(v0 + v2 + v1[9]);

  v12 = (v0 + v2 + v1[10]);
  if (v12[5] != 1)
  {

    v13 = v12[6];

    v14 = v12[8];

    v15 = v12[10];

    v16 = v12[13];
  }

  v17 = *(v5 + v1[11]);

  v18 = *(v5 + v1[12]);

  v19 = *(v5 + v1[13] + 8);

  return swift_deallocObject();
}

uint64_t sub_25F279024(uint64_t *a1)
{
  v3 = *(*(type metadata accessor for CrashReport(0) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_25F2707A4(a1);
}

uint64_t SimpleTimeoutTimer.init(timeInterval:qos:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_25F1F54F4();
  v6 = sub_25F305ADC();
  type metadata accessor for DelayedInvocation();
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54F78, &qword_25F30D7A0);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54F80, &qword_25F30D7A8);
  v9 = swift_allocObject();
  *(v9 + 44) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = nullsub_2;
  *(v9 + 40) = 1;
  *(v8 + 24) = v9;
  v10 = sub_25F30491C();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *(v7 + 16) = v8;
  *a2 = v7;
  *(a2 + 8) = a3;
  return result;
}

uint64_t SimpleTimeoutTimer.init<A>(scheduler:timeoutInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  type metadata accessor for DelayedInvocation();
  v8 = sub_25F22DC28(a1, nullsub_2, 0);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v8;
  *(a3 + 8) = a4;
  return result;
}

uint64_t SimpleTimeoutTimer.operationStarted(timeoutCallback:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(**(*v2 + 16) + 88);

  v7(a1, a2);
  v8 = *(v5 + 16);
  v10 = v6;
  return (*(*v8 + 104))(&v10);
}

uint64_t sub_25F2794B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(**(*v2 + 16) + 88);

  v7(a1, a2);
  v8 = *(v5 + 16);
  v10 = v6;
  return (*(*v8 + 104))(&v10);
}

uint64_t CrashReportError.IndexOutOfRangeError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.IndexOutOfRangeError() + 20);

  return sub_25F1DF920(v3, a1);
}

uint64_t type metadata accessor for CrashReportError.IndexOutOfRangeError()
{
  result = qword_27FD56AA8;
  if (!qword_27FD56AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.IndexOutOfRangeError.additionalInfo.getter()
{
  sub_25F305FAC();
  v1 = v0 + *(type metadata accessor for CrashReportError.IndexOutOfRangeError() + 20);
  v2 = (v1 + *(type metadata accessor for CrashReport(0) + 20));
  v4 = *v2;
  v3 = v2[1];

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F319D60);
  return v4;
}

id sub_25F279724()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD00000000000001FLL, 0x800000025F319E30, 0);
  qword_27FD56AA0 = result;
  return result;
}

uint64_t static CrashReportError.IndexOutOfRangeError.asiRegularExpression.getter()
{
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FD56AA0;
  v1 = qword_27FD56AA0;
  return v0;
}

void static CrashReportError.IndexOutOfRangeError.asiRegularExpression.setter(uint64_t a1)
{
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD56AA0;
  qword_27FD56AA0 = a1;
}

uint64_t (*static CrashReportError.IndexOutOfRangeError.asiRegularExpression.modify())()
{
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_25F279960@<X0>(void *a1@<X8>)
{
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD56AA0;
  *a1 = qword_27FD56AA0;

  return v2;
}

void sub_25F2799EC(id *a1)
{
  v1 = *a1;
  v2 = qword_27FD52850;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27FD56AA0;
  qword_27FD56AA0 = v1;
}

uint64_t CrashReportError.IndexOutOfRangeError.init(report:asi:match:)@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CrashReportError.IndexOutOfRangeError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  *v10 = 0;
  v10[8] = 1;
  sub_25F279BAC(a1, &v10[*(v6 + 20)], type metadata accessor for CrashReport);
  sub_25F279BAC(v10, a3, type metadata accessor for CrashReportError.IndexOutOfRangeError);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_25F279BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F279C30(uint64_t a1)
{
  sub_25F305FAC();

  v3 = v1 + *(a1 + 20);
  v4 = (v3 + *(type metadata accessor for CrashReport(0) + 20));
  v6 = *v4;
  v7 = v4[1];

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F319D60);
  return v6;
}

uint64_t Array.popFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  swift_getWitnessTable();
  if (sub_25F30588C())
  {
    v5 = 1;
  }

  else
  {
    swift_getWitnessTable();
    sub_25F30596C();
    v5 = 0;
  }

  return (*(*(*(a1 + 16) - 8) + 56))(a2, v5, 1);
}

uint64_t Array.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = a2;
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F30539C();

  sub_25F30533C();
  return v9;
}

uint64_t Array.inserting(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v6;
  (*(v7 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F30539C();

  sub_25F30534C();
  return v10;
}

uint64_t Array.interleaving(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v29 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = sub_25F305C1C();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v29 - v15);
  v41 = sub_25F3052DC();
  v40[1] = a2;
  v17 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F8D72E0](v40, v17, WitnessTable);
  v39 = v40[0];
  sub_25F3062EC();
  sub_25F3062BC();
  v19 = sub_25F3062DC();
  v34 = (v11 + 32);
  v35 = v19;
  v33 = TupleTypeMetadata2 - 8;
  v31 = (v5 + 32);
  v20 = (v5 + 16);
  v21 = (v5 + 8);
  while (1)
  {
    v23 = v36;
    sub_25F3062CC();
    (*v34)(v16, v23, v37);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v24 = *v16;
    v25 = TupleTypeMetadata2;
    (*v31)(v38, v16 + *(TupleTypeMetadata2 + 48), a3);
    v26 = *v20;
    v27 = v32;
    if (v24 >= 1)
    {
      v26(v32, v30, a3);
      sub_25F30533C();
    }

    v22 = v38;
    v26(v27, v38, a3);
    sub_25F30533C();
    (*v21)(v22, a3);
    TupleTypeMetadata2 = v25;
  }

  return v41;
}

uint64_t Array.invert<A>()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v31 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v21 - v8;
  v9 = sub_25F305C1C();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v34 = sub_25F3052DC();
  sub_25F30531C();
  v29 = sub_25F30539C();
  sub_25F30529C();
  if (!sub_25F30531C())
  {
    return v34;
  }

  v16 = 0;
  v27 = (v32 + 32);
  v28 = (v32 + 16);
  v25 = (v4 + 32);
  v26 = (v4 + 48);
  v23 = (v4 + 8);
  v24 = (v4 + 16);
  while (1)
  {
    v17 = sub_25F3052FC();
    sub_25F30528C();
    if (v17)
    {
      (*(v32 + 16))(v15, a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v16, v9);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    result = sub_25F30601C();
    if (v22 != 8)
    {
      break;
    }

    v33 = result;
    (*v28)(v15, &v33, v9);
    swift_unknownObjectRelease();
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_11:
      __break(1u);
      return v34;
    }

LABEL_5:
    (*v27)(v13, v15, v9);
    if ((*v26)(v13, 1, a2) == 1)
    {

      (*(v32 + 8))(v13, v9);
      return 0;
    }

    v19 = v30;
    (*v25)(v30, v13, a2);
    (*v24)(v31, v19, a2);
    sub_25F30533C();
    (*v23)(v19, a2);
    ++v16;
    if (v18 == sub_25F30531C())
    {
      return v34;
    }
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.disambiguate<A>(keyPaths:basePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_25F30539C();
  swift_getTupleTypeMetadata2();
  v15 = sub_25F3052DC();
  v16 = sub_25F1CCBBC(v15, a4, v14, a6);

  v20 = v16;
  v19 = sub_25F3052DC();
  v17 = sub_25F3052DC();
  sub_25F27A7FC(a3, a1, a2, v17, &v20, &v19, a3, a4, a5, a6, a7);

  return v20;
}

uint64_t sub_25F27A7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v117 = a7;
  v121 = a5;
  v128 = a4;
  v120 = a3;
  v115 = sub_25F305C1C();
  v15 = *(v115 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v115);
  v119 = v106 - v17;
  v18 = sub_25F30539C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v133 = sub_25F305C1C();
  v109 = *(v133 - 8);
  v20 = *(v109 + 64);
  v21 = MEMORY[0x28223BE20](v133);
  v23 = v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v132 = v106 - v25;
  v125 = *(a9 - 8);
  v26 = *(v125 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v127 = v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v139 = v106 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v143 = v106 - v32;
  v124 = *(a8 - 8);
  v33 = *(v124 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v114 = v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v113 = v106 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v136 = v106 - v39;
  v107 = v40;
  MEMORY[0x28223BE20](v38);
  v142 = v106 - v41;
  v116 = a2;
  *&v151[0] = a2;
  v122 = sub_25F3067CC();
  v42 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v112 = v42;
  v111 = WitnessTable;
  sub_25F30583C();
  if (!v149)
  {
    goto LABEL_18;
  }

  v108 = v15;
  v140 = v149;
  v130 = v23;
  v131 = TupleTypeMetadata2;
  v134 = a10;
  swift_getTupleTypeMetadata2();
  v44 = sub_25F3052DC();
  v147 = a9;
  v144 = v18;
  v145 = a11;
  v148 = sub_25F1CCBBC(v44, a9, v18, a11);

  v141 = a1;
  v45 = sub_25F30531C();
  v146 = a8;
  v110 = a6;
  if (v45)
  {
    v46 = 0;
    v137 = 0;
    v138 = 0;
    v129 = (v124 + 16);
    v126 = (v124 + 32);
    v118 = (v125 + 16);
    v123 = (v125 + 8);
    v47 = v141;
    while (1)
    {
      v50 = sub_25F3052FC();
      sub_25F30528C();
      if (v50)
      {
        (*(v124 + 16))(v142, v47 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v46, a8);
        v51 = v147;
        v52 = (v46 + 1);
        if (__OFADD__(v46, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v73 = sub_25F30601C();
        v51 = v147;
        if (v107 != 8)
        {
          goto LABEL_50;
        }

        *&v151[0] = v73;
        (*v129)(v142, v151, a8);
        swift_unknownObjectRelease();
        v52 = (v46 + 1);
        if (__OFADD__(v46, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          *&v151[0] = a1;

          swift_getWitnessTable();
          return sub_25F30532C();
        }
      }

      v135 = v52;
      v54 = v142;
      v53 = v143;
      swift_getAtKeyPath();
      v55 = swift_allocObject();
      v55[2] = a8;
      v55[3] = v51;
      v56 = v134;
      v57 = v145;
      v55[4] = v134;
      v55[5] = v57;
      sub_25F1AC3AC(v137);
      (*v126)(v136, v54, a8);
      v58 = swift_allocObject();
      v58[2] = a8;
      v58[3] = v51;
      v59 = v145;
      v58[4] = v56;
      v58[5] = v59;
      v58[6] = sub_25F27BB80;
      v58[7] = v55;
      v60 = v55;
      v61 = v58;
      sub_25F1AC3AC(v138);
      v62 = v148;
      swift_isUniquelyReferenced_nonNull_native();
      *&v151[0] = v62;
      v63 = v53;
      a1 = v145;
      v64 = sub_25F281E0C(v63, v51, v145);
      if (__OFADD__(*(v62 + 16), (v65 & 1) == 0))
      {
        goto LABEL_49;
      }

      v66 = v64;
      v67 = v65;
      sub_25F30624C();
      v68 = sub_25F30622C();
      v69 = *&v151[0];
      v148 = *&v151[0];
      if (v68)
      {
        break;
      }

      a8 = v146;
      v47 = v141;
      if ((v67 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_4:
      v48 = *(v69 + 56) + 8 * v66;
      sub_25F30533C();
      (*v123)(v143, v147);
      v49 = sub_25F30531C();
      ++v46;
      v138 = sub_25F27BB8C;
      v137 = sub_25F27BB80;
      if (v135 == v49)
      {
        goto LABEL_20;
      }
    }

    v70 = sub_25F281E0C(v143, v51, a1);
    a8 = v146;
    v47 = v141;
    if ((v67 & 1) != (v71 & 1))
    {
      goto LABEL_51;
    }

    v66 = v70;
    v69 = v148;
    if (v67)
    {
      goto LABEL_4;
    }

LABEL_13:
    v72 = v61[7];
    *&v151[0] = (v61[6])();
    (*v118)(v139, v143, v147);
    sub_25F30623C();
    v69 = v148;
    goto LABEL_4;
  }

  v137 = 0;
  v138 = 0;
  v60 = 0;
  v61 = 0;
LABEL_20:
  v106[1] = v61;
  v107 = v60;
  v75 = 0;
  v76 = v148 + 64;
  v77 = 1 << *(v148 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v148 + 64);
  v80 = (v77 + 63) >> 6;
  v81 = v131;
  v129 = (v131 - 8);
  v136 = (v125 + 16);
  v142 = (v125 + 32);
  v135 = (v109 + 32);
  v126 = (v125 + 8);
  v123 = (v124 + 48);
  v118 = (v124 + 32);
  v109 = v124 + 16;
  v124 += 8;
  ++v108;
  v82 = v147;
  v83 = v140;
  while (v79)
  {
    v84 = v75;
LABEL_34:
    v86 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    v87 = v86 | (v84 << 6);
    v82 = v147;
    v88 = v148;
    v89 = v125;
    v90 = v139;
    (*(v125 + 16))(v139, *(v148 + 48) + *(v125 + 72) * v87, v147);
    v91 = *(*(v88 + 56) + 8 * v87);
    v92 = *(v81 + 48);
    v93 = *(v89 + 32);
    v94 = v130;
    v93(v130, v90, v82);
    *&v94[v92] = v91;
    v95 = *(v81 - 8);
    (*(v95 + 56))(v94, 0, 1, v81);

    v143 = v84;
    v83 = v140;
LABEL_35:
    v96 = v132;
    (*v135)(v132, v94, v133);
    if ((*(v95 + 48))(v96, 1, v81) == 1)
    {

      sub_25F1AC3AC(v137);
      return sub_25F1AC3AC(v138);
    }

    v97 = *&v96[*(v81 + 48)];
    v98 = v127;
    (*v142)(v127, v96, v82);
    v152 = v128;

    v99 = sub_25F30531C();
    if (v99 != sub_25F30531C())
    {
      *&v151[0] = v83;
      if (!v120 || (*&v149 = v120, , v100 = sub_25F304DCC(), , (v100 & 1) == 0))
      {
        (*v136)(v139, v98, v82);
        sub_25F30539C();
        sub_25F30533C();
      }
    }

    if (v99 != 1)
    {
      if (v99 >= 2)
      {
        *&v149 = v116;

        sub_25F3058AC();
        v149 = v151[0];
        v150 = v151[1];
        sub_25F305E1C();
        swift_getWitnessTable();
        v104 = sub_25F3053CC();
        sub_25F27A7FC(v97, v104, 0, v152, v121, v110, v117, v146, v82, v134, v145);
      }

      goto LABEL_24;
    }

    *&v151[0] = v97;
    swift_getWitnessTable();
    v101 = v119;
    sub_25F30583C();
    v102 = v101;
    v103 = v146;
    if ((*v123)(v101, 1, v146) != 1)
    {
      v105 = v113;
      (*v118)(v113, v102, v103);

      (*v109)(v114, v105, v103);
      *&v151[0] = v152;
      sub_25F30539C();
      sub_25F304B4C();
      sub_25F304B9C();
      (*v124)(v105, v103);
LABEL_24:
      (*v126)(v98, v82);
      goto LABEL_25;
    }

    (*v126)(v98, v82);
    (*v108)(v101, v115);

LABEL_25:
    v75 = v143;
    v81 = v131;
  }

  if (v80 <= v75 + 1)
  {
    v85 = v75 + 1;
  }

  else
  {
    v85 = v80;
  }

  while (1)
  {
    v84 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v84 >= v80)
    {
      v143 = v85 - 1;
      v95 = *(v81 - 8);
      v94 = v130;
      (*(v95 + 56))(v130, 1, 1, v81);
      v79 = 0;
      goto LABEL_35;
    }

    v79 = *(v76 + 8 * v84);
    ++v75;
    if (v79)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t Array.transformElements(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v7 = sub_25F3052DC();
  v6 = *v3;
  swift_getWitnessTable();
  sub_25F3051BC();

  *v3 = v7;
  return result;
}

uint64_t sub_25F27B840(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12);
  a2(v13);
  (v14)(v11, v13, a5);
  sub_25F30539C();
  sub_25F30533C();
  return (*(v7 + 8))(v13, a5);
}

uint64_t Array.transformElement<A>(id:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = *(a4 + 16);
  v6[3] = a5;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  return Array.transformElements(_:)(sub_25F27BB70, v6, a4);
}

uint64_t sub_25F27B9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v13 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v12 - v7;
  sub_25F305FDC();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  v10 = sub_25F304DCC();
  result = (*(v5 + 8))(v8, AssociatedTypeWitness);
  if (v10)
  {
    return v13(a1);
  }

  return result;
}

uint64_t sub_25F27BB70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_25F27B9E8(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_25F27BB8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t EventStreamObservable.wrappedValue.getter()
{
  v1 = *v0;
  v12 = v0[3];
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/EventStreamObservable.swift";
  *(&v6 + 1) = 133;
  v7 = 2;
  v8 = xmmword_25F311600;
  v9 = "wrappedValue";
  v10 = 12;
  v11 = 2;
  v2 = *(v1 + 80);
  v3 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  return SynchronousAccessProviding<>.peek(callsite:)(&v6, v3, WitnessTable);
}

uint64_t EventStreamObservable.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_25F27C234(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*EventStreamObservable.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  EventStreamObservable.wrappedValue.getter();
  return sub_25F27BE24;
}

void sub_25F27BE24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_25F27C234(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_25F27C234((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EventStreamObservable.__allocating_init(wrappedValue:emitsInitialValue:)(uint64_t a1, char a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_25F27C39C(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t EventStreamObservable.init(wrappedValue:emitsInitialValue:)(uint64_t a1, char a2)
{
  v4 = *v2;
  v5 = sub_25F27C39C(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t EventStreamObservable.projectedValue.getter@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 80);
  sub_25F2BC048(sub_25F27C418, v1, a1);
}

uint64_t sub_25F27C05C(_OWORD *a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  v7 = *(*a4 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v16 - v10;
  if (*(v12 + 32) == 1)
  {
    EventStreamObservable.wrappedValue.getter();
    a2(v11);
    (*(v8 + 8))(v11, v7);
  }

  v13 = a4[2];
  EventStream.Sink.eventStream.getter(&v18);
  v17[2] = v18;
  v14 = a1[1];
  v16[0] = *a1;
  v16[1] = v14;
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  type metadata accessor for EventStream();
  sub_25F2BBFFC(v16);
}

uint64_t EventStreamObservable.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t EventStreamObservable.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_25F27C234(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v14 - v6;
  v8 = v1[3];
  v14[0] = v3;
  v14[1] = v8;
  KeyPath = swift_getKeyPath();
  v10 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, a1, v10, WitnessTable);

  (*(v4 + 8))(v7, v3);
  v12 = v1[2];
  return EventStream.Sink.send(_:)(a1);
}

uint64_t sub_25F27C39C(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  type metadata accessor for EventStream.Sink();
  *(v2 + 16) = EventStream.Sink.__allocating_init()();
  *(v2 + 32) = a2;
  *(v2 + 24) = sub_25F203E0C(a1, v5);
  return v2;
}

uint64_t ChunkStack.init(size:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for FixedStack();
  result = sub_25F3052DC();
  a2[1] = result;
  return result;
}

uint64_t ChunkStack.push(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 1;
  v14[0] = v2[1];
  v5 = *(a2 + 16);
  v6 = type metadata accessor for FixedStack();
  v7 = sub_25F30539C();
  swift_getWitnessTable();
  sub_25F304C5C();
  if (v22)
  {
    v23 = v22;
    if (FixedStack.push(_:)(a1, v6))
    {
      result = sub_25F30531C();
      v9 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else
      {

        sub_25F3052CC();
        v10 = *v4;
        sub_25F24933C(v9, *v4);

        v11 = v10 + 8 * v9;
        v12 = *(v11 + 32);
        *(v11 + 32) = v23;

        return nullsub_2(v7);
      }

      return result;
    }
  }

  v13 = *v2;
  FixedStack.init(capacity:)(&v22);
  if ((FixedStack.push(_:)(a1, v6) & 1) == 0)
  {
    v14[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ChunkStack.swift";
    v14[1] = 122;
    v15 = 2;
    *v16 = *v21;
    *&v16[3] = *&v21[3];
    v17 = xmmword_25F3116B0;
    v18 = "push(_:)";
    v19 = 8;
    v20 = 2;
    sub_25F213F98(v14);
  }

  v14[0] = v22;

  sub_25F30533C();
}

uint64_t ChunkStack.pop()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v4 = *(a1 + 16);
  v5 = sub_25F305C1C();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v26 = v2;
  v9 = (v2 + 8);
  v28 = *(v2 + 8);
  v10 = type metadata accessor for FixedStack();
  v11 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  sub_25F304C5C();
  if (!v27)
  {
    return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }

  v23 = a2;
  v29 = v27;
  FixedStack.pop()(v10, v8);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v8, 1, v4) == 1)
  {
    (*(v24 + 8))(v8, v5);
    v14 = swift_getWitnessTable();
    MEMORY[0x25F8D7B40](&v28, v11, WitnessTable, v14);

    ChunkStack.pop()(v25);
  }

  else
  {
    v16 = v23;
    (*(v13 + 32))(v23, v8, v4);
    result = sub_25F30531C();
    v17 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v18 = v29;

      sub_25F3052CC();
      v19 = *v9;
      sub_25F24933C(v17, *v9);

      v20 = v19 + 8 * v17;
      v21 = *(v20 + 32);
      *(v20 + 32) = v18;

      nullsub_2(v11);
      return (*(v13 + 56))(v16, 0, 1, v4);
    }
  }

  return result;
}

Swift::Int __swiftcall ChunkStack.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ChunkStack.endIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v9 = v1[1];
  v3 = *(a1 + 16);
  type metadata accessor for FixedStack();
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F304C5C();
  if (!v8)
  {
    return 0;
  }

  result = sub_25F30531C();
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5 * v2;
  if ((v5 * v2) >> 64 != (v5 * v2) >> 63)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = FixedStack.endIndex.getter();

  result = v6 + v7;
  if (!__OFADD__(v6, v7))
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t ChunkStack.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*v3)
  {
    v6 = v3[1];
    if (result != 0x8000000000000000 || v5 != -1)
    {
      v7 = result % v5;
      v8 = *(a2 + 16);
      type metadata accessor for FixedStack();
      sub_25F3053DC();
      FixedStack.subscript.getter(v7, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ChunkStack.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ChunkStack.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ChunkStack.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F27CB9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ChunkStack.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_25F27CBC4(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F27CC4C(v6, *a2, a3);
  return sub_25F1CC82C;
}

void (*sub_25F27CC4C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  *(v8 + 16) = v10;
  v11 = *(v10 - 8);
  *(v8 + 24) = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v9[4] = v13;
  v14 = v3[1];
  *v9 = *v3;
  v9[1] = v14;
  ChunkStack.subscript.getter(a2, a3, v13);
  return sub_25F1CC970;
}

uint64_t sub_25F27CD48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

void sub_25F27CDB4(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t sub_25F27CDC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F27CE18()
{
  swift_getWitnessTable();
  v1 = sub_25F2B6F1C();
  v2 = *(v0 + 8);

  return v1;
}

uint64_t static ChunkStack<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v9 = *a1;
  v10 = a1[1];
  type metadata accessor for ChunkStack();
  swift_getWitnessTable();
  v4 = sub_25F30582C();
  if (v4 == sub_25F30582C())
  {
    swift_getWitnessTable();
    v5 = sub_25F30663C();
    v6 = MEMORY[0x28223BE20](v5);
    MEMORY[0x28223BE20](v6);
    sub_25F30600C();
    swift_getWitnessTable();
    v7 = sub_25F30510C();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_25F27D0D4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static ChunkStack<A>.== infix(_:_:)(a1, a2);
}

uint64_t ChunkStack<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v10 = v3[1];
  MEMORY[0x25F8D88E0](*v3);
  v16[3] = v11;
  v16[4] = v10;
  v16[5] = 0;

  if (!ChunkStack.endIndex.getter(a2))
  {
  }

  v12 = 0;
  v13 = (v6 + 8);
  while (1)
  {
    v16[1] = v11;
    v16[2] = v10;
    result = ChunkStack.subscript.getter(v12, a2, v9);
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    sub_25F304BDC();
    (*v13)(v9, v5);
    ++v12;
    if (v15 == ChunkStack.endIndex.getter(a2))
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ChunkStack<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v8 = *v2;
  v9 = v5;
  sub_25F30671C();
  ChunkStack<A>.hash(into:)(v7, a1, a2);
  return sub_25F30676C();
}

uint64_t sub_25F27D2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25F30671C();
  ChunkStack<A>.hash(into:)(v6, a2, v4);
  return sub_25F30676C();
}

uint64_t sub_25F27D328()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_25F304DCC() & 1;
}

uint64_t sub_25F27D354(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_25F27D51C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AsyncThrowingCache.__allocating_init(clearOnFailure:)(char a1)
{
  v2 = swift_allocObject();
  AsyncThrowingCache.init(clearOnFailure:)(a1);
  return v2;
}

uint64_t AsyncThrowingCache.init(clearOnFailure:)(char a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = v3[10];
  v5 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = sub_25F30557C();
  swift_getTupleTypeMetadata2();
  v7 = sub_25F3052DC();
  v8 = sub_25F1CCBBC(v7, v4, v6, v3[12]);

  *(v1 + 120) = v8;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_25F27D6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = *v4;
  v5[19] = *v4;
  v7 = *(v6 + 80);
  v5[20] = v7;
  v8 = *(v7 - 8);
  v5[21] = v8;
  v9 = *(v8 + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F27D7D8, v4, 0);
}

uint64_t sub_25F27D7D8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  swift_beginAccess();
  v5 = *(v3 + 120);
  v6 = *(v1 + 88);

  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30557C();
  v8 = *(v1 + 96);
  sub_25F304B8C();

  v9 = v0[11];
  v0[24] = v9;
  if (v9)
  {
    v10 = *(MEMORY[0x277D857C8] + 4);
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = sub_25F27DAEC;
    v12 = v0[14];
    v13 = MEMORY[0x277D84950];
    v14 = v9;
    v15 = v6;
    v16 = v7;
  }

  else
  {
    v17 = v0[23];
    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[17];
    v28 = v0[16];
    v29 = v0[15];
    v30 = v0[22];
    v21 = sub_25F30546C();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v31 = v7;
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v6;
    v22[6] = v8;
    v22[7] = v28;
    v22[8] = v20;

    v23 = sub_25F1B2738(0, 0, v17, &unk_25F3119C0, v22);
    v0[27] = v23;
    v24 = *(v18 + 16);
    v0[28] = v24;
    v0[29] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v30, v29, v19);
    v0[12] = v23;
    swift_beginAccess();
    v0[30] = sub_25F304B4C();

    sub_25F304B9C();
    swift_endAccess();
    v25 = *(MEMORY[0x277D857C8] + 4);
    v26 = swift_task_alloc();
    v0[31] = v26;
    *v26 = v0;
    v26[1] = sub_25F27DC8C;
    v12 = v0[14];
    v13 = MEMORY[0x277D84950];
    v14 = v23;
    v15 = v6;
    v16 = v31;
  }

  return MEMORY[0x282200430](v12, v14, v15, v16, v13);
}

uint64_t sub_25F27DAEC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_25F27DE2C;
  }

  else
  {
    v6 = sub_25F27DC18;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25F27DC18()
{
  v1 = v0[24];

  v3 = v0[22];
  v2 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F27DC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_25F27DEA0;
  }

  else
  {
    v6 = sub_25F27DDB8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25F27DDB8()
{
  v1 = v0[27];

  v3 = v0[22];
  v2 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F27DE2C()
{
  v1 = v0[24];

  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F27DEA0()
{
  if (*(*(v0 + 144) + 112) == 1)
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 240);
    (*(v0 + 224))(*(v0 + 176), *(v0 + 120), *(v0 + 160));
    *(v0 + 104) = 0;
    swift_beginAccess();
    sub_25F304B9C();
    swift_endAccess();
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 216);
  swift_willThrow();

  v5 = *(v0 + 256);
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25F27DF98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25F1AFDB0;

  return v9(a1);
}

uint64_t sub_25F27E090(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - v7;
  if (v9)
  {
    swift_beginAccess();
    v10 = v1[15];
    v11 = *(v3 + 88);

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30557C();
    v12 = *(v3 + 96);
    sub_25F304B8C();

    if (v16[1])
    {
      sub_25F30555C();
    }
  }

  (*(v5 + 16))(v8, a1, v4);
  v16[4] = 0;
  swift_beginAccess();
  v13 = *(v3 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30557C();
  v14 = *(v3 + 96);
  sub_25F304B4C();
  sub_25F304B9C();
  return swift_endAccess();
}

uint64_t AsyncThrowingCache.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncThrowingCache.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F27E340(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F1B51E0;

  return sub_25F27DF98(a1, v6, v7, v9);
}

uint64_t dispatch thunk of AsyncThrowingCache.value(for:makeValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_25F1AFDB0;

  return v14(a1, a2, a3, a4);
}

uint64_t AssociatedObjectCache.__allocating_init(logAspect:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AssociatedObjectCache.init(logAspect:)(a1);
  return v5;
}

char *AssociatedObjectCache.init(logAspect:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Ref();
  v6 = *(v3 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  swift_getTupleTypeMetadata2();
  v8 = sub_25F3052DC();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25F1CCBBC(v8, v5, TupleTypeMetadata3, WitnessTable);

  *(v1 + 2) = v10;
  v11 = qword_27FD56C40;
  v12 = sub_25F30479C();
  (*(*(v12 - 8) + 32))(&v1[v11], a1, v12);
  return v1;
}

void AssociatedObjectCache.retainedAssociatedObject(to:createAssociatedObject:)(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v64 = a3;
  v65 = a2;
  v71 = a4;
  v7 = *v4;
  v8 = *(v7 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  v74 = v8;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = sub_25F305C1C();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 8);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v64 - v18;
  v20 = *(TupleTypeMetadata3 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v64 - v22;
  v24 = *(v7 + 80);
  Ref.init(_:)(a1, v77);
  v25 = v77[0];
  swift_beginAccess();
  v26 = v5[2];
  v76 = v25;
  v27 = *(v26 + 16);
  v73 = v20;
  v67 = v25;
  v70 = v24;
  if (v27)
  {
    v28 = type metadata accessor for Ref();
    v29 = a1;
    v30 = v28;
    v31 = v29;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    WitnessTable = swift_getWitnessTable();
    v33 = sub_25F281E0C(&v76, v30, WitnessTable);
    if (v34)
    {
      v35 = *(v26 + 56);
      v36 = v73;
      (*(v73 + 16))(v19, v35 + *(v73 + 72) * v33, TupleTypeMetadata3);
      v37 = *(v36 + 56);
      v38 = v19;
      v39 = 0;
    }

    else
    {
      v36 = v73;
      v37 = *(v73 + 56);
      v38 = v19;
      v39 = 1;
    }

    v66 = v37;
    v37(v38, v39, 1, TupleTypeMetadata3);
    a1 = v31;
  }

  else
  {
    v66 = *(v20 + 56);
    v66(v19, 1, 1, TupleTypeMetadata3);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v36 = v20;
  }

  v41 = v68;
  v40 = v69;
  (*(v68 + 4))(v16, v19, v69);
  if ((*(v36 + 48))(v16, 1, TupleTypeMetadata3) == 1)
  {
    v42 = *(TupleTypeMetadata3 + 48);
    v43 = *(TupleTypeMetadata3 + 64);
    v65(a1);
    *&v23[v42] = 0;
    *&v23[v43] = 0;
    swift_unknownObjectRelease();
    (*(v41 + 1))(v16, v40);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v36 + 32))(v23, v16, TupleTypeMetadata3);
  }

  v44 = v72;
  v69 = *&v23[*(TupleTypeMetadata3 + 48)];
  v45 = *&v23[*(TupleTypeMetadata3 + 64)];
  swift_endAccess();
  v46 = *(v74 - 8);
  v47 = v71;
  (*(v46 + 32))(v71, v23);
  v72 = v45;
  if (v45)
  {
    swift_unknownObjectRetain();
    v48 = v72;
    v49 = sub_25F30477C();
    v50 = sub_25F3059FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v77[0] = v65;
      *v51 = 136446466;
      v76 = v74;
      swift_getMetatypeMetadata();
      v52 = sub_25F304E7C();
      v53 = a1;
      v55 = sub_25F1C53AC(v52, v54, v77);
      v68 = v48;
      v56 = v55;

      *(v51 + 4) = v56;
      *(v51 + 12) = 2082;
      v57 = static Logging.describe<A>(ref:)(a1);
      v59 = sub_25F1C53AC(v57, v58, v77);
      v48 = v68;

      *(v51 + 14) = v59;
      a1 = v53;
      v47 = v71;
      _os_log_impl(&dword_25F1A2000, v49, v50, "%{public}s: Retain requested for previous purged, canceling purging: %{public}s", v51, 0x16u);
      v60 = v65;
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v60, -1, -1);
      MEMORY[0x25F8D9510](v51, -1, -1);
    }

    [v48 invalidate];
  }

  Ref.init(_:)(a1, &v76);
  v61 = v76;
  v62 = *(TupleTypeMetadata3 + 48);
  v63 = *(TupleTypeMetadata3 + 64);
  (*(v46 + 16))(v44, v47, v74);
  if (__OFADD__(v69, 1))
  {
    __break(1u);
  }

  else
  {
    *&v44[v62] = v69 + 1;
    *&v44[v63] = 0;
    v66(v44, 0, 1, TupleTypeMetadata3);
    v75 = v61;
    swift_beginAccess();
    type metadata accessor for Ref();
    swift_unknownObjectRetain();
    swift_getWitnessTable();
    sub_25F304B4C();
    sub_25F304B9C();
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

uint64_t AssociatedObjectCache.retainedAssociatedObject(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = sub_25F305C1C();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - v11;
  v13 = swift_getTupleTypeMetadata3();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v72 = v5;
  v74 = *(v5 - 8);
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v15);
  v73 = &v59 - v19;
  v20 = *(v4 + 80);
  Ref.init(_:)(a1, v77);
  v21 = v77[0];
  swift_beginAccess();
  v70 = v2;
  v22 = v2[2];
  v75 = v21;
  v67 = v20;
  v23 = type metadata accessor for Ref();
  v69 = a1;
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  sub_25F304B8C();
  swift_unknownObjectRelease();
  swift_endAccess();
  v25 = *(TupleTypeMetadata3 - 8);
  if ((*(v25 + 48))(v12, 1, TupleTypeMetadata3) == 1)
  {
    (*(v65 + 8))(v12, v66);
    v26 = 1;
    v28 = v71;
    v27 = v72;
    v29 = v74;
    return (*(v29 + 56))(v28, v26, 1, v27);
  }

  v60 = v25;
  v63 = WitnessTable;
  v64 = v23;
  v30 = *&v12[*(TupleTypeMetadata3 + 48)];
  v66 = TupleTypeMetadata3;
  v31 = *&v12[*(TupleTypeMetadata3 + 64)];
  v32 = *(v13 + 48);
  v33 = *(v13 + 64);
  v34 = v13;
  v35 = v74 + 32;
  v36 = *(v74 + 32);
  v27 = v72;
  v36(v17, v12, v72);
  *&v17[v32] = v30;
  *&v17[v33] = v31;
  v65 = *&v17[*(v34 + 48)];
  v37 = *&v17[*(v34 + 64)];
  v61 = v36;
  v62 = v35;
  v36(v73, v17, v27);
  v39 = v68;
  v38 = v69;
  if (v37)
  {
    swift_unknownObjectRetain();
    v40 = v37;
    v41 = sub_25F30477C();
    v42 = sub_25F3059FC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v59 = v40;
      v44 = v43;
      v45 = swift_slowAlloc();
      v76[0] = v45;
      *v44 = 136446466;
      v77[0] = v27;
      swift_getMetatypeMetadata();
      v46 = sub_25F304E7C();
      v48 = sub_25F1C53AC(v46, v47, v76);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v49 = static Logging.describe<A>(ref:)(v69);
      v51 = sub_25F1C53AC(v49, v50, v76);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_25F1A2000, v41, v42, "%{public}s: Retain requested for previous purged, canceling purging: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v45, -1, -1);
      v52 = v44;
      v38 = v69;
      v40 = v59;
      MEMORY[0x25F8D9510](v52, -1, -1);
    }

    [v40 invalidate];
  }

  v70 = v37;
  Ref.init(_:)(v38, v77);
  v53 = v77[0];
  v54 = v66;
  v55 = *(v66 + 48);
  v56 = *(v66 + 64);
  v57 = v73;
  v29 = v74;
  result = (*(v74 + 16))(v39, v73, v27);
  if (!__OFADD__(v65, 1))
  {
    *&v39[v55] = v65 + 1;
    *&v39[v56] = 0;
    (*(v60 + 56))(v39, 0, 1, v54);
    v75 = v53;
    swift_beginAccess();
    sub_25F304B4C();
    swift_unknownObjectRetain();
    sub_25F304B9C();
    swift_endAccess();

    v28 = v71;
    v61(v71, v57, v27);
    v26 = 0;
    return (*(v29 + 56))(v28, v26, 1, v27);
  }

  __break(1u);
  return result;
}

uint64_t AssociatedObjectCache.withAssociatedObject(to:during:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v22[1] = a3;
  v23 = a2;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v24 = type metadata accessor for AssociatedObjectCache.DecrementResult();
  v22[0] = *(v24 - 8);
  v8 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v24);
  v10 = v22 - v9;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - v15;
  v17 = *(v7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v22 - v19;
  AssociatedObjectCache.retainedAssociatedObject(to:)(a1, v16);
  if ((*(v17 + 48))(v16, 1, v7) == 1)
  {
    return (*(v12 + 8))(v16, v11);
  }

  (*(v17 + 32))(v20, v16, v7);
  v23(v20);
  AssociatedObjectCache.decrementReferenceCount(to:after:)(a1, 0, 0, 0, v10);
  (*(v22[0] + 8))(v10, v24);
  return (*(v17 + 8))(v20, v7);
}

uint64_t *AssociatedObjectCache.decrementReferenceCount(to:after:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(char *, char *, uint64_t)@<X2>, uint64_t (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v171 = a4;
  v176 = a3;
  v174 = a2;
  v8 = *v5;
  v9 = *v5;
  v182 = a5;
  v183 = v9;
  v170 = sub_25F30479C();
  v169 = *(v170 - 8);
  v10 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v167 = v11;
  v168 = v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 88);
  v165 = sub_25F305C1C();
  v164 = *(v165 - 8);
  v13 = *(v164 + 8);
  MEMORY[0x28223BE20](v165);
  v163 = v161 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v180 = sub_25F305C1C();
  v179 = *(v180 - 8);
  v15 = *(v179 + 64);
  v16 = MEMORY[0x28223BE20](v180);
  v18 = v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v161 - v19;
  v178 = swift_getTupleTypeMetadata3();
  v21 = *(*(v178 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v178);
  v24 = v161 - v23;
  v187 = *(v12 - 8);
  v25 = *(v187 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v172 = v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v173 = v161 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v166 = v161 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v162 = v161 - v32;
  MEMORY[0x28223BE20](v31);
  v181 = v161 - v33;
  v34 = qword_27FD56C40;
  swift_unknownObjectRetain();
  v177 = v34;
  v35 = sub_25F30477C();
  v36 = sub_25F3059FC();
  swift_unknownObjectRelease();
  v37 = os_log_type_enabled(v35, v36);
  v188 = v12;
  v186 = a1;
  v184 = v6;
  v175 = v18;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136446466;
    v197 = v12;
    swift_getMetatypeMetadata();
    v40 = sub_25F304E7C();
    v42 = sub_25F1C53AC(v40, v41, &aBlock);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    v43 = *(v183 + 80);
    v44 = static Logging.describe<A>(ref:)(v186);
    v46 = sub_25F1C53AC(v44, v45, &aBlock);
    v47 = v43;

    *(v38 + 14) = v46;
    a1 = v186;
    _os_log_impl(&dword_25F1A2000, v35, v36, "%{public}s: Release requested for: %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v39, -1, -1);
    v48 = v38;
    v6 = v184;
    MEMORY[0x25F8D9510](v48, -1, -1);
  }

  else
  {

    v47 = *(v183 + 80);
  }

  Ref.init(_:)(a1, &v197);
  v49 = v197;
  swift_beginAccess();
  v50 = v6[2];
  v196 = v49;
  v51 = type metadata accessor for Ref();
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  v53 = TupleTypeMetadata3;
  sub_25F304B8C();
  swift_unknownObjectRelease();
  swift_endAccess();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v20, 1, v53) == 1)
  {
    (*(v179 + 8))(v20, v180);
    aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AssociatedObjectCache.swift";
    v190 = 133;
    LOBYTE(v191) = 2;
    *(&v191 + 1) = v196;
    HIDWORD(v191) = *(&v196 + 3);
    v192 = xmmword_25F311AB0;
    v193 = "decrementReferenceCount(to:after:)";
    v194 = 34;
    v195 = 2;
    sub_25F213F98(&aBlock);
    return (*(v187 + 56))(v182, 2, 2, v188);
  }

  v161[0] = v25;
  v179 = v54;
  v180 = WitnessTable;
  v183 = v47;
  v56 = *&v20[*(v53 + 48)];
  v57 = *&v20[*(v53 + 64)];
  v58 = v178;
  v59 = *(v178 + 48);
  v60 = *(v178 + 64);
  v61 = *(v187 + 32);
  v161[1] = v187 + 32;
  v62 = v20;
  v63 = v188;
  v61(v24, v62, v188);
  *&v24[v59] = v56;
  *&v24[v60] = v57;
  v64 = *&v24[*(v58 + 48)];

  v65 = v181;
  v178 = v61;
  v61(v181, v24, v63);
  if (!v64)
  {
    aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AssociatedObjectCache.swift";
    v190 = 133;
    LOBYTE(v191) = 2;
    v192 = xmmword_25F311AA0;
    v193 = "decrementReferenceCount(to:after:)";
    v194 = 34;
    v195 = 2;
    sub_25F213F98(&aBlock);
    v88 = v187;
    v87 = v188;
    (*(v187 + 8))(v65, v188);
    return (*(v88 + 56))(v182, 2, 2, v87);
  }

  if (v64 != 1)
  {
    v165 = v51;
    v90 = v187;
    v89 = v188;
    v91 = v187 + 16;
    v92 = *(v187 + 16);
    v93 = v172;
    v92(v172, v65, v188);
    v94 = sub_25F30477C();
    v95 = sub_25F3059FC();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v64 - 1;
    v98 = __OFSUB__(v64, 1);
    v178 = v91;
    v176 = v92;
    v177 = v97;
    if (v96)
    {
      v99 = swift_slowAlloc();
      result = swift_slowAlloc();
      v174 = result;
      aBlock = result;
      *v99 = 134218242;
      if (v98)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      *(v99 + 4) = v97;
      *(v99 + 12) = 2082;
      v100 = v188;
      sub_25F30657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_25F3081E0;
      *(v101 + 56) = MEMORY[0x277D837D0];
      *(v101 + 64) = sub_25F1F7190();
      *(v101 + 32) = 0x63656A624F796E41;
      *(v101 + 40) = 0xE900000000000074;
      v102 = sub_25F304DBC();
      v103 = MEMORY[0x277D83C10];
      *(v101 + 96) = MEMORY[0x277D83B88];
      *(v101 + 104) = v103;
      *(v101 + 72) = v102;
      v104 = sub_25F304E3C();
      v106 = v105;
      swift_unknownObjectRelease();
      v107 = v93;
      v108 = *(v90 + 8);
      v108(v107, v100);
      v109 = sub_25F1C53AC(v104, v106, &aBlock);

      *(v99 + 14) = v109;
      _os_log_impl(&dword_25F1A2000, v94, v95, "Decrementing ref count to %ld for %{public}s", v99, 0x16u);
      v110 = v174;
      __swift_destroy_boxed_opaque_existential_1(v174);
      MEMORY[0x25F8D9510](v110, -1, -1);
      v111 = v99;
      v89 = v100;
      MEMORY[0x25F8D9510](v111, -1, -1);

      v98 = 0;
      v65 = v181;
    }

    else
    {

      v112 = v93;
      v108 = *(v90 + 8);
      v108(v112, v89);
    }

    Ref.init(_:)(v186, &v197);
    v113 = v197;
    v114 = TupleTypeMetadata3;
    v115 = *(TupleTypeMetadata3 + 48);
    v116 = *(TupleTypeMetadata3 + 64);
    v117 = v175;
    result = v176(v175, v65, v89);
    if (!v98)
    {
      *&v117[v115] = v177;
      *&v117[v116] = 0;
      (*(v179 + 56))(v117, 0, 1, v114);
      v196 = v113;
      swift_beginAccess();
      sub_25F304B4C();
      swift_unknownObjectRetain();
      sub_25F304B9C();
      swift_endAccess();
      v118 = v187;
      v108(v65, v89);
      return (*(v118 + 56))(v182, 2, 2, v89);
    }

    __break(1u);
    goto LABEL_28;
  }

  v66 = v187;
  v67 = v184;
  if (v176)
  {
    v165 = v51;
    v68 = v174;
    v69 = v174;
    v70 = *(v187 + 16);
    v71 = v166;
    v172 = (v187 + 16);
    v164 = v70;
    v70(v166, v65, v188);
    v72 = sub_25F30477C();
    v73 = v66;
    v74 = sub_25F3059FC();
    if (os_log_type_enabled(v72, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock = v76;
      *v75 = 134218242;
      *(v75 + 4) = v68;
      *(v75 + 12) = 2082;
      v77 = v188;
      sub_25F30657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_25F3081E0;
      *(v78 + 56) = MEMORY[0x277D837D0];
      *(v78 + 64) = sub_25F1F7190();
      *(v78 + 32) = 0x63656A624F796E41;
      *(v78 + 40) = 0xE900000000000074;
      v79 = sub_25F304DBC();
      v80 = MEMORY[0x277D83C10];
      *(v78 + 96) = MEMORY[0x277D83B88];
      *(v78 + 104) = v80;
      *(v78 + 72) = v79;
      v81 = sub_25F304E3C();
      v83 = v82;
      swift_unknownObjectRelease();
      v84 = *(v73 + 8);
      v163 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v84(v71, v77);
      v85 = v81;
      v67 = v184;
      v86 = sub_25F1C53AC(v85, v83, &aBlock);
      v65 = v181;

      *(v75 + 14) = v86;
      _os_log_impl(&dword_25F1A2000, v72, v74, "Ref count is 1, but delaying purging for %f seconds: %{public}s", v75, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x25F8D9510](v76, -1, -1);
      MEMORY[0x25F8D9510](v75, -1, -1);
    }

    else
    {

      v132 = *(v73 + 8);
      v163 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v132(v71, v188);
    }

    v133 = v73;
    v134 = v161[0];
    v166 = objc_opt_self();
    v162 = swift_allocObject();
    swift_weakInit();
    v135 = v169;
    v136 = v168;
    v137 = v170;
    (*(v169 + 16))(v168, v67 + v177, v170);
    v138 = v188;
    v164(v173, v65, v188);
    v139 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v140 = (v167 + v139 + *(v133 + 80)) & ~*(v133 + 80);
    v141 = (v134 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
    v142 = (v141 + 15) & 0xFFFFFFFFFFFFFFF8;
    v143 = swift_allocObject();
    *(v143 + 16) = v183;
    *(v143 + 24) = v138;
    (*(v135 + 32))(v143 + v139, v136, v137);
    v144 = v138;
    (v178)(v143 + v140, v173, v138);
    *(v143 + v141) = v162;
    v145 = v186;
    *(v143 + v142) = v186;
    v146 = (v143 + ((v142 + 15) & 0xFFFFFFFFFFFFFFF8));
    v147 = v176;
    v148 = v171;
    *v146 = v176;
    v146[1] = v148;
    *(&v192 + 1) = sub_25F282008;
    v193 = v143;
    aBlock = MEMORY[0x277D85DD0];
    v190 = 1107296256;
    v191 = sub_25F1E315C;
    *&v192 = &block_descriptor_8;
    v149 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    sub_25F2312F8(v174, v147);

    v150 = [v166 scheduledTimerWithTimeInterval:0 repeats:v149 block:*&v69];
    _Block_release(v149);
    Ref.init(_:)(v145, &v197);
    v151 = v197;
    v152 = TupleTypeMetadata3;
    v153 = *(TupleTypeMetadata3 + 48);
    v154 = *(TupleTypeMetadata3 + 64);
    v155 = v175;
    v156 = v181;
    v164(v175, v181, v144);
    *&v155[v153] = 0;
    *&v155[v154] = v150;
    (*(v179 + 56))(v155, 0, 1, v152);
    v196 = v151;
    swift_beginAccess();
    sub_25F304B4C();
    swift_unknownObjectRetain();
    v157 = v150;
    sub_25F304B9C();
    swift_endAccess();

    v158 = v187;
    (*(v187 + 8))(v156, v144);
    return (*(v158 + 56))(v182, 1, 2, v144);
  }

  else
  {
    v119 = v162;
    v120 = v188;
    (*(v187 + 16))(v162, v65, v188);
    v121 = sub_25F30477C();
    v122 = sub_25F3059FC();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      aBlock = v124;
      *v123 = 136446210;
      sub_25F30657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_25F3081E0;
      *(v125 + 56) = MEMORY[0x277D837D0];
      *(v125 + 64) = sub_25F1F7190();
      *(v125 + 32) = 0x63656A624F796E41;
      *(v125 + 40) = 0xE900000000000074;
      v126 = sub_25F304DBC();
      v127 = MEMORY[0x277D83C10];
      *(v125 + 96) = MEMORY[0x277D83B88];
      *(v125 + 104) = v127;
      *(v125 + 72) = v126;
      v128 = sub_25F304E3C();
      v130 = v129;
      swift_unknownObjectRelease();
      (*(v66 + 8))(v119, v120);
      v131 = sub_25F1C53AC(v128, v130, &aBlock);

      *(v123 + 4) = v131;
      _os_log_impl(&dword_25F1A2000, v121, v122, "Ref count is 1, invalidating: %{public}s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v124);
      MEMORY[0x25F8D9510](v124, -1, -1);
      MEMORY[0x25F8D9510](v123, -1, -1);
    }

    else
    {

      (*(v66 + 8))(v119, v120);
    }

    v159 = v163;
    AssociatedObjectCache.purgeAssociatedObject(to:)(v186, v163);
    (*(v164 + 1))(v159, v165);
    v160 = v182;
    (v178)(v182, v181, v120);
    return (*(v66 + 56))(v160, 0, 2, v120);
  }
}

uint64_t AssociatedObjectCache.purgeAssociatedObject(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56C38, &unk_25F311AC0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v38 = sub_25F305C1C();
  v40 = *(v38 - 8);
  v7 = *(v40 + 64);
  v8 = MEMORY[0x28223BE20](v38);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v39 = v5;
  v12 = swift_getTupleTypeMetadata3();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = *(v4 + 80);
  Ref.init(_:)(a1, &v45);
  v17 = v45;
  swift_beginAccess();
  v18 = v2[2];
  v44 = v17;
  type metadata accessor for Ref();
  v41 = a1;
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  sub_25F304B8C();
  swift_unknownObjectRelease();
  swift_endAccess();
  v19 = *(TupleTypeMetadata3 - 8);
  v20 = *(v19 + 48);
  v37 = v19 + 48;
  if (v20(v11, 1, TupleTypeMetadata3) == 1)
  {
    v21 = v38;
    (*(v40 + 8))(v11, v38);
    v22 = v39;
  }

  else
  {
    v34 = *&v11[*(TupleTypeMetadata3 + 64)];
    v35 = v20;
    v23 = *(v12 + 64);
    v24 = v39;
    v25 = v12;
    v26 = *(v39 - 8);
    (*(v26 + 32))(v15, v11, v39);
    *&v15[v23] = v34;
    v27 = *&v15[*(v25 + 64)];
    (*(v26 + 8))(v15, v24);
    [v27 invalidate];

    v22 = v24;
    v20 = v35;
    v21 = v38;
  }

  Ref.init(_:)(v41, &v45);
  swift_beginAccess();
  sub_25F304B4C();
  swift_unknownObjectRetain();
  v28 = v42;
  sub_25F304A8C();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v20(v28, 1, TupleTypeMetadata3) == 1)
  {
    (*(v40 + 8))(v28, v21);
    v29 = *(v22 - 8);
    v30 = 1;
    v31 = v43;
  }

  else
  {

    v29 = *(v22 - 8);
    v31 = v43;
    (*(v29 + 32))(v43, v28, v22);
    v30 = 0;
  }

  return (*(v29 + 56))(v31, v30, 1, v22);
}