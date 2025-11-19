void sub_26BE8B834()
{
  if (!qword_28045EB80)
  {
    sub_26C00921C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28045EB80);
    }
  }
}

unint64_t sub_26BE8B8A0()
{
  result = qword_28045EB90;
  if (!qword_28045EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB90);
  }

  return result;
}

unint64_t sub_26BE8B8F4()
{
  result = qword_28045EB98;
  if (!qword_28045EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EB98);
  }

  return result;
}

unint64_t sub_26BE8B948()
{
  result = qword_28045EBA0;
  if (!qword_28045EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBA0);
  }

  return result;
}

unint64_t sub_26BE8B99C()
{
  result = qword_28045EBA8;
  if (!qword_28045EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBA8);
  }

  return result;
}

unint64_t sub_26BE8B9F0()
{
  result = qword_28045EBB0;
  if (!qword_28045EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBB0);
  }

  return result;
}

unint64_t sub_26BE8BA44()
{
  result = qword_28045EBB8;
  if (!qword_28045EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBB8);
  }

  return result;
}

unint64_t sub_26BE8BA98()
{
  result = qword_28045EBC0;
  if (!qword_28045EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBC0);
  }

  return result;
}

unint64_t sub_26BE8BAEC()
{
  result = qword_28045EBC8;
  if (!qword_28045EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBC8);
  }

  return result;
}

unint64_t sub_26BE8BB40()
{
  result = qword_28045EBD0;
  if (!qword_28045EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBD0);
  }

  return result;
}

unint64_t sub_26BE8BB94()
{
  result = qword_28045EBD8;
  if (!qword_28045EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBD8);
  }

  return result;
}

unint64_t sub_26BE8BBE8()
{
  result = qword_28045EBE0;
  if (!qword_28045EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBE0);
  }

  return result;
}

unint64_t sub_26BE8BC3C()
{
  result = qword_28045EBE8;
  if (!qword_28045EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBE8);
  }

  return result;
}

unint64_t sub_26BE8BC90()
{
  result = qword_28045EBF0;
  if (!qword_28045EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBF0);
  }

  return result;
}

unint64_t sub_26BE8BCE4()
{
  result = qword_28045EBF8;
  if (!qword_28045EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EBF8);
  }

  return result;
}

unint64_t sub_26BE8BD38()
{
  result = qword_28045EC00;
  if (!qword_28045EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC00);
  }

  return result;
}

unint64_t sub_26BE8BD8C()
{
  result = qword_28045EC08;
  if (!qword_28045EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC08);
  }

  return result;
}

unint64_t sub_26BE8BDE0()
{
  result = qword_28045EC10;
  if (!qword_28045EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC10);
  }

  return result;
}

unint64_t sub_26BE8BE34()
{
  result = qword_28045EC18;
  if (!qword_28045EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC18);
  }

  return result;
}

unint64_t sub_26BE8BE88()
{
  result = qword_28045EC20;
  if (!qword_28045EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC20);
  }

  return result;
}

unint64_t sub_26BE8BEDC()
{
  result = qword_28045EC28;
  if (!qword_28045EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EC28);
  }

  return result;
}

uint64_t sub_26BE8BF30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BE8C044(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_19;
    }

    v7 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v7);
  v11 = result;
  if (!v1)
  {
    sub_26BE11228(v2, v3);
    v12 = __OFADD__(v11, v7);
    v13 = v11 + v7;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v24 = bswap64(v4);
      v14 = MEMORY[0x277D838B0];
      v15 = MEMORY[0x277CC9C18];
      v27 = MEMORY[0x277D838B0];
      v28 = MEMORY[0x277CC9C18];
      v25 = &v24;
      v26 = &v25;
      v16 = __swift_project_boxed_opaque_existential_1(&v25, MEMORY[0x277D838B0]);
      v18 = *v16;
      v17 = v16[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v25);
      v12 = __OFADD__(v13, 8);
      v19 = v13 + 8;
      if (!v12)
      {
        LOBYTE(v24) = v5;
        v27 = v14;
        v28 = v15;
        v25 = &v24;
        v26 = (&v24 + 1);
        v20 = __swift_project_boxed_opaque_existential_1(&v25, v14);
        v22 = *v20;
        v21 = v20[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v25);
        result = v19 + 1;
        if (!__OFADD__(v19, 1))
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.AuthenticatedContent.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 216);
  v18[12] = *(v1 + 200);
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 225);
  v4 = *(v1 + 120);
  v5 = *(v1 + 152);
  v18[8] = *(v1 + 136);
  v18[9] = v5;
  v18[10] = *(v1 + 168);
  v18[11] = v2;
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v18[4] = *(v1 + 72);
  v18[5] = v7;
  v18[6] = *(v1 + 104);
  v18[7] = v4;
  v8 = *(v1 + 24);
  v18[0] = *(v1 + 8);
  v18[1] = v8;
  v18[2] = *(v1 + 40);
  v18[3] = v6;
  v9 = *(v1 + 184);
  v10 = *(v1 + 216);
  a1[12] = *(v1 + 200);
  a1[13] = v10;
  *(a1 + 217) = *(v1 + 225);
  v11 = *(v1 + 120);
  v12 = *(v1 + 152);
  a1[8] = *(v1 + 136);
  a1[9] = v12;
  a1[10] = *(v1 + 168);
  a1[11] = v9;
  v13 = *(v1 + 56);
  v14 = *(v1 + 88);
  a1[4] = *(v1 + 72);
  a1[5] = v14;
  a1[6] = *(v1 + 104);
  a1[7] = v11;
  v15 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v15;
  a1[2] = *(v1 + 40);
  a1[3] = v13;
  return sub_26BE2FB24(v18, &v17);
}

__n128 MLS.AuthenticatedContent.content.setter(uint64_t a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 216);
  v18[12] = *(v1 + 200);
  v19[0] = v4;
  *(v19 + 9) = *(v1 + 225);
  v5 = *(v1 + 120);
  v6 = *(v1 + 152);
  v18[8] = *(v1 + 136);
  v18[9] = v6;
  v18[10] = *(v1 + 168);
  v18[11] = v3;
  v7 = *(v1 + 56);
  v8 = *(v1 + 88);
  v18[4] = *(v1 + 72);
  v18[5] = v8;
  v18[6] = *(v1 + 104);
  v18[7] = v5;
  v9 = *(v1 + 24);
  v18[0] = *(v1 + 8);
  v18[1] = v9;
  v18[2] = *(v1 + 40);
  v18[3] = v7;
  sub_26BE71494(v18);
  v10 = *(a1 + 160);
  *(v1 + 184) = *(a1 + 176);
  v11 = *(a1 + 208);
  *(v1 + 200) = *(a1 + 192);
  *(v1 + 216) = v11;
  *(v1 + 225) = *(a1 + 217);
  v12 = *(a1 + 96);
  *(v1 + 120) = *(a1 + 112);
  v13 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 128);
  *(v1 + 152) = v13;
  *(v1 + 168) = v10;
  v14 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v15;
  *(v1 + 104) = v12;
  result = *a1;
  v17 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v17;
  *(v1 + 40) = v14;
  return result;
}

uint64_t MLS.AuthenticatedContent.auth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.AuthenticatedContent() + 24);

  return sub_26BE8C448(v3, a1);
}

uint64_t type metadata accessor for MLS.AuthenticatedContent()
{
  result = qword_28045EC58;
  if (!qword_28045EC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BE8C448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.AuthenticatedContent.auth.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.AuthenticatedContent() + 24);

  return sub_26BE8C4FC(a1, v3);
}

uint64_t sub_26BE8C4FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.AuthenticatedContent.init(wireFormat:content:)@<X0>(__int16 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for MLS.AuthenticatedContent() + 24);
  v7 = type metadata accessor for MLS.FramedContentAuthData();
  v16 = *(*(v7 - 8) + 56);
  (v16)((v7 - 8), a3 + v6, 1, 1, v7);
  v8 = a2[10];
  *(a3 + 184) = a2[11];
  v9 = a2[13];
  *(a3 + 200) = a2[12];
  *(a3 + 216) = v9;
  *(a3 + 225) = *(a2 + 217);
  v10 = a2[6];
  *(a3 + 120) = a2[7];
  v11 = a2[9];
  *(a3 + 136) = a2[8];
  *(a3 + 152) = v11;
  *(a3 + 168) = v8;
  v12 = a2[2];
  *(a3 + 56) = a2[3];
  v13 = a2[5];
  *(a3 + 72) = a2[4];
  *(a3 + 88) = v13;
  *(a3 + 104) = v10;
  v14 = a2[1];
  *(a3 + 8) = *a2;
  *(a3 + 24) = v14;
  *a3 = v5;
  *(a3 + 40) = v12;
  sub_26BE8C6E0(a3 + v6);

  return v16(a3 + v6, 1, 1, v7);
}

uint64_t sub_26BE8C6E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE8C75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 36);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BE8C824(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 36) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26BE8C8D0()
{
  sub_26BE8C954();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26BE8C954()
{
  if (!qword_28045EC68)
  {
    type metadata accessor for MLS.FramedContentAuthData();
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_28045EC68);
    }
  }
}

uint64_t sub_26BE8C9AC(unsigned __int16 *a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for MLS.FramedContentAuthData();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOWORD(v48) = bswap32(*a1) >> 16;
  *(&v63 + 1) = MEMORY[0x277D838B0];
  *&v64 = MEMORY[0x277CC9C18];
  *&v62 = &v48;
  *(&v62 + 1) = &v48 + 2;
  v10 = __swift_project_boxed_opaque_existential_1(&v62, MEMORY[0x277D838B0]);
  v12 = *v10;
  v11 = v10[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v62);
  v13 = *(a1 + 100);
  v76[11] = *(a1 + 92);
  v76[12] = v13;
  v77[0] = *(a1 + 108);
  *(v77 + 9) = *(a1 + 225);
  v14 = *(a1 + 60);
  v15 = *(a1 + 76);
  v76[8] = *(a1 + 68);
  v76[9] = v15;
  v76[10] = *(a1 + 84);
  v16 = *(a1 + 28);
  v17 = *(a1 + 44);
  v76[4] = *(a1 + 36);
  v76[5] = v17;
  v76[6] = *(a1 + 52);
  v76[7] = v14;
  v18 = *(a1 + 12);
  v76[0] = *(a1 + 4);
  v76[1] = v18;
  v76[2] = *(a1 + 20);
  v76[3] = v16;
  v19 = *(a1 + 100);
  v73 = *(a1 + 92);
  v74 = v19;
  v75[0] = *(a1 + 108);
  *(v75 + 9) = *(a1 + 225);
  v20 = *(a1 + 60);
  v21 = *(a1 + 76);
  v70 = *(a1 + 68);
  v71 = v21;
  v72 = *(a1 + 84);
  v22 = *(a1 + 28);
  v23 = *(a1 + 44);
  v66 = *(a1 + 36);
  v67 = v23;
  v68 = *(a1 + 52);
  v69 = v20;
  v24 = *(a1 + 12);
  v62 = *(a1 + 4);
  v63 = v24;
  v64 = *(a1 + 20);
  v65 = v22;
  sub_26BE2FB24(v76, &v48);
  v25 = v44;
  v26 = sub_26BEDC390(&v62);
  v44 = v25;
  if (v25)
  {
    v60 = v74;
    v61[0] = v75[0];
    *(v61 + 9) = *(v75 + 9);
    v56 = v70;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v51 = v65;
    result = sub_26BE71494(&v48);
    goto LABEL_13;
  }

  v28 = v26;
  v59 = v73;
  v60 = v74;
  v61[0] = v75[0];
  *(v61 + 9) = *(v75 + 9);
  v56 = v70;
  v57 = v71;
  v58 = v72;
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v55 = v69;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v51 = v65;
  sub_26BE71494(&v48);
  v29 = v28 + 2;
  if (__OFADD__(v28, 2))
  {
    __break(1u);
    goto LABEL_15;
  }

  v30 = type metadata accessor for MLS.AuthenticatedContent();
  sub_26BE8C448(a1 + *(v30 + 24), v5);
  if ((*(v43 + 48))(v5, 1, v6) == 1)
  {
    sub_26BE8C6E0(v5);
    sub_26BE01654();
    swift_allocError();
    *v31 = 6;
    v31[112] = 1;
    result = swift_willThrow();
    goto LABEL_13;
  }

  sub_26BE8CE38(v5, v9);
  v32 = *(a1 + 100);
  v46[8] = *(a1 + 92);
  v46[9] = v32;
  v47[0] = *(a1 + 108);
  *(v47 + 9) = *(a1 + 225);
  v33 = *(a1 + 68);
  v46[4] = *(a1 + 60);
  v46[5] = v33;
  v34 = *(a1 + 84);
  v46[6] = *(a1 + 76);
  v46[7] = v34;
  v35 = *(a1 + 36);
  v46[0] = *(a1 + 28);
  v46[1] = v35;
  v36 = *(a1 + 52);
  v46[2] = *(a1 + 44);
  v46[3] = v36;
  v37 = sub_26BE6917C(v46);
  if (v37)
  {
    v38 = v44;
    if (v37 == 1)
    {
      nullsub_1(v46);
      v39 = 2;
    }

    else
    {
      nullsub_1(v46);
      v39 = 3;
    }
  }

  else
  {
    nullsub_1(v46);
    v39 = 1;
    v38 = v44;
  }

  v45 = v39;
  v40 = sub_26BED4DD8(v9, &v45);
  result = sub_26BE8CE9C(v9);
  if (!v38)
  {
    result = v29 + v40;
    if (__OFADD__(v29, v40))
    {
LABEL_15:
      __break(1u);
    }
  }

LABEL_13:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE8CE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.FramedContentAuthData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE8CE9C(uint64_t a1)
{
  v2 = type metadata accessor for MLS.FramedContentAuthData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE8CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  return MEMORY[0x2822009F8](sub_26BE8CF58, 0, 0);
}

uint64_t sub_26BE8CF58()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[9] = v6;
  v0[10] = v7;
  v0[11] = v1[2];

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_26BE8D068;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8D068()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8D2F4, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = swift_task_alloc();
    v3[14] = v5;
    *v5 = v3;
    v5[1] = sub_26BE8D1E0;
    v6 = v3[7];
    v7 = v3[8];
    v8 = v3[6];

    return sub_26BE192D0(v5, v8, v6, v7);
  }
}

uint64_t sub_26BE8D1E0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_26BE8D764;
  }

  else
  {
    v3 = sub_26BE8D534;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE8D2F4()
{
  v20 = v0;
  v1 = v0[11];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v19);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v19);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[13];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];

  sub_26BE0489C(v15, v14);
  v17 = v0[1];

  return v17();
}

uint64_t sub_26BE8D534()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8D5D8;

  return sub_26BEAB784();
}

uint64_t sub_26BE8D5D8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE8D6F0, 0, 0);
}

uint64_t sub_26BE8D6F0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  sub_26BE0489C(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BE8D764()
{
  v0[18] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8D808;

  return sub_26BEAB784();
}

uint64_t sub_26BE8D808()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE8D920, 0, 0);
}

uint64_t sub_26BE8D920()
{
  v1 = v0[15];
  swift_willThrow();
  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  sub_26BE0489C(v4, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BE8D9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_26BE8D9C4, 0, 0);
}

uint64_t sub_26BE8D9C4()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[7] = v6;
  v0[8] = v7;
  v0[9] = v1[2];

  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_26BE8DAD4;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8DAD4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8DD5C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = swift_task_alloc();
    v3[12] = v5;
    *v5 = v3;
    v5[1] = sub_26BE8DC48;
    v6 = v3[6];

    return sub_26BE24628(v5, v6);
  }
}

uint64_t sub_26BE8DC48()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_26BE8E148;
  }

  else
  {
    v3 = sub_26BE8DF8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE8DD5C()
{
  v18 = v0;
  v1 = v0[9];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[11];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE8DF8C()
{
  v0[14] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8E030;

  return sub_26BEAB784();
}

uint64_t sub_26BE8E030()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFB04, 0, 0);
}

uint64_t sub_26BE8E148()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8E1EC;

  return sub_26BEAB784();
}

uint64_t sub_26BE8E1EC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAB4, 0, 0);
}

uint64_t sub_26BE8E304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE8E328, 0, 0);
}

uint64_t sub_26BE8E328()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[10] = v6;
  v0[11] = v7;
  v0[12] = v1[2];

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_26BE8E438;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8E438()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8E6C8, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_26BE8E5B4;
    v6 = v3[9];

    return sub_26BE1C4E4((v3 + 5), v6);
  }
}

uint64_t sub_26BE8E5B4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26BE8EABC;
  }

  else
  {
    v3 = sub_26BE8E8F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE8E6C8()
{
  v18 = v0;
  v1 = v0[12];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[14];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE8E8F8()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 136) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26BE8E9A4;

  return sub_26BEAB784();
}

uint64_t sub_26BE8E9A4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFB10, 0, 0);
}

uint64_t sub_26BE8EABC()
{
  v0[19] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8EB60;

  return sub_26BEAB784();
}

uint64_t sub_26BE8EB60()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFABC, 0, 0);
}

uint64_t sub_26BE8EC78(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BE8EC98, 0, 0);
}

uint64_t sub_26BE8EC98()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[7] = v7;
  v0[8] = v8;
  v0[9] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_26BE8EDAC;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8EDAC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8F49C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = swift_task_alloc();
    v3[12] = v5;
    *v5 = v3;
    v5[1] = sub_26BE8EF20;
    v6 = v3[6];

    return sub_26BF3536C();
  }
}

uint64_t sub_26BE8EF20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_26BE8F26C;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_26BE8F048;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BE8F048()
{
  v0[15] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8F0EC;

  return sub_26BEAB784();
}

uint64_t sub_26BE8F0EC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE8F204, 0, 0);
}

uint64_t sub_26BE8F204()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_26BE8F26C()
{
  v0[17] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8F310;

  return sub_26BEAB784();
}

uint64_t sub_26BE8F310()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE8F428, 0, 0);
}

uint64_t sub_26BE8F428()
{
  v1 = v0[13];
  swift_willThrow();
  v2 = v0[13];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BE8F49C()
{
  v18 = v0;
  v1 = v0[9];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[11];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE8F6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_26BE8F6FC, 0, 0);
}

uint64_t sub_26BE8F6FC()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[7] = v7;
  v0[8] = v8;
  v0[9] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_26BE8F810;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8F810()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8F49C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = swift_task_alloc();
    v3[12] = v5;
    *v5 = v3;
    v5[1] = sub_26BE8F984;
    v6 = v3[6];

    return sub_26BF5DAA0();
  }
}

uint64_t sub_26BE8F984()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_26BE8FCB8;
  }

  else
  {
    v3 = sub_26BE8FA98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE8FA98()
{
  v0[14] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8FB3C;

  return sub_26BEAB784();
}

uint64_t sub_26BE8FB3C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE8FC54, 0, 0);
}

uint64_t sub_26BE8FC54()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE8FCB8()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BE8FD5C;

  return sub_26BEAB784();
}

uint64_t sub_26BE8FD5C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE8F428, 0, 0);
}

uint64_t sub_26BE8FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26BE8FE98, 0, 0);
}

uint64_t sub_26BE8FE98()
{
  v1 = v0[6];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[8] = v7;
  v0[9] = v8;
  v0[10] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26BE8FFAC;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE8FFAC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_26BE90308;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_26BE900C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE900C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_26BE00608(v5, v4);
  *v3 = v5;
  v3[1] = v4;
  v0[13] = *(v2 + 16);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_26BE9018C;

  return sub_26BEAB784();
}

uint64_t sub_26BE9018C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE902A4, 0, 0);
}

uint64_t sub_26BE902A4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE90308()
{
  v18 = v0;
  v1 = v0[10];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[12];
  v13 = v0[7];
  sub_26BE01654();
  swift_allocError();
  *v14 = 21;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0;
  *(v14 + 112) = 23;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE9055C()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE90670;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE90670()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BE9099C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE9078C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE9078C()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000004ELL;
  *(v2 + 8) = 0x800000026C02BE90;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE90884()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAE4, 0, 0);
}

uint64_t sub_26BE9099C()
{
  v17 = v0;
  v1 = v0[8];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v16);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[10];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BE90BC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BE90BE4, 0, 0);
}

uint64_t sub_26BE90BE4()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[7] = v6;
  v0[8] = v7;
  v0[9] = v1[2];

  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_26BE90CF4;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE90CF4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE8DD5C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = swift_task_alloc();
    v3[12] = v5;
    *v5 = v3;
    v5[1] = sub_26BE90E68;
    v6 = v3[6];

    return sub_26BE225D4();
  }
}

uint64_t sub_26BE90E68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_26BE9114C;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_26BE90F90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BE90F90()
{
  v0[15] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE91034;

  return sub_26BEAB784();
}

uint64_t sub_26BE91034()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAFC, 0, 0);
}

uint64_t sub_26BE9114C()
{
  v0[17] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE911F0;

  return sub_26BEAB784();
}

uint64_t sub_26BE911F0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAB4, 0, 0);
}

uint64_t sub_26BE91308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  return MEMORY[0x2822009F8](sub_26BE91330, 0, 0);
}

uint64_t sub_26BE91330()
{
  v1 = v0[18];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[22] = v6;
  v0[23] = v7;
  v0[24] = v1[2];

  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_26BE91440;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE91440()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE916D4, 0, 0);
  }

  else
  {
    v4 = v3[24];

    v5 = swift_task_alloc();
    v3[27] = v5;
    *v5 = v3;
    v5[1] = sub_26BE915C0;
    v6 = v3[20];
    v7 = v3[21];
    v8 = v3[19];

    return sub_26BE23CE0((v3 + 2), v8, v6, v7);
  }
}

uint64_t sub_26BE915C0()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_26BE91B5C;
  }

  else
  {
    v3 = sub_26BE91914;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE916D4()
{
  v20 = v0;
  v1 = v0[24];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[22];
    v5 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v19);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v19);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[26];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[19];

  sub_26BE00258(v15, v14);
  v17 = v0[1];

  return v17();
}

uint64_t sub_26BE91914()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 64);
  v2[4] = *(v0 + 80);
  v2[5] = v3;
  v2[2] = v5;
  v2[3] = v4;
  v6 = *(v0 + 32);
  *v2 = *(v0 + 16);
  v2[1] = v6;
  *(v0 + 232) = *(v1 + 16);

  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_26BE919D0;

  return sub_26BEAB784();
}

uint64_t sub_26BE919D0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE91AE8, 0, 0);
}

uint64_t sub_26BE91AE8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];

  sub_26BE00258(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BE91B5C()
{
  v0[31] = *(v0[18] + 16);

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_26BE91C00;

  return sub_26BEAB784();
}

uint64_t sub_26BE91C00()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE91D18, 0, 0);
}

uint64_t sub_26BE91D18()
{
  v1 = v0[28];
  swift_willThrow();
  v2 = v0[28];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];

  sub_26BE00258(v4, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BE91D9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_26BE91DBC, 0, 0);
}

uint64_t sub_26BE91DBC()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = v1[2];

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_26BE91ECC;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE91ECC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9215C, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = swift_task_alloc();
    v3[13] = v5;
    *v5 = v3;
    v5[1] = sub_26BE92048;
    v6 = v3[7];

    return sub_26BE2636C((v3 + 5), v6);
  }
}

uint64_t sub_26BE92048()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_26BE925B4;
  }

  else
  {
    v3 = sub_26BE9238C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9215C()
{
  v18 = v0;
  v1 = v0[10];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[12];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE9238C()
{
  v1 = v0[6];
  v0[15] = v0[5];
  v0[16] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_26BE92434;

  return sub_26BEAB784();
}

uint64_t sub_26BE92434()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9254C, 0, 0);
}

uint64_t sub_26BE9254C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_26BE925B4()
{
  v0[18] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_26BE92658;

  return sub_26BEAB784();
}

uint64_t sub_26BE92658()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE92770, 0, 0);
}

uint64_t sub_26BE92770()
{
  v1 = v0[14];
  swift_willThrow();
  v2 = v0[14];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BE927E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_26BE92808, 0, 0);
}

uint64_t sub_26BE92808()
{
  v1 = v0[16];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[19] = v7;
  v0[20] = v8;
  v0[21] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9291C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9291C()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE92BAC, 0, 0);
  }

  else
  {
    v4 = v3[21];

    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v3;
    v5[1] = sub_26BE92A98;
    v6 = v3[17];
    v7 = v3[18];

    return sub_26BF570AC((v3 + 2), v6, v7);
  }
}

uint64_t sub_26BE92A98()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_26BE93034;
  }

  else
  {
    v3 = sub_26BE92DF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE92BAC()
{
  v19 = v0;
  v1 = v0[21];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[23];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[17];
  v15 = v0[18];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BE92DF4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 208) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_26BE92EB0;

  return sub_26BEAB784();
}

uint64_t sub_26BE92EB0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE92FC8, 0, 0);
}

uint64_t sub_26BE92FC8()
{
  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE93034()
{
  v0[28] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_26BE930D8;

  return sub_26BEAB784();
}

uint64_t sub_26BE930D8()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE931F0, 0, 0);
}

uint64_t sub_26BE931F0()
{
  v1 = v0[25];
  swift_willThrow();
  v2 = v0[25];
  v3 = v0[17];
  v4 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE9326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 240) = a5;
  *(v5 + 136) = a3;
  *(v5 + 144) = a4;
  *(v5 + 120) = a1;
  *(v5 + 128) = a2;
  return MEMORY[0x2822009F8](sub_26BE93294, 0, 0);
}

uint64_t sub_26BE93294()
{
  v1 = v0[16];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[19] = v7;
  v0[20] = v8;
  v0[21] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_26BE933A8;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE933A8()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  *(v3 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAA8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 168);

    v5 = swift_task_alloc();
    *(v3 + 192) = v5;
    *v5 = v3;
    v5[1] = sub_26BE93528;
    v6 = *(v3 + 240);
    v7 = *(v3 + 136);
    v8 = *(v3 + 144);

    return sub_26BF58C3C(v3 + 16, v7, v8, v6);
  }
}

uint64_t sub_26BE93528()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_26BE93810;
  }

  else
  {
    v3 = sub_26BE9363C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9363C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 208) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_26BE936F8;

  return sub_26BEAB784();
}

uint64_t sub_26BE936F8()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAEC, 0, 0);
}

uint64_t sub_26BE93810()
{
  v0[28] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_26BE938B4;

  return sub_26BEAB784();
}

uint64_t sub_26BE938B4()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAF8, 0, 0);
}

uint64_t sub_26BE939CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_26BE939F0, 0, 0);
}

uint64_t sub_26BE939F0()
{
  v1 = v0[16];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[18] = v7;
  v0[19] = v8;
  v0[20] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_26BE93B04;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE93B04()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE93D94, 0, 0);
  }

  else
  {
    v4 = v3[20];

    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v3;
    v5[1] = sub_26BE93C80;
    v6 = v3[17];

    return sub_26BF5C96C((v3 + 2), v6);
  }
}

uint64_t sub_26BE93C80()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_26BE9420C;
  }

  else
  {
    v3 = sub_26BE93FD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE93D94()
{
  v18 = v0;
  v1 = v0[20];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[22];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[17];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE93FD4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 200) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_26BE94090;

  return sub_26BEAB784();
}

uint64_t sub_26BE94090()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE941A8, 0, 0);
}

uint64_t sub_26BE941A8()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE9420C()
{
  v0[27] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_26BE942B0;

  return sub_26BEAB784();
}

uint64_t sub_26BE942B0()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE943C8, 0, 0);
}

uint64_t sub_26BE943C8()
{
  v1 = v0[24];
  swift_willThrow();
  v2 = v0[24];
  v3 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BE9443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_26BE94460, 0, 0);
}

uint64_t sub_26BE94460()
{
  v1 = v0[16];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[18] = v7;
  v0[19] = v8;
  v0[20] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_26BE94574;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE94574()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAC8, 0, 0);
  }

  else
  {
    v4 = v3[20];

    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v3;
    v5[1] = sub_26BE946F0;
    v6 = v3[17];

    return sub_26BF5AC5C((v3 + 2), v6);
  }
}

uint64_t sub_26BE946F0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_26BE949D8;
  }

  else
  {
    v3 = sub_26BE94804;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE94804()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 200) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_26BE948C0;

  return sub_26BEAB784();
}

uint64_t sub_26BE948C0()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAD8, 0, 0);
}

uint64_t sub_26BE949D8()
{
  v0[27] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_26BE94A7C;

  return sub_26BEAB784();
}

uint64_t sub_26BE94A7C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAB8, 0, 0);
}

uint64_t sub_26BE94BB4()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE94CC8;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE94CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE94DE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE94DE4()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000027;
  *(v2 + 8) = 0x800000026C02C150;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE94EFC()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE95010;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE95010()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE9512C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE9512C()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000002ALL;
  *(v2 + 8) = 0x800000026C02C120;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE95244()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE95358;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE95358()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE95474;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE95474()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000031;
  *(v2 + 8) = 0x800000026C02C0A0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE9558C()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE956A0;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE956A0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE957BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE957BC()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000023;
  *(v2 + 8) = 0x800000026C02C030;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE958B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_26BE958D8, 0, 0);
}

uint64_t sub_26BE958D8()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[8] = v7;
  v0[9] = v8;
  v0[10] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26BE959EC;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE959EC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE960D8, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = swift_task_alloc();
    v3[13] = v5;
    *v5 = v3;
    v5[1] = sub_26BE95B64;
    v6 = v3[6];
    v7 = v3[7];

    return sub_26BE30F1C(v7);
  }
}

uint64_t sub_26BE95B64()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_26BE95EA0;
  }

  else
  {
    v3 = sub_26BE95C78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE95C78()
{
  v0[15] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_26BE95D1C;

  return sub_26BEAB784();
}

uint64_t sub_26BE95D1C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE95E34, 0, 0);
}

uint64_t sub_26BE95E34()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE95EA0()
{
  v0[17] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_26BE95F44;

  return sub_26BEAB784();
}

uint64_t sub_26BE95F44()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9605C, 0, 0);
}

uint64_t sub_26BE9605C()
{
  v1 = v0[14];
  swift_willThrow();
  v2 = v0[14];
  v3 = v0[6];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE960D8()
{
  v19 = v0;
  v1 = v0[10];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x70756F7247534352, 0xE800000000000000, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[12];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[6];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BE96314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26BE96338, 0, 0);
}

uint64_t sub_26BE96338()
{
  v1 = v0[6];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[8] = v7;
  v0[9] = v8;
  v0[10] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9644C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9644C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_26BEAFB14;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_26BE96568;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE96568()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = *(v1 + 56);
  v4 = *(v1 + 64);
  sub_26BE04890(v5, v4);
  *v3 = v5;
  v3[1] = v4;
  v0[13] = *(v2 + 16);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_26BE9662C;

  return sub_26BEAB784();
}

uint64_t sub_26BE9662C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFB08, 0, 0);
}

uint64_t sub_26BE96744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_26BE96768, 0, 0);
}

uint64_t sub_26BE96768()
{
  v1 = v0[14];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[16] = v7;
  v0[17] = v8;
  v0[18] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9687C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9687C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_26BE96CA8;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_26BE96998;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE96998()
{
  v1 = v0[15];
  v10 = v0[14];
  v2 = v0[13];
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  swift_beginAccess();
  sub_26BE038A8(v1 + 112, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 40);
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_26BE04890(v3, v4);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v2 = v3;
  v2[1] = v4;
  v0[21] = *(v10 + 16);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_26BE96B2C;

  return sub_26BEAB784();
}

uint64_t sub_26BE96B2C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE96C44, 0, 0);
}

uint64_t sub_26BE96C44()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE96CA8()
{
  v18 = v0;
  v1 = v0[18];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x70756F7247, 0xE500000000000000, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[20];
  v13 = v0[15];
  sub_26BE01654();
  swift_allocError();
  *v14 = 21;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0;
  *(v14 + 112) = 23;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE96EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_26BE96F00, 0, 0);
}

uint64_t sub_26BE96F00()
{
  v1 = v0[14];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[16] = v7;
  v0[17] = v8;
  v0[18] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_26BE97014;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE97014()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_26BEAFB18;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_26BE97130;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE97130()
{
  v1 = v0[15];
  v10 = v0[14];
  v2 = v0[13];
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  swift_beginAccess();
  sub_26BE038A8(v1 + 112, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 40);
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_26BE04890(v3, v4);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v2 = v3;
  v2[1] = v4;
  v0[21] = *(v10 + 16);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_26BE972C4;

  return sub_26BEAB784();
}

uint64_t sub_26BE972C4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFB0C, 0, 0);
}

uint64_t sub_26BE973FC()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE97510;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE97510()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BE9099C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE9762C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE9762C()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000001ALL;
  *(v2 + 8) = 0x800000026C02C260;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE97724;

  return sub_26BEAB784();
}

uint64_t sub_26BE97724()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9783C, 0, 0);
}

uint64_t sub_26BE9783C()
{
  v1 = *(v0 + 88);
  swift_willThrow();
  v2 = *(v0 + 88);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26BE978C8()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE979DC;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE979DC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE97AF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE97AF8()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000005ALL;
  *(v2 + 8) = 0x800000026C02C200;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE97C10()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE97D24;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE97D24()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE97E40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE97E40()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000003ALL;
  *(v2 + 8) = 0x800000026C02BDF0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE97F58()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9806C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9806C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE98188;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE98188()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000003CLL;
  *(v2 + 8) = 0x800000026C02C1C0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE982A0()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE983B4;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE983B4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE984D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE984D0()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000003ELL;
  *(v2 + 8) = 0x800000026C02C180;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE985E8()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE986FC;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE986FC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE98818;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE98818()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000033;
  *(v2 + 8) = 0x800000026C02C0E0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE98930()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE98A44;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE98A44()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE98B60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE98B60()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000036;
  *(v2 + 8) = 0x800000026C02C060;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE98C78()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE98D8C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE98D8C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE98EA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE98EA8()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000037;
  *(v2 + 8) = 0x800000026C02BF80;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE98FC0()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE990D4;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE990D4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE991F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE991F0()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000047;
  *(v2 + 8) = 0x800000026C02BF30;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE99308()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9941C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9941C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE99538;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE99538()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000004ELL;
  *(v2 + 8) = 0x800000026C02BEE0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE99650()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE99764;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE99764()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE99880;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE99880()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD00000000000002ELL;
  *(v2 + 8) = 0x800000026C02C000;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE99998()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE99AAC;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE99AAC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE99BC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE99BC8()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000038;
  *(v2 + 8) = 0x800000026C02BFC0;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE99CE0()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE99DF4;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE99DF4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE99F10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE99F10()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000050;
  *(v2 + 8) = 0x800000026C02BE30;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE90884;

  return sub_26BEAB784();
}

uint64_t sub_26BE9A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return MEMORY[0x2822009F8](sub_26BE9A030, 0, 0);
}

uint64_t sub_26BE9A030()
{
  v1 = v0[14];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[18] = v6;
  v0[19] = v7;
  v0[20] = v1[2];

  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_26BE9A140;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9A140()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9A3D4, 0, 0);
  }

  else
  {
    v4 = v3[20];

    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v3;
    v5[1] = sub_26BE9A2C0;
    v6 = v3[16];
    v7 = v3[17];
    v8 = v3[15];

    return sub_26BE35CF8((v3 + 2), v8, v6, v7);
  }
}

uint64_t sub_26BE9A2C0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_26BE9A84C;
  }

  else
  {
    v3 = sub_26BE9A614;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9A3D4()
{
  v19 = v0;
  v1 = v0[20];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[22];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[16];
  v15 = v0[17];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BE9A614()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 64);
  v2[2] = *(v0 + 48);
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  *(v0 + 200) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_26BE9A6C8;

  return sub_26BEAB784();
}

uint64_t sub_26BE9A6C8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9A7E0, 0, 0);
}

uint64_t sub_26BE9A7E0()
{
  v1 = v0[16];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE9A84C()
{
  v0[27] = *(v0[14] + 16);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9A8F0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9A8F0()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9AA08, 0, 0);
}

uint64_t sub_26BE9AA08()
{
  v1 = v0[24];
  swift_willThrow();
  v2 = v0[24];
  v3 = v0[16];
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE9AA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  return MEMORY[0x2822009F8](sub_26BE9AAAC, 0, 0);
}

uint64_t sub_26BE9AAAC()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[11] = v6;
  v0[12] = v7;
  v0[13] = v1[2];

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_26BE9ABBC;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9ABBC()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9AE4C, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = swift_task_alloc();
    v3[16] = v5;
    *v5 = v3;
    v5[1] = sub_26BE9AD38;
    v6 = v3[9];
    v7 = v3[10];
    v8 = v3[7];
    v9 = v3[8];
    v10 = v3[6];

    return sub_26BE36EE8(v5, v10, v8, v9, v6, v7);
  }
}

uint64_t sub_26BE9AD38()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_26BE9B2DC;
  }

  else
  {
    v3 = sub_26BE9B09C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9AE4C()
{
  v21 = v0;
  v1 = v0[13];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v20);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v20);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[15];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[7];
  v17 = v0[8];

  sub_26BE0489C(v15, v14);
  v18 = v0[1];

  return v18();
}

uint64_t sub_26BE9B09C()
{
  v0[18] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9B140;

  return sub_26BEAB784();
}

uint64_t sub_26BE9B140()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9B258, 0, 0);
}

uint64_t sub_26BE9B258()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  sub_26BE0489C(v1, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE9B2DC()
{
  v0[20] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9B380;

  return sub_26BEAB784();
}

uint64_t sub_26BE9B380()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9B498, 0, 0);
}

uint64_t sub_26BE9B498()
{
  v1 = v0[17];
  swift_willThrow();
  v2 = v0[17];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];

  sub_26BE0489C(v4, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_26BE9B52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  return MEMORY[0x2822009F8](sub_26BE9B558, 0, 0);
}

uint64_t sub_26BE9B558()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[15] = v6;
  v0[16] = v7;
  v0[17] = v1[2];

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_26BE9B668;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9B668()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9B900, 0, 0);
  }

  else
  {
    v4 = v3[17];

    v5 = swift_task_alloc();
    v3[20] = v5;
    *v5 = v3;
    v5[1] = sub_26BE9B7EC;
    v6 = v3[13];
    v7 = v3[14];
    v8 = v3[11];
    v9 = v3[12];
    v10 = v3[9];
    v11 = v3[10];

    return sub_26BE38A70((v3 + 5), v10, v11, v8, v9, v6);
  }
}

uint64_t sub_26BE9B7EC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_26BE9BDA0;
  }

  else
  {
    v3 = sub_26BE9BB54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9B900()
{
  v21 = v0;
  v1 = v0[17];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v20);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v20);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[19];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];

  sub_26BE00258(v16, v15);

  v18 = v0[1];

  return v18();
}

uint64_t sub_26BE9BB54()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 176) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_26BE9BC00;

  return sub_26BEAB784();
}

uint64_t sub_26BE9BC00()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9BD18, 0, 0);
}

uint64_t sub_26BE9BD18()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  sub_26BE00258(v3, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE9BDA0()
{
  v0[24] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9BE44;

  return sub_26BEAB784();
}

uint64_t sub_26BE9BE44()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9BF5C, 0, 0);
}

uint64_t sub_26BE9BF5C()
{
  v1 = v0[21];
  swift_willThrow();
  v2 = v0[21];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  sub_26BE00258(v5, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26BE9BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  return MEMORY[0x2822009F8](sub_26BE9C018, 0, 0);
}

uint64_t sub_26BE9C018()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[9] = v6;
  v0[10] = v7;
  v0[11] = v1[2];

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_26BE9C128;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9C128()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9C3B4, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = swift_task_alloc();
    v3[14] = v5;
    *v5 = v3;
    v5[1] = sub_26BE9C2A0;
    v6 = v3[7];
    v7 = v3[8];
    v8 = v3[6];

    return sub_26BE3967C(v5, v8, v6);
  }
}

uint64_t sub_26BE9C2A0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_26BE9C81C;
  }

  else
  {
    v3 = sub_26BE9C5F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9C3B4()
{
  v19 = v0;
  v1 = v0[11];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[13];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[6];
  v15 = v0[7];

  sub_26BE3C0C4(v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_26BE9C5F4()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9C698;

  return sub_26BEAB784();
}

uint64_t sub_26BE9C698()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9C7B0, 0, 0);
}

uint64_t sub_26BE9C7B0()
{
  v1 = v0[6];
  v2 = v0[7];

  sub_26BE3C0C4(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE9C81C()
{
  v0[18] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9C8C0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9C8C0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9C9D8, 0, 0);
}

uint64_t sub_26BE9C9D8()
{
  v1 = v0[15];
  swift_willThrow();
  v2 = v0[15];
  v3 = v0[6];
  v4 = v0[7];

  sub_26BE3C0C4(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE9CA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return MEMORY[0x2822009F8](sub_26BE9CA7C, 0, 0);
}

uint64_t sub_26BE9CA7C()
{
  v1 = v0[24];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[28] = v6;
  v0[29] = v7;
  v0[30] = v1[2];

  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_26BE9CB8C;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9CB8C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_26BE9D240;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_26BE9CCA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE9CCA8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  sub_26BE38060(*(v0 + 208), *(v0 + 216));
  if (v1)
  {
    goto LABEL_2;
  }

  v5 = *(v0 + 200);
  v6 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  swift_beginAccess();
  sub_26BE2E1F0(v5 + v6, v0 + 96, &qword_28045E468, &qword_26C00ECA0);
  if (!*(v0 + 120))
  {
    sub_26BE2E258(v0 + 96, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE01654();
    v13 = swift_allocError();
    *v14 = 12;
    v14[112] = 9;
    swift_willThrow();
    v1 = v13;
LABEL_2:
    *(v0 + 280) = v1;
    *(v0 + 288) = *(*(v0 + 192) + 16);

    v3 = swift_task_alloc();
    *(v0 + 296) = v3;
    *v3 = v0;
    v4 = sub_26BE9D0A8;
    goto LABEL_5;
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  sub_26BE03890((v0 + 96), v0 + 56);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
  v11 = *(v10 + 40);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v11(v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_26BE03890((v0 + 16), v7);
  *(v0 + 264) = *(v8 + 16);

  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  v4 = sub_26BE9CF20;
LABEL_5:
  v3[1] = v4;

  return sub_26BEAB784();
}

uint64_t sub_26BE9CF20()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9D038, 0, 0);
}

uint64_t sub_26BE9D038()
{
  v1 = v0[27];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE9D0A8()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9D1C0, 0, 0);
}

uint64_t sub_26BE9D1C0()
{
  v1 = v0[35];
  swift_willThrow();
  v2 = v0[35];
  v3 = v0[27];
  v4 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE9D240()
{
  v19 = v0;
  v1 = v0[30];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[32];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[27];
  v15 = v0[25];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BE9D484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE9D4AC, 0, 0);
}

uint64_t sub_26BE9D4AC()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[12] = v6;
  v0[13] = v7;
  v0[14] = v1[2];

  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_26BE9D5BC;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9D5BC()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9D850, 0, 0);
  }

  else
  {
    v4 = v3[14];

    v5 = swift_task_alloc();
    v3[17] = v5;
    *v5 = v3;
    v5[1] = sub_26BE9D73C;
    v6 = v3[10];
    v7 = v3[11];
    v8 = v3[9];

    return sub_26BE3A0B4((v3 + 5), v8, v6, v7);
  }
}

uint64_t sub_26BE9D73C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_26BE9DCC8;
  }

  else
  {
    v3 = sub_26BE9DA94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9D850()
{
  v19 = v0;
  v1 = v0[14];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6E65696C43534352, 0xE900000000000074, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[16];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[11];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BE9DA94()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 152) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_26BE9DB40;

  return sub_26BEAB784();
}

uint64_t sub_26BE9DB40()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9DC58, 0, 0);
}

uint64_t sub_26BE9DC58()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BE9DCC8()
{
  v0[21] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9DD6C;

  return sub_26BEAB784();
}

uint64_t sub_26BE9DD6C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9DE84, 0, 0);
}

uint64_t sub_26BE9DE84()
{
  v1 = v0[18];
  swift_willThrow();
  v2 = v0[18];
  v3 = v0[11];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE9DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  return MEMORY[0x2822009F8](sub_26BE9DF30, 0, 0);
}

uint64_t sub_26BE9DF30()
{
  v1 = v0[21];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[27] = v7;
  v0[28] = v8;
  v0[29] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9E044;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9E044()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9E2DC, 0, 0);
  }

  else
  {
    v4 = v3[29];

    v5 = swift_task_alloc();
    v3[32] = v5;
    *v5 = v3;
    v5[1] = sub_26BE9E1C8;
    v6 = v3[25];
    v7 = v3[26];
    v8 = v3[23];
    v9 = v3[24];
    v10 = v3[22];

    return sub_26BF427D0((v3 + 2), v10, v8, v9, v6, v7);
  }
}

uint64_t sub_26BE9E1C8()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_26BE9E7AC;
  }

  else
  {
    v3 = sub_26BE9E53C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9E2DC()
{
  v22 = v0;
  v1 = v0[29];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v21);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v21);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[31];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v15 = v0[25];
  v14 = v0[26];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[22];

  sub_26BE00258(v17, v16);
  sub_26BE136AC(v15, v14);
  v19 = v0[1];

  return v19();
}

uint64_t sub_26BE9E53C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 96);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  *(v2 + 112) = *(v0 + 128);
  *(v2 + 80) = v4;
  *(v2 + 96) = v3;
  *(v2 + 64) = v5;
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 64);
  *(v2 + 32) = *(v0 + 48);
  *(v2 + 48) = v8;
  *v2 = v6;
  *(v2 + 16) = v7;
  *(v0 + 272) = *(v1 + 16);

  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_26BE9E608;

  return sub_26BEAB784();
}

uint64_t sub_26BE9E608()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9E720, 0, 0);
}

uint64_t sub_26BE9E720()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];

  sub_26BE00258(v4, v3);
  sub_26BE136AC(v1, v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BE9E7AC()
{
  v0[36] = *(v0[21] + 16);

  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9E850;

  return sub_26BEAB784();
}

uint64_t sub_26BE9E850()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9E968, 0, 0);
}

uint64_t sub_26BE9E968()
{
  v1 = v0[33];
  swift_willThrow();
  v2 = v0[33];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];

  sub_26BE00258(v6, v5);
  sub_26BE136AC(v4, v3);
  v8 = v0[1];

  return v8();
}

uint64_t sub_26BE9EA24()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9EB38;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9EB38()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEAFAA4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BE97E40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BE9EC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE9EC78, 0, 0);
}

uint64_t sub_26BE9EC78()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[10] = v7;
  v0[11] = v8;
  v0[12] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9ED8C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9ED8C()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9F1C8, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_26BE9EF08;
    v6 = v3[9];

    return sub_26BF35D28((v3 + 5), v6);
  }
}

uint64_t sub_26BE9EF08()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9F004, 0, 0);
}

uint64_t sub_26BE9F004()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 128) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_26BE9F0B0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9F0B0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFB10, 0, 0);
}

uint64_t sub_26BE9F1C8()
{
  v18 = v0;
  v1 = v0[12];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[9];
  sub_26BE01654();
  swift_allocError();
  *v14 = 21;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0;
  *(v14 + 112) = 23;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE9F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE9F430, 0, 0);
}

uint64_t sub_26BE9F430()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[10] = v7;
  v0[11] = v8;
  v0[12] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9F544;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9F544()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE9F7D4, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_26BE9F6C0;
    v6 = v3[9];

    return sub_26BF3651C((v3 + 5), v6);
  }
}

uint64_t sub_26BE9F6C0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26BE9FC3C;
  }

  else
  {
    v3 = sub_26BE9FA14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE9F7D4()
{
  v18 = v0;
  v1 = v0[12];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[14];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE9FA14()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 136) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26BE9FAC0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9FAC0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9FBD8, 0, 0);
}

uint64_t sub_26BE9FBD8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE9FC3C()
{
  v0[19] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_26BE9FCE0;

  return sub_26BEAB784();
}

uint64_t sub_26BE9FCE0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BE9FDF8, 0, 0);
}

uint64_t sub_26BE9FDF8()
{
  v1 = v0[16];
  swift_willThrow();
  v2 = v0[16];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BE9FE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_26BE9FE94, 0, 0);
}

uint64_t sub_26BE9FE94()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[12] = v7;
  v0[13] = v8;
  v0[14] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_26BE9FFA8;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BE9FFA8()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA023C, 0, 0);
  }

  else
  {
    v4 = v3[14];

    v5 = swift_task_alloc();
    v3[17] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA0128;
    v6 = v3[10];
    v7 = v3[11];
    v8 = v3[9];

    return sub_26BF5B8F0((v3 + 5), v8, v6, v7);
  }
}

uint64_t sub_26BEA0128()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_26BEA06C4;
  }

  else
  {
    v3 = sub_26BEA048C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA023C()
{
  v20 = v0;
  v1 = v0[14];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v19);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v19);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[16];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[9];

  sub_26BE00258(v15, v14);
  v17 = v0[1];

  return v17();
}

uint64_t sub_26BEA048C()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 152) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA0538;

  return sub_26BEAB784();
}

uint64_t sub_26BEA0538()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA0650, 0, 0);
}

uint64_t sub_26BEA0650()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  sub_26BE00258(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BEA06C4()
{
  v0[21] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA0768;

  return sub_26BEAB784();
}

uint64_t sub_26BEA0768()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA0880, 0, 0);
}

uint64_t sub_26BEA0880()
{
  v1 = v0[18];
  swift_willThrow();
  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  sub_26BE00258(v4, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BEA0904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26BEA0928, 0, 0);
}

uint64_t sub_26BEA0928()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[10] = v7;
  v0[11] = v8;
  v0[12] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA0A3C;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA0A3C()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFACC, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_26BE8E5B4;
    v6 = v3[9];

    return sub_26BF59A5C((v3 + 5), v6);
  }
}

uint64_t sub_26BEA0BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_26BEA0BDC, 0, 0);
}

uint64_t sub_26BEA0BDC()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[11] = v7;
  v0[12] = v8;
  v0[13] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA0CF0;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA0CF0()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA0F80, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = swift_task_alloc();
    v3[16] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA0E6C;
    v6 = v3[9];
    v7 = v3[10];

    return sub_26BF5F974((v3 + 5), v6, v7);
  }
}

uint64_t sub_26BEA0E6C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_26BEA13F8;
  }

  else
  {
    v3 = sub_26BEA11C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA0F80()
{
  v19 = v0;
  v1 = v0[13];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[15];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[9];
  v15 = v0[10];

  sub_26BEAF9F8(v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_26BEA11C8()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 144) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA1274;

  return sub_26BEAB784();
}

uint64_t sub_26BEA1274()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA138C, 0, 0);
}

uint64_t sub_26BEA138C()
{
  v1 = v0[9];
  v2 = v0[10];

  sub_26BEAF9F8(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEA13F8()
{
  v0[20] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA149C;

  return sub_26BEAB784();
}

uint64_t sub_26BEA149C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA15B4, 0, 0);
}

uint64_t sub_26BEA15B4()
{
  v1 = v0[17];
  swift_willThrow();
  v2 = v0[17];
  v3 = v0[9];
  v4 = v0[10];

  sub_26BEAF9F8(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BEA1630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_26BEA1654, 0, 0);
}

uint64_t sub_26BEA1654()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[11] = v7;
  v0[12] = v8;
  v0[13] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA1768;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA1768()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA19F8, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = swift_task_alloc();
    v3[16] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA18E4;
    v6 = v3[9];
    v7 = v3[10];

    return sub_26BF5D3E8((v3 + 5), v6, v7);
  }
}

uint64_t sub_26BEA18E4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_26BEA1DFC;
  }

  else
  {
    v3 = sub_26BEA1C38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA19F8()
{
  v18 = v0;
  v1 = v0[13];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[15];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BEA1C38()
{
  v1 = *(v0 + 64);
  **(v0 + 56) = *(v0 + 40);
  *(v0 + 144) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA1CE4;

  return sub_26BEAB784();
}

uint64_t sub_26BEA1CE4()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFB10, 0, 0);
}

uint64_t sub_26BEA1DFC()
{
  v0[20] = *(v0[8] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA1EA0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA1EA0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA1FB8, 0, 0);
}

uint64_t sub_26BEA1FB8()
{
  v1 = v0[17];
  swift_willThrow();
  v2 = v0[17];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BEA202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_26BEA2050, 0, 0);
}

uint64_t sub_26BEA2050()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = v1[40];
  v3 = v1[41];
  sub_26C00B11C();
  v4 = v1[40];
  v5 = v1[41];
  sub_26C00B11C();
  v6 = sub_26C00B13C();
  v8 = v7;
  v0[12] = v6;
  v0[13] = v7;
  v0[14] = v1[2];

  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_26BEA2160;

  return sub_26BEAA3E4(v6, v8, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA2160()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA23F0, 0, 0);
  }

  else
  {
    v4 = v3[14];

    v5 = swift_task_alloc();
    v3[17] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA22DC;
    v6 = v3[10];
    v7 = v3[11];

    return sub_26BFC2014((v3 + 5), v6, v7);
  }
}

uint64_t sub_26BEA22DC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_26BEA2860;
  }

  else
  {
    v3 = sub_26BEA2628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA23F0()
{
  v19 = v0;
  v1 = v0[14];

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478E70);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x746E65696C43, 0xE600000000000000, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[16];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[10];
  v15 = v0[11];

  sub_26BEAFA4C(v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_26BEA2628()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  *v2 = *(v0 + 40);
  *(v2 + 16) = v3;
  *(v0 + 152) = *(v1 + 16);

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_26BEA26DC;

  return sub_26BEAB784();
}

uint64_t sub_26BEA26DC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA27F4, 0, 0);
}

uint64_t sub_26BEA27F4()
{
  v1 = v0[10];
  v2 = v0[11];

  sub_26BEAFA4C(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEA2860()
{
  v0[21] = *(v0[9] + 16);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA2904;

  return sub_26BEAB784();
}

uint64_t sub_26BEA2904()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA2A1C, 0, 0);
}

uint64_t sub_26BEA2A1C()
{
  v1 = v0[18];
  swift_willThrow();
  v2 = v0[18];
  v3 = v0[10];
  v4 = v0[11];

  sub_26BEAFA4C(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BEA2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  return MEMORY[0x2822009F8](sub_26BEA2AC0, 0, 0);
}

uint64_t sub_26BEA2AC0()
{
  v1 = v0[16];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[21] = v7;
  v0[22] = v8;
  v0[23] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA2BD4;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA2BD4()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA2E68, 0, 0);
  }

  else
  {
    v4 = v3[23];

    v5 = swift_task_alloc();
    v3[26] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA2D54;
    v6 = v3[19];
    v7 = v3[20];
    v8 = v3[17];
    v9 = v3[18];

    return sub_26BF662B0((v3 + 2), v8, v9, v6, v7);
  }
}

uint64_t sub_26BEA2D54()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_26BEA32F8;
  }

  else
  {
    v3 = sub_26BEA30B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA2E68()
{
  v19 = v0;
  v1 = v0[23];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[25];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[19];
  v15 = v0[17];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BEA30B4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 48);
  v2[3] = *(v0 + 64);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *(v0 + 16);
  *(v0 + 224) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_26BEA3170;

  return sub_26BEAB784();
}

uint64_t sub_26BEA3170()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA3288, 0, 0);
}

uint64_t sub_26BEA3288()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEA32F8()
{
  v0[30] = *(v0[16] + 16);

  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA339C;

  return sub_26BEAB784();
}

uint64_t sub_26BEA339C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA34B4, 0, 0);
}

uint64_t sub_26BEA34B4()
{
  v1 = v0[27];
  swift_willThrow();
  v2 = v0[27];
  v3 = v0[19];
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BEA3534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x2822009F8](sub_26BEA355C, 0, 0);
}

uint64_t sub_26BEA355C()
{
  v1 = v0[15];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[19] = v7;
  v0[20] = v8;
  v0[21] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA3670;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA3670()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA3904, 0, 0);
  }

  else
  {
    v4 = v3[21];

    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA37F0;
    v6 = v3[17];
    v7 = v3[18];
    v8 = v3[16];

    return sub_26BF6E324((v3 + 2), v8, v6, v7);
  }
}

uint64_t sub_26BEA37F0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_26BEA3DA4;
  }

  else
  {
    v3 = sub_26BEA3B54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA3904()
{
  v20 = v0;
  v1 = v0[21];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v19);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v19);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[23];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];

  sub_26BE00258(v15, v14);
  v17 = v0[1];

  return v17();
}

uint64_t sub_26BEA3B54()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 48);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  *(v2 + 64) = *(v0 + 80);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 16) = v5;
  *v2 = *(v0 + 16);
  *(v0 + 208) = *(v1 + 16);

  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_26BEA3C18;

  return sub_26BEAB784();
}

uint64_t sub_26BEA3C18()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA3D30, 0, 0);
}

uint64_t sub_26BEA3D30()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  sub_26BE00258(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BEA3DA4()
{
  v0[28] = *(v0[15] + 16);

  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA3E48;

  return sub_26BEAB784();
}

uint64_t sub_26BEA3E48()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA3F60, 0, 0);
}

uint64_t sub_26BEA3F60()
{
  v1 = v0[25];
  swift_willThrow();
  v2 = v0[25];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  sub_26BE00258(v4, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BEA3FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 176) = a3;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BEA4010, 0, 0);
}

uint64_t sub_26BEA4010()
{
  v1 = v0[6];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[11] = v7;
  v0[12] = v8;
  v0[13] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA4124;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA4124()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA43BC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 104);

    v5 = swift_task_alloc();
    *(v3 + 128) = v5;
    *v5 = v3;
    v5[1] = sub_26BEA42A8;
    v6 = *(v3 + 72);
    v7 = *(v3 + 80);
    v8 = *(v3 + 56);
    v9 = *(v3 + 64);
    v10 = *(v3 + 176);

    return sub_26BF72DA8(v3 + 180, v10, v8, v9, v6, v7);
  }
}

uint64_t sub_26BEA42A8()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_26BEA4834;
  }

  else
  {
    v3 = sub_26BEA4604;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA43BC()
{
  v19 = v0;
  v1 = v0[13];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v18);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[15];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[9];
  v15 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BEA4604()
{
  v1 = *(v0 + 48);
  **(v0 + 40) = *(v0 + 180);
  *(v0 + 144) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA46B0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA46B0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA47C8, 0, 0);
}

uint64_t sub_26BEA47C8()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BEA4834()
{
  v0[20] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA48D8;

  return sub_26BEAB784();
}

uint64_t sub_26BEA48D8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA49F0, 0, 0);
}

uint64_t sub_26BEA49F0()
{
  v1 = v0[17];
  swift_willThrow();
  v2 = v0[17];
  v3 = v0[9];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BEA4A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_26BEA4A90, 0, 0);
}

uint64_t sub_26BEA4A90()
{
  v1 = v0[16];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[19] = v7;
  v0[20] = v8;
  v0[21] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA4BA4;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA4BA4()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAA8, 0, 0);
  }

  else
  {
    v4 = v3[21];

    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v3;
    v5[1] = sub_26BE93528;
    v6 = v3[17];
    v7 = v3[18];

    return sub_26BF6F614((v3 + 2), v6, v7);
  }
}

uint64_t sub_26BEA4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_26BEA4D44, 0, 0);
}

uint64_t sub_26BEA4D44()
{
  v1 = v0[16];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[19] = v7;
  v0[20] = v8;
  v0[21] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA4E58;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA4E58()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAA8, 0, 0);
  }

  else
  {
    v4 = v3[21];

    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v3;
    v5[1] = sub_26BE93528;
    v6 = v3[17];
    v7 = v3[18];

    return sub_26BF63A24((v3 + 2), v6, v7);
  }
}

uint64_t sub_26BEA4FD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BEA4FF4, 0, 0);
}

uint64_t sub_26BEA4FF4()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[7] = v7;
  v0[8] = v8;
  v0[9] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA5108;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA5108()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA5398, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = swift_task_alloc();
    v3[12] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA5284;
    v6 = v3[6];

    return sub_26BF37550((v3 + 18), v6);
  }
}

uint64_t sub_26BEA5284()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_26BEA5808;
  }

  else
  {
    v3 = sub_26BEA55DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA5398()
{
  v18 = v0;
  v1 = v0[9];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[11];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[6];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_26BEA55DC()
{
  v1 = *(v0 + 40);
  *(v0 + 145) = *(v0 + 144);
  *(v0 + 112) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA5688;

  return sub_26BEAB784();
}

uint64_t sub_26BEA5688()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA57A0, 0, 0);
}

uint64_t sub_26BEA57A0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 145);

  return v2(v3);
}

uint64_t sub_26BEA5808()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA58AC;

  return sub_26BEAB784();
}

uint64_t sub_26BEA58AC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA59C4, 0, 0);
}

uint64_t sub_26BEA59C4()
{
  v1 = v0[13];
  swift_willThrow();
  v2 = v0[13];
  v3 = v0[6];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_26BEA5A3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BEA5A5C, 0, 0);
}

uint64_t sub_26BEA5A5C()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[7] = v7;
  v0[8] = v8;
  v0[9] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA5B70;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA5B70()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_26BEA60C4;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_26BEA5C8C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BEA5C8C()
{
  v1 = *(v0 + 88);
  v6 = *(*(v0 + 48) + 56);
  *(v0 + 136) = sub_26BE30198() & 1;
  *(v0 + 96) = v1;
  v2 = *(*(v0 + 40) + 16);
  if (v1)
  {
    *(v0 + 120) = v2;

    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v4 = sub_26BEA5F30;
  }

  else
  {
    *(v0 + 104) = v2;

    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v4 = sub_26BEA5DB0;
  }

  v3[1] = v4;

  return sub_26BEAB784();
}

uint64_t sub_26BEA5DB0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA5EC8, 0, 0);
}

uint64_t sub_26BEA5EC8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 136);

  return v2(v3);
}

uint64_t sub_26BEA5F30()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA6048, 0, 0);
}

uint64_t sub_26BEA6048()
{
  v1 = v0[12];
  v2 = v0[6];
  swift_willThrow();

  v3 = v0[12];
  v4 = v0[1];

  return v4(0);
}

uint64_t sub_26BEA60C4()
{
  v18 = v0;
  v1 = v0[9];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[11];
  v13 = v0[6];
  sub_26BE01654();
  swift_allocError();
  *v14 = 21;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0;
  *(v14 + 112) = 23;
  swift_willThrow();

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_26BEA630C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26BEA632C, 0, 0);
}

uint64_t sub_26BEA632C()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[7] = v7;
  v0[8] = v8;
  v0[9] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA6440;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA6440()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAD0, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = swift_task_alloc();
    v3[12] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA65B4;
    v6 = v3[6];

    return sub_26BE304A0();
  }
}

uint64_t sub_26BEA65B4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_26BEA6904;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v7 = sub_26BEA66E0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BEA66E0()
{
  v0[14] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA6784;

  return sub_26BEAB784();
}

uint64_t sub_26BEA6784()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA689C, 0, 0);
}

uint64_t sub_26BEA689C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 144);

  return v2(v3);
}

uint64_t sub_26BEA6904()
{
  v0[16] = *(v0[5] + 16);

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA69A8;

  return sub_26BEAB784();
}

uint64_t sub_26BEA69A8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEAFAC0, 0, 0);
}

uint64_t sub_26BEA6AE0()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[6] = v7;
  v0[7] = v8;
  v0[8] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA6BF4;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA6BF4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_26BEA6E08;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_26BEA6D10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BEA6D10()
{
  v1 = v0[5];
  sub_26BE01654();
  v0[11] = swift_allocError();
  *v2 = 0xD000000000000068;
  *(v2 + 8) = 0x800000026C02BD80;
  *(v2 + 112) = 2;
  swift_willThrow();
  v0[12] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_26BE97724;

  return sub_26BEAB784();
}

uint64_t sub_26BEA6E08()
{
  v17 = v0;
  v1 = v0[8];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v16);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[10];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BEA7040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_26BEA7064, 0, 0);
}

uint64_t sub_26BEA7064()
{
  v1 = v0[16];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[18] = v7;
  v0[19] = v8;
  v0[20] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA7178;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA7178()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEAFAC8, 0, 0);
  }

  else
  {
    v4 = v3[20];

    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v3;
    v5[1] = sub_26BE946F0;
    v6 = v3[17];

    return sub_26BF64494((v3 + 2), v6);
  }
}

uint64_t sub_26BEA72F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 64) = a3;
  *(v5 + 72) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  return MEMORY[0x2822009F8](sub_26BEA731C, 0, 0);
}

uint64_t sub_26BEA731C()
{
  v1 = v0[7];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[10] = v7;
  v0[11] = v8;
  v0[12] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA7430;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA7430()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA76C4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 96);

    v5 = swift_task_alloc();
    *(v3 + 120) = v5;
    *v5 = v3;
    v5[1] = sub_26BEA75B0;
    v6 = *(v3 + 168);
    v7 = *(v3 + 64);
    v8 = *(v3 + 72);

    return sub_26BF72428(v3 + 40, v7, v6, v8);
  }
}

uint64_t sub_26BEA75B0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26BEA7B2C;
  }

  else
  {
    v3 = sub_26BEA7904;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA76C4()
{
  v18 = v0;
  v1 = v0[12];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v17);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[14];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BEA7904()
{
  v1 = *(v0 + 56);
  **(v0 + 48) = *(v0 + 40);
  *(v0 + 136) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA79B0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA79B0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA7AC8, 0, 0);
}

uint64_t sub_26BEA7AC8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BEA7B2C()
{
  v0[19] = *(v0[7] + 16);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA7BD0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA7BD0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA7CE8, 0, 0);
}

uint64_t sub_26BEA7CE8()
{
  v1 = v0[16];
  swift_willThrow();
  v2 = v0[16];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BEA7D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26BEA7D84, 0, 0);
}

uint64_t sub_26BEA7D84()
{
  v1 = v0[6];
  v2 = *(v1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 320);
  v4 = *(v2 + 328);
  sub_26C00B11C();
  v5 = *(v2 + 320);
  v6 = *(v2 + 328);
  sub_26C00B11C();
  v7 = sub_26C00B13C();
  v9 = v8;
  v0[10] = v7;
  v0[11] = v8;
  v0[12] = *(v1 + 16);

  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_26BEA7E98;

  return sub_26BEAA3E4(v7, v9, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA7E98()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA812C, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_26BEA8018;
    v6 = v3[8];
    v7 = v3[9];
    v8 = v3[7];

    return sub_26BF73548((v3 + 21), v8, v6, v7);
  }
}

uint64_t sub_26BEA8018()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_26BEA85B4;
  }

  else
  {
    v3 = sub_26BEA837C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA812C()
{
  v20 = v0;
  v1 = v0[12];

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_26BE29740(0x6669775365727550, 0xEE0070756F724774, v19);
    *(v7 + 12) = 2080;
    v9 = sub_26C00B12C();
    v11 = sub_26BE29740(v9, v10, v19);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Timed out waiting for lock (%s seconds)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v12 = v0[14];
  sub_26BE01654();
  swift_allocError();
  *v13 = 21;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = 23;
  swift_willThrow();

  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];

  sub_26BE00258(v15, v14);
  v17 = v0[1];

  return v17();
}

uint64_t sub_26BEA837C()
{
  v1 = *(v0 + 48);
  **(v0 + 40) = *(v0 + 168);
  *(v0 + 136) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26BEA8428;

  return sub_26BEAB784();
}

uint64_t sub_26BEA8428()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA8540, 0, 0);
}

uint64_t sub_26BEA8540()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  sub_26BE00258(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_26BEA85B4()
{
  v0[19] = *(v0[6] + 16);

  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_26BEA8658;

  return sub_26BEAB784();
}

uint64_t sub_26BEA8658()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA8770, 0, 0);
}

uint64_t sub_26BEA8770()
{
  v1 = v0[16];
  swift_willThrow();
  v2 = v0[16];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  sub_26BE00258(v4, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_26BEA87F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = sub_26C009A5C();
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v11 = *(v10 + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = *(a5 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BEA8914, 0, 0);
}

uint64_t sub_26BEA8914()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v1 + 16);
  v3(v2, v1);
  sub_26C00B11C();
  v3(v2, v1);
  sub_26C00B11C();
  v4 = sub_26C00B13C();
  v6 = v5;
  v0[14] = v4;
  v0[15] = v5;
  v7 = *(v1 + 8);
  v0[16] = v7;
  v0[17] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x702F000000000000;
  v0[18] = v7(v2, v1);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_26BEA8A5C;

  return sub_26BEAA3E4(v4, v6, 0x6C61636974697263, 0xEC000000293A5F28);
}

uint64_t sub_26BEA8A5C()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BEA8F78, 0, 0);
  }

  else
  {
    v4 = v3[18];
    v5 = v3[3];

    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v3[21] = v7;
    *v7 = v3;
    v7[1] = sub_26BEA8C3C;
    v8 = v3[13];
    v9 = v3[4];

    return v11(v8);
  }
}

uint64_t sub_26BEA8C3C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_26BEA91FC;
  }

  else
  {
    v3 = sub_26BEA8D50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BEA8D50()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  (*(v0[12] + 32))(v0[2], v0[13], v0[6]);
  v0[23] = v2(v5, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_26BEA8E24;

  return sub_26BEAB784();
}

uint64_t sub_26BEA8E24()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 88);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_26BEA8F78()
{
  v32 = v0;
  v1 = v0[18];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];

  (*(v4 + 24))(v5, v4);
  v6 = sub_26C009A3C();
  v7 = sub_26C00AA0C();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[10];
    v29 = v0[9];
    v30 = v0[11];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31[0] = v13;
    *v12 = 136315394;
    v14 = sub_26C00B18C();
    v16 = sub_26BE29740(v14, v15, v31);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_26C00B12C();
    v19 = sub_26BE29740(v17, v18, v31);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_26BDFE000, v6, v7, "%s: Timed out waiting for lock (%s seconds)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v13, -1, -1);
    MEMORY[0x26D69A4E0](v12, -1, -1);

    (*(v10 + 8))(v30, v29);
  }

  else
  {
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[20];
  sub_26BE01654();
  swift_allocError();
  *v24 = 21;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 72) = 0u;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0;
  *(v24 + 112) = 23;
  swift_willThrow();

  v25 = v0[13];
  v26 = v0[11];

  v27 = v0[1];

  return v27();
}

uint64_t sub_26BEA91FC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  *(v0 + 200) = (*(v0 + 128))(*(v0 + 40), *(v0 + 56));
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_26BEA92A0;

  return sub_26BEAB784();
}

uint64_t sub_26BEA92A0()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26BEA93B8, 0, 0);
}

uint64_t sub_26BEA93B8()
{
  v1 = v0[22];
  swift_willThrow();
  v2 = v0[22];
  v3 = v0[13];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BEA9438()
{
  v0 = sub_26C00AA3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00AA2C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_26C009A7C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_26BEAC6AC();
  sub_26C009A6C();
  v10[1] = MEMORY[0x277D84F90];
  sub_26BEACA58(&qword_28045ECD0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECD8, &qword_26C015C78);
  sub_26BEAC6F8();
  sub_26C00AB3C();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_26C00AA4C();
  qword_280478F18 = result;
  return result;
}

uint64_t sub_26BEA9674(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - v6;
  if (qword_28045DF90 != -1)
  {
    swift_once();
  }

  v8 = qword_280478F18;
  (*(v4 + 16))(v7, a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26BEACB74;
  *(v11 + 24) = v10;
  aBlock[4] = sub_26BEAFAE8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BEA9B08;
  aBlock[3] = &block_descriptor_62;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BEA98D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECC0, &qword_26C015C70);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = v16 - v7;
  v9 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state;
  v10 = *(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state);
  if (v10 <= 1)
  {
    if (*(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
      result = sub_26C00A80C();
      v14 = 5;
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
      v12 = *(v11 - 8);
      (*(v12 + 16))(v8, a2, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      v13 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation;
      swift_beginAccess();
      sub_26BEAC63C(v8, a1 + v13);
      result = swift_endAccess();
      v14 = 2;
    }

    goto LABEL_8;
  }

  if (*(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state) <= 3u)
  {
    if (v10 == 2)
    {
      __break(1u);
    }

    __break(1u);
  }

  else if (v10 == 4)
  {
    sub_26C00A81C();
    sub_26BEACA58(&qword_28045ED08, 255, MEMORY[0x277D85678]);
    v15 = swift_allocError();
    sub_26C00A36C();
    v16[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
    result = sub_26C00A7FC();
    v14 = 3;
LABEL_8:
    *(a1 + v9) = v14;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BEA9B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECC0, &qword_26C015C70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v9);
  v14 = &v19[-v13];
  v15 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state;
  v16 = *(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state);
  if (v16 > 2)
  {
    if (v16 - 3 < 2)
    {
      return result;
    }

    __break(1u);
  }

  else if (*(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state))
  {
    if (v16 != 2)
    {
      __break(1u);
      return result;
    }

    v17 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation;
    swift_beginAccess();
    sub_26BE2E1F0(a1 + v17, v14, &qword_28045ECC0, &qword_26C015C70);
    if ((*(v3 + 48))(v14, 1, v2))
    {
      sub_26BE2E258(v14, &qword_28045ECC0, &qword_26C015C70);
    }

    else
    {
      (*(v3 + 16))(v6, v14, v2);
      sub_26BE2E258(v14, &qword_28045ECC0, &qword_26C015C70);
      sub_26C00A80C();
      (*(v3 + 8))(v6, v2);
    }

    (*(v3 + 56))(v11, 1, 1, v2);
    swift_beginAccess();
    sub_26BEAC63C(v11, a1 + v17);
    result = swift_endAccess();
    v18 = 5;
    goto LABEL_11;
  }

  v18 = 1;
LABEL_11:
  *(a1 + v15) = v18;
  return result;
}

uint64_t sub_26BEA9DC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECA0, &qword_26C015B08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ECC0, &qword_26C015C70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = v20 - v13;
  v15 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state;
  v16 = *(a1 + OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_state);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v18 = OBJC_IVAR____TtC8SwiftMLS17ContinuationStore_continuation;
      swift_beginAccess();
      sub_26BE2E1F0(a1 + v18, v14, &qword_28045ECC0, &qword_26C015C70);
      if ((*(v3 + 48))(v14, 1, v2))
      {
        sub_26BE2E258(v14, &qword_28045ECC0, &qword_26C015C70);
      }

      else
      {
        (*(v3 + 16))(v6, v14, v2);
        sub_26BE2E258(v14, &qword_28045ECC0, &qword_26C015C70);
        sub_26C00A81C();
        sub_26BEACA58(&qword_28045ED08, 255, MEMORY[0x277D85678]);
        v19 = swift_allocError();
        sub_26C00A36C();
        v20[0] = v19;
        sub_26C00A7FC();
        (*(v3 + 8))(v6, v2);
      }

      (*(v3 + 56))(v11, 1, 1, v2);
      swift_beginAccess();
      sub_26BEAC63C(v11, a1 + v18);
      result = swift_endAccess();
      v17 = 3;
      goto LABEL_11;
    }

    if (v16 == 5)
    {
      return result;
    }

    __break(1u);
  }

  if (v16)
  {
    return result;
  }

  v17 = 4;
LABEL_11:
  *(a1 + v15) = v17;
  return result;
}