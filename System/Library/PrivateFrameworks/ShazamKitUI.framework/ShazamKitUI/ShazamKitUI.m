double sub_265F88FD0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_265FAABA8();
  v21 = 1;
  sub_265F891D4(&v11);
  v28 = v17;
  v29 = v18;
  v30[0] = v19[0];
  *(v30 + 9) = *(v19 + 9);
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v22 = v11;
  v23 = v12;
  v31[6] = v17;
  v31[7] = v18;
  v32[0] = v19[0];
  *(v32 + 9) = *(v19 + 9);
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v31[5] = v16;
  v31[0] = v11;
  v31[1] = v12;
  sub_265F8A480(&v22, &v10, &qword_280051AD8, &qword_265FAD0D0);
  sub_265F8A4E8(v31, &qword_280051AD8, &qword_265FAD0D0);
  *(&v20[3] + 7) = v25;
  *(&v20[2] + 7) = v24;
  *(&v20[6] + 7) = v28;
  *(&v20[7] + 7) = v29;
  *(&v20[8] + 7) = v30[0];
  v20[9] = *(v30 + 9);
  *(&v20[4] + 7) = v26;
  *(&v20[5] + 7) = v27;
  *(v20 + 7) = v22;
  *(&v20[1] + 7) = v23;
  v3 = v20[7];
  *(a1 + 113) = v20[6];
  *(a1 + 129) = v3;
  v4 = v20[9];
  *(a1 + 145) = v20[8];
  *(a1 + 161) = v4;
  v5 = v20[3];
  *(a1 + 49) = v20[2];
  *(a1 + 65) = v5;
  v6 = v20[5];
  *(a1 + 81) = v20[4];
  *(a1 + 97) = v6;
  result = *v20;
  v8 = v20[1];
  *(a1 + 17) = v20[0];
  v9 = v21;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 33) = v8;
  return result;
}

uint64_t sub_265F891D4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SHListeningLayerState(0);
  sub_265FAB048();
  v2 = v25;
  v3 = v26;
  sub_265FAB048();
  v13 = *(&v20 + 1);
  v4 = v21;
  v14[0] = 0x3FE0000000000000;
  sub_265FAB048();
  v5 = *(&v20 + 1);
  v6 = v21;
  sub_265FAAA18();
  sub_265FAAA18();
  sub_265FAB0A8();
  sub_265FAAA08();
  *&v18[3] = *&v18[27];
  *&v18[11] = *&v18[35];
  *&v18[19] = v19;
  v17 = 1;
  v20 = v25;
  *&v21 = v26;
  *(&v21 + 1) = 4;
  *&v22 = v13;
  *(&v22 + 1) = v4;
  *&v23 = 4;
  *(&v23 + 1) = v5;
  *v24 = v6;
  *&v24[8] = 0;
  *&v24[56] = *(&v19 + 1);
  *&v24[42] = *&v18[16];
  *&v24[26] = *&v18[8];
  *&v24[10] = *v18;
  *&v16[55] = v23;
  *&v16[39] = v22;
  *&v16[23] = v21;
  *&v16[7] = v25;
  *&v16[119] = *&v24[48];
  *&v16[103] = *&v24[32];
  *&v16[87] = *&v24[16];
  *&v16[71] = *v24;
  v15 = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v7 = *&v16[16];
  *(a1 + 9) = *v16;
  v8 = *&v16[80];
  *(a1 + 73) = *&v16[64];
  v9 = *&v16[32];
  *(a1 + 57) = *&v16[48];
  *(a1 + 41) = v9;
  *(a1 + 25) = v7;
  v10 = *&v16[96];
  v11 = *&v16[112];
  *(a1 + 136) = *&v16[127];
  *(a1 + 144) = 0;
  *(a1 + 121) = v11;
  *(a1 + 105) = v10;
  *(a1 + 89) = v8;
  *(a1 + 152) = 1;
  v25 = v2;
  v26 = v3;
  v27 = 4;
  v28 = v13;
  v29 = v4;
  v30 = 4;
  v31 = v5;
  v32 = v6;
  v33 = 0;
  v34 = *v18;
  v35 = *&v18[8];
  *v36 = *&v18[16];
  *&v36[14] = *&v18[23];
  sub_265F8A480(&v20, v14, &qword_280051AE0, &qword_265FAD0D8);
  return sub_265F8A4E8(&v25, &qword_280051AE0, &qword_265FAD0D8);
}

uint64_t sub_265F8943C@<X0>(uint64_t a1@<X8>)
{
  result = sub_265FAAC48();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = sub_265F88FD0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_265F89480(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_265FAAAB8();
  }

  else
  {
    sub_265FAAA58();
  }

  return sub_265FAAAD8();
}

uint64_t sub_265F894E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_265FAAAB8();
    sub_265FAAAD8();
    sub_265F895DC();
  }

  else
  {
    sub_265FAAA58();
    sub_265FAAAD8();
    sub_265F8A18C(&qword_280051A50, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_265F895DC()
{
  result = qword_280051A48;
  if (!qword_280051A48)
  {
    sub_265FAAAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051A48);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_265F89698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265F8A18C(&qword_280051AD0, type metadata accessor for SHError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_265F8971C(uint64_t a1, id *a2)
{
  result = sub_265FAB188();
  *a2 = 0;
  return result;
}

uint64_t sub_265F89794(uint64_t a1, id *a2)
{
  v3 = sub_265FAB198();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_265F89814@<X0>(uint64_t *a1@<X8>)
{
  sub_265FAB1A8();
  v2 = sub_265FAB178();

  *a1 = v2;
  return result;
}

uint64_t sub_265F89858()
{
  v1 = *v0;
  v2 = sub_265FAB1A8();
  v3 = MEMORY[0x266774870](v2);

  return v3;
}

uint64_t sub_265F89894()
{
  v1 = *v0;
  sub_265FAB1A8();
  sub_265FAB1C8();
}

uint64_t sub_265F898E8()
{
  v1 = *v0;
  sub_265FAB1A8();
  sub_265FAB488();
  sub_265FAB1C8();
  v2 = sub_265FAB498();

  return v2;
}

uint64_t sub_265F89970(uint64_t a1)
{
  v2 = sub_265F8A18C(&qword_280051AD0, type metadata accessor for SHError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_265F899DC(uint64_t a1)
{
  v2 = sub_265F8A18C(&qword_280051AD0, type metadata accessor for SHError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_265F89A48(void *a1, uint64_t a2)
{
  v4 = sub_265F8A18C(&qword_280051AD0, type metadata accessor for SHError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_265F89AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265F8A18C(&qword_280051AD0, type metadata accessor for SHError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_265F89B78()
{
  v2 = *v0;
  sub_265FAB488();
  sub_265FAB158();
  return sub_265FAB498();
}

void *sub_265F89BD8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_265F89BF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_265FAB1A8();
  v6 = v5;
  if (v4 == sub_265FAB1A8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_265FAB438();
  }

  return v9 & 1;
}

uint64_t sub_265F89C80@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_265FAB1A8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_265F89CAC(uint64_t a1)
{
  v2 = sub_265F8A18C(&qword_280051B60, type metadata accessor for DocumentAttributeKey);
  v3 = sub_265F8A18C(&qword_280051B68, type metadata accessor for DocumentAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_265F89D68(uint64_t a1)
{
  v2 = sub_265F8A18C(&qword_280051B70, type metadata accessor for DocumentReadingOptionKey);
  v3 = sub_265F8A18C(&qword_280051B78, type metadata accessor for DocumentReadingOptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_265F89E24(uint64_t a1)
{
  v2 = sub_265F8A18C(&qword_280051A98, type metadata accessor for SHError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_265F89E90(uint64_t a1)
{
  v2 = sub_265F8A18C(&qword_280051A98, type metadata accessor for SHError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_265F89F00(uint64_t a1)
{
  v2 = sub_265F8A18C(&qword_280051AD0, type metadata accessor for SHError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_265F89F80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_265FAB178();

  *a2 = v5;
  return result;
}

uint64_t sub_265F89FC8(uint64_t a1)
{
  v2 = sub_265F8A18C(&qword_280051B80, type metadata accessor for SHAnalyticsPayload);
  v3 = sub_265F8A18C(&qword_280051B88, type metadata accessor for SHAnalyticsPayload);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_265F8A094(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265F8A0B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_265F8A18C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_265F8A39C()
{
  result = qword_280051AC0;
  if (!qword_280051AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051AC0);
  }

  return result;
}

uint64_t sub_265F8A480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_265F8A4E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_265F8A588()
{
  result = qword_280051B08;
  if (!qword_280051B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051B10, &qword_265FAD1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051B08);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_265F8A8D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_265F8A948(char a1, void *a2, uint64_t a3)
{
  v6 = sub_265FAA7D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && a2)
  {
    v11 = a2;
    if (qword_280051A40 != -1)
    {
      swift_once();
    }

    v12 = sub_265FAA8B8();
    __swift_project_value_buffer(v12, qword_280054670);
    (*(v7 + 16))(v10, a3, v6);
    v13 = a2;
    v14 = sub_265FAA898();
    v15 = sub_265FAB2A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v16 = 136315394;
      sub_265F8B678();
      v18 = sub_265FAB428();
      v20 = v19;
      (*(v7 + 8))(v10, v6);
      v21 = sub_265F8AC80(v18, v20, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&dword_265F80000, v14, v15, "Failed to launch url: %s error: %@", v16, 0x16u);
      sub_265F8B6D0(v17);
      MEMORY[0x266775370](v17, -1, -1);
      v24 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x266775370](v24, -1, -1);
      MEMORY[0x266775370](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_265F8AC08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_265F8AC80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265F8AD4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_265F8B784(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_265F8AD4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_265F8AE58(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_265FAB3A8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_265F8AE58(uint64_t a1, unint64_t a2)
{
  v4 = sub_265F8AEA4(a1, a2);
  sub_265F8AFD4(&unk_2877A9B70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_265F8AEA4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_265F8B0C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_265FAB3A8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_265FAB1E8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265F8B0C0(v10, 0);
        result = sub_265FAB378();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_265F8AFD4(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_265F8B134(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_265F8B0C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051BB8, &qword_265FAD5F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_265F8B134(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051BB8, &qword_265FAD5F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_265F8B228(uint64_t a1)
{
  v2 = sub_265FAA7D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051B98, &qword_265FAD5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265FAD5D0;
  v7 = *MEMORY[0x277D0AC70];
  *(inited + 32) = sub_265FAB1A8();
  *(inited + 40) = v8;
  v9 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v10 = *MEMORY[0x277D0AC58];
  *(inited + 80) = sub_265FAB1A8();
  *(inited + 88) = v11;
  *(inited + 120) = v9;
  *(inited + 96) = 1;
  sub_265F96F20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051BA0, &qword_265FAD5E8);
  swift_arrayDestroy();
  v12 = sub_265FAB128();

  [v5 setFrontBoardOptions_];

  v13 = objc_opt_self();
  v14 = sub_265FAA7B8();
  (*(v3 + 16))(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v15, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_265F8B5A8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265F8AC08;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);
  v18 = v5;

  [v13 openWithURL:v14 configuration:v18 completionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_265F8B520()
{
  v1 = sub_265FAA7D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_265F8B5A8(char a1, void *a2)
{
  v5 = *(sub_265FAA7D8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_265F8A948(a1, a2, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_265F8B678()
{
  result = qword_280051BA8;
  if (!qword_280051BA8)
  {
    sub_265FAA7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051BA8);
  }

  return result;
}

uint64_t sub_265F8B6D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051BB0, &qword_265FAD5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_265F8B784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_265F8B810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_265FAB0B8();
  sub_265FAAAF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051BC8, &qword_265FAD680);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265FAD5D0;
  v5 = sub_265FAAD88();
  *(v4 + 32) = v5;
  v6 = sub_265FAADA8();
  *(v4 + 33) = v6;
  v7 = sub_265FAAD98();
  sub_265FAAD98();
  if (sub_265FAAD98() != v5)
  {
    v7 = sub_265FAAD98();
  }

  sub_265FAAD98();
  if (sub_265FAAD98() != v6)
  {
    v7 = sub_265FAAD98();
  }

  sub_265FAA958();
  *&v25 = a1;
  *(&v25 + 1) = 0xD000000000000015;
  *&v26 = 0x8000000265FAF820;
  *(&v26 + 1) = 0xD000000000000018;
  *v27 = 0x8000000265FAF840;
  *&v27[56] = v48;
  *&v27[72] = v49;
  v8 = v49;
  v9 = v50;
  *&v27[88] = v50;
  *&v27[104] = v51;
  *&v27[8] = v45;
  v10 = v45;
  v11 = v46;
  *&v27[24] = v46;
  *&v27[40] = v47;
  v27[120] = v7;
  *&v28 = v12;
  *(&v28 + 1) = v13;
  *&v29 = v14;
  *(&v29 + 1) = v15;
  v16 = *&v27[16];
  *(a2 + 32) = *v27;
  *(a2 + 48) = v16;
  v17 = *&v27[80];
  *(a2 + 96) = *&v27[64];
  *(a2 + 112) = v17;
  v18 = *&v27[48];
  *(a2 + 64) = *&v27[32];
  *(a2 + 80) = v18;
  v19 = v26;
  *a2 = v25;
  *(a2 + 16) = v19;
  v20 = *&v27[112];
  *(a2 + 128) = *&v27[96];
  *(a2 + 144) = v20;
  v21 = v29;
  *(a2 + 160) = v28;
  *(a2 + 176) = v21;
  v22 = v47;
  v35 = v48;
  v36 = v8;
  v37 = v9;
  v38 = v51;
  v32 = v10;
  v33 = v11;
  v52 = 0;
  v30 = 0;
  *(a2 + 192) = 0;
  v31[0] = a1;
  v31[1] = 0xD000000000000015;
  v31[2] = 0x8000000265FAF820;
  v31[3] = 0xD000000000000018;
  v31[4] = 0x8000000265FAF840;
  v34 = v22;
  v39 = v7;
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v44 = 0;
  sub_265F8A480(&v25, v24, &qword_280051BD0, &qword_265FAD688);
  return sub_265F8A4E8(v31, &qword_280051BD0, &qword_265FAD688);
}

double sub_265F8BA90@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_265FAAC48();
  v28 = 1;
  sub_265F8B810(v3, &v14);
  v39 = v24;
  v40 = v25;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v29 = v14;
  v30 = v15;
  v42[10] = v24;
  v42[11] = v25;
  v42[6] = v20;
  v42[7] = v21;
  v42[8] = v22;
  v42[9] = v23;
  v42[2] = v16;
  v42[3] = v17;
  v42[4] = v18;
  v42[5] = v19;
  v41 = v26;
  v43 = v26;
  v42[0] = v14;
  v42[1] = v15;
  sub_265F8A480(&v29, &v13, &qword_280051BC0, &qword_265FAD678);
  sub_265F8A4E8(v42, &qword_280051BC0, &qword_265FAD678);
  *&v27[151] = v38;
  *&v27[167] = v39;
  *&v27[183] = v40;
  *&v27[87] = v34;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[135] = v37;
  *&v27[23] = v30;
  *&v27[39] = v31;
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[7] = v29;
  v5 = *&v27[128];
  *(a1 + 161) = *&v27[144];
  v6 = *&v27[176];
  *(a1 + 177) = *&v27[160];
  *(a1 + 193) = v6;
  v7 = *&v27[64];
  *(a1 + 97) = *&v27[80];
  v8 = *&v27[112];
  *(a1 + 113) = *&v27[96];
  *(a1 + 129) = v8;
  *(a1 + 145) = v5;
  v9 = *v27;
  *(a1 + 33) = *&v27[16];
  result = *&v27[32];
  v11 = *&v27[48];
  *(a1 + 49) = *&v27[32];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v27[199] = v41;
  v12 = v28;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 209) = *&v27[192];
  *(a1 + 17) = v9;
  return result;
}

unint64_t sub_265F8BC48()
{
  result = qword_280051BD8;
  if (!qword_280051BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051BE0, &unk_265FAD690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051BD8);
  }

  return result;
}

uint64_t sub_265F8BCAC()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C10, &qword_265FAD6B0);
  sub_265FAB018();
  v4 = v17[3];
  v3 = v17[4];

  sub_265F8ECBC();
  v5 = sub_265FAAE98();
  v7 = v6;
  v9 = v8;
  sub_265FAB018();
  v10 = v17[2];

  v11 = sub_265FAAE48();
  v13 = v12;
  LOBYTE(v2) = v14;
  sub_265F8D998(v5, v7, v9 & 1);

  sub_265FAAF58();
  v15 = sub_265FAAE28();

  sub_265F8D998(v11, v13, v2 & 1);

  return v15;
}

uint64_t ExpandableTextView.init(text:font:numberOfLines:expandTextToken:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v37 = a4;
  v38 = a6;
  v36 = a5;
  v34 = a2;
  v41 = a9;
  v13 = *(*(sub_265FAA728() - 8) + 64);
  MEMORY[0x28223BE20]();
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_265FAA6C8();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ExpandableTextViewModel();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded) = 0;
  v23 = (v22 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler);
  *v23 = 0;
  v23[1] = 0;
  v33 = a3;

  sub_265F8C0D8(a7);
  sub_265FAA878();
  v24 = v34;
  v22[6] = a1;
  v22[7] = v24;
  v25 = v36;
  v26 = v37;
  v22[2] = a3;
  v22[3] = v25;
  v22[4] = v38;
  v22[5] = v26;
  v27 = (v22 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler);
  v29 = *(v22 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler);
  v28 = *(v22 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler + 8);
  sub_265F8C0D8(a7);

  sub_265F8C0E8(v29);
  *v27 = a7;
  v27[1] = a8;
  sub_265FAA718();
  sub_265FAA6D8();
  sub_265F8C0E8(a7);
  (*(v39 + 32))(v22 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__attributedText, v18, v40);
  v42 = v22;

  sub_265FAB008();
  sub_265F8C0E8(a7);

  v31 = v44;
  v32 = v41;
  *v41 = v43;
  v32[1] = v31;
  return result;
}

uint64_t type metadata accessor for ExpandableTextViewModel()
{
  result = qword_280051C40;
  if (!qword_280051C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265F8C0D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265F8C0E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ExpandableTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v3 = *v1;
  v2 = v1[1];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051A58, &qword_265FAD6A0);
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v77 = &v67 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C08, &qword_265FAD6A8);
  v71 = *(v72 - 1);
  v7 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v70 = &v67 - v8;
  v82 = v3;
  v83 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C10, &qword_265FAD6B0);
  sub_265FAB018();
  v9 = v89;
  v10 = sub_265FAA6C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  (MEMORY[0x28223BE20])();
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v82 = v9;
  KeyPath = sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA848();

  v15 = OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__attributedText;
  swift_beginAccess();
  (*(v11 + 16))(v14, v9 + v15, v10);

  v16 = sub_265FAAE88();
  v18 = v17;
  v20 = v19;
  v82 = v3;
  v83 = v2;
  sub_265FAB018();
  v21 = *(v80 + 16);

  v22 = sub_265FAAE48();
  v78 = v23;
  LODWORD(v67) = v24;
  v79 = v25;
  sub_265F8D998(v16, v18, v20 & 1);

  v82 = v3;
  v83 = v2;
  v73 = v2;
  sub_265FAB018();
  v26 = v80;
  swift_getKeyPath();
  v82 = v26;
  sub_265FAA848();

  v27 = 0;
  v28 = *(v26 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded);
  if ((v28 & 1) == 0)
  {
    v27 = *(v26 + 40);
  }

  KeyPath = swift_getKeyPath();
  v68 = v22;
  v82 = v22;
  v83 = v78;
  v29 = v67 & 1;
  v84 = v67 & 1;
  v85 = v79;
  v86 = KeyPath;
  v87 = v27;
  v88 = v28;
  v30 = sub_265FAAE68();
  v67 = &v67;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v73;
  v80 = v3;
  v81 = v73;
  v36 = sub_265F8BCAC();
  v38 = v37;
  v40 = v39;
  sub_265FAAE58();
  sub_265F8D998(v36, v38, v40 & 1);

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C20, &qword_265FAD738);
  v42 = sub_265F8E4D4();
  v43 = v70;
  sub_265FAAEC8();
  (*(v31 + 8))(v34, v30);
  sub_265F8D998(v68, v78, v29);

  v44 = swift_allocObject();
  *(v44 + 16) = v3;
  *(v44 + 24) = v35;

  v82 = v41;
  v83 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v77;
  v46 = v72;
  sub_265FAAED8();

  (*(v71 + 8))(v43, v46);
  sub_265FAB258();

  v47 = sub_265FAB248();
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D85700];
  v48[2] = v47;
  v48[3] = v49;
  v48[4] = v3;
  v48[5] = v35;
  v50 = sub_265FAB288();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v67 - v53;
  sub_265FAB268();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v78 = sub_265FAAAB8();
    v79 = &v67;
    v73 = *(v78 - 8);
    v55 = *(v73 + 64);
    MEMORY[0x28223BE20](v78);
    v72 = &v67 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_265FAB388();

    v82 = 0xD000000000000031;
    v83 = 0x8000000265FAF860;
    v80 = 73;
    v57 = sub_265FAB428();
    MEMORY[0x266774850](v57);

    MEMORY[0x28223BE20](v58);
    (*(v51 + 16))(&v67 - v53, &v67 - v53, v50);
    v59 = v72;
    sub_265FAAAA8();
    (*(v51 + 8))(v54, v50);
    v60 = v76;
    (*(v74 + 32))(v76, v77, v75);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051A60, &unk_265FACD60);
    return (*(v73 + 32))(v60 + *(v61 + 36), v59, v78);
  }

  else
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051A68, &qword_265FAD760);
    v64 = v76;
    v65 = (v76 + *(v63 + 36));
    v66 = sub_265FAAA58();
    (*(v51 + 32))(&v65[*(v66 + 20)], &v67 - v53, v50);
    *v65 = &unk_265FAD750;
    *(v65 + 1) = v48;
    return (*(v74 + 32))(v64, v45, v75);
  }
}

uint64_t sub_265F8CA64@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA848();

  v3 = OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__attributedText;
  swift_beginAccess();
  v4 = sub_265FAA6C8();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_265F8CB5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C10, &qword_265FAD6B0);
  sub_265FAB018();
  sub_265F8CBB4();
}

uint64_t sub_265F8CBB4()
{
  v1 = OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded;
  if (*(v0 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded) == 1)
  {
    *(v0 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded) = 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
    sub_265FAA838();
  }

  swift_getKeyPath();
  sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA848();

  v3 = *(v0 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler + 8);
    swift_getKeyPath();

    sub_265FAA848();

    v3(*(v0 + v1));
    return sub_265F8C0E8(v3);
  }

  return result;
}

uint64_t sub_265F8CDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_265FAB258();
  v4[7] = sub_265FAB248();
  v6 = sub_265FAB228();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_265F8CE48, v6, v5);
}

uint64_t sub_265F8CE48()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C10, &qword_265FAD6B0);
  sub_265FAB018();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_265F8CF08;

  return sub_265F8D0AC();
}

uint64_t sub_265F8CF08()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_265F8D04C, v5, v4);
}

uint64_t sub_265F8D04C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265F8D0AC()
{
  v1[21] = v0;
  v2 = *(*(sub_265FAA728() - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v3 = sub_265FAA6C8();
  v1[23] = v3;
  v4 = *(v3 - 8);
  v1[24] = v4;
  v5 = *(v4 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_265FAB258();
  v1[27] = sub_265FAB248();
  v7 = sub_265FAB228();
  v1[28] = v7;
  v1[29] = v6;

  return MEMORY[0x2822009F8](sub_265F8D1D8, v7, v6);
}

uint64_t sub_265F8D1D8()
{
  v1 = v0[21];
  v2 = objc_opt_self();
  v0[30] = *(v1 + 48);
  v0[31] = *(v1 + 56);
  v3 = sub_265FAB178();
  v0[32] = v3;
  sub_265F97050(MEMORY[0x277D84F90]);
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_265F8EB60(&qword_280051B70, type metadata accessor for DocumentReadingOptionKey);
  v4 = sub_265FAB128();
  v0[33] = v4;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_265F8D3B4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C50, &qword_265FAD8B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265F8E1CC;
  v0[13] = &block_descriptor_0;
  v0[14] = v5;
  [v2 loadFromHTMLWithString:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265F8D3B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_265F8D630;
  }

  else
  {
    v6 = sub_265F8D4E4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_265F8D4E4()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[21];

  v10 = v0[18];
  v9 = v0[19];

  v11 = v10;
  sub_265FAA6F8();
  v0[20] = *(v8 + 16);
  sub_265F8EAAC();

  sub_265FAA6E8();
  (*(v6 + 16))(v5, v4, v7);
  sub_265F8D9A8(v5);

  (*(v6 + 8))(v4, v7);
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[22];

  v15 = v0[1];

  return v15();
}

uint64_t sub_265F8D630()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[21];
  v9 = v0[22];

  swift_willThrow();

  sub_265FAA718();
  sub_265FAA6D8();
  sub_265F8D9A8(v7);
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[22];

  v13 = v0[1];

  return v13();
}

uint64_t sub_265F8D724()
{
  swift_getKeyPath();
  sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA848();

  return *(v0 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded);
}

uint64_t sub_265F8D7CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA848();

  v4 = OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__attributedText;
  swift_beginAccess();
  v5 = sub_265FAA6C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_265F8D8C8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_265FAA6C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_265F8D9A8(v7);
}

uint64_t sub_265F8D998(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_265F8D9A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265FAA6C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__attributedText;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_265F8EB60(&qword_280051C60, MEMORY[0x277CC8C40]);
  v10 = sub_265FAB168();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[1] = v2;
    sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
    sub_265FAA838();
  }

  return (v11)(a1, v4);
}

uint64_t sub_265F8DC28(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__attributedText;
  swift_beginAccess();
  v5 = sub_265FAA6C8();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_265F8DCC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA848();

  *a2 = *(v3 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded);
  return result;
}

uint64_t sub_265F8DDA0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__expanded) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
    sub_265FAA838();
  }

  return result;
}

uint64_t sub_265F8DEB8()
{
  swift_getKeyPath();
  sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA848();

  v1 = *(v0 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler);
  v2 = *(v0 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler + 8);
  sub_265F8C0D8(v1);
  return v1;
}

uint64_t sub_265F8DF78@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA848();

  v4 = *(v3 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler);
  v5 = *(v3 + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_265F8EC90;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_265F8C0D8(v4);
}

uint64_t sub_265F8E070(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_265F8EC58;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_265F8C0D8(v3);
  sub_265F8EB60(&qword_280051C18, type metadata accessor for ExpandableTextViewModel);
  sub_265FAA838();
  sub_265F8C0E8(v6);
}

uint64_t sub_265F8E1CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *v6;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C68, &qword_265FAD8C0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;
    v6 = v8;
    v7 = v9;

    return MEMORY[0x282200958](v6, v7);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v6, v7);
  }

  type metadata accessor for DocumentAttributeKey(0);
  sub_265F8EB60(&qword_280051B60, type metadata accessor for DocumentAttributeKey);
  v12 = sub_265FAB138();
  v13 = *(v8[8] + 40);
  *v13 = a2;
  v13[1] = v12;
  v14 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_265F8E304()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__attributedText;
  v5 = sub_265FAA6C8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler + 8];
  sub_265F8C0E8(*&v0[OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler]);
  v7 = OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel___observationRegistrar;
  v8 = sub_265FAA888();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v9, v10);
}

uint64_t sub_265F8E40C@<X0>(uint64_t a1@<X8>)
{
  result = sub_265FAAB88();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_265F8E440@<X0>(uint64_t a1@<X8>)
{
  result = sub_265FAAB88();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_265F8E474(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_265FAAB98();
}

uint64_t sub_265F8E4A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_265FAAB98();
}

unint64_t sub_265F8E4D4()
{
  result = qword_280051C28;
  if (!qword_280051C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051C20, &qword_265FAD738);
    sub_265F8E560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051C28);
  }

  return result;
}

unint64_t sub_265F8E560()
{
  result = qword_280051C30;
  if (!qword_280051C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051C38, &qword_265FAD740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051C30);
  }

  return result;
}

uint64_t sub_265F8E5C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265F8E604()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_265F8CB5C();
}

uint64_t sub_265F8E60C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265F8E654()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_265F8E700;

  return sub_265F8CDB0(v2, v3, v5, v4);
}

uint64_t sub_265F8E700()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265F8E810(uint64_t *a1, int a2)
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

uint64_t sub_265F8E858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265F8E8AC()
{
  result = sub_265FAA6C8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_265FAA888();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_265F8E9B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051A58, &qword_265FAD6A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051C08, &qword_265FAD6A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051C20, &qword_265FAD738);
  sub_265F8E4D4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_265F8EAAC()
{
  result = qword_280051C58;
  if (!qword_280051C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051C58);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_265F8EB60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265F8EBC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC11ShazamKitUIP33_9979AAF9E31D2582850620124584051123ExpandableTextViewModel__onExpandTextHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_265F8C0D8(v1);
  return sub_265F8C0E8(v4);
}

uint64_t sub_265F8EC20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265F8EC58(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_265F8EC90(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_265F8ECBC()
{
  result = qword_280051C70;
  if (!qword_280051C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051C70);
  }

  return result;
}

uint64_t sub_265F8ED80(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_265FAAF48();
  *a3 = result;
  return result;
}

__n128 sub_265F8EDC8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_265FAB0A8();
  v4 = v3;
  sub_265F8EEAC(&v9);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v23[0] = v9;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v24 = v15;
  sub_265F8A480(&v16, &v8, &qword_280051C88, &qword_265FAD970);
  sub_265F8A4E8(v23, &qword_280051C88, &qword_265FAD970);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v21;
  *(a1 + 80) = v20;
  *(a1 + 96) = v5;
  *(a1 + 112) = v22;
  v6 = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = v6;
  result = v19;
  *(a1 + 48) = v18;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_265F8EEAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265FAAFA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800519D0 != -1)
  {
    swift_once();
  }

  v7 = qword_280051C80;

  sub_265FAAFC8();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v8 = sub_265FAAFE8();

  (*(v3 + 8))(v6, v2);
  sub_265FAAA18();
  sub_265FAAA18();
  sub_265FAB0A8();
  sub_265FAAA08();
  LOBYTE(v23[0]) = 1;
  *&v19[3] = *&v19[27];
  *&v19[11] = *&v19[35];
  *&v19[19] = *&v19[43];
  if (qword_2800519C8 != -1)
  {
    swift_once();
  }

  v9 = qword_280051C78;
  KeyPath = swift_getKeyPath();
  v20[0] = v8;
  v20[1] = 0;
  LOWORD(v21[0]) = 1;
  *(v21 + 2) = *v19;
  *(&v21[2] + 2) = *&v19[16];
  *(&v21[1] + 2) = *&v19[8];
  *&v21[3] = *&v19[23];
  *(&v21[3] + 1) = KeyPath;
  v22 = v9;
  *&v18[22] = v21[0];
  *&v18[6] = v8;
  *&v18[86] = v9;
  *&v18[70] = v21[3];
  *&v18[54] = v21[2];
  *&v18[38] = v21[1];
  *a1 = v7;
  *(a1 + 8) = 256;
  v11 = *v18;
  *(a1 + 26) = *&v18[16];
  *(a1 + 10) = v11;
  v12 = *&v18[32];
  v13 = *&v18[48];
  v14 = *&v18[64];
  *(a1 + 88) = *&v18[78];
  *(a1 + 74) = v14;
  *(a1 + 58) = v13;
  *(a1 + 42) = v12;
  v23[0] = v8;
  v23[1] = 0;
  v24 = 1;
  *&v27[14] = *&v19[23];
  v28 = KeyPath;
  *v27 = *&v19[16];
  v26 = *&v19[8];
  v25 = *v19;
  v29 = v9;

  sub_265F8A480(v20, &v17, &qword_280051C90, &qword_265FAD9A8);
  sub_265F8A4E8(v23, &qword_280051C90, &qword_265FAD9A8);
}

unint64_t sub_265F8F240()
{
  result = qword_280051C98;
  if (!qword_280051C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051CA0, &unk_265FAD9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051C98);
  }

  return result;
}

uint64_t sub_265F8F2A4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  v6 = *(type metadata accessor for LocationViewPopulator() - 8);
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 + 64);
  *(v5 + 72) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v9 = sub_265FAA7D8();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  *(v5 + 104) = v10;
  *(v5 + 112) = *(v10 + 64);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265F8F44C, 0, 0);
}

uint64_t sub_265F8F44C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  sub_265FAB078();
  sub_265F8A480(*(v0 + 16) + OBJC_IVAR____TtC11ShazamKitUI17LocationViewModel_albumArtURL, v3, &qword_280051CB0, &unk_265FAE990);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_265F8A4E8(*(v0 + 88), &qword_280051CB0, &unk_265FAE990);
  }

  else
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v45 = v7;
    v46 = *(v0 + 64);
    v44 = *(v0 + 56);
    v12 = *(v0 + 32);
    v48 = v5;
    v47 = *(v8 + 32);
    v47(v5, *(v0 + 88), v9);
    v13 = sub_265FAB288();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    (*(v8 + 16))(v6, v5, v9);
    v14 = v10;
    sub_265F917CC(v12, v10);
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = (v45 + *(v44 + 80) + v15) & ~*(v44 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    v47(v17 + v15, v6, v9);
    sub_265F91910(v14, v17 + v16);
    sub_265F8FE64(v11, &unk_265FADA18, v17);
    sub_265F8A4E8(v11, &qword_280051CA8, &unk_265FAD9D0);
    (*(v8 + 8))(v48, v9);
  }

  v19 = *(v0 + 72);
  v18 = *(v0 + 80);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v23 = *(v0 + 40);
  v22 = *(v0 + 48);
  v24 = *(v0 + 24);
  v25 = *(v0 + 32);
  v26 = sub_265FAB288();
  v27 = (*(v26 - 8) + 56);
  v49 = *v27;
  (*v27)(v18, 1, 1, v26);
  sub_265F917CC(v25, v19);
  v28 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v29 = v28 + v20;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_265F91910(v19, v30 + v28);
  sub_265F8FE64(v18, &unk_265FAD9F0, v30);
  sub_265F8A4E8(v18, &qword_280051CA8, &unk_265FAD9D0);
  if (v23 > 0.0 && v22 > 0.0)
  {
    v32 = *(v0 + 72);
    v31 = *(v0 + 80);
    v34 = *(v0 + 40);
    v33 = *(v0 + 48);
    v35 = *(v0 + 24);
    v36 = *(v0 + 32);
    v49(v31, 1, 1, v26);
    sub_265F917CC(v36, v32);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    sub_265F91910(v32, v37 + v28);
    v38 = (v37 + ((v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v38 = v34;
    v38[1] = v33;
    sub_265F8FE64(v31, &unk_265FADA08, v37);
    sub_265F8A4E8(v31, &qword_280051CA8, &unk_265FAD9D0);
  }

  v39 = *(MEMORY[0x277D85698] + 4);
  v40 = swift_task_alloc();
  *(v0 + 136) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CC0, &qword_265FAD9F8);
  *v40 = v0;
  v40[1] = sub_265F8F8C8;
  v42 = *(v0 + 24);

  return MEMORY[0x2822002C8](0, 0, v41);
}

uint64_t sub_265F8F8C8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 72);
  v9 = *v0;

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_265F8FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_265F8FB04;

  return sub_265F9123C(a4);
}

uint64_t sub_265F8FB04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_265F8FCCC;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_265F8FC30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_265F8FC30()
{
  v0[6] = v0[5];
  sub_265FAB258();
  v0[7] = sub_265FAB248();
  v2 = sub_265FAB228();

  return MEMORY[0x2822009F8](sub_265F8FD64, v2, v1);
}

uint64_t sub_265F8FCCC()
{
  *(v0 + 48) = 0;
  sub_265FAB258();
  *(v0 + 56) = sub_265FAB248();
  v2 = sub_265FAB228();

  return MEMORY[0x2822009F8](sub_265F8FD64, v2, v1);
}

uint64_t sub_265F8FD64()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  sub_265FAB078();
  v4 = v0[2];
  v5 = v2;
  sub_265F93F98(v2);

  return MEMORY[0x2822009F8](sub_265F8FE04, 0, 0);
}

uint64_t sub_265F8FE04()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265F8FE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_265F8A480(a1, v22 - v10, &qword_280051CA8, &unk_265FAD9D0);
  v12 = sub_265FAB288();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_265F8A4E8(v11, &qword_280051CA8, &unk_265FAD9D0);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_265FAB228();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_265FAB278();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_265F9009C()
{
  v1 = v0[19];
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  sub_265FAB078();
  v2 = *(v0[10] + 16);

  v3 = [objc_allocWithZone(MEMORY[0x277CD4F38]) initWithLocation_];
  v0[21] = v3;

  if (v3)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_265F9024C;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CD0, &qword_265FADA48);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_265F90694;
    v0[13] = &block_descriptor_22;
    v0[14] = v4;
    [v3 getMapItemsWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_265F9024C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_265F9061C;
  }

  else
  {
    v3 = sub_265F9035C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265F9035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 144);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v17 = *(v3 + 144);
    }

    v5 = sub_265FAB3D8();
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x266774A10](0, v4);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v5, a2, a3);
        }

        v6 = *(v4 + 32);
      }

      v7 = v6;
      *(v3 + 184) = v6;

      v8 = [v7 addressRepresentations];
      if (v8 && (v9 = v8, v10 = [v8 fullAddressIncludingRegion:1 singleLine:1], v9, v10))
      {
        v11 = sub_265FAB1A8();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      *(v3 + 192) = v11;
      *(v3 + 200) = v13;
      sub_265FAB258();
      *(v3 + 208) = sub_265FAB248();
      v14 = sub_265FAB228();
      v16 = v15;
      v5 = sub_265F90518;
      a2 = v14;
      a3 = v16;

      return MEMORY[0x2822009F8](v5, a2, a3);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v18 = *(v3 + 8);

  return v18();
}

uint64_t sub_265F90518()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[19];
  v5 = v0[20];

  sub_265FAB078();
  v6 = v0[10];
  LocationViewModel.address.setter(v3, v2);

  return MEMORY[0x2822009F8](sub_265F905B4, 0, 0);
}

uint64_t sub_265F905B4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265F9061C()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_265F90694(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C68, &qword_265FAD8C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_265F92044();
    **(*(v4 + 64) + 40) = sub_265FAB218();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_265F90774(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 32) = a6;
  return MEMORY[0x2822009F8](sub_265F90798, 0, 0);
}

uint64_t sub_265F90798()
{
  v1 = *(v0 + 4);
  *(v0 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  sub_265FAB078();
  v2 = *(*(v0 + 2) + 16);
  *(v0 + 8) = v2;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 9) = v4;
  *v4 = v0;
  v4[1] = sub_265F90870;
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 4);

  return sub_265F90B1C(v3, v5, v6);
}

uint64_t sub_265F90870(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_265F9098C, 0, 0);
}

uint64_t sub_265F9098C()
{
  sub_265FAB258();
  *(v0 + 88) = sub_265FAB248();
  v2 = sub_265FAB228();

  return MEMORY[0x2822009F8](sub_265F90A20, v2, v1);
}

uint64_t sub_265F90A20()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = v0[4];

  sub_265FAB078();
  v5 = v0[3];
  v6 = v2;
  sub_265F9421C(v2);

  return MEMORY[0x2822009F8](sub_265F90ABC, 0, 0);
}

uint64_t sub_265F90ABC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265F90B1C(uint64_t a1, double a2, double a3)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  *(v3 + 152) = a1;
  return MEMORY[0x2822009F8](sub_265F90B40, 0, 0);
}

uint64_t sub_265F90B40()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = *(v0 + 19);
  v4 = [objc_allocWithZone(MEMORY[0x277CD4EB8]) init];
  [v3 coordinate];
  v7 = [objc_opt_self() cameraLookingAtCenterCoordinate:v5 fromDistance:v6 pitch:8000.0 heading:{0.0, 0.0}];
  [v4 setCamera_];

  [v4 setMapType_];
  [v4 setSize_];
  v8 = [objc_allocWithZone(MEMORY[0x277CD4EC0]) initWithOptions_];
  *(v0 + 22) = v8;

  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_265F90D58;
  v9 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CC8, &unk_265FADA28);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_265F90F74;
  *(v0 + 13) = &block_descriptor_1;
  *(v0 + 14) = v9;
  [v8 startWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265F90D58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_265F90EF8;
  }

  else
  {
    v3 = sub_265F90E68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265F90E68()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = [v2 image];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_265F90EF8()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_265F90F74(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C68, &qword_265FAD8C0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_265F9104C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265F91144;

  return v7(a1);
}

uint64_t sub_265F91144()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265F9123C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_265FAA7D8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_265FAA6B8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265F91358, 0, 0);
}

uint64_t sub_265F91358()
{
  v1 = v0[8];
  (*(v0[4] + 16))(v0[5], v0[2], v0[3]);
  sub_265FAA6A8();
  v0[9] = [objc_opt_self() sharedSession];
  v2 = *(MEMORY[0x277CC9D18] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_265F91454;
  v4 = v0[8];

  return MEMORY[0x28211ECF8](v4, 0);
}

uint64_t sub_265F91454(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 72);
  v11 = *v4;
  *(*v4 + 88) = v3;

  if (v3)
  {
    v12 = sub_265F916A4;
  }

  else
  {

    *(v8 + 96) = a2;
    *(v8 + 104) = a1;
    v12 = sub_265F915B0;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_265F915B0()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v8 = sub_265FAA7E8();
  v9 = [v7 initWithData_];

  sub_265F9172C(v2, v1);
  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_265F916A4()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_265F9172C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for LocationViewPopulator()
{
  result = qword_280051CE0;
  if (!qword_280051CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265F917CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewPopulator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F91830()
{
  v1 = *(type metadata accessor for LocationViewPopulator() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265F91910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewPopulator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F91974(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationViewPopulator() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265F8E700;

  return sub_265F9007C(a1, v6, v7, v1 + v5);
}

uint64_t sub_265F91A64()
{
  v1 = *(type metadata accessor for LocationViewPopulator() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_265F91B50(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationViewPopulator() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_265F92278;

  return sub_265F90774(v9, v10, a1, v6, v7, v1 + v5);
}

uint64_t sub_265F91C80()
{
  v1 = sub_265FAA7D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for LocationViewPopulator() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  (*(*(v12 - 8) + 8))(v0 + v8, v12);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_265F91DEC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_265FAA7D8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LocationViewPopulator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_265F92278;

  return sub_265F8FA58(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_265F91F54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265F91F8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265F8E700;

  return sub_265F9104C(a1, v5);
}

unint64_t sub_265F92044()
{
  result = qword_280051CD8;
  if (!qword_280051CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280051CD8);
  }

  return result;
}

uint64_t sub_265F920A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265F92130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB8, &qword_265FAD9E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_265F921AC()
{
  sub_265F92218();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_265F92218()
{
  if (!qword_280051CF0)
  {
    type metadata accessor for LocationViewModel();
    v0 = sub_265FAB098();
    if (!v1)
    {
      atomic_store(v0, &qword_280051CF0);
    }
  }
}

uint64_t sub_265F922A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_265FAAF68();
  sub_265FAAA18();
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = sub_265F924E0;
  a3[4] = v11;
}

double sub_265F92350(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_265F923BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  v8 = sub_265FAB0A8();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CF8, &qword_265FADAF8);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051D00, &unk_265FADB00);
  v13 = (a2 + *(result + 36));
  *v13 = sub_265F924D8;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v10;
  return result;
}

uint64_t sub_265F924A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265F924E0(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_265F92520()
{
  result = qword_280051D08;
  if (!qword_280051D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051D00, &unk_265FADB00);
    sub_265F92604(&qword_280051D10, &qword_280051CF8, &qword_265FADAF8);
    sub_265F92604(&qword_280051D18, &qword_280051D20, ":<");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051D08);
  }

  return result;
}

uint64_t sub_265F92604(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_265F92650(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLayerView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v11 = OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLayer;
  *&v4[v11] = [objc_allocWithZone(SHListeningLayer) initWithIntroAnimation:0 useCustomCompatibleBackground:1];
  v12 = OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_265F92770();

  return v13;
}

id sub_265F92770()
{
  swift_getObjectType();
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = *&v0[OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLayerView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v1 layer];
  v31 = *&v0[OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLayer];
  [v2 addSublayer_];

  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v4 = [objc_opt_self() systemFontOfSize:62.0 weight:*MEMORY[0x277D74420]];
  [v3 setFont_];

  v5 = [objc_opt_self() whiteColor];
  [v3 setTextColor_];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_265FAA708();

  v8 = sub_265FAB178();

  [v3 setText_];

  v30 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051D40, &qword_265FAF190);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_265FADB80;
  v10 = [v1 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [v1 centerYAnchor];
  v14 = [v0 centerYAnchor];
  v15 = [v13 &selRef:v14 systemFontOfSize:? weight:? + 5];

  *(v9 + 40) = v15;
  v16 = [v1 heightAnchor];
  v17 = [v0 heightAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 multiplier:0.65];

  *(v9 + 48) = v18;
  v19 = [v1 widthAnchor];
  v20 = [v0 heightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 multiplier:0.65];

  *(v9 + 56) = v21;
  v22 = [v3 centerYAnchor];
  v23 = [v0 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v9 + 64) = v24;
  v25 = [v3 trailingAnchor];
  v26 = [v0 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-36.0];

  *(v9 + 72) = v27;
  sub_265F92FA0();
  v28 = sub_265FAB208();

  [v30 activateConstraints_];

  return [v31 startActiveListeningAnimation];
}

id sub_265F92CB4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLayerView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v5 = OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLayer;
  *&v1[v5] = [objc_allocWithZone(SHListeningLayer) initWithIntroAnimation:0 useCustomCompatibleBackground:1];
  v6 = OBJC_IVAR____TtC11ShazamKitUI22AmbientListeningUIView_listeningLabel;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_265F92770();
  }

  return v8;
}

id sub_265F92EE8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_265F92FA0()
{
  result = qword_280051D48;
  if (!qword_280051D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280051D48);
  }

  return result;
}

ShazamKitUI::MatchResult __swiftcall MatchResult.init(mediaItem:)(ShazamKitUI::MatchResult mediaItem)
{
  *v1 = 1;
  *(v1 + 8) = *&mediaItem.showStreamingServiceLink;
  return mediaItem;
}

uint64_t static MatchResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  v4 = *(a1 + 1);
  sub_265F9308C();
  return sub_265FAB2C8() & 1;
}

unint64_t sub_265F9308C()
{
  result = qword_280051D50;
  if (!qword_280051D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280051D50);
  }

  return result;
}

uint64_t sub_265F930D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  v4 = *(a1 + 1);
  sub_265F9308C();
  return sub_265FAB2C8() & 1;
}

BOOL _s11ShazamKitUI17MatchingFlowStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      if (((v6 ^ v3) & 1) == 0)
      {
        sub_265F9308C();
        sub_265F93638(v6, v5, 0);
        sub_265F93638(v3, v2, 0);
        sub_265F93638(v6, v5, 0);
        sub_265F93638(v3, v2, 0);
        v15 = sub_265FAB2C8();
        sub_265F93654(v3, v2, 0);
        sub_265F93654(v6, v5, 0);
        sub_265F93654(v6, v5, 0);
        sub_265F93654(v3, v2, 0);
        return (v15 & 1) != 0;
      }

      sub_265F93638(*a2, *(a2 + 8), 0);
      sub_265F93638(v3, v2, 0);
      sub_265F93654(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
LABEL_16:
      sub_265F93654(v10, v11, v12);
      return 0;
    }

    goto LABEL_15;
  }

  if (v4 != 1)
  {
    if (v7 == 2 && (v5 | v6) == 0)
    {
      sub_265F93654(*a1, v2, 2);
      sub_265F93654(0, 0, 2);
      return 1;
    }

    goto LABEL_15;
  }

  if (v7 != 1)
  {
LABEL_15:
    sub_265F93638(*a2, *(a2 + 8), v7);
    sub_265F93638(v3, v2, v4);
    sub_265F93654(v3, v2, v4);
    v10 = v6;
    v11 = v5;
    v12 = v7;
    goto LABEL_16;
  }

  if (!v3)
  {
    v14 = v6;
    sub_265F93638(v6, v5, 1);
    sub_265F93638(0, v2, 1);
    sub_265F93654(0, v2, 1);
    sub_265F93654(v6, v5, 1);
    if (v6)
    {
      v10 = v6;
      v11 = v5;
      v12 = 1;
      goto LABEL_16;
    }

    return 1;
  }

  v17 = *a1;
  if (v6)
  {
    v16 = *a2;
    type metadata accessor for SHError(0);
    sub_265F93638(v6, v5, 1);
    sub_265F93638(v3, v2, 1);
    sub_265F93638(v6, v5, 1);
    sub_265F93638(v3, v2, 1);
    sub_265F93638(v6, v5, 1);
    sub_265F93638(v3, v2, 1);
    sub_265F93670();
    v8 = sub_265FAB168();
    sub_265F93654(v3, v2, 1);
    sub_265F93654(v6, v5, 1);
    sub_265F93654(v3, v2, 1);
    sub_265F93654(v6, v5, 1);
    sub_265F93654(v6, v5, 1);

    result = 1;
    if (v8)
    {
      return result;
    }
  }

  else
  {
    sub_265F93638(0, v5, 1);
    sub_265F93638(v3, v2, 1);
    sub_265F93638(0, v5, 1);
    sub_265F93638(v3, v2, 1);
    sub_265F93654(v3, v2, 1);
    sub_265F93654(0, v5, 1);
  }

  return 0;
}

uint64_t sub_265F934C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_265F93508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShazamKitUI17MatchingFlowStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_265F93584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_265F935CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_265F93610(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_265F93638(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    a2 = result;
  }

  return MEMORY[0x2821F9840](result, a2);
}

uint64_t sub_265F93654(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    a2 = result;
  }

  return MEMORY[0x2821F96F8](result, a2);
}

unint64_t sub_265F93670()
{
  result = qword_280051A88;
  if (!qword_280051A88)
  {
    type metadata accessor for SHError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051A88);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265F936DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265F93724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265F93798@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];

  sub_265FAABF8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  LOWORD(v37) = 256;
  v9 = sub_265FAAE78();
  v47 = v10;
  v12 = v11;
  v50 = v13;
  v42 = *a1;
  v43 = v9;
  v49 = sub_265FAAD68();
  sub_265FAB0E8();
  v15 = v14;
  v17 = v16;
  v45 = v12 & 1;
  LOBYTE(v93[0]) = v12 & 1;
  v48 = sub_265FAADE8();
  KeyPath = swift_getKeyPath();
  if (qword_2800519E8 != -1)
  {
    swift_once();
  }

  v18 = qword_280054620;
  v44 = swift_getKeyPath();
  v20 = a1[3];
  v19 = a1[4];
  v41 = v18;

  sub_265FAABF8();
  v21 = [v7 bundleForClass_];
  v22 = sub_265FAAE78();
  v24 = v23;
  LOBYTE(v20) = v25;
  v40 = v26;
  v39 = sub_265FAAD68();
  sub_265FAB0E8();
  v28 = v27;
  v30 = v29;
  v31 = v20 & 1;
  LOBYTE(v93[0]) = v20 & 1;
  v38 = sub_265FAADB8();
  v32 = swift_getKeyPath();
  if (qword_2800519F0 != -1)
  {
    swift_once();
  }

  v33 = qword_280054628;
  v34 = swift_getKeyPath();
  *&v61 = v43;
  *(&v61 + 1) = v47;
  LOBYTE(v62) = v45;
  *(&v62 + 1) = *v58;
  DWORD1(v62) = *&v58[3];
  *(&v62 + 1) = v50;
  *&v63 = 0x656C746974;
  *(&v63 + 1) = 0xE500000000000000;
  *&v64 = v42;
  DWORD2(v64) = v49;
  *&v65 = v15;
  *(&v65 + 1) = v17;
  LOBYTE(v66) = 1;
  DWORD1(v66) = *&v57[3];
  *(&v66 + 1) = *v57;
  *(&v66 + 1) = KeyPath;
  *&v67 = v48;
  *(&v67 + 1) = v44;
  v68 = v41;
  *v56 = v41;
  v54 = v66;
  v55 = v67;
  v52 = v64;
  v53 = v65;
  v51 = v63;
  *&v69 = v22;
  *(&v69 + 1) = v24;
  LOBYTE(v70) = v31;
  DWORD1(v70) = *&v60[3];
  *(&v70 + 1) = *v60;
  *(&v70 + 1) = v40;
  *&v71 = 0x656C746974627573;
  *(&v71 + 1) = 0xE800000000000000;
  *&v72 = v42;
  DWORD2(v72) = v39;
  *&v73 = v28;
  *(&v73 + 1) = v30;
  LOBYTE(v74) = 1;
  DWORD1(v74) = *&v59[3];
  *(&v74 + 1) = *v59;
  *(&v74 + 1) = v32;
  *&v75 = v38;
  *(&v75 + 1) = v34;
  v76 = v33;
  *&v56[120] = v33;
  *&v56[104] = v75;
  *&v56[88] = v74;
  *&v56[72] = v73;
  *&v56[56] = v72;
  *&v56[40] = v71;
  *&v56[24] = v70;
  *&v56[8] = v69;
  v35 = v62;
  *a2 = v61;
  a2[1] = v35;
  a2[4] = v53;
  a2[5] = v54;
  a2[2] = v51;
  a2[3] = v52;
  a2[8] = *&v56[16];
  a2[9] = *&v56[32];
  a2[6] = v55;
  a2[7] = *v56;
  a2[13] = *&v56[96];
  a2[14] = *&v56[112];
  a2[11] = *&v56[64];
  a2[12] = *&v56[80];
  a2[10] = *&v56[48];
  v77[0] = v22;
  v77[1] = v24;
  v78 = v31;
  *v79 = *v60;
  *&v79[3] = *&v60[3];
  v80 = v40;
  v81 = 0x656C746974627573;
  v82 = 0xE800000000000000;
  v83 = v42;
  v84 = v39;
  v85 = v28;
  v86 = v30;
  v87 = 1;
  *v88 = *v59;
  *&v88[3] = *&v59[3];
  v89 = v32;
  v90 = v38;
  v91 = v34;
  v92 = v33;

  sub_265F93DD4(&v61, v93);
  sub_265F93DD4(&v69, v93);
  sub_265F93E44(v77);
  v93[0] = v43;
  v93[1] = v47;
  v94 = v45;
  *v95 = *v58;
  *&v95[3] = *&v58[3];
  v96 = v50;
  v97 = 0x656C746974;
  v98 = 0xE500000000000000;
  v99 = v42;
  v100 = v49;
  v101 = v15;
  v102 = v17;
  v103 = 1;
  *v104 = *v57;
  *&v104[3] = *&v57[3];
  v105 = KeyPath;
  v106 = v48;
  v107 = v44;
  v108 = v41;
  return sub_265F93E44(v93);
}

__n128 sub_265F93CD0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v12 = *(v1 + 32);
  sub_265F93798(v11, v13);
  v4 = v13[13];
  *(a1 + 192) = v13[12];
  *(a1 + 208) = v4;
  *(a1 + 224) = v13[14];
  v5 = v13[9];
  *(a1 + 128) = v13[8];
  *(a1 + 144) = v5;
  v6 = v13[11];
  *(a1 + 160) = v13[10];
  *(a1 + 176) = v6;
  v7 = v13[5];
  *(a1 + 64) = v13[4];
  *(a1 + 80) = v7;
  v8 = v13[7];
  *(a1 + 96) = v13[6];
  *(a1 + 112) = v8;
  v9 = v13[1];
  *a1 = v13[0];
  *(a1 + 16) = v9;
  result = v13[3];
  *(a1 + 32) = v13[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_265F93D74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_265FAAB68();
  *a1 = result;
  return result;
}

uint64_t sub_265F93DA0(uint64_t *a1)
{
  v1 = *a1;

  return sub_265FAAB78();
}

uint64_t sub_265F93DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051D58, &qword_265FADDD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F93E44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051D58, &qword_265FADDD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265F93EB0()
{
  result = qword_280051D60;
  if (!qword_280051D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051D68, &qword_265FADDE0);
    sub_265F93F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051D60);
  }

  return result;
}

unint64_t sub_265F93F34()
{
  result = qword_280051D70;
  if (!qword_280051D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051D78, &qword_265FADDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051D70);
  }

  return result;
}

void sub_265F93F98(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_265F94CF8();
    sub_265FAA838();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_265F950BC();
  v5 = v4;
  v6 = a1;
  v7 = sub_265FAB2C8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

uint64_t LocationViewModel.address.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 24) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 32);
      if (sub_265FAB438())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_265F94CF8();
  sub_265FAA838();
}

void sub_265F9421C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_265F94CF8();
    sub_265FAA838();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_265F950BC();
  v5 = v4;
  v6 = a1;
  v7 = sub_265FAB2C8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t LocationViewModel.address.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_265F94CF8();
  sub_265FAA848();

  swift_beginAccess();
  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_265F94408@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265F94CF8();
  sub_265FAA848();

  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_265F94498(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return LocationViewModel.address.setter(v2, v3);
}

uint64_t sub_265F944D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

void (*LocationViewModel.address.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11ShazamKitUI17LocationViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_265F94CF8();
  sub_265FAA848();

  *v4 = v1;
  swift_getKeyPath();
  sub_265FAA868();

  swift_beginAccess();
  return sub_265F94654;
}

void sub_265F94654(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_265FAA858();

  free(v1);
}

void *sub_265F946D8()
{
  swift_getKeyPath();
  sub_265F94CF8();
  sub_265FAA848();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_265F94750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265F94CF8();
  sub_265FAA848();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_265F947D8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_265F9421C(v2);
}

void *sub_265F94808()
{
  swift_getKeyPath();
  sub_265F94CF8();
  sub_265FAA848();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_265F94880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265F94CF8();
  sub_265FAA848();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_265F94908(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_265F93F98(v2);
}

uint64_t LocationViewModel.__allocating_init(location:albumArtURL:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_265F94D9C(a2, &v13 - v7);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  v11 = swift_allocObject();
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  sub_265FAA878();
  sub_265F94E0C(a2);
  *(v11 + 16) = a1;
  sub_265F94E74(v8, v11 + OBJC_IVAR____TtC11ShazamKitUI17LocationViewModel_albumArtURL);
  *(v11 + 56) = 0;
  return v11;
}

uint64_t LocationViewModel.__allocating_init(location:artworkView:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_265FAA7D8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(v3 + 48);
  v12 = *(v3 + 52);
  v13 = swift_allocObject();
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  sub_265FAA878();
  *(v13 + 16) = a1;
  sub_265F94E74(v9, v13 + OBJC_IVAR____TtC11ShazamKitUI17LocationViewModel_albumArtURL);
  *(v13 + 56) = a2;
  return v13;
}

uint64_t LocationViewModel.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  sub_265F94E0C(v0 + OBJC_IVAR____TtC11ShazamKitUI17LocationViewModel_albumArtURL);
  v3 = OBJC_IVAR____TtC11ShazamKitUI17LocationViewModel___observationRegistrar;
  v4 = sub_265FAA888();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LocationViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  sub_265F94E0C(v0 + OBJC_IVAR____TtC11ShazamKitUI17LocationViewModel_albumArtURL);
  v3 = OBJC_IVAR____TtC11ShazamKitUI17LocationViewModel___observationRegistrar;
  v4 = sub_265FAA888();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_265F94C98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return LocationViewModel.address.setter(v2, v3);
}

unint64_t sub_265F94CF8()
{
  result = qword_280051D88;
  if (!qword_280051D88)
  {
    type metadata accessor for LocationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051D88);
  }

  return result;
}

uint64_t type metadata accessor for LocationViewModel()
{
  result = qword_280051D90;
  if (!qword_280051D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265F94D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F94E0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265F94E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_265F94EEC()
{
  sub_265F94FF8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_265FAA888();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_265F94FF8()
{
  if (!qword_280051DA0)
  {
    sub_265FAA7D8();
    v0 = sub_265FAB358();
    if (!v1)
    {
      atomic_store(v0, &qword_280051DA0);
    }
  }
}

void sub_265F95054(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_265F93F98(v2);
}

void sub_265F95084()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

unint64_t sub_265F950BC()
{
  result = qword_280051DA8;
  if (!qword_280051DA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280051DA8);
  }

  return result;
}

void sub_265F9510C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_265F9421C(v2);
}

void sub_265F9513C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

void sub_265F951A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051DB8, &qword_265FADFB0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v17 = 0;
  v18 = 1;
  *(swift_allocObject() + 16) = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051DC0, &qword_265FADFB8);
  sub_265F95C0C();
  sub_265FAAED8();

  v13 = v5[2];
  v13(v9, v11, v4);
  *a2 = v12;
  *(a2 + 8) = vdupq_n_s64(0x4044000000000000uLL);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051DE0, &unk_265FADFC8);
  v13((a2 + *(v14 + 48)), v9, v4);
  v15 = v5[1];
  v16 = v12;
  v15(v11, v4);
  v15(v9, v4);
}

uint64_t sub_265F953B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_265FAB288();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_265FAB258();
  v7 = a1;
  v8 = sub_265FAB248();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_265F9DABC(0, 0, v5, &unk_265FADFE0, v9);
}

uint64_t sub_265F954D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051DE8, &qword_265FADFE8);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_265FAB258();
  v4[24] = sub_265FAB248();
  v9 = sub_265FAB228();
  v4[25] = v9;
  v4[26] = v8;

  return MEMORY[0x2822009F8](sub_265F955E4, v9, v8);
}

uint64_t sub_265F955E4()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_265F95720;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051DF0, &unk_265FADFF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265F95A1C;
  v0[13] = &block_descriptor_2;
  v0[14] = v4;
  [v3 presentMediaItem:v2 presentationSettings:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265F95720()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  v4 = *(v1 + 208);
  v5 = *(v1 + 200);
  if (v3)
  {
    v6 = sub_265F95960;
  }

  else
  {
    v6 = sub_265F95850;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_265F95850()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[18];

  sub_265F96694(v2, v3, &qword_280051DE8, &qword_265FADFE8);
  v7 = *(v5 + 48);
  *v6 = *v3;
  v8 = sub_265FAA7D8();
  (*(*(v8 - 8) + 32))(&v6[v7], &v3[v7], v8);
  (*(v4 + 56))(v6, 0, 1, v5);
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_265F95960()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];

  swift_willThrow();

  (*(v4 + 56))(v5, 1, 1, v3);
  v7 = v0[22];
  v6 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_265F95A1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051DE8, &qword_265FADFE8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v17 - v9);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051C68, &qword_265FAD8C0);
    v12 = swift_allocError();
    *v13 = a4;
    v14 = a4;

    return MEMORY[0x282200958](v11, v12);
  }

  else
  {
    *v10 = a2;
    v15 = v10 + *(v7 + 48);
    sub_265FAA7C8();
    sub_265F96694(v10, *(*(v11 + 64) + 40), &qword_280051DE8, &qword_265FADFE8);
    return swift_continuation_throwingResume();
  }
}

void sub_265F95B74(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_265FAABA8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051DB0, &qword_265FADFA8);
  sub_265F951A0(v3, a1 + *(v4 + 44));
}

uint64_t sub_265F95BCC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_265F95C0C()
{
  result = qword_280051DC8;
  if (!qword_280051DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051DC0, &qword_265FADFB8);
    sub_265F92604(&qword_280051DD0, &qword_280051DD8, &qword_265FADFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051DC8);
  }

  return result;
}

uint64_t sub_265F95CC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265F95D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265F8E700;

  return sub_265F954D8(a1, v4, v5, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_265F95DE4(uint64_t *a1, int a2)
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

uint64_t sub_265F95E2C(uint64_t result, int a2, int a3)
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

uint64_t sub_265F95EDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for AlbumArt();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E08, &qword_265FAE0A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = [a1 artworkURL];
  if (v20)
  {
    v21 = v20;
    sub_265FAA7C8();

    v22 = sub_265FAA7D8();
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  }

  else
  {
    v23 = sub_265FAA7D8();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  }

  sub_265F96694(v6, v10, &qword_280051CB0, &unk_265FAE990);
  *&v10[*(v7 + 20)] = 0;
  sub_265FAB0A8();
  sub_265FAAA08();
  sub_265F96630(v10, v17);
  v24 = &v17[*(v11 + 36)];
  v25 = *&v48[39];
  *v24 = *&v48[23];
  *(v24 + 1) = v25;
  *(v24 + 2) = *&v48[55];
  sub_265F96694(v17, v19, &qword_280051E08, &qword_265FAE0A0);
  v26 = sub_265FAAC48();
  LOBYTE(v43[0]) = 1;
  sub_265F962FC(a1, v40);
  *&v39[7] = v40[0];
  *&v39[23] = v40[1];
  *&v39[39] = v40[2];
  *&v39[55] = v40[3];
  v27 = v43[0];
  v28 = v38;
  sub_265F8A480(v19, v38, &qword_280051E08, &qword_265FAE0A0);
  v29 = v37;
  sub_265F8A480(v28, v37, &qword_280051E08, &qword_265FAE0A0);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E10, &qword_265FAE0A8) + 48);
  v41[0] = v26;
  v41[1] = 0;
  v42[0] = v27;
  *&v42[1] = *v39;
  *&v42[17] = *&v39[16];
  *&v42[33] = *&v39[32];
  *&v42[49] = *&v39[48];
  v31 = *&v39[63];
  *&v42[64] = *&v39[63];
  v32 = *v42;
  *v30 = v26;
  *(v30 + 16) = v32;
  v33 = *&v42[16];
  v34 = *&v42[32];
  v35 = *&v42[48];
  *(v30 + 80) = v31;
  *(v30 + 48) = v34;
  *(v30 + 64) = v35;
  *(v30 + 32) = v33;
  sub_265F8A480(v41, v43, &qword_280051E18, &qword_265FAE0B0);
  sub_265F8A4E8(v19, &qword_280051E08, &qword_265FAE0A0);
  v43[0] = v26;
  v43[1] = 0;
  v44 = v27;
  v46 = *&v39[16];
  v47 = *&v39[32];
  *v48 = *&v39[48];
  *&v48[15] = *&v39[63];
  v45 = *v39;
  sub_265F8A4E8(v43, &qword_280051E18, &qword_265FAE0B0);
  return sub_265F8A4E8(v28, &qword_280051E08, &qword_265FAE0A0);
}

uint64_t sub_265F962FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  if (v3)
  {
    v4 = v3;
    sub_265FAB1A8();
  }

  sub_265F8ECBC();
  v5 = sub_265FAAE98();
  v7 = v6;
  v9 = v8;
  sub_265FAADB8();
  v10 = sub_265FAAE48();
  v12 = v11;
  v14 = v13;

  sub_265F8D998(v5, v7, v9 & 1);

  if (qword_2800519E8 != -1)
  {
    swift_once();
  }

  v15 = sub_265FAAE28();
  v41 = v16;
  v42 = v15;
  v40 = v17;
  v43 = v18;
  sub_265F8D998(v10, v12, v14 & 1);

  v19 = [a1 subtitle];
  if (v19)
  {
    v20 = v19;
    sub_265FAB1A8();
  }

  v21 = sub_265FAAE98();
  v23 = v22;
  v25 = v24;
  sub_265FAADD8();
  v26 = sub_265FAAE48();
  v28 = v27;
  v30 = v29;

  sub_265F8D998(v21, v23, v25 & 1);

  if (qword_2800519F0 != -1)
  {
    swift_once();
  }

  v31 = sub_265FAAE28();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_265F8D998(v26, v28, v30 & 1);

  *a2 = v42;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v43;
  *(a2 + 32) = v31;
  *(a2 + 40) = v33;
  *(a2 + 48) = v35 & 1;
  *(a2 + 56) = v37;
  sub_265F966FC(v42, v41, v40 & 1);

  sub_265F966FC(v31, v33, v35 & 1);

  sub_265F8D998(v31, v33, v35 & 1);

  sub_265F8D998(v42, v41, v40 & 1);
}

uint64_t sub_265F96624@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  return sub_265F95EDC(*v1, a1);
}

uint64_t sub_265F96630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumArt();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F96694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_265F966FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_265F96710()
{
  result = qword_280051E20;
  if (!qword_280051E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051E28, &qword_265FAE0B8);
    sub_265F92604(&qword_280051E30, &qword_280051E38, &unk_265FAE0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051E20);
  }

  return result;
}

uint64_t sub_265F967CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_265FAB1A8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_265F96800(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_265FAB488();
  sub_265FAB1C8();
  v6 = sub_265FAB498();

  return sub_265F96908(a1, a2, v6);
}

unint64_t sub_265F96878(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_265FAB1A8();
  sub_265FAB488();
  sub_265FAB1C8();
  v4 = sub_265FAB498();

  return sub_265F969C0(a1, v4);
}

unint64_t sub_265F96908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_265FAB438())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_265F969C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_265FAB1A8();
      v9 = v8;
      if (v7 == sub_265FAB1A8() && v9 == v10)
      {
        break;
      }

      v12 = sub_265FAB438();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_265F96AC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E50, &qword_265FAE0F0);
  v39 = a2;
  result = sub_265FAB3F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_265FAB488();
      sub_265FAB1C8();
      result = sub_265FAB498();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_265F96D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E50, &qword_265FAE0F0);
  v2 = *v0;
  v3 = sub_265FAB3E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_265F96ED4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

unint64_t sub_265F96F20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E70, &qword_265FAE110);
    v3 = sub_265FAB408();
    v4 = a1 + 32;

    while (1)
    {
      sub_265F8A480(v4, &v13, &qword_280051BA0, &qword_265FAD5E8);
      v5 = v13;
      v6 = v14;
      result = sub_265F96800(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_265F976C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265F97050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E80, &qword_265FAE118);
    v3 = sub_265FAB408();
    v4 = a1 + 32;

    while (1)
    {
      sub_265F8A480(v4, &v11, &qword_280051E88, &unk_265FAE120);
      v5 = v11;
      result = sub_265F96878(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_265F976C0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265F97178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E68, &qword_265FAE108);
    v3 = sub_265FAB408();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_265F96878(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265F97270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E50, &qword_265FAE0F0);
    v3 = sub_265FAB408();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_265F96800(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265F97374()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E58, &qword_265FAE0F8);
    inited = swift_initStackObject();
    v3 = MEMORY[0x277D54E68];
    *(inited + 16) = xmmword_265FAE0D0;
    v4 = *v3;
    *(inited + 32) = v4;
    *(inited + 40) = v1;
    v5 = v4;
    v6 = sub_265F97178(inited);
    swift_setDeallocating();
    sub_265F8A4E8(inited + 32, &qword_280051E60, &qword_265FAE100);
    return v6;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_265F97178(v8);
  }
}

void sub_265F97488(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E40, &qword_265FAE0E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265FAE0D0;
  v5 = *MEMORY[0x277D54E58];
  *(inited + 32) = sub_265FAB1A8();
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  v7 = a1;
  v8 = sub_265F97270(inited);
  swift_setDeallocating();
  sub_265F8A4E8(inited + 32, &qword_280051E48, &qword_265FAE0E8);
  sub_265F97374();
  type metadata accessor for SHAnalyticsPayload(0);
  sub_265F97BC0(0, &qword_280051D50, 0x277D82BB8);
  sub_265F97660();
  v9 = sub_265FAB148();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v8;
  sub_265F976D0(v9, sub_265F96ED4, 0, isUniquelyReferenced_nonNull_native, &v13);

  v11 = objc_opt_self();
  v12 = sub_265FAB128();

  [v11 sendEvent:a2 withPayload:v12];
}

unint64_t sub_265F97660()
{
  result = qword_280051B80;
  if (!qword_280051B80)
  {
    type metadata accessor for SHAnalyticsPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051B80);
  }

  return result;
}

_OWORD *sub_265F976C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_265F976D0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_265F96800(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_265F96D68();
      }
    }

    else
    {
      v32 = v51;
      sub_265F96AC4(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_265F96800(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_265F976B8();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_265FAB448();
  __break(1u);
  return result;
}

void sub_265F9796C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051E58, &qword_265FAE0F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265FAE0D0;
  v1 = *MEMORY[0x277D54E60];
  *(inited + 32) = *MEMORY[0x277D54E60];
  sub_265F97BC0(0, &qword_280051E78, 0x277CCABB0);
  v2 = v1;
  *(inited + 40) = sub_265FAB2B8();
  sub_265F97178(inited);
  swift_setDeallocating();
  sub_265F8A4E8(inited + 32, &qword_280051E60, &qword_265FAE100);
  type metadata accessor for SHAnalyticsPayload(0);
  sub_265F97BC0(0, &qword_280051D50, 0x277D82BB8);
  sub_265F97660();
  v3 = sub_265FAB148();

  sub_265F97374();
  v4 = sub_265FAB148();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3;
  sub_265F976D0(v4, sub_265F96ED4, 0, isUniquelyReferenced_nonNull_native, &v9);

  v6 = *MEMORY[0x277D54E48];
  v7 = objc_opt_self();
  v8 = sub_265FAB128();

  [v7 sendEvent:v6 withPayload:v8];
}

uint64_t sub_265F97BC0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_265F97C20()
{
  swift_getObjectType();
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = *&v0[OBJC_IVAR____TtC11ShazamKitUI20AmbientNoMatchUIView_titleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = [objc_opt_self() systemFontOfSize:62.0 weight:*MEMORY[0x277D74420]];
  [v1 setFont_];

  v3 = [objc_opt_self() whiteColor];
  [v1 setTextColor_];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_265FAA708();

  v6 = sub_265FAB178();

  [v1 setText_];

  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051D40, &qword_265FAF190);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_265FAE130;
  v9 = [v1 centerXAnchor];
  v10 = [v0 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v8 + 32) = v11;
  v12 = [v1 centerYAnchor];
  v13 = [v0 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v8 + 40) = v14;
  sub_265F92FA0();
  v15 = sub_265FAB208();

  [v7 activateConstraints_];
}

id sub_265F981A0()
{
  type metadata accessor for Assets();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280054610 = result;
  return result;
}

uint64_t sub_265F981F8()
{
  if (qword_2800519D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280054610;
  result = sub_265FAAF88();
  qword_280054618 = result;
  return result;
}

uint64_t sub_265F982B8()
{
  if (qword_2800519D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280054610;
  result = sub_265FAAF88();
  qword_280054628 = result;
  return result;
}

uint64_t sub_265F98338()
{
  if (qword_2800519D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280054610;
  result = sub_265FAAF88();
  qword_280054630 = result;
  return result;
}

uint64_t sub_265F983B8()
{
  if (qword_2800519D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280054610;
  result = sub_265FAAF88();
  qword_280054638 = result;
  return result;
}

uint64_t sub_265F98438()
{
  if (qword_2800519D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280054610;
  result = sub_265FAAFF8();
  qword_280054640 = result;
  return result;
}

uint64_t sub_265F984F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t *a5)
{
  if (qword_2800519D8 != -1)
  {
    swift_once();
  }

  v9 = qword_280054610;
  v10 = qword_280054610;
  result = a4(a2, a3, v9);
  *a5 = result;
  return result;
}

id sub_265F985A4()
{
  type metadata accessor for AmbientListeningUIView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_265F98634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265F9877C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_265F98698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265F9877C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_265F986FC()
{
  sub_265F9877C();
  sub_265FAAD08();
  __break(1u);
}

unint64_t sub_265F98728()
{
  result = qword_280051E98;
  if (!qword_280051E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051E98);
  }

  return result;
}

unint64_t sub_265F9877C()
{
  result = qword_280051EA0;
  if (!qword_280051EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051EA0);
  }

  return result;
}

uint64_t sub_265F987D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265F98818(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_265F98884@<X0>(char *a1@<X0>, int a2@<W1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EB0, &qword_265FAE328);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EB8, &qword_265FAE330);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v41[-v20];
  sub_265FAB0B8();
  sub_265FAAAF8();
  *v11 = sub_265FAABA8();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EC0, &qword_265FAE338);
  sub_265F98BF0(a1, a2, a3, &v11[*(v22 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051BC8, &qword_265FAD680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265FAD5D0;
  v24 = sub_265FAAD88();
  *(inited + 32) = v24;
  v25 = sub_265FAADA8();
  *(inited + 33) = v25;
  v26 = sub_265FAAD98();
  sub_265FAAD98();
  if (sub_265FAAD98() != v24)
  {
    v26 = sub_265FAAD98();
  }

  sub_265FAAD98();
  if (sub_265FAAD98() != v25)
  {
    v26 = sub_265FAAD98();
  }

  sub_265FAA958();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_265F96694(v11, v19, &qword_280051EB0, &qword_265FAE328);
  v35 = &v19[*(v12 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  sub_265F96694(v19, v21, &qword_280051EB8, &qword_265FAE330);
  sub_265F8A480(v21, v16, &qword_280051EB8, &qword_265FAE330);
  v36 = v47;
  a4[4] = v46;
  a4[5] = v36;
  a4[6] = v48;
  v37 = v43;
  *a4 = v42;
  a4[1] = v37;
  v38 = v45;
  a4[2] = v44;
  a4[3] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EC8, &qword_265FAE340);
  sub_265F8A480(v16, a4 + *(v39 + 48), &qword_280051EB8, &qword_265FAE330);
  sub_265F8A4E8(v21, &qword_280051EB8, &qword_265FAE330);
  return sub_265F8A4E8(v16, &qword_280051EB8, &qword_265FAE330);
}

uint64_t sub_265F98BF0@<X0>(char *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v141 = a2;
  v157 = a1;
  v151 = a4;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051ED0, &qword_265FAE348);
  v149 = *(v150 - 8);
  v5 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v139 = (&v125 - v6);
  v131 = sub_265FAA978();
  v129 = *(v131 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v126 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051ED8, &qword_265FAE350);
  v136 = *(v138 - 8);
  v9 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v134 = &v125 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EE0, &qword_265FAE358);
  v130 = *(v132 - 8);
  v11 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v128 = &v125 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EE8, &qword_265FAE360);
  v135 = *(v137 - 8);
  v13 = *(v135 + 64);
  v14 = MEMORY[0x28223BE20](v137);
  v133 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v127 = &v125 - v16;
  v155 = sub_265FAA7D8();
  v154 = *(v155 - 8);
  v17 = *(v154 + 64);
  v18 = MEMORY[0x28223BE20](v155);
  v125 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v140 = &v125 - v21;
  MEMORY[0x28223BE20](v20);
  v152 = &v125 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EF0, &qword_265FAE368);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v148 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v153 = &v125 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v125 - v30;
  v32 = type metadata accessor for AlbumArt();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EF8, &qword_265FAE370);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v125 - v38;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051F00, &qword_265FAE378);
  v40 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v42 = &v125 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051F08, &qword_265FAE380);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = &v125 - v45;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051F10, &qword_265FAE388);
  v47 = *(*(v145 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v145);
  v156 = &v125 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v125 - v51;
  MEMORY[0x28223BE20](v50);
  v158 = &v125 - v53;
  v147 = a3;
  v54 = [a3 artworkURL];
  if (v54)
  {
    v55 = v54;
    sub_265FAA7C8();

    v56 = *(v154 + 56);
    v57 = v31;
    v58 = 0;
  }

  else
  {
    v56 = *(v154 + 56);
    v57 = v31;
    v58 = 1;
  }

  v59 = v155;
  v56(v57, v58, 1, v155);
  sub_265F96694(v31, v35, &qword_280051CB0, &unk_265FAE990);
  *&v35[*(v32 + 20)] = 0x4022000000000000;
  v60 = sub_265FAAD58();
  sub_265FAB0E8();
  v62 = v61;
  v64 = v63;
  sub_265F96630(v35, v39);
  v65 = &v39[*(v36 + 36)];
  *v65 = 0x7472416D75626C61;
  *(v65 + 1) = 0xE800000000000000;
  v66 = v157;
  *(v65 + 2) = v157;
  *(v65 + 6) = v60;
  *(v65 + 4) = v62;
  *(v65 + 5) = v64;
  v65[48] = 1;
  sub_265FAB0A8();
  sub_265FAAA08();
  sub_265F96694(v39, v42, &qword_280051EF8, &qword_265FAE370);
  v67 = &v42[*(v146 + 36)];
  v68 = v174;
  *v67 = v173;
  *(v67 + 1) = v68;
  *(v67 + 2) = v175;
  sub_265F96694(v42, v46, &qword_280051F00, &qword_265FAE378);
  v69 = &v46[*(v43 + 36)];
  *v69 = 0;
  *(v69 + 4) = 1;
  v70 = sub_265FAADA8();
  sub_265FAA958();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  sub_265F96694(v46, v52, &qword_280051F08, &qword_265FAE380);
  v79 = &v52[*(v145 + 36)];
  *v79 = v70;
  *(v79 + 1) = v72;
  *(v79 + 2) = v74;
  *(v79 + 3) = v76;
  *(v79 + 4) = v78;
  v79[40] = 0;
  sub_265F96694(v52, v158, &qword_280051F10, &qword_265FAE388);
  v146 = sub_265FAAC48();
  v172 = 0;
  v80 = v147;
  v81 = [v147 title];
  if (v81)
  {
    v82 = v81;
    v145 = sub_265FAB1A8();
    v144 = v83;
  }

  else
  {
    v145 = 0;
    v144 = 0xE000000000000000;
  }

  v84 = v152;
  v85 = [v80 subtitle];
  if (v85)
  {
    v86 = v85;
    v143 = sub_265FAB1A8();
    v155 = v87;
  }

  else
  {
    v143 = 0;
    v155 = 0xE000000000000000;
  }

  v142 = v172;
  v88 = [v80 appleMusicURL];
  if (!v88)
  {
    goto LABEL_14;
  }

  v89 = v140;
  v90 = v88;
  sub_265FAA7C8();

  v91 = v154;
  (*(v154 + 32))(v84, v89, v59);
  if ((v141 & 1) == 0)
  {
    (*(v91 + 8))(v84, v59);
LABEL_14:
    v109 = 1;
    goto LABEL_15;
  }

  v92 = (*(v91 + 16))(v125, v84, v59);
  MEMORY[0x28223BE20](v92);
  v93 = v91;
  *(&v125 - 4) = v66;
  *(&v125 - 24) = 1;
  *(&v125 - 2) = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051F28, &qword_265FAE3A0);
  sub_265F99E3C();
  v94 = v128;
  sub_265FAADF8();
  v95 = v126;
  sub_265FAA968();
  v96 = v134;
  v97 = v131;
  sub_265FAB068();
  (*(v129 + 8))(v95, v97);
  sub_265FAA988();
  sub_265F92604(&qword_280051F88, &qword_280051EE0, &qword_265FAE358);
  sub_265F92604(&qword_280051F90, &qword_280051ED8, &qword_265FAE350);
  v98 = v127;
  v99 = v132;
  v100 = v138;
  sub_265FAAF08();
  (*(v136 + 8))(v96, v100);
  (*(v130 + 8))(v94, v99);
  v101 = v135;
  v102 = *(v135 + 16);
  v103 = v59;
  v104 = v133;
  v105 = v137;
  v102(v133, v98, v137);
  v106 = v139;
  *v139 = 0;
  *(v106 + 8) = 1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051F98, &qword_265FAE3D0);
  v102((v106 + *(v107 + 48)), v104, v105);
  v108 = *(v101 + 8);
  v108(v98, v105);
  (*(v93 + 8))(v152, v103);
  v108(v104, v105);
  sub_265F96694(v106, v153, &qword_280051ED0, &qword_265FAE348);
  v109 = 0;
LABEL_15:
  v110 = v153;
  (*(v149 + 56))(v153, v109, 1, v150);
  v111 = v156;
  sub_265F8A480(v158, v156, &qword_280051F10, &qword_265FAE388);
  v112 = v148;
  sub_265F8A480(v110, v148, &qword_280051EF0, &qword_265FAE368);
  v113 = v151;
  sub_265F8A480(v111, v151, &qword_280051F10, &qword_265FAE388);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051F18, &qword_265FAE390);
  v115 = (v113 + *(v114 + 48));
  v116 = v146;
  *&v159 = v146;
  *(&v159 + 1) = 0x3FF0000000000000;
  v117 = v142;
  LOBYTE(v160) = v142;
  *(&v160 + 1) = *v171;
  DWORD1(v160) = *&v171[3];
  v118 = v157;
  *(&v160 + 1) = v157;
  v119 = v145;
  *&v161 = v145;
  v120 = v144;
  *(&v161 + 1) = v144;
  v121 = v143;
  *&v162 = v143;
  *(&v162 + 1) = v155;
  v122 = v160;
  *v115 = v159;
  v115[1] = v122;
  v123 = v162;
  v115[2] = v161;
  v115[3] = v123;
  sub_265F8A480(v112, v113 + *(v114 + 64), &qword_280051EF0, &qword_265FAE368);
  sub_265F8A480(&v159, v163, &qword_280051F20, &qword_265FAE398);
  sub_265F8A4E8(v110, &qword_280051EF0, &qword_265FAE368);
  sub_265F8A4E8(v158, &qword_280051F10, &qword_265FAE388);
  sub_265F8A4E8(v112, &qword_280051EF0, &qword_265FAE368);
  v163[0] = v116;
  v163[1] = 0x3FF0000000000000;
  v164 = v117;
  *v165 = *v171;
  *&v165[3] = *&v171[3];
  v166 = v118;
  v167 = v119;
  v168 = v120;
  v169 = v121;
  v170 = v155;
  sub_265F8A4E8(v163, &qword_280051F20, &qword_265FAE398);
  return sub_265F8A4E8(v156, &qword_280051F10, &qword_265FAE388);
}

uint64_t sub_265F99BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051FA0, &qword_265FAE3D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  if (qword_280051A10 != -1)
  {
    swift_once();
  }

  v8 = *MEMORY[0x277CE1020];
  v9 = sub_265FAAFD8();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = sub_265FAAFB8();
  sub_265F8A4E8(v7, &qword_280051FA0, &qword_265FAE3D8);
  v12 = sub_265FAAD68();
  sub_265FAB0E8();
  v14 = v13;
  v16 = v15;
  LODWORD(v8) = sub_265FAAD48();
  v17 = sub_265FAAF78();
  result = swift_getKeyPath();
  *a2 = v11;
  *(a2 + 8) = 0xD000000000000014;
  *(a2 + 16) = 0x8000000265FAFD30;
  *(a2 + 24) = a1;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16;
  *(a2 + 56) = 1;
  *(a2 + 60) = v8;
  *(a2 + 64) = result;
  *(a2 + 72) = v17;
  return result;
}

uint64_t sub_265F99DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_265FAAC48();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051EA8, &qword_265FAE320);
  return sub_265F98884(v3, v4, v5, (a1 + *(v6 + 44)));
}

uint64_t sub_265F99E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_265F99BAC(*(v1 + 16), a1);
}

unint64_t sub_265F99E3C()
{
  result = qword_280051F30;
  if (!qword_280051F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051F28, &qword_265FAE3A0);
    sub_265F99EF4();
    sub_265F92604(&qword_280051F78, &qword_280051F80, &qword_265FAE3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051F30);
  }

  return result;
}

unint64_t sub_265F99EF4()
{
  result = qword_280051F38;
  if (!qword_280051F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051F40, &qword_265FAE3A8);
    sub_265F99FAC();
    sub_265F92604(&qword_280051F68, &qword_280051F70, &qword_265FAE3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051F38);
  }

  return result;
}

unint64_t sub_265F99FAC()
{
  result = qword_280051F48;
  if (!qword_280051F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051F50, &qword_265FAE3B0);
    sub_265F92604(&qword_280051F58, &qword_280051F60, &qword_265FAE3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051F48);
  }

  return result;
}

uint64_t sub_265F9A064@<X0>(uint64_t *a1@<X8>)
{
  result = sub_265FAAB08();
  *a1 = result;
  return result;
}

uint64_t sub_265F9A090(uint64_t *a1)
{
  v1 = *a1;

  return sub_265FAAB18();
}

uint64_t sub_265F9A0BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_265FAAB08();
  *a1 = result;
  return result;
}

uint64_t sub_265F9A0E8(uint64_t *a1)
{
  v1 = *a1;

  return sub_265FAAB18();
}

uint64_t AmbientMatchingFlowView.viewModel.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t AmbientMatchingFlowView.$viewModel.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for MatchingFlowViewModel();
  v4 = sub_265F9A204();

  return MEMORY[0x282130E30](v1, v2, v3, v4);
}

unint64_t sub_265F9A204()
{
  result = qword_280051FB8;
  if (!qword_280051FB8)
  {
    type metadata accessor for MatchingFlowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051FB8);
  }

  return result;
}

uint64_t AmbientMatchingFlowView.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  a1[2] = 0;
  type metadata accessor for MatchingFlowViewModel();
  sub_265F9A204();
  result = sub_265FAAA68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AmbientMatchingFlowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = sub_265FAAC38();
  v17 = 1;
  sub_265F9A3D8(&v13);
  v18 = v13;
  v19 = v14;
  v20[0] = v15[0];
  *(v20 + 10) = *(v15 + 10);
  v21[0] = v13;
  v21[1] = v14;
  v22[0] = v15[0];
  *(v22 + 10) = *(v15 + 10);
  sub_265F9A800(&v18, &v12);
  sub_265F9A870(v21);
  *&v16[7] = v18;
  *&v16[23] = v19;
  *&v16[39] = v20[0];
  *&v16[49] = *(v20 + 10);
  v7 = v17;
  v8 = swift_allocObject();
  v9 = *v16;
  *(a1 + 33) = *&v16[16];
  v10 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v10;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 81) = v16[64];
  *(a1 + 17) = v9;
  *(a1 + 88) = sub_265F9A9A8;
  *(a1 + 96) = v8;
}

__n128 sub_265F9A3D8@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265FAA918();

  if (v10)
  {
    if (v10 == 1)
    {
      sub_265F93654(v8, v9, 1);
    }

    else
    {
      v13[24] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052010, &qword_265FAE520);
      sub_265F98728();
      sub_265F9AD18(&qword_280052008, &qword_280052010, &qword_265FAE520, sub_265F9ACC4);
      sub_265FAAD38();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051FF0, &qword_265FAE510);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051FF8, &qword_265FAE518);
    sub_265F9AC0C();
    sub_265F9AD18(&qword_280052020, &qword_280051FF8, &qword_265FAE518, sub_265F9AD9C);
    sub_265FAAD38();
  }

  else
  {
    type metadata accessor for AmbientMatchActionHandler();
    v2 = swift_allocObject();
    *(v2 + 16) = v8 & 1;
    *(v2 + 24) = v9;
    sub_265F93638(v8, v9, 0);
    sub_265F93638(v8, v9, 0);
    v4 = v9;

    sub_265F8C0D8(sub_265F9A8D8);
    sub_265F8C0D8(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052010, &qword_265FAE520);
    sub_265F98728();
    sub_265F9AD18(&qword_280052008, &qword_280052010, &qword_265FAE520, sub_265F9ACC4);
    sub_265FAAD38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051FF0, &qword_265FAE510);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051FF8, &qword_265FAE518);
    sub_265F9AC0C();
    sub_265F9AD18(&qword_280052020, &qword_280051FF8, &qword_265FAE518, sub_265F9AD9C);
    sub_265FAAD38();
    sub_265F93654(v8, v9, 0);

    sub_265F8C0E8(sub_265F9A8D8);
    sub_265F8C0E8(0);
    v11 = v5;
    v12 = v6;
    *v13 = *v7;
    *&v13[10] = *&v7[10];
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = *v13;
  result = *&v13[10];
  *(a1 + 42) = *&v13[10];
  return result;
}

uint64_t sub_265F9A800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051FC0, &qword_265FAE420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F9A870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051FC0, &qword_265FAE420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265F9A8E8(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler;
  result = swift_beginAccess();
  v8 = *v6;
  if (*v6)
  {
    v9 = *(v6 + 8);

    v8(v10, a1, a2);
    return sub_265F8C0E8(v8);
  }

  return result;
}

uint64_t sub_265F9A970()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265F9A9E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_265F9AA24(uint64_t a1, int a2)
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

uint64_t sub_265F9AA6C(uint64_t result, int a2, int a3)
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

unint64_t sub_265F9AAC0()
{
  result = qword_280051FC8;
  if (!qword_280051FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051FD0, &qword_265FAE4B8);
    sub_265F9AB4C();
    sub_265F9ABB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051FC8);
  }

  return result;
}

unint64_t sub_265F9AB4C()
{
  result = qword_280051FD8;
  if (!qword_280051FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051FE0, &qword_265FAE4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051FD8);
  }

  return result;
}

unint64_t sub_265F9ABB0()
{
  result = qword_280051FE8;
  if (!qword_280051FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280051FE8);
  }

  return result;
}

unint64_t sub_265F9AC0C()
{
  result = qword_280052000;
  if (!qword_280052000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280051FF0, &qword_265FAE510);
    sub_265F98728();
    sub_265F9AD18(&qword_280052008, &qword_280052010, &qword_265FAE520, sub_265F9ACC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052000);
  }

  return result;
}

unint64_t sub_265F9ACC4()
{
  result = qword_280052018;
  if (!qword_280052018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052018);
  }

  return result;
}

uint64_t sub_265F9AD18(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_265F9AD9C()
{
  result = qword_280052028;
  if (!qword_280052028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052028);
  }

  return result;
}

uint64_t MediaLibrary.init()@<X0>(uint64_t a1@<X8>)
{
  result = sub_265F9AE50();
  *a1 = sub_265F9BC58;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_265F9AE58()
{
  v0 = type metadata accessor for MediaLibraryController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052078, &qword_265FAEAF0);
  sub_265FAA8D8();
  return v3;
}

uint64_t MediaLibrary.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052030, &qword_265FAE528);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052038, &qword_265FAE530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - v8);
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 16);
  type metadata accessor for MediaLibraryController();
  sub_265F9BA54(&qword_280052040, type metadata accessor for MediaLibraryController);
  sub_265FAA998();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265FAA918();

  if (v18)
  {
    *v9 = v18;
    swift_storeEnumTagMultiPayload();
    sub_265F9B8E0();
    sub_265F9B934();
    return sub_265FAAD38();
  }

  else
  {
    sub_265FAA9B8();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v11;
    *(v14 + 32) = v12;
    v15 = &v5[*(v2 + 36)];
    v16 = *(sub_265FAAA58() + 20);
    sub_265F9B868();
    sub_265FAB268();
    *v15 = &unk_265FAE588;
    *(v15 + 1) = v14;
    sub_265F9B870(v5, v9);
    swift_storeEnumTagMultiPayload();
    sub_265F9B8E0();
    sub_265F9B934();
    sub_265FAAD38();
    return sub_265F9BA9C(v5);
  }
}

uint64_t sub_265F9B178(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 160) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = sub_265FAB258();
  *(v3 + 88) = sub_265FAB248();
  v5 = sub_265FAB228();
  *(v3 + 96) = v5;
  *(v3 + 104) = v4;

  return MEMORY[0x2822009F8](sub_265F9B218, v5, v4);
}

uint64_t sub_265F9B218()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 160);
  v4 = *(v0 + 64);
  type metadata accessor for MediaLibraryController();
  sub_265F9BA54(&qword_280052040, type metadata accessor for MediaLibraryController);
  *(v0 + 112) = sub_265FAA998();
  *(v0 + 120) = sub_265FAB248();
  v6 = sub_265FAB228();
  *(v0 + 128) = v6;
  *(v0 + 136) = v5;

  return MEMORY[0x2822009F8](sub_265F9B318, v6, v5);
}

uint64_t sub_265F9B318()
{
  v1 = v0[14];
  sub_265F9FD6C((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_265F9B448;

  return v8(v2, v3);
}

uint64_t sub_265F9B448(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = a1;

  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_265F9B570, v5, v4);
}

uint64_t sub_265F9B570()
{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = v1;
  sub_265FAA928();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x2822009F8](sub_265F9B61C, v4, v5);
}

uint64_t sub_265F9B61C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265F9B680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265FAA918();

  *a2 = v5;
  return result;
}

uint64_t sub_265F9B704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_265FAA928();
}

uint64_t sub_265F9B784()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_265F9AE50();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_265F9B7C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_265F8E700;

  return sub_265F9B178(v2, v3, v4);
}

uint64_t sub_265F9B870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052030, &qword_265FAE528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265F9B8E0()
{
  result = qword_280052048;
  if (!qword_280052048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052048);
  }

  return result;
}

unint64_t sub_265F9B934()
{
  result = qword_280052050;
  if (!qword_280052050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052030, &qword_265FAE528);
    sub_265F9B9F0();
    sub_265F9BA54(&qword_280051A50, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052050);
  }

  return result;
}

unint64_t sub_265F9B9F0()
{
  result = qword_280052058;
  if (!qword_280052058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052060, &qword_265FAE590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052058);
  }

  return result;
}

uint64_t sub_265F9BA54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265F9BA9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052030, &qword_265FAE528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265F9BB2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_265F9BB74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_265F9BBCC()
{
  result = qword_280052068;
  if (!qword_280052068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052070, &qword_265FAE678);
    sub_265F9B8E0();
    sub_265F9B934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052068);
  }

  return result;
}

uint64_t LocationView.init(viewModel:strokeColor:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  type metadata accessor for LocationViewModel();
  result = sub_265FAB008();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = a1;
  return result;
}

uint64_t LocationView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  *a1 = sub_265F9BEFC;
  a1[1] = v6;
}

uint64_t sub_265F9BD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_265FAAA28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  *a5 = sub_265FAB0A8();
  a5[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052090, &qword_265FAE738);
  sub_265F9BF24(a2, a3, a4, a5 + *(v14 + 44));
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  (*(v11 + 32))(&v16[v15], &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v17 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052098, &qword_265FAE750) + 36));
  LODWORD(v10) = *(sub_265FAAA58() + 20);

  result = sub_265FAB268();
  *v17 = &unk_265FAE748;
  v17[1] = v16;
  return result;
}

uint64_t sub_265F9BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v88 = a4;
  v81 = sub_265FAAAE8();
  v6 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520A8, &qword_265FAE768);
  v8 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520B0, &qword_265FAE770);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v87 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v78 - v15;
  v16 = sub_265FAAFA8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520B8, &qword_265FAE778);
  v21 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v23 = &v78 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520C0, &qword_265FAE780);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v78 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520C8, &qword_265FAE788);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v82 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v89 = &v78 - v32;
  *&v79 = a1;
  *&v92 = a1;
  *(&v92 + 1) = a2;
  *&v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520A0, &qword_265FAE758);
  sub_265FAB018();
  v33 = v95;
  swift_getKeyPath();
  *&v92 = v33;
  sub_265F9D530(&qword_280051D88, type metadata accessor for LocationViewModel);
  sub_265FAA848();

  v34 = *(v33 + 40);
  v35 = v34;

  if (v34)
  {
    v36 = v35;
    sub_265FAAF98();
    (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
    v37 = sub_265FAAFE8();

    (*(v17 + 8))(v20, v16);
    *&v92 = v37;
    sub_265FAAF18();

    sub_265F8A480(v23, v27, &qword_2800520B8, &qword_265FAE778);
    swift_storeEnumTagMultiPayload();
    sub_265F9D474();
    sub_265FAAD38();

    sub_265F8A4E8(v23, &qword_2800520B8, &qword_265FAE778);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_265F9D474();
    sub_265FAAD38();
  }

  v38 = v84;
  sub_265F9C87C(v79, v80, &v95);
  v39 = v97;
  sub_265FAB0A8();
  sub_265FAAA08();
  v91 = v39;
  *&v90[7] = v92;
  *&v90[23] = v93;
  *&v90[39] = v94;
  v40 = sub_265FAAC28();
  v80 = v95;
  v79 = v96;
  v41 = v91;
  v42 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520E0, &qword_265FAE7B8) + 36)];
  v43 = v81;
  v44 = *MEMORY[0x277CE0118];
  v45 = *(*(v40 - 8) + 104);
  v45(&v42[*(v81 + 20)], v44, v40);
  __asm { FMOV            V0.2D, #4.0 }

  v78 = _Q0;
  *v42 = _Q0;
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520E8, &qword_265FAE7C0) + 36)] = 256;
  v51 = v79;
  *v10 = v80;
  *(v10 + 1) = v51;
  v10[32] = v41;
  v52 = *&v90[16];
  *(v10 + 33) = *v90;
  *(v10 + 49) = v52;
  *(v10 + 65) = *&v90[32];
  *(v10 + 10) = *&v90[47];
  v53 = v83;
  v45(&v83[*(v43 + 20)], v44, v40);
  *v53 = v78;
  sub_265FAA9A8();
  v54 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520F0, &qword_265FAE7C8) + 36)];
  sub_265F9D578(v53, v54);
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520F8, &qword_265FAE7D0) + 36);
  v56 = v96;
  *v55 = v95;
  *(v55 + 16) = v56;
  *(v55 + 32) = v97;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052100, &qword_265FAE7D8);
  *(v54 + *(v57 + 52)) = v38;
  *(v54 + *(v57 + 56)) = 256;

  v58 = sub_265FAB0A8();
  v60 = v59;
  sub_265F9D5DC(v53, MEMORY[0x277CDFC08]);
  v61 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052108, &qword_265FAE7E0) + 36));
  *v61 = v58;
  v61[1] = v60;
  v62 = sub_265FAB0A8();
  v64 = v63;
  v65 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052110, &qword_265FAE7E8) + 36));
  *v65 = v62;
  v65[1] = v64;
  LOBYTE(v54) = sub_265FAAD78();
  sub_265FAA958();
  v66 = &v10[*(v85 + 36)];
  *v66 = v54;
  *(v66 + 1) = v67;
  *(v66 + 2) = v68;
  *(v66 + 3) = v69;
  *(v66 + 4) = v70;
  v66[40] = 0;
  sub_265F9D63C();
  v71 = v86;
  sub_265FAAF18();
  sub_265F8A4E8(v10, &qword_2800520A8, &qword_265FAE768);
  v72 = v89;
  v73 = v82;
  sub_265F8A480(v89, v82, &qword_2800520C8, &qword_265FAE788);
  v74 = v87;
  sub_265F8A480(v71, v87, &qword_2800520B0, &qword_265FAE770);
  v75 = v88;
  sub_265F8A480(v73, v88, &qword_2800520C8, &qword_265FAE788);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052188, &qword_265FAE810);
  sub_265F8A480(v74, v75 + *(v76 + 48), &qword_2800520B0, &qword_265FAE770);
  sub_265F8A4E8(v71, &qword_2800520B0, &qword_265FAE770);
  sub_265F8A4E8(v72, &qword_2800520C8, &qword_265FAE788);
  sub_265F8A4E8(v74, &qword_2800520B0, &qword_265FAE770);
  return sub_265F8A4E8(v73, &qword_2800520C8, &qword_265FAE788);
}

__n128 sub_265F9C87C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_265FAAFA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = a1;
  *(&v22 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520A0, &qword_265FAE758);
  sub_265FAB018();
  v11 = *(v19 + 56);

  if (v11)
  {
    *&v19 = v11;
    BYTE8(v19) = 0;

    sub_265FAAD38();
    *&v19 = v22;
    *(&v19 + 1) = BYTE8(v22);
    v20 = 0uLL;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052168, &qword_265FAE808);
    sub_265F9D9D4();
    sub_265F9DA58();
    sub_265FAAD38();
  }

  else
  {
    *&v22 = a1;
    *(&v22 + 1) = a2;
    sub_265FAB018();
    v12 = v19;
    swift_getKeyPath();
    *&v22 = v12;
    sub_265F9D530(&qword_280051D88, type metadata accessor for LocationViewModel);
    sub_265FAA848();

    v13 = *(v12 + 48);
    v14 = v13;

    if (v13)
    {
      v15 = v14;
      sub_265FAAF98();
      (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
      v16 = sub_265FAAFE8();

      (*(v7 + 8))(v10, v6);
      *&v19 = v16;
      BYTE8(v19) = 1;

      sub_265FAAD38();
      *&v19 = v22;
      *(&v19 + 1) = BYTE8(v22);
      v20 = 0uLL;
      v21 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052168, &qword_265FAE808);
      sub_265F9D9D4();
      sub_265F9DA58();
      sub_265FAAD38();
    }

    else
    {
      v19 = xmmword_265FAE680;
      v20 = vdupq_n_s64(0x3FE3333333333333uLL);
      v21 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052168, &qword_265FAE808);
      sub_265F9D9D4();
      sub_265F9DA58();
      sub_265FAAD38();
    }
  }

  result = v23;
  v18 = v24;
  *a3 = v22;
  *(a3 + 16) = result;
  *(a3 + 32) = v18;
  return result;
}

uint64_t sub_265F9CC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  v5 = *(*(type metadata accessor for LocationViewPopulator() - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_265FAB258();
  v4[9] = sub_265FAB248();
  v7 = sub_265FAB228();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_265F9CD24, v7, v6);
}

uint64_t sub_265F9CD24()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v0[2] = v0[5];
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800520A0, &qword_265FAE758);
  sub_265FAB018();
  v4 = v0[4];
  type metadata accessor for LocationViewModel();
  sub_265F9D530(&qword_280051D88, type metadata accessor for LocationViewModel);
  sub_265FAB088();
  sub_265FAAA18();
  v0[12] = v5;
  v0[13] = v6;

  return MEMORY[0x2822009F8](sub_265F9CE20, 0, 0);
}

uint64_t sub_265F9CE20()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v0[14] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_265F9CF14;

  return MEMORY[0x282200600]();
}

uint64_t sub_265F9CF14()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265F9D02C, 0, 0);
}

uint64_t sub_265F9D044()
{
  v2 = v0[8];
  v1 = v0[9];

  sub_265F9D5DC(v2, type metadata accessor for LocationViewPopulator);

  v3 = v0[1];

  return v3();
}

uint64_t sub_265F9D0C8@<X0>(uint64_t (**a1)@<X0>(uint64_t@<X0>, uint64_t *@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  *a1 = sub_265F9DAB8;
  a1[1] = v6;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265F9D1E8()
{
  v1 = sub_265FAAA28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265F9D2BC()
{
  v2 = *(sub_265FAAA28() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_265F8E700;

  return sub_265F9CC5C(v4, v5, v6, v0 + v3);
}

uint64_t sub_265F9D3A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_265F92278;

  return sub_265F8F2A4(v7, v8, a1, a2, v6);
}

unint64_t sub_265F9D474()
{
  result = qword_2800520D0;
  if (!qword_2800520D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800520B8, &qword_265FAE778);
    sub_265F9D530(&qword_2800520D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800520D0);
  }

  return result;
}

uint64_t sub_265F9D530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265F9D578(uint64_t a1, uint64_t a2)
{
  v4 = sub_265FAAAE8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F9D5DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_265F9D63C()
{
  result = qword_280052118;
  if (!qword_280052118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800520A8, &qword_265FAE768);
    sub_265F9D6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052118);
  }

  return result;
}

unint64_t sub_265F9D6C8()
{
  result = qword_280052120;
  if (!qword_280052120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800520F0, &qword_265FAE7C8);
    sub_265F9D780();
    sub_265F92604(&qword_280052180, &qword_280052110, &qword_265FAE7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052120);
  }

  return result;
}

unint64_t sub_265F9D780()
{
  result = qword_280052128;
  if (!qword_280052128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800520E0, &qword_265FAE7B8);
    sub_265F9D838();
    sub_265F92604(&qword_280052178, &qword_2800520E8, &qword_265FAE7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052128);
  }

  return result;
}

unint64_t sub_265F9D838()
{
  result = qword_280052130;
  if (!qword_280052130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052138, &qword_265FAE7F0);
    sub_265F9D8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052130);
  }

  return result;
}

unint64_t sub_265F9D8C4()
{
  result = qword_280052140;
  if (!qword_280052140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052148, &qword_265FAE7F8);
    sub_265F9D948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052140);
  }

  return result;
}

unint64_t sub_265F9D948()
{
  result = qword_280052150;
  if (!qword_280052150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052158, &qword_265FAE800);
    sub_265F9D9D4();
    sub_265F9DA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052150);
  }

  return result;
}

unint64_t sub_265F9D9D4()
{
  result = qword_280052160;
  if (!qword_280052160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052168, &qword_265FAE808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052160);
  }

  return result;
}

unint64_t sub_265F9DA58()
{
  result = qword_280052170;
  if (!qword_280052170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052170);
  }

  return result;
}

uint64_t sub_265F9DABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_265F9F0F8(a3, v27 - v11);
  v13 = sub_265FAB288();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_265F8A4E8(v12, &qword_280051CA8, &unk_265FAD9D0);
  }

  else
  {
    sub_265FAB278();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_265FAB228();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_265FAB1B8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800521B0, &qword_265FAE9D8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_265F8A4E8(a3, &qword_280051CA8, &unk_265FAD9D0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265F8A4E8(a3, &qword_280051CA8, &unk_265FAD9D0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800521B0, &qword_265FAE9D8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_265F9DDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_265F9F0F8(a3, v27 - v11);
  v13 = sub_265FAB288();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_265F8A4E8(v12, &qword_280051CA8, &unk_265FAD9D0);
  }

  else
  {
    sub_265FAB278();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_265FAB228();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_265FAB1B8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_265F8A4E8(a3, &qword_280051CA8, &unk_265FAD9D0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265F8A4E8(a3, &qword_280051CA8, &unk_265FAD9D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_265F9E0B0(void *a1)
{
  v50 = sub_265FAA828();
  v48 = *(v50 - 1);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052190, &qword_265FAE988);
  v49 = *(v47 - 8);
  v6 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CB0, &unk_265FAE990);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - v17;
  v19 = *v1;
  v20 = *(v1 + 1);
  v21 = *(v1 + 2);
  v22 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v21 action:sel_displayMatchedMediaItemAction];
  [a1 addGestureRecognizer_];

  v23 = sub_265FAB288();
  v24 = 1;
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  sub_265FAB258();
  v25 = a1;
  v26 = v20;

  v27 = sub_265FAB248();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  *(v28 + 32) = v19;
  *(v28 + 40) = v26;
  *(v28 + 48) = v21;
  *(v28 + 56) = v25;
  sub_265F9DDC0(0, 0, v18, &unk_265FAE9A8, v28);

  v30 = *&v25[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_titleLabel];
  v31 = [v26 title];
  v45 = v30;
  [v30 setText_];

  v32 = *&v25[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_artistLabel];
  v33 = [v26 artist];
  v44 = v32;
  [v32 setText_];

  v34 = *&v25[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_appleMusicButton];
  v35 = [v26 appleMusicURL];
  if (v35)
  {
    sub_265FAA7C8();

    v24 = 0;
  }

  v36 = sub_265FAA7D8();
  (*(*(v36 - 8) + 56))(v14, v24, 1, v36);
  sub_265F8A4E8(v14, &qword_280051CB0, &unk_265FAE990);
  [v34 setHidden_];
  [v34 addTarget:v21 action:sel_appleMusicButtonAction forControlEvents:64];
  v37 = *&v25[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountLabel];
  v51 = [v26 shazamCount];
  sub_265FAA808();
  sub_265F9F040();
  v38 = v9;
  sub_265FAA738();
  sub_265FAA818();
  v39 = v46;
  v40 = v47;
  MEMORY[0x266773DC0](v5, v47);
  (*(v48 + 8))(v5, v50);
  v50 = v34;
  v41 = *(v49 + 8);
  v41(v38, v40);
  sub_265F9F094();
  sub_265FAB368();
  v41(v39, v40);
  v42 = sub_265FAB178();

  [v37 setText_];

  [v37 setHidden_];
  [v50 setAlpha_];
  [*&v25[OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_shazamCountStackView] setAlpha_];
  [v45 setAlpha_];
  return [v44 setAlpha_];
}

uint64_t sub_265F9E6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a5;
  v7[3] = a7;
  v8 = sub_265FAA7D8();
  v7[4] = v8;
  v9 = *(v8 - 8);
  v7[5] = v9;
  v10 = *(v9 + 64) + 15;
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  sub_265FAB258();
  v7[8] = sub_265FAB248();
  v12 = sub_265FAB228();
  v7[9] = v12;
  v7[10] = v11;

  return MEMORY[0x2822009F8](sub_265F9E7B8, v12, v11);
}

uint64_t sub_265F9E7B8()
{
  v1 = [*(v0 + 16) artworkURL];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = v1;
    sub_265FAA7C8();

    (*(v5 + 32))(v3, v2, v4);
    *(v0 + 88) = *(v6 + OBJC_IVAR____TtC11ShazamKitUI18AmbientMatchUIView_albumArtImageView);
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_265F9E930;
    v9 = *(v0 + 56);

    return sub_265F9123C(v9);
  }

  else
  {
    v11 = *(v0 + 64);

    v13 = *(v0 + 48);
    v12 = *(v0 + 56);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_265F9E930(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_265F9EB24;
  }

  else
  {
    v4[13] = a1;
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_265F9EA5C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_265F9EA5C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  [*(v0 + 88) setImage_];

  sub_265FA64A4();
  sub_265FA692C();
  (*(v5 + 8))(v3, v4);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_265F9EB24()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  [*(v0 + 88) setImage_];
  sub_265FA64A4();
  sub_265FA692C();
  (*(v4 + 8))(v2, v3);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);

  v8 = *(v0 + 8);

  return v8();
}

id sub_265F9EBDC()
{
  type metadata accessor for AmbientMatchUIView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_265F9EC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265F9F318();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_265F9EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265F9F318();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_265F9ECE4()
{
  sub_265F9F318();
  sub_265FAAD08();
  __break(1u);
}

uint64_t sub_265F9ED24(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_265FAA7D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *(a1 + 24);

  v14 = [v13 *a3];
  if (v14)
  {
    v15 = v14;
    sub_265FAA7C8();

    (*(v6 + 32))(v12, v10, v5);
    sub_265F8B228(v12);
    (*(v6 + 8))(v12, v5);
  }

  else
  {
  }
}

uint64_t sub_265F9EEA8()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_265F9EF18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265F9EF68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_265F8E700;

  return sub_265F9E6B8(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_265F9F040()
{
  result = qword_280052198;
  if (!qword_280052198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052198);
  }

  return result;
}

unint64_t sub_265F9F094()
{
  result = qword_2800521A0;
  if (!qword_2800521A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052190, &qword_265FAE988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800521A0);
  }

  return result;
}

uint64_t sub_265F9F0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F9F168(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265F9F520;

  return v7(a1);
}

uint64_t sub_265F9F260(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265F92278;

  return sub_265F9F168(a1, v5);
}

unint64_t sub_265F9F318()
{
  result = qword_2800521A8;
  if (!qword_2800521A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800521A8);
  }

  return result;
}

uint64_t sub_265F9F36C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265F9F3A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265F92278;

  return sub_265F9104C(a1, v5);
}

uint64_t sub_265F9F45C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265F8E700;

  return sub_265F9104C(a1, v5);
}

uint64_t sub_265F9F550@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_265FAABE8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_265FAABF8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = objc_opt_self();
  v4 = [v38 bundleForClass_];
  v5 = sub_265FAAE78();
  v7 = v6;
  v9 = v8;
  sub_265FAADD8();
  v10 = sub_265FAAE48();
  v12 = v11;
  v14 = v13;

  sub_265F8D998(v5, v7, v9 & 1);

  if (qword_2800519F8 != -1)
  {
    swift_once();
  }

  v40 = sub_265FAAE28();
  v41 = v15;
  v17 = v16;
  v39 = v18;
  sub_265F8D998(v10, v12, v14 & 1);

  sub_265FAABD8();
  sub_265FAABC8();
  sub_265FAABB8();
  sub_265FAABC8();
  sub_265FAAC08();
  v19 = [v38 bundleForClass_];
  v20 = sub_265FAAE78();
  v22 = v21;
  v24 = v23;
  sub_265FAADD8();
  v25 = sub_265FAAE48();
  v27 = v26;
  v29 = v28;

  sub_265F8D998(v20, v22, v24 & 1);

  if (qword_280051A00 != -1)
  {
    swift_once();
  }

  v30 = sub_265FAAE28();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_265F8D998(v25, v27, v29 & 1);

  *a1 = v40;
  *(a1 + 8) = v17;
  *(a1 + 16) = v39 & 1;
  *(a1 + 24) = v41;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v30;
  *(a1 + 56) = v32;
  *(a1 + 64) = v34 & 1;
  *(a1 + 72) = v36;
  sub_265F966FC(v40, v17, v39 & 1);

  sub_265F966FC(v30, v32, v34 & 1);

  sub_265F8D998(v30, v32, v34 & 1);

  sub_265F8D998(v40, v17, v39 & 1);
}

double sub_265F9F998@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_265FAABA8();
  v16 = 1;
  sub_265F9F550(&v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_265F9FA80(&v17, &v9);
  sub_265F9FAF0(v22);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a1 + 17) = *v15;
  v8 = v16;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 96) = *&v15[79];
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_265F9FA80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800521B8, &qword_265FAEA78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265F9FAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800521B8, &qword_265FAEA78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_265F9FB5C()
{
  result = qword_2800521C0;
  if (!qword_2800521C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800521C8, &unk_265FAEA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800521C0);
  }

  return result;
}

uint64_t sub_265F9FBC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265FAA918();

  return v1;
}

uint64_t sub_265F9FC50()
{
  sub_265FAB118();
  *(v0 + 16) = sub_265FAB108();
  sub_265FAB258();
  *(v0 + 24) = sub_265FAB248();
  v2 = sub_265FAB228();

  return MEMORY[0x2822009F8](sub_265F9FCF8, v2, v1);
}

uint64_t sub_265F9FCF8()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_265FAB0F8();

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_265F9FD6C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_265FA00E4(v1 + 16, &v4);
  if (v5)
  {
    return sub_265FA0228(&v4, a1);
  }

  sub_265FA007C(&v4);
  *(a1 + 24) = &type metadata for MediaLibraryLoader;
  *(a1 + 32) = &off_2877AA850;
  sub_265FA0154(a1, &v4);
  swift_beginAccess();
  sub_265FA01B8(&v4, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_265F9FE1C()
{
  sub_265FA007C(v0 + 16);
  v1 = OBJC_IVAR____TtC11ShazamKitUI22MediaLibraryController__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800521F8, &qword_265FAEB38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for MediaLibraryController()
{
  result = qword_2800521D8;
  if (!qword_2800521D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265F9FF20()
{
  sub_265F9FFBC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_265F9FFBC()
{
  if (!qword_2800521E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052078, &qword_265FAEAF0);
    v0 = sub_265FAA938();
    if (!v1)
    {
      atomic_store(v0, &qword_2800521E8);
    }
  }
}

uint64_t sub_265FA002C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_265FAA8C8();
  *a1 = result;
  return result;
}

uint64_t sub_265FA007C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800521F0, &qword_265FAEB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265FA00E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800521F0, &qword_265FAEB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FA0154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_265FA01B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800521F0, &qword_265FAEB30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FA0228(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_265FA0258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_265F9F0F8(a3, v24 - v10);
  v12 = sub_265FAB288();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265FA3484(v11);
  }

  else
  {
    sub_265FAB278();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_265FAB228();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_265FAB1B8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_265FA3484(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265FA3484(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t MatchingFlowViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_265FAA8D8();
  v4 = (v3 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v3 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_cancellationHandler);
  *v5 = 0;
  v5[1] = 0;
  return v3;
}

uint64_t MatchingFlowView.viewModel.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MatchingFlowView.$viewModel.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for MatchingFlowViewModel();
  v4 = sub_265F9A204();

  return MEMORY[0x282130E30](v1, v2, v3, v4);
}

uint64_t MatchingFlowView.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  a1[2] = 0;
  type metadata accessor for MatchingFlowViewModel();
  sub_265F9A204();
  result = sub_265FAAA68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MatchingFlowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052208, &qword_265FAEBC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052210, &qword_265FAEBC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052218, &qword_265FAEBD0);
  v10 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v40 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052220, &qword_265FAEBD8);
  v13 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v15 = &v40 - v14;
  v17 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  *v5 = sub_265FAAC38();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052228, &qword_265FAEBE0);
  sub_265FA09F0(v18, &v5[*(v19 + 44)]);
  v20 = sub_265FAAD78();
  v21 = sub_265FAAD98();
  sub_265FAAD98();
  if (sub_265FAAD98() != v20)
  {
    v21 = sub_265FAAD98();
  }

  sub_265FAA958();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_265F96694(v5, v9, &qword_280052208, &qword_265FAEBC0);
  v30 = &v9[*(v6 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = sub_265FAB0C8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_265FAA918();

  v32 = v43;
  v33 = v44;
  v34 = v45;
  sub_265F96694(v9, v12, &qword_280052210, &qword_265FAEBC8);
  v35 = &v12[*(v40 + 36)];
  *v35 = v31;
  *(v35 + 1) = v32;
  *(v35 + 2) = v33;
  v35[24] = v34;

  sub_265F93638(v32, v33, v34);

  sub_265F93654(v32, v33, v34);
  v36 = swift_allocObject();
  *(v36 + 2) = v17;
  *(v36 + 3) = v16;
  *(v36 + 4) = v18;
  sub_265F96694(v12, v15, &qword_280052218, &qword_265FAEBD0);
  v37 = v42;
  v38 = &v15[*(v41 + 36)];
  *v38 = sub_265FA26E8;
  v38[1] = v36;
  sub_265F96694(v15, v37, &qword_280052220, &qword_265FAEBD8);
}

uint64_t sub_265FA09F0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v44 = a1;
  v49 = a2;
  v2 = sub_265FAA978();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051ED8, &qword_265FAE350);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052288, &qword_265FAED60);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v12 = &v40 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052290, &qword_265FAED68);
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v15 = (&v40 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052298, &qword_265FAED70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800522A0, &qword_265FAED78);
  v20 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v40 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265FAA918();

  v22 = v50;
  v23 = v51;
  if (v52)
  {
    if (v52 == 1)
    {
      sub_265F93654(v50, v51, 1);
      *v15 = sub_265FAB0D8();
      v15[1] = sub_265F9A8E0;
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800522A8, &qword_265FAED80);
      sub_265FA2EBC();
      sub_265FA325C();
      return sub_265FAAD38();
    }

    sub_265FAB0A8();
    sub_265FAAA08();
    v36 = v54;
    v37 = v55;
    v38 = v56;
    *v19 = v53;
    v19[8] = v36;
    *(v19 + 2) = v37;
    v19[24] = v38;
    *(v19 + 2) = v57;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800522C0, &qword_265FAED88);
    sub_265FA2F48();
    sub_265FA3028();
    v39 = v45;
    sub_265FAAD38();
    sub_265F8A480(v39, v15, &qword_2800522A0, &qword_265FAED78);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800522A8, &qword_265FAED80);
    sub_265FA2EBC();
    sub_265FA325C();
    sub_265FAAD38();
    v33 = v39;
    v34 = &qword_2800522A0;
    v35 = &qword_265FAED78;
  }

  else
  {
    v53 = sub_265FAB0D8();
    v40 = v22;
    v25 = v22 & 1;
    v54 = v25;
    v55 = v23;
    v56 = 0;
    v26 = v23;
    v44 = v23;
    v27 = v26;
    sub_265FAA968();
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = v27;
    v29 = v27;
    sub_265FAB068();

    (*(v41 + 8))(v5, v2);
    sub_265FAA988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800522D8, &qword_265FAED90);
    sub_265FA3150();
    sub_265F92604(&qword_280051F90, &qword_280051ED8, &qword_265FAE350);
    v30 = v43;
    sub_265FAAF28();
    (*(v42 + 8))(v9, v30);

    v31 = &v12[*(v46 + 36)];
    *v31 = sub_265F9A8D8;
    v31[1] = 0;
    v31[2] = 0;
    v31[3] = 0;
    sub_265F8A480(v12, v19, &qword_280052288, &qword_265FAED60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800522C0, &qword_265FAED88);
    sub_265FA2F48();
    sub_265FA3028();
    v32 = v45;
    sub_265FAAD38();
    sub_265F8A480(v32, v15, &qword_2800522A0, &qword_265FAED78);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800522A8, &qword_265FAED80);
    sub_265FA2EBC();
    sub_265FA325C();
    sub_265FAAD38();
    sub_265F93654(v40, v44, 0);
    sub_265F8A4E8(v32, &qword_2800522A0, &qword_265FAED78);
    v33 = v12;
    v34 = &qword_280052288;
    v35 = &qword_265FAED60;
  }

  return sub_265F8A4E8(v33, v34, v35);
}

uint64_t sub_265FA1114(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280051CA8, &unk_265FAD9D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_265FAB288();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_265FAB258();
  v10 = a3;
  v11 = sub_265FAB248();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  *(v12 + 40) = v10;
  sub_265FA0258(0, 0, v8, &unk_265FAEDA0, v12);
}

uint64_t sub_265FA124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  sub_265FAB258();
  v5[19] = sub_265FAB248();
  v7 = sub_265FAB228();
  v5[20] = v7;
  v5[21] = v6;

  return MEMORY[0x2822009F8](sub_265FA12E4, v7, v6);
}

uint64_t sub_265FA12E4()
{
  v1 = v0[18];
  sub_265F97488(*MEMORY[0x277D54E40], *MEMORY[0x277D54E50]);
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_265FA1430;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052300, &qword_265FAEDA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265FA92C8;
  v0[13] = &block_descriptor_3;
  v0[14] = v3;
  [v2 presentMediaItem:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265FA1430()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_265FA15C4;
  }

  else
  {
    v6 = sub_265FA1560;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_265FA1560()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265FA15C4()
{
  v1 = v0[22];
  v2 = v0[19];

  swift_willThrow();
  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_265FA1638(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler;
  result = swift_beginAccess();
  v8 = *v6;
  if (*v6)
  {
    v9 = *(v6 + 8);

    v8(v10, a1, a2);
    return sub_265F8C0E8(v8);
  }

  return result;
}

double sub_265FA16C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265FAA918();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_265FA1748(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265F93638(v2, v3, v5);

  return sub_265FAA928();
}

uint64_t sub_265FA17DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_265FAA918();
}

uint64_t sub_265FA1854(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_265FAA928();
}

void (*sub_265FA18D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_265FAA908();
  return sub_265FA1978;
}

void sub_265FA1978(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_265FA19E0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052230, &qword_265FAEC30);
  sub_265FAA8E8();
  return swift_endAccess();
}

uint64_t sub_265FA1A58(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052238, &qword_265FAEC38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052230, &qword_265FAEC30);
  sub_265FAA8F8();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_265FA1BDC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052230, &qword_265FAEC30);
  sub_265FAA8E8();
  return swift_endAccess();
}

uint64_t sub_265FA1C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052238, &qword_265FAEC38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052230, &qword_265FAEC30);
  sub_265FAA8F8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_265FA1D88(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052238, &qword_265FAEC38);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052230, &qword_265FAEC30);
  sub_265FAA8E8();
  swift_endAccess();
  return sub_265FA1EF8;
}

void sub_265FA1EF8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_265FAA8F8();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_265FAA8F8();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_265FA2060@<X0>(void *a1@<X0>, uint64_t (**a2)(double *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_265F924E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_265F8C0D8(v4);
}

uint64_t sub_265FA2100(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_265FA2E84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_265F8C0D8(v3);
  return sub_265F8C0E8(v8);
}

uint64_t sub_265FA226C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_cancellationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_265FA2E5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_265F8C0D8(v4);
}

uint64_t sub_265FA230C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_265FA2E34;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_cancellationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_265F8C0D8(v3);
  return sub_265F8C0E8(v8);
}

uint64_t sub_265FA23F4(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_265FA247C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t MatchingFlowViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052230, &qword_265FAEC30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel__state;
  v10[1] = 0;
  v10[2] = 0;
  v11 = 2;
  sub_265FAA8D8();
  (*(v2 + 32))(v0 + v6, v5, v1);
  v7 = (v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_cancellationHandler);
  *v8 = 0;
  v8[1] = 0;
  return v0;
}

uint64_t type metadata accessor for MatchingFlowViewModel()
{
  result = qword_280052240;
  if (!qword_280052240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265FA26B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t MatchingFlowViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052230, &qword_265FAEC30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler + 8);
  sub_265F8C0E8(*(v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler));
  v4 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_cancellationHandler + 8);
  sub_265F8C0E8(*(v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_cancellationHandler));
  return v0;
}

uint64_t MatchingFlowViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280052230, &qword_265FAEC30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler + 8);
  sub_265F8C0E8(*(v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_sizeUpdatedHandler));
  v4 = *(v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_cancellationHandler + 8);
  sub_265F8C0E8(*(v0 + OBJC_IVAR____TtC11ShazamKitUI21MatchingFlowViewModel_cancellationHandler));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_265FA2874@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MatchingFlowViewModel();
  result = sub_265FAA8C8();
  *a1 = result;
  return result;
}

uint64_t sub_265FA28C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

void sub_265FA2934()
{
  sub_265FA2BAC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_265FA2BAC()
{
  if (!qword_280052250)
  {
    v0 = sub_265FAA938();
    if (!v1)
    {
      atomic_store(v0, &qword_280052250);
    }
  }
}

unint64_t sub_265FA2C00()
{
  result = qword_280052258;
  if (!qword_280052258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280052220, &qword_265FAEBD8);
    sub_265FA2C8C();
    sub_265F9ABB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280052258);
  }

  return result;
}