unint64_t sub_25E980A5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A8, &qword_25E9D9168);
  v3 = sub_25E9D82C0();

  v4 = *(a1 + 240);
  v54 = *(a1 + 224);
  v55 = v4;
  v56 = *(a1 + 256);
  v57 = *(a1 + 272);
  v5 = *(a1 + 176);
  v50 = *(a1 + 160);
  v51 = v5;
  v6 = *(a1 + 208);
  v52 = *(a1 + 192);
  v53 = v6;
  v7 = *(a1 + 112);
  v46 = *(a1 + 96);
  v47 = v7;
  v8 = *(a1 + 144);
  v48 = *(a1 + 128);
  v49 = v8;
  v9 = *(a1 + 48);
  v42 = *(a1 + 32);
  v43 = v9;
  v10 = *(a1 + 80);
  v44 = *(a1 + 64);
  v45 = v10;
  v12 = *(&v42 + 1);
  v11 = v42;
  sub_25E9811A8(&v42, v41, &qword_27FD0D758, &qword_25E9D91F8);
  result = sub_25E978F5C(v11, v12);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v15 = (a1 + 280);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v16 = (v3[6] + 16 * result);
    *v16 = v11;
    v16[1] = v12;
    v17 = v3[7] + 232 * result;
    v18 = v43;
    v19 = v45;
    *(v17 + 16) = v44;
    *(v17 + 32) = v19;
    *v17 = v18;
    v20 = v46;
    v21 = v47;
    v22 = v49;
    *(v17 + 80) = v48;
    *(v17 + 96) = v22;
    *(v17 + 48) = v20;
    *(v17 + 64) = v21;
    v23 = v50;
    v24 = v51;
    v25 = v53;
    *(v17 + 144) = v52;
    *(v17 + 160) = v25;
    *(v17 + 112) = v23;
    *(v17 + 128) = v24;
    v26 = v54;
    v27 = v55;
    v28 = v56;
    *(v17 + 224) = v57;
    *(v17 + 192) = v27;
    *(v17 + 208) = v28;
    *(v17 + 176) = v26;
    v29 = v3[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      break;
    }

    v3[2] = v31;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v32 = (v15 + 248);
    v33 = v15[13];
    v54 = v15[12];
    v55 = v33;
    v56 = v15[14];
    v57 = *(v15 + 30);
    v34 = v15[9];
    v50 = v15[8];
    v51 = v34;
    v35 = v15[11];
    v52 = v15[10];
    v53 = v35;
    v36 = v15[5];
    v46 = v15[4];
    v47 = v36;
    v37 = v15[7];
    v48 = v15[6];
    v49 = v37;
    v38 = v15[1];
    v42 = *v15;
    v43 = v38;
    v39 = v15[3];
    v44 = v15[2];
    v45 = v39;
    v12 = *(&v42 + 1);
    v11 = v42;
    sub_25E9811A8(&v42, v41, &qword_27FD0D758, &qword_25E9D91F8);
    result = sub_25E978F5C(v11, v12);
    v15 = v32;
    if (v40)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E980C94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D700, &qword_25E9D91B0);
    v3 = sub_25E9D82C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_25E9811A8(v4, &v13, &qword_27FD0D720, &qword_25E9DAC00);
      v5 = v13;
      v6 = v14;
      result = sub_25E978F5C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25E980EA8(&v15, (v3[7] + 32 * result));
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

double sub_25E980E0C(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90C0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  return result;
}

uint64_t sub_25E980E4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_25E980EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25E980EDC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_25E9D82C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v11 = *(i - 1);
      v12 = *i;

      result = sub_25E97906C(v13, a4, a5);
      if (v15)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      *(v9[7] + 8 * result) = v12;
      v16 = v9[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v9[2] = v18;
      if (!--v5)
      {

        return v9;
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

uint64_t sub_25E981094(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25E9D77F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E9810D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E981140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E9811A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E981210(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25E981274(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = v5 == 0xD000000000000017;
    v7 = *(a1 + 24);
    if (0x800000025E9DCE90 == v4 && v5 == 0xD000000000000017)
    {
LABEL_10:

      if ((*(a1 + 40) & 1) == 0)
      {
        v9 = *(a1 + 32);
        if (v9 == 1005)
        {
          type metadata accessor for PNRFailureInfo();
          v10 = swift_allocObject();
          a2 = v10;
          *(v10 + 16) = 11270;
          v11 = 62;
          goto LABEL_20;
        }

        if (v9 == 1004)
        {
          type metadata accessor for PNRFailureInfo();
          v10 = swift_allocObject();
          a2 = v10;
          *(v10 + 16) = 11270;
          v11 = 61;
LABEL_20:
          *(v10 + 18) = v11;
          goto LABEL_21;
        }
      }

      type metadata accessor for PNRFailureInfo();
      v10 = swift_allocObject();
      a2 = v10;
      v12 = 11270;
LABEL_19:
      *(v10 + 16) = v12;
      v11 = 63;
      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  if (sub_25E9D8300())
  {
    goto LABEL_10;
  }

  if (0x800000025E9DCEB0 == v7 && v5 == 0xD000000000000014 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 11526;
    goto LABEL_19;
  }

  if (0x800000025E9DCED0 == v7 && v5 == 0xD000000000000022 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 11782;
    goto LABEL_19;
  }

  if (0x800000025E9DCF00 == v7 && v5 == 0xD000000000000019 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 12038;
    goto LABEL_19;
  }

  sub_25E982374();

  if (sub_25E9D81D0())
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 12294;
    goto LABEL_19;
  }

  if (sub_25E9D81D0())
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 12550;
    goto LABEL_19;
  }

  if (sub_25E9D81D0())
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 12806;
    goto LABEL_19;
  }

  if (sub_25E9D81D0())
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 13062;
    goto LABEL_19;
  }

  if (0x800000025E9DCFC0 == v7 && v5 == 0xD000000000000013 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 13318;
    goto LABEL_19;
  }

  if (0x800000025E9DCFE0 == v7 && v5 == 0xD000000000000018 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 13574;
    goto LABEL_19;
  }

  if (0x800000025E9DD000 == v7 && v5 == 0xD000000000000026 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 13830;
    goto LABEL_19;
  }

  if (0x800000025E9DD030 == v7 && v5 == 0xD000000000000015 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 14086;
    goto LABEL_19;
  }

  if (0x800000025E9DD050 == v7 && v5 == 0xD000000000000024 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD080 == v7 && v5 == 0xD000000000000026 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 14598;
    goto LABEL_19;
  }

  if (0x800000025E9DD0B0 == v7 && v5 == 0xD00000000000001DLL || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD0D0 == v7 && v5 == 0xD00000000000001FLL || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 14854;
    goto LABEL_19;
  }

  if (0x800000025E9DD0F0 == v7 && v5 == 0xD000000000000022 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 14342;
    goto LABEL_19;
  }

  v14 = 0x800000025E9DD120 == v7 && v6;
  if (v14 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 15110;
    goto LABEL_19;
  }

  if (0x800000025E9DD140 == v7 && v5 == 0xD000000000000022 || (sub_25E9D8300() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 15366;
    goto LABEL_19;
  }

  if (0x800000025E9DD170 == v7 && v5 == 0xD000000000000024 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD1A0 == v7 && v5 == 0xD000000000000030 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD1E0 == v7 && v5 == 0xD000000000000015 || (sub_25E9D8300() & 1) != 0 || (sub_25E9D81D0() & 1) != 0)
  {

    type metadata accessor for PNRFailureInfo();
    v10 = swift_allocObject();
    a2 = v10;
    v12 = 16132;
    goto LABEL_19;
  }

  if (0x800000025E9DD220 == v7 && v5 == 0xD000000000000015 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD240 == v7 && v5 == 0xD000000000000012 || (sub_25E9D8300() & 1) != 0 || 0x800000025E9DD260 == v7 && v5 == 0xD000000000000012)
  {
  }

  else
  {
    v19 = sub_25E9D8300();

    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v15 = *(a1 + 32);
  if (v15 == 4099)
  {
    v16 = 62;
  }

  else
  {
    v16 = 41;
  }

  if (v15 == 4097)
  {
    v17 = 61;
  }

  else
  {
    v17 = v16;
  }

  if (*(a1 + 40))
  {
    v18 = 41;
  }

  else
  {
    v18 = v17;
  }

  type metadata accessor for PNRFailureInfo();
  v10 = swift_allocObject();
  a2 = v10;
  *(v10 + 16) = 9733;
  *(v10 + 18) = v18;
LABEL_21:
  *(v10 + 24) = a1;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
LABEL_22:

  return a2;
}

uint64_t sub_25E981D64()
{
  v0 = sub_25E9D7D60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7E8, &qword_25E9D9288);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  sub_25E9D7C10();
  v15 = sub_25E9D7D10();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_2:
    type metadata accessor for PNRFailureInfo();
    v17 = swift_allocObject();
    *(v17 + 16) = 16132;
    *(v17 + 18) = 63;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0;
    goto LABEL_11;
  }

  sub_25E9822B8(v14, v12);
  v18 = (*(v16 + 88))(v12, v15);
  if (v18 != *MEMORY[0x277D235F8])
  {
    if (v18 == *MEMORY[0x277D235F0])
    {
      type metadata accessor for PNRError();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_25E9D9270;
      *(v32 + 32) = 0;
      *(v32 + 40) = 22785;
      type metadata accessor for PNRFailureInfo();
      v17 = swift_allocObject();
      *(v17 + 16) = 16132;
      *(v17 + 18) = 63;
      *(v17 + 24) = v32;
      *(v17 + 32) = 0u;
      *(v17 + 48) = 0u;
      goto LABEL_11;
    }

    (*(v16 + 8))(v12, v15);
    goto LABEL_2;
  }

  (*(v16 + 96))(v12, v15);
  (*(v1 + 32))(v7, v12, v0);
  (*(v1 + 16))(v5, v7, v0);
  v37 = 89;
  type metadata accessor for PNRError();
  swift_allocObject();
  v19 = sub_25E9A7B54(v5, &v37);
  if (qword_27FD0D5A0 != -1)
  {
    swift_once();
  }

  v20 = sub_25E9D7F10();
  __swift_project_value_buffer(v20, qword_27FD0DB18);

  v21 = sub_25E9D7F00();
  v22 = sub_25E9D8120();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136315138;
    v26 = sub_25E9A7C94();
    v28 = sub_25E9887EC(v26, v27, &v36);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_25E971000, v21, v22, "Processing TranscriptProtoExecutorError.other %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x25F8C51A0](v25, -1, -1);
    v29 = v24;
    v1 = v35;
    MEMORY[0x25F8C51A0](v29, -1, -1);
  }

  type metadata accessor for PNRFailureInfo();
  v30 = swift_allocObject();
  *(v30 + 16) = 9733;
  *(v30 + 18) = 40;
  *(v30 + 24) = v19;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;

  v17 = sub_25E981274(v31, v30);

  (*(v1 + 8))(v7, v0);
LABEL_11:
  sub_25E982250(v14);
  return v17;
}

uint64_t sub_25E982250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7E8, &qword_25E9D9288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E9822B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7E8, &qword_25E9D9288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

unint64_t sub_25E982374()
{
  result = qword_27FD0D7F0;
  if (!qword_27FD0D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D7F0);
  }

  return result;
}

double sub_25E9823C8()
{
  sub_25E9D78C0();
  sub_25E9D8280();
  type metadata accessor for PNRError();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 22785;
  type metadata accessor for PNRFailureInfo();
  v1 = swift_allocObject();
  *(v1 + 16) = 11013;
  *(v1 + 18) = 63;
  *(v1 + 24) = v0;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  return result;
}

double sub_25E982484()
{
  v0 = sub_25E9D7D60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7F8, &qword_25E9D92A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-v13];
  sub_25E9D7BA0();
  v15 = sub_25E9D7CB0();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_25E982820(v14, v12);
    v18 = (*(v16 + 88))(v12, v15);
    if (v18 == *MEMORY[0x277D235C8])
    {
      (*(v16 + 96))(v12, v15);
      (*(v1 + 32))(v7, v12, v0);
      (*(v1 + 16))(v5, v7, v0);
      v22 = 89;
      type metadata accessor for PNRError();
      swift_allocObject();
      v17 = sub_25E9A7B54(v5, &v22);
      (*(v1 + 8))(v7, v0);
    }

    else if (v18 == *MEMORY[0x277D235C0])
    {
      type metadata accessor for PNRError();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_25E9D9290;
      *(v17 + 32) = 0;
      *(v17 + 40) = 22785;
    }

    else
    {
      (*(v16 + 8))(v12, v15);
      v17 = 0;
    }
  }

  sub_25E9827B8(v14);
  type metadata accessor for PNRFailureInfo();
  v19 = swift_allocObject();
  *(v19 + 16) = 16131;
  *(v19 + 18) = 63;
  *(v19 + 24) = v17;
  result = 0.0;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  return result;
}

uint64_t sub_25E9827B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7F8, &qword_25E9D92A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E982820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7F8, &qword_25E9D92A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25E982894(char a1)
{
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v2 = sub_25E9D7F10();
  __swift_project_value_buffer(v2, qword_280F6FE78);
  oslog = sub_25E9D7F00();
  v3 = sub_25E9D8120();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_25E971000, oslog, v3, "#FileRadarUtils autoBugCapture: result: %{BOOL}d", v4, 8u);
    MEMORY[0x25F8C51A0](v4, -1, -1);
  }
}

void _s20PnROnDeviceFramework14FileRadarUtilsO14autoBugCapture9errorType0k3SubL003subL7ContextySS_S2StFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (AFIsInternalInstall())
  {
    v8 = sub_25E9D7830();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_25E9D7820();
    sub_25E9D7810();
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v11 = sub_25E9D7F10();
    __swift_project_value_buffer(v11, qword_280F6FE78);

    oslog = sub_25E9D7F00();
    v12 = sub_25E9D8120();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_25E9887EC(a1, a2, &v16);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_25E9887EC(a3, a4, &v16);
      _os_log_impl(&dword_25E971000, oslog, v12, "#FileRadarUtils autoBugCapture: not an internal build. Skipping filing radar for %s/%s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v14, -1, -1);
      MEMORY[0x25F8C51A0](v13, -1, -1);
    }
  }
}

PnROnDeviceFramework::IERequestGrainFeatureTagName_optional __swiftcall IERequestGrainFeatureTagName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IERequestGrainFeatureTagName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0x6E41686372616553;
  if (v1 != 5)
  {
    v3 = 0x6E41686372616553;
  }

  v4 = 0x7041656C706D6953;
  if (v1 == 3)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x6C616E6F73726550;
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

uint64_t sub_25E982D78()
{
  *v0;
  *v0;
  *v0;
  sub_25E9D8010();
}

void sub_25E982EC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E55;
  v5 = 0xEF6E6F6974634164;
  v6 = 0x6E41686372616553;
  if (v2 != 5)
  {
    v6 = 0x6E41686372616553;
    v5 = 0xED00006D69685364;
  }

  v7 = 0x800000025E9DC9A0;
  v8 = 0x7041656C706D6953;
  if (v2 == 3)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xEF746E65746E4970;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000025E9DC970;
  v10 = 0xD000000000000015;
  if (v2 != 1)
  {
    v10 = 0x6C616E6F73726550;
    v9 = 0xEA00000000004151;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t IERequestGrainFeatureTags.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t IERequestGrainFeatureTags.init()()
{
  result = v0;
  *(v0 + 20) = 0;
  *(v0 + 16) = 0;
  return result;
}

_BYTE *IERequestGrainFeatureTags.__allocating_init(hasStructuredSearch:hasStructuredSearchAnswerSynthesis:hasStructuredSearchReturnTypeCustom:hasCall:hasClientActionCreated:)(char a1, char a2, char a3, char a4, char a5)
{
  result = swift_allocObject();
  result[16] = a1;
  result[18] = a3;
  result[17] = a2;
  result[19] = a4;
  result[20] = a5;
  return result;
}

_BYTE *IERequestGrainFeatureTags.init(hasStructuredSearch:hasStructuredSearchAnswerSynthesis:hasStructuredSearchReturnTypeCustom:hasCall:hasClientActionCreated:)(char a1, char a2, char a3, char a4, char a5)
{
  v5[16] = a1;
  v5[18] = a3;
  v5[17] = a2;
  v5[19] = a4;
  v5[20] = a5;
  return v5;
}

uint64_t sub_25E983090()
{
  if (v0[16] != 1 || (v0[17] & 1) != 0 || (v0[19] & 1) != 0)
  {
    return 0;
  }

  else
  {
    return (v0[18] ^ 1) & 1;
  }
}

uint64_t sub_25E9830C4()
{
  if (v0[16] == 1 && (v0[17] & 1) == 0)
  {
    return v0[18];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E9830E8()
{
  if (v0[16] == 1 && v0[17] == 1)
  {
    return (v0[19] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E983118()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + 19);
  }
}

uint64_t sub_25E983130()
{
  if (v0[16] == 1 && v0[19] == 1)
  {
    return (v0[20] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E983160()
{
  if (v0[16] == 1 && v0[19] == 1)
  {
    return v0[20];
  }

  else
  {
    return 0;
  }
}

char *sub_25E983188()
{
  if (v0[16] != 1)
  {
    if (v0[19] != 1)
    {
      return MEMORY[0x277D84F90];
    }

    result = sub_25E983454(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(result + 2);
    v7 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v7 >> 1)
    {
      result = sub_25E983454((v7 > 1), v4 + 1, 1, result);
    }

    v6 = 4;
    goto LABEL_21;
  }

  v1 = v0[19];
  if (v0[17] != 1)
  {
    if (v0[19])
    {
      if (!v0[18])
      {
        goto LABEL_13;
      }
    }

    else if ((v0[18] & 1) == 0)
    {
      v6 = 1;
      result = sub_25E983454(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(result + 2);
      v9 = *(result + 3);
      v5 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        v6 = 1;
        result = sub_25E983454((v9 > 1), v4 + 1, 1, result);
      }

      goto LABEL_21;
    }

    result = sub_25E983454(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(result + 2);
    v8 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v8 >> 1)
    {
      result = sub_25E983454((v8 > 1), v4 + 1, 1, result);
    }

    v6 = 3;
    goto LABEL_21;
  }

  if ((v0[19] & 1) == 0)
  {
    result = sub_25E983454(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(result + 2);
    v3 = *(result + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      result = sub_25E983454((v3 > 1), v4 + 1, 1, result);
    }

    v6 = 2;
LABEL_21:
    *(result + 2) = v5;
    result[v4 + 32] = v6;
    goto LABEL_22;
  }

LABEL_13:
  result = MEMORY[0x277D84F90];
LABEL_22:
  if (v0[16] == 1 && v0[19] == 1)
  {
    v10 = v0[20];
    v11 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v10)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        result = v11;
      }

      else
      {
        result = sub_25E983454(0, *(v11 + 2) + 1, 1, v11);
      }

      v14 = *(result + 2);
      v13 = *(result + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        result = sub_25E983454((v13 > 1), v14 + 1, 1, result);
      }

      v16 = 6;
    }

    else
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        result = v11;
      }

      else
      {
        result = sub_25E983454(0, *(v11 + 2) + 1, 1, v11);
      }

      v14 = *(result + 2);
      v17 = *(result + 3);
      v15 = v14 + 1;
      if (v14 >= v17 >> 1)
      {
        result = sub_25E983454((v17 > 1), v14 + 1, 1, result);
      }

      v16 = 5;
    }

    *(result + 2) = v15;
    result[v14 + 32] = v16;
  }

  return result;
}

char *sub_25E983454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D858, &unk_25E9D94A0);
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

unint64_t sub_25E98354C()
{
  result = qword_27FD0D800;
  if (!qword_27FD0D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IERequestGrainFeatureTagName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IERequestGrainFeatureTagName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

size_t sub_25E983888(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D808, &qword_25E9D9450);
  v10 = *(sub_25E9D7A10() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25E9D7A10() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25E983A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D840, &qword_25E9D9488);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25E983B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D830, &qword_25E9D9478);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25E983C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D848, &qword_25E9D9490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25E983D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D850, &qword_25E9D9498);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25E983E7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D818, &qword_25E9D9460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25E983F80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D838, &qword_25E9D9480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E9840A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D828, &qword_25E9D9470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[264 * v8])
    {
      memmove(v12, v13, 264 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E9841D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D820, &qword_25E9D9468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[224 * v8])
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E9842F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D810, &qword_25E9D9458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 416);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[416 * v8])
    {
      memmove(v12, v13, 416 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25E984420()
{
  v0 = sub_25E9D77A0();
  __swift_allocate_value_buffer(v0, qword_280F700C8);
  __swift_project_value_buffer(v0, qword_280F700C8);
  return sub_25E9D7780();
}

uint64_t static PnRIntervalConstants.timeSinceSevenDaysAgo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F700C0 != -1)
  {
    swift_once();
  }

  v2 = sub_25E9D77A0();
  v3 = __swift_project_value_buffer(v2, qword_280F700C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

PnROnDeviceFramework::StreamIdentifier_optional __swiftcall StreamIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StreamIdentifier.rawValue.getter()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000024;
  }

  *v0;
  return result;
}

uint64_t sub_25E98460C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = *a1;
  v4 = "self.processedstream";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002BLL;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "self.processedstream";
  }

  else
  {
    v6 = "arplay.self.processedstream";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000024;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ion";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v4 = "arplay.self.processedstream";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000024;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ion";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25E9D8300();
  }

  return v11 & 1;
}

uint64_t sub_25E9846E4()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E984780()
{
  *v0;
  *v0;
  sub_25E9D8010();
}

uint64_t sub_25E984808()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E9848AC(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "self.processedstream";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002BLL;
  }

  else
  {
    v3 = "arplay.self.processedstream";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000024;
    v4 = "ion";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

PnROnDeviceFramework::ReaderDomain_optional __swiftcall ReaderDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ReaderDomain.rawValue.getter()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000031;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002ALL;
  }

  *v0;
  return result;
}

unint64_t sub_25E9849C0()
{
  result = qword_27FD0D860;
  if (!qword_27FD0D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D860);
  }

  return result;
}

uint64_t sub_25E984A14(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = *a1;
  v4 = "ouse.pnr.PnROnDeviceWorker";
  if (v3 == 1)
  {
    v5 = 0xD000000000000031;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "ouse.pnr.PnROnDeviceWorker";
  }

  else
  {
    v6 = "eviceWorkerReader";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002ALL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.biome.self.teststream";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v4 = "eviceWorkerReader";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000002ALL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "com.apple.biome.self.teststream";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25E9D8300();
  }

  return v11 & 1;
}

unint64_t sub_25E984AF0()
{
  result = qword_27FD0D868;
  if (!qword_27FD0D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D868);
  }

  return result;
}

uint64_t sub_25E984B44()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E984BE0()
{
  *v0;
  *v0;
  sub_25E9D8010();
}

uint64_t sub_25E984C68()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E984D0C(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "ouse.pnr.PnROnDeviceWorker";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000031;
  }

  else
  {
    v3 = "eviceWorkerReader";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000002ALL;
    v4 = "com.apple.biome.self.teststream";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_25E984D98(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25E984E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_25E984F58(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D890, &unk_25E9D97D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - v6;
  result = sub_25E9867E4();
  if (result)
  {
    v9 = sub_25E9D79C0();
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    result = swift_beginAccess();
    v13 = 0;
    if (v12)
    {
      while (1)
      {
        v14 = v13;
LABEL_10:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        result = sub_25E9CD2F8(v37, *(*(v9 + 56) + ((v14 << 9) | (8 * v15))));
        if (!v12)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v12 = *(v9 + 64 + 8 * v14);
      ++v13;
      if (v12)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    swift_endAccess();

    sub_25E9D79B0();
    v16 = sub_25E9D7A60();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v7, 1, v16) == 1)
    {
      sub_25E981210(v7, &qword_27FD0D890, &unk_25E9D97D0);
    }

    else
    {
      v18 = sub_25E9D7A50();
      (*(v17 + 8))(v7, v16);
      swift_beginAccess();
      sub_25E9CD2F8(v37, v18);
      swift_endAccess();
    }

    v19 = v2[2];
    v32[3] = type metadata accessor for IEExecutionGrainDimensionsSpec();
    v32[4] = &off_2870AAFA8;
    v32[0] = v19;
    v20 = v2[3];
    v34 = type metadata accessor for IETranscriptLatencyIntervalSpec();
    v35 = &off_2870ACB88;
    v33[0] = v20;
    v21 = v2[4];
    v36[3] = v34;
    v36[4] = &off_2870ACB88;
    v36[0] = v21;
    sub_25E986C6C(v32, v29);
    v22 = v30;
    v23 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v24 = *(v23 + 8);

    v24(a1, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v29);
    sub_25E986C6C(v33, v29);
    v25 = v30;
    v26 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v26 + 8))(a1, v25, v26);
    __swift_destroy_boxed_opaque_existential_0(v29);
    sub_25E986C6C(v36, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D898, &unk_25E9DB860);
    swift_arrayDestroy();
    v27 = v30;
    v28 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v28 + 8))(a1, v27, v28);
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  return result;
}

uint64_t sub_25E98530C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

void *sub_25E985380()
{
  type metadata accessor for IEExecutionGrainDimensionsSpec();
  v1 = swift_allocObject();
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[7] = 0u;
  v1[8] = 0u;
  v1[9] = 0u;
  v1[10] = 0u;
  *(v0 + 16) = v1;
  type metadata accessor for IETranscriptLatencyIntervalSpec();
  v2 = swift_allocObject();
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[1] = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A8, &unk_25E9DBDB0);
  v33 = sub_25E9D7B60();
  v3 = *(v33 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v29 = *(v3 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25E9D9690;
  v6 = *(v3 + 104);
  (v6)(v5 + v4, *MEMORY[0x277D234C0], v33);
  (v6)(v5 + v4 + v29, *MEMORY[0x277D234F0], v33);
  Event = type metadata accessor for IETranscriptNextEvent(0);
  v8 = *(Event + 48);
  v9 = *(Event + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent;
  v30 = sub_25E9D7A10();
  v31 = *(*(v30 - 8) + 56);
  v31(v10 + v11, 1, 1, v30);
  *(v10 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v5;
  *(v10 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v12 = type metadata accessor for IETranscriptEventFilter(0);
  v35 = v12;
  v36 = &off_2870ACBA8;
  v34[0] = v10;
  swift_beginAccess();
  sub_25E986D14(v34, (v2 + 1));
  swift_endAccess();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25E9D96A0;
  v28 = *MEMORY[0x277D23520];
  v6(v13 + v4);
  v14 = *(Event + 48);
  v15 = *(Event + 52);
  v16 = swift_allocObject();
  v31(v16 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v30);
  *(v16 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v13;
  *(v16 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v35 = v12;
  v36 = &off_2870ACBA8;
  v34[0] = v16;
  swift_beginAccess();
  sub_25E986D14(v34, v2 + 56);
  swift_endAccess();
  v32[3] = v2;
  v17 = swift_allocObject();
  v17[2] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[5] = 0u;
  v17[1] = 0u;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25E9D96A0;
  (v6)(v18 + v4, *MEMORY[0x277D234C8], v33);
  v19 = *(Event + 48);
  v20 = *(Event + 52);
  v21 = swift_allocObject();
  v31(v21 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v30);
  *(v21 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v18;
  *(v21 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v35 = v12;
  v36 = &off_2870ACBA8;
  v34[0] = v21;
  swift_beginAccess();
  sub_25E986D14(v34, (v17 + 1));
  swift_endAccess();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25E9D96A0;
  (v6)(v22 + v4, v28, v33);
  v23 = *(Event + 48);
  v24 = *(Event + 52);
  v25 = swift_allocObject();
  v31(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEvent, 1, 1, v30);
  *(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_targetEventTypes) = v22;
  *(v25 + OBJC_IVAR____TtC20PnROnDeviceFramework23IETranscriptEventFilter_foundEventList) = MEMORY[0x277D84F90];
  v35 = v12;
  v36 = &off_2870ACBA8;
  v34[0] = v25;
  swift_beginAccess();
  sub_25E986D14(v34, v17 + 56);
  swift_endAccess();
  v26 = MEMORY[0x277D84FA0];
  result = v32;
  v32[4] = v17;
  v32[5] = v26;
  return result;
}

uint64_t sub_25E985920()
{
  v1 = v0;
  v2 = sub_25E9D7BD0();
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = *(v109 + 64);
  MEMORY[0x28223BE20](v2);
  v108 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E9D7CA0();
  v106 = *(v5 - 8);
  v107 = v5;
  v6 = *(v106 + 64);
  MEMORY[0x28223BE20](v5);
  v105 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D870, &unk_25E9D97B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v111 = &v104 - v10;
  v11 = sub_25E9D7AE0();
  v114 = *(v11 - 8);
  v115 = v11;
  v12 = *(v114 + 64);
  MEMORY[0x28223BE20](v11);
  v113 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D878, &unk_25E9DBD50);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v112 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v104 - v18;
  v20 = sub_25E9D7A40();
  v116 = *(v20 - 8);
  v117 = v20;
  v21 = *(v116 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v104 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v104 - v33;
  if (sub_25E986498())
  {
    v35 = sub_25E9D7990();
    v36 = v0[11];
    v0[10] = v35;
    v0[11] = v37;

    v38 = sub_25E9D79D0();
    v39 = v0[9];
    v0[8] = v38;
    v0[9] = v40;
  }

  sub_25E9D79A0();
  v41 = sub_25E9D7A80();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v27, 1, v41) == 1)
  {
    sub_25E981210(v27, &qword_27FD0D880, &unk_25E9D97C0);
    v43 = sub_25E9D7B90();
    (*(*(v43 - 8) + 56))(v34, 1, 1, v43);
    return sub_25E981210(v34, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E9D7A70();
  (*(v42 + 8))(v27, v41);
  v44 = sub_25E9D7B90();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v34, 1, v44) == 1)
  {
    return sub_25E981210(v34, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  sub_25E986774(v34, v32);
  result = (*(v45 + 88))(v32, v44);
  if (result == *MEMORY[0x277D23538])
  {
    v47 = sub_25E9D79E0();
    v48 = v0[5];
    v0[4] = v47;
    v0[5] = v49;

LABEL_8:
    (*(v45 + 8))(v32, v44);
    return sub_25E981210(v34, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23540])
  {
    (*(v45 + 96))(v32, v44);
    v51 = v116;
    v50 = v117;
    (*(v116 + 32))(v23, v32, v117);
    v52 = sub_25E9D79E0();
    v53 = v0[3];
    v0[2] = v52;
    v0[3] = v54;

    sub_25E9D7A20();
    v55 = sub_25E9D7D40();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v19, 1, v55) == 1)
    {
      sub_25E981210(v19, &qword_27FD0D878, &unk_25E9DBD50);
      v57 = 0;
      v58 = 0;
    }

    else
    {
      v57 = sub_25E9D79E0();
      v58 = v76;
      (*(v56 + 8))(v19, v55);
    }

    v77 = v1[13];
    v1[12] = v57;
    v1[13] = v58;

    v78 = sub_25E9D7A30();
    v80 = v79;
    (*(v51 + 8))(v23, v50);
    v81 = v1[15];
    v1[14] = v78;
    v1[15] = v80;

    v82 = v1[16];
    v66 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (!v66)
    {
      v1[16] = v83;
      return sub_25E981210(v34, &qword_27FD0D888, &qword_25E9DBDA0);
    }

    __break(1u);
    goto LABEL_36;
  }

  if (result == *MEMORY[0x277D23550])
  {
    (*(v45 + 96))(v32, v44);
    v60 = v113;
    v59 = v114;
    v61 = v115;
    (*(v114 + 32))(v113, v32, v115);
    v62 = sub_25E9D79E0();
    v63 = v0[7];
    v0[6] = v62;
    v0[7] = v64;

    v65 = v0[17];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v0[17] = v67;
    v68 = v111;
    sub_25E9D7AD0();
    v69 = sub_25E9D7D80();
    v70 = *(v69 - 8);
    v71 = (*(v70 + 48))(v68, 1, v69);
    v72 = v112;
    if (v71 == 1)
    {
      (*(v59 + 8))(v60, v61);
      v73 = &qword_27FD0D870;
      v74 = &unk_25E9D97B0;
      v75 = v68;
    }

    else
    {
      sub_25E9D7D70();
      (*(v70 + 8))(v68, v69);
      v95 = sub_25E9D7D40();
      v96 = *(v95 - 8);
      if ((*(v96 + 48))(v72, 1, v95) != 1)
      {
        v97 = sub_25E9D79E0();
        v98 = v102;
        (*(v59 + 8))(v60, v61);
        (*(v96 + 8))(v72, v95);
        goto LABEL_33;
      }

      (*(v59 + 8))(v60, v61);
      v73 = &qword_27FD0D878;
      v74 = &unk_25E9DBD50;
      v75 = v72;
    }

    sub_25E981210(v75, v73, v74);
    v97 = 0;
    v98 = 0;
LABEL_33:
    v103 = v1[13];
    v1[12] = v97;
    v1[13] = v98;

    return sub_25E981210(v34, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23548])
  {
    (*(v45 + 96))(v32, v44);
    v85 = v108;
    v84 = v109;
    v86 = v32;
    v87 = v110;
    result = (*(v109 + 32))(v108, v86, v110);
    v88 = v0[20];
    v66 = __OFADD__(v88, 1);
    v89 = v88 + 1;
    if (v66)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v0[20] = v89;
    v90 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor27TranscriptProtoSessionErrorV_tFZ_0(v85);
LABEL_22:
    v91 = v90;
    (*(v84 + 8))(v85, v87);
    v92 = v1[21];
    v1[21] = v91;

    return sub_25E981210(v34, &qword_27FD0D888, &qword_25E9DBDA0);
  }

  if (result == *MEMORY[0x277D23558])
  {
    v93 = v0[18];
    v66 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (!v66)
    {
      v0[18] = v94;
      goto LABEL_8;
    }

    goto LABEL_38;
  }

  if (result != *MEMORY[0x277D23560])
  {
    goto LABEL_8;
  }

  (*(v45 + 96))(v32, v44);
  v85 = v105;
  v84 = v106;
  v99 = v32;
  v87 = v107;
  result = (*(v106 + 32))(v105, v99, v107);
  v100 = v0[19];
  v66 = __OFADD__(v100, 1);
  v101 = v100 + 1;
  if (!v66)
  {
    v0[19] = v101;
    v90 = _s20PnROnDeviceFramework23IEReliabilityCalculatorO14getFailureInfo4fromAA010PNRFailureI0CSg23LighthouseDataProcessor30TranscriptProtoStatementResultV_tFZ_0();
    goto LABEL_22;
  }

LABEL_39:
  __break(1u);
  return result;
}

void *sub_25E9863A4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[21];

  return v0;
}

uint64_t sub_25E9863FC()
{
  sub_25E9863A4();

  return swift_deallocClassInstance();
}

double sub_25E986454()
{
  result = 0.0;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

BOOL sub_25E986498()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_25E9D79A0();
  v11 = sub_25E9D7A80();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    sub_25E981210(v3, &qword_27FD0D880, &unk_25E9D97C0);
    v13 = sub_25E9D7B90();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  sub_25E9D7A70();
  (*(v12 + 8))(v3, v11);
  v14 = sub_25E9D7B90();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  sub_25E986774(v10, v8);
  v18 = (*(v15 + 88))(v8, v14);
  if (v18 == *MEMORY[0x277D23540])
  {
    (*(v15 + 8))(v8, v14);
    v16 = 1;
  }

  else
  {
    v16 = v18 == *MEMORY[0x277D23550];
    (*(v15 + 8))(v8, v14);
  }

LABEL_5:
  sub_25E981210(v10, &qword_27FD0D888, &qword_25E9DBDA0);
  return v16;
}

uint64_t sub_25E986774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9867E4()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v2 = &v28 - v1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v28 - v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0) - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  sub_25E9D79A0();
  v12 = sub_25E9D7A80();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) != 1)
  {
    sub_25E9D7A70();
    (*(v13 + 8))(v5, v12);
    v15 = sub_25E9D7B90();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      goto LABEL_4;
    }

    sub_25E986774(v11, v9);
    v19 = (*(v16 + 88))(v9, v15);
    if (v19 == *MEMORY[0x277D23540] || v19 == *MEMORY[0x277D23550] || v19 == *MEMORY[0x277D23558])
    {
      (*(v16 + 8))(v9, v15);
      v17 = 1;
      goto LABEL_5;
    }

    if (v19 != *MEMORY[0x277D23560])
    {
      (*(v16 + 8))(v9, v15);
      goto LABEL_4;
    }

    sub_25E9D79F0();
    v22 = sub_25E9D7C40();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v2, 1, v22) == 1)
    {
      sub_25E981210(v2, &qword_27FD0D8A0, &unk_25E9D97E0);
      v17 = 0;
LABEL_24:
      (*(v16 + 8))(v9, v15);
      goto LABEL_5;
    }

    v24 = sub_25E9D79E0();
    v26 = v25;
    (*(v23 + 8))(v2, v22);
    if (v24 == 0x726F747563657865 && v26 == 0xE800000000000000)
    {
    }

    else
    {
      v27 = sub_25E9D8300();

      v17 = 0;
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v17 = 1;
    goto LABEL_24;
  }

  sub_25E981210(v5, &qword_27FD0D880, &unk_25E9D97C0);
  v14 = sub_25E9D7B90();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
LABEL_4:
  v17 = 0;
LABEL_5:
  sub_25E981210(v11, &qword_27FD0D888, &qword_25E9DBDA0);
  return v17;
}

uint64_t sub_25E986C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E986D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8B0, qword_25E9D97F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of SELFProcessedTurnReader.read()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25E986EB0;

  return v9(a1, a2);
}

uint64_t sub_25E986EB0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t SELFComponent.PR.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SELFComponent.PR.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_25E986FE0()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E9870B0();
  v1 = v0;
  v2 = sub_25E9D7E70();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

unint64_t sub_25E9870B0()
{
  result = qword_27FD0D8B8;
  if (!qword_27FD0D8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D8B8);
  }

  return result;
}

uint64_t sub_25E9870FC(uint64_t *a1)
{
  v215 = a1;
  v203 = type metadata accessor for PnRPlanResolutionRecord();
  v196 = *(v203 - 8);
  v2 = *(v196 + 64);
  MEMORY[0x28223BE20](v203);
  v189 = &v181 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v213 = &v181 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8C0, &qword_25E9D9858);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v186 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v212 = &v181 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v185 = &v181 - v14;
  MEMORY[0x28223BE20](v13);
  v220 = &v181 - v15;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8C8, &qword_25E9D9860);
  v16 = *(*(v188 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v188);
  v202 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v208 = &v181 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v201 = &v181 - v22;
  MEMORY[0x28223BE20](v21);
  v219 = (&v181 - v23);
  v24 = sub_25E9D77F0();
  v204 = *(v24 - 8);
  v25 = *(v204 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v181 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v181 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v181 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v181 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v181 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8D0, &qword_25E9D9868);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v181 - v45;
  result = sub_25E989284();
  if (v1)
  {
    return result;
  }

  v50 = result;
  v218 = v48;
  v198 = v49;
  v193 = v46;
  v194 = v44;
  v197 = v39;
  v223 = v37;
  v192 = v34;
  v182 = v31;
  v207 = v28;
  v221 = v24;
  if (result)
  {
    swift_bridgeObjectRetain_n();
    v51 = v218;

    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = v197;
  v54 = sub_25E98A6F4(v50, v52);

  v181 = 0;
  v55 = *(v222 + 16);
  *(v222 + 16) = v54;

  if (v50)
  {

    v56 = v215;
    v57 = v221;
    v58 = v198;
  }

  else
  {
    v58 = 0;
    v56 = v215;
    v57 = v221;
  }

  v59 = *(v222 + 16);
  if (!v59)
  {

LABEL_82:
    v180 = *v56;
  }

  v198 = v58;
  v60 = *(v59 + 64);
  v184 = v59 + 64;
  v61 = 1 << *(v59 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & v60;
  v183 = (v61 + 63) >> 6;
  v211 = (v204 + 32);
  v217 = (v204 + 8);
  v218 = (v204 + 16);
  v205 = (v196 + 56);
  v206 = (v196 + 48);
  v190 = (v204 + 56);
  v187 = v59;

  v64 = 0;
  *&v65 = 136315138;
  v191 = v65;
  v66 = v53;
  while (v63)
  {
    v67 = v64;
LABEL_24:
    v70 = __clz(__rbit64(v63));
    v71 = (v63 - 1) & v63;
    v72 = v70 | (v67 << 6);
    v73 = v187;
    v74 = v204;
    (*(v204 + 16))(v66, *(v187 + 48) + *(v204 + 72) * v72, v57);
    v75 = (*(v73 + 56) + 32 * v72);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8D8, &qword_25E9D9870);
    v77 = &v194[*(v76 + 48)];
    v78 = *(v74 + 32);
    v79 = v75[1];
    v222 = *v75;
    v216 = v79;
    v80 = v194;
    v78();
    v81 = v216;
    *v77 = v222;
    *(v77 + 1) = v81;
    (*(*(v76 - 8) + 56))(v80, 0, 1, v76);
    v69 = v67;
LABEL_25:
    v82 = v193;
    sub_25E98B514(v80, v193, &qword_27FD0D8D0, &qword_25E9D9868);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8D8, &qword_25E9D9870);
    if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
    {

      v56 = v215;
      goto LABEL_82;
    }

    v84 = (v82 + *(v83 + 48));
    v85 = *v84;
    v200 = v84[1];
    v199 = v85;
    v86 = *v211;
    v87 = v223;
    (*v211)(v223, v82, v57);
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v210 = v69;
    v88 = sub_25E9D7F10();
    v89 = __swift_project_value_buffer(v88, qword_280F6FE78);
    v90 = v192;
    v214 = *v218;
    v214(v192, v87, v57);
    v91 = sub_25E9D7F00();
    v92 = sub_25E9D8120();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v215;
    v209 = v89;
    v195 = v86;
    if (v93)
    {
      v95 = v90;
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v224 = v97;
      *v96 = v191;
      sub_25E981094(&qword_27FD0D8E0);
      v98 = sub_25E9D82F0();
      v100 = v99;
      *&v216 = *v217;
      (v216)(v95, v57);
      v101 = sub_25E9887EC(v98, v100, &v224);

      *(v96 + 4) = v101;
      _os_log_impl(&dword_25E971000, v91, v92, "Inside allPRMetrics prId: %s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      v94 = v215;
      MEMORY[0x25F8C51A0](v97, -1, -1);
      MEMORY[0x25F8C51A0](v96, -1, -1);
    }

    else
    {

      *&v216 = *v217;
      (v216)(v90, v57);
    }

    v102 = v206;
    v103 = *v94;
    v104 = v203;
    if (*(*v94 + 16))
    {
      v105 = sub_25E978FD4(v223);
      v106 = v219;
      if (v107)
      {
        sub_25E98B2F4(*(v103 + 56) + *(v196 + 72) * v105, v219, type metadata accessor for PnRPlanResolutionRecord);
        v108 = 0;
      }

      else
      {
        v108 = 1;
      }
    }

    else
    {
      v108 = 1;
      v106 = v219;
    }

    v109 = *v205;
    (*v205)(v106, v108, 1, v104);
    swift_beginAccess();
    v110 = v201;
    sub_25E9811A8(v106, v201, &qword_27FD0D8C8, &qword_25E9D9860);
    *&v222 = *v102;
    v111 = (v222)(v110, 1, v104);
    sub_25E981210(v110, &qword_27FD0D8C8, &qword_25E9D9860);
    if (v111 == 1)
    {
      v112 = *(v104 + 28);
      v113 = v208;
      sub_25E9D77E0();
      (*v190)(v113 + v112, 0, 1, v221);
      *(v113 + 40) = 0;
      *(v113 + 44) = 0;
      *v113 = 90;
      *(v113 + 8) = 0;
      *(v113 + 16) = 0;
      *(v113 + 24) = 0;
      *(v113 + 29) = 0;
      v109(v113, 0, 1, v104);
      sub_25E98B230(v113, v106, &qword_27FD0D8C8, &qword_25E9D9860);
    }

    v114 = v106;
    if (!(v222)(v106, 1, v104))
    {
      v115 = v200;
      *v106 = v199;
      v106[1] = v115;
    }

    v116 = v212;
    v117 = v213;
    if (v198)
    {
      v118 = v222;
      if (*(v198 + 16))
      {
        v119 = v198;

        v120 = sub_25E978FD4(v223);
        if (v121)
        {
          v122 = v120;
          v123 = *(v119 + 56);
          v124 = type metadata accessor for PRRequestContextMetadata();
          v125 = *(v124 - 8);
          v126 = v123 + *(v125 + 72) * v122;
          v114 = v219;
          v127 = v220;
          sub_25E98B2F4(v126, v220, type metadata accessor for PRRequestContextMetadata);

          (*(v125 + 56))(v127, 0, 1, v124);
          v118 = v222;
        }

        else
        {

          v132 = type metadata accessor for PRRequestContextMetadata();
          (*(*(v132 - 8) + 56))(v220, 1, 1, v132);
        }

        v116 = v212;
        v117 = v213;
      }

      else
      {
        v130 = type metadata accessor for PRRequestContextMetadata();
        (*(*(v130 - 8) + 56))(v220, 1, 1, v130);
      }

      v129 = v118(v114, 1, v104);
    }

    else
    {
      v128 = type metadata accessor for PRRequestContextMetadata();
      (*(*(v128 - 8) + 56))(v220, 1, 1, v128);
      v118 = v222;
      v129 = (v222)(v114, 1, v104);
    }

    if (!v129)
    {
      v133 = v185;
      sub_25E9811A8(v220, v185, &qword_27FD0D8C0, &qword_25E9D9858);
      v134 = type metadata accessor for PRRequestContextMetadata();
      if ((*(*(v134 - 8) + 48))(v133, 1, v134) == 1)
      {
        sub_25E981210(v133, &qword_27FD0D8C0, &qword_25E9D9858);
        v135 = 0;
      }

      else
      {
        v135 = *(v133 + *(v134 + 24));
        sub_25E98B298(v133);
      }

      *(v114 + 40) = v135;
      *(v114 + 44) = 0;
      v116 = v212;
      v117 = v213;
    }

    if (!v118(v114, 1, v104))
    {
      sub_25E9811A8(v220, v116, &qword_27FD0D8C0, &qword_25E9D9858);
      v136 = v116;
      v137 = type metadata accessor for PRRequestContextMetadata();
      if ((*(*(v137 - 8) + 48))(v136, 1, v137) == 1)
      {
        sub_25E981210(v136, &qword_27FD0D8C0, &qword_25E9D9858);
        v138 = 0;
      }

      else
      {
        v138 = *(v136 + *(v137 + 20));
        sub_25E98B298(v136);
      }

      *(v114 + 32) = v138;
      *(v114 + 36) = 0;
      v118 = v222;
    }

    v139 = v118(v114, 1, v104);
    v140 = v202;
    if (!v139)
    {
      v141 = v186;
      sub_25E9811A8(v220, v186, &qword_27FD0D8C0, &qword_25E9D9858);
      v142 = type metadata accessor for PRRequestContextMetadata();
      if ((*(*(v142 - 8) + 48))(v141, 1, v142) == 1)
      {
        sub_25E981210(v141, &qword_27FD0D8C0, &qword_25E9D9858);
        v143 = 1;
        v144 = v221;
      }

      else
      {
        v145 = v182;
        v144 = v221;
        v214(v182, v141, v221);
        sub_25E98B298(v141);
        v195(v117, v145, v144);
        v143 = 0;
      }

      (*v190)(v117, v143, 1, v144);
      v114 = v219;
      sub_25E98B230(v117, v219 + *(v104 + 28), &qword_27FD0D7D8, &qword_25E9D9BC0);
      v118 = v222;
    }

    *&v222 = v71;
    v146 = v207;
    v147 = v114;
    v148 = v221;
    v214(v207, v223, v221);
    sub_25E9811A8(v147, v140, &qword_27FD0D8C8, &qword_25E9D9860);
    if (v118(v140, 1, v104) == 1)
    {
      sub_25E981210(v140, &qword_27FD0D8C8, &qword_25E9D9860);
      v149 = v208;
      sub_25E988D94(v146, v208);
      sub_25E981210(v149, &qword_27FD0D8C8, &qword_25E9D9860);
      (v216)(v146, v148);
      v63 = v222;
      goto LABEL_78;
    }

    v150 = v189;
    sub_25E981140(v140, v189, type metadata accessor for PnRPlanResolutionRecord);
    v151 = v215;
    v152 = *v215;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v224 = *v151;
    v154 = v224;
    v155 = sub_25E978FD4(v146);
    v157 = *(v154 + 16);
    v158 = (v156 & 1) == 0;
    v159 = __OFADD__(v157, v158);
    v160 = v157 + v158;
    if (v159)
    {
      goto LABEL_84;
    }

    v161 = v156;
    if (*(v154 + 24) >= v160)
    {
      v63 = v222;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v179 = v155;
        sub_25E97DE70();
        v155 = v179;
      }

      v163 = v208;
      v164 = v224;
      if ((v161 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      sub_25E97A1D4(v160, isUniquelyReferenced_nonNull_native);
      v155 = sub_25E978FD4(v146);
      v63 = v222;
      if ((v161 & 1) != (v162 & 1))
      {
        goto LABEL_86;
      }

      v163 = v208;
      v164 = v224;
      if ((v161 & 1) == 0)
      {
LABEL_71:
        v164[(v155 >> 6) + 8] |= 1 << v155;
        v165 = v155;
        v166 = v207;
        v167 = v221;
        v214((v164[6] + *(v204 + 72) * v155), v207, v221);
        sub_25E981140(v150, v164[7] + *(v196 + 72) * v165, type metadata accessor for PnRPlanResolutionRecord);
        (v216)(v166, v167);
        v168 = v164[2];
        v159 = __OFADD__(v168, 1);
        v169 = v168 + 1;
        if (v159)
        {
          goto LABEL_85;
        }

        v164[2] = v169;
        *v151 = v164;
        goto LABEL_77;
      }
    }

    sub_25E98B57C(v150, v164[7] + *(v196 + 72) * v155, type metadata accessor for PnRPlanResolutionRecord);
    (v216)(v207, v221);
    *v151 = v164;
LABEL_77:
    v149 = v163;
LABEL_78:
    v170 = sub_25E9D7F00();
    v171 = sub_25E9D8120();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = v149;
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v224 = v174;
      *v173 = v191;
      sub_25E9811A8(v219, v149, &qword_27FD0D8C8, &qword_25E9D9860);
      v175 = sub_25E9D81B0();
      v177 = v176;
      sub_25E981210(v172, &qword_27FD0D8C8, &qword_25E9D9860);
      v178 = sub_25E9887EC(v175, v177, &v224);

      *(v173 + 4) = v178;
      _os_log_impl(&dword_25E971000, v170, v171, "Inside computePlanResolutionMetrics prRecord: %s", v173, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v174);
      MEMORY[0x25F8C51A0](v174, -1, -1);
      MEMORY[0x25F8C51A0](v173, -1, -1);
    }

    sub_25E981210(v220, &qword_27FD0D8C0, &qword_25E9D9858);
    v57 = v221;
    (v216)(v223, v221);
    sub_25E981210(v219, &qword_27FD0D8C8, &qword_25E9D9860);
    v64 = v210;
    v66 = v197;
  }

  if (v183 <= v64 + 1)
  {
    v68 = v64 + 1;
  }

  else
  {
    v68 = v183;
  }

  v69 = v68 - 1;
  while (1)
  {
    v67 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v67 >= v183)
    {
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8D8, &qword_25E9D9870);
      v80 = v194;
      (*(*(v131 - 8) + 56))(v194, 1, 1, v131);
      v71 = 0;
      goto LABEL_25;
    }

    v63 = *(v184 + 8 * v67);
    ++v64;
    if (v63)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = sub_25E9D8330();
  __break(1u);
  return result;
}

uint64_t sub_25E9886D8()
{
  result = sub_25E989284();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t SELFComponent.PR.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SELFComponent.PR.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

_BYTE **sub_25E988758(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25E988790(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25E9887EC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25E9887EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E9888B8(v11, 0, 0, 1, a1, a2);
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
    sub_25E980E4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25E9888B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25E9889C4(a5, a6);
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
    result = sub_25E9D8270();
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

uint64_t sub_25E9889C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_25E988A10(a1, a2);
  sub_25E988B40(&unk_2870AA348);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25E988A10(uint64_t a1, unint64_t a2)
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

  v6 = sub_25E988C2C(v5, 0);
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

  result = sub_25E9D8270();
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
        v10 = sub_25E9D8030();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E988C2C(v10, 0);
        result = sub_25E9D8230();
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

uint64_t sub_25E988B40(uint64_t result)
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

  result = sub_25E988CA0(result, v12, 1, v3);
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

void *sub_25E988C2C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8E8, &qword_25E9D98A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E988CA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8E8, &qword_25E9D98A0);
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

uint64_t sub_25E988D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25E978FD4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97DE70();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_25E9D77F0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for PnRPlanResolutionRecord();
    v22 = *(v15 - 8);
    sub_25E981140(v14 + *(v22 + 72) * v8, a2, type metadata accessor for PnRPlanResolutionRecord);
    sub_25E97C6E4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PnRPlanResolutionRecord();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void *sub_25E988F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25E978F5C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    *&v15[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97E4B8();
      v12 = *&v15[0];
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    memmove(a3, (*(v12 + 56) + 288 * v9), 0x120uLL);
    sub_25E97CBC4(v9, v12);
    *v4 = v12;
    return nullsub_1(a3);
  }

  else
  {
    sub_25E98B4E0(v15);
    return memcpy(a3, v15, 0x120uLL);
  }
}

void *sub_25E988FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25E978F5C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    __src[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97E7F8();
      v12 = __src[0];
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    memmove(a3, (*(v12 + 56) + 360 * v9), 0x168uLL);
    sub_25E97CD78(v9, v12);
    *v4 = v12;
    return nullsub_1(a3);
  }

  else
  {
    sub_25E980E0C(__src);
    return memcpy(a3, __src, 0x168uLL);
  }
}

__n128 sub_25E9890C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25E978F5C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    *&v21[0] = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97ED0C();
      v12 = *&v21[0];
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    memmove(a3, (*(v12 + 56) + 232 * v9), 0xE8uLL);
    sub_25E97D290(v9, v12);
    *v4 = v12;
    nullsub_1(a3);
  }

  else
  {
    sub_25E98B498(v21);
    v15 = v21[13];
    a3[12] = v21[12];
    a3[13] = v15;
    *(a3 + 28) = v22;
    v16 = v21[9];
    a3[8] = v21[8];
    a3[9] = v16;
    v17 = v21[11];
    a3[10] = v21[10];
    a3[11] = v17;
    v18 = v21[5];
    a3[4] = v21[4];
    a3[5] = v18;
    v19 = v21[7];
    a3[6] = v21[6];
    a3[7] = v19;
    v20 = v21[1];
    *a3 = v21[0];
    a3[1] = v20;
    result = v21[3];
    a3[2] = v21[2];
    a3[3] = result;
  }

  return result;
}

double sub_25E9891E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25E978F5C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25E97F080();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_25E980EA8((*(v12 + 56) + 32 * v9), a3);
    sub_25E97D444(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25E989284()
{
  v180 = type metadata accessor for PRRequestContextMetadata();
  v177 = *(v180 - 8);
  v1 = *(v177 + 64);
  v2 = MEMORY[0x28223BE20](v180);
  v187 = &v176 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v179 = &v176 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v178 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v194 = &v176 - v9;
  v10 = sub_25E9D77F0();
  v182 = *(v10 - 8);
  v11 = *(v182 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v183 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v188 = &v176 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v186 = &v176 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v176 - v19;
  MEMORY[0x28223BE20](v18);
  v193 = &v176 - v21;
  v22 = MEMORY[0x277D84F90];
  v23 = sub_25E97F624(MEMORY[0x277D84F90]);
  v24 = sub_25E97F624(v22);
  v25 = sub_25E97F81C(v22);
  swift_beginAccess();
  v26 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {

    return 0;
  }

  v190 = v23;
  v191 = v20;
  v196 = v24;
  v176 = v0;
  sub_25E9870B0();
  v27 = v26;
  v28 = sub_25E9D7E70();

  if (qword_280F6FE70 != -1)
  {
LABEL_109:
    swift_once();
  }

  v29 = sub_25E9D7F10();
  v30 = __swift_project_value_buffer(v29, qword_280F6FE78);

  v31 = sub_25E9D7F00();
  v32 = sub_25E9D8120();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v28 >> 62;
  v189 = v25;
  v35 = v193;
  if (v33)
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    v37 = v30;
    if (v34)
    {
      v175 = v36;
      v38 = sub_25E9D8290();
      v36 = v175;
    }

    else
    {
      v38 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v36 + 4) = v38;
    v39 = v36;

    _os_log_impl(&dword_25E971000, v31, v32, "prRequestContextEvents length %ld", v39, 0xCu);
    MEMORY[0x25F8C51A0](v39, -1, -1);

    v35 = v193;
    v30 = v37;
  }

  else
  {
  }

  if (v34)
  {
    v41 = sub_25E9D8290();
  }

  else
  {
    v41 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v196;
  v185 = v30;
  if (!v41)
  {
LABEL_94:

    v151 = sub_25E9D7F00();
    v152 = sub_25E9D8120();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v206 = v205;
      *v153 = 136315138;
      sub_25E981094(&qword_27FD0D798);

      v154 = sub_25E9D7F40();
      v156 = v155;

      v157 = sub_25E9887EC(v154, v156, &v206);

      *(v153 + 4) = v157;
      _os_log_impl(&dword_25E971000, v151, v152, "PRRequestContext Start Event Dict: %s", v153, 0xCu);
      v158 = v205;
      __swift_destroy_boxed_opaque_existential_0(v205);
      MEMORY[0x25F8C51A0](v158, -1, -1);
      MEMORY[0x25F8C51A0](v153, -1, -1);
    }

    v159 = sub_25E9D7F00();
    v160 = sub_25E9D8120();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v206 = v162;
      *v161 = 136315138;
      sub_25E981094(&qword_27FD0D798);

      v163 = sub_25E9D7F40();
      v165 = v164;

      v166 = sub_25E9887EC(v163, v165, &v206);

      *(v161 + 4) = v166;
      _os_log_impl(&dword_25E971000, v159, v160, "PRRequestContext End Event Dict: %s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v162);
      MEMORY[0x25F8C51A0](v162, -1, -1);
      MEMORY[0x25F8C51A0](v161, -1, -1);
    }

    v167 = sub_25E9D7F00();
    v168 = sub_25E9D8120();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v206 = v170;
      *v169 = 136315138;
      sub_25E981094(&qword_27FD0D798);

      v171 = sub_25E9D7F40();
      v173 = v172;

      v174 = sub_25E9887EC(v171, v173, &v206);

      *(v169 + 4) = v174;
      _os_log_impl(&dword_25E971000, v167, v168, "prRequestContextMetadata Dict: %s", v169, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v170);
      MEMORY[0x25F8C51A0](v170, -1, -1);
      MEMORY[0x25F8C51A0](v169, -1, -1);
    }

    return v190;
  }

  v25 = 0;
  v198 = v28 & 0xC000000000000001;
  v184 = v28 & 0xFFFFFFFFFFFFFF8;
  v202 = (v182 + 48);
  v181 = (v182 + 32);
  v199 = (v182 + 56);
  v200 = v28;
  v195 = (v182 + 16);
  v201 = (v182 + 8);
  v43 = v194;
  v197 = v41;
  while (1)
  {
    if (v198)
    {
      v44 = MEMORY[0x25F8C4B40](v25, v28);
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v25 >= *(v184 + 16))
      {
        goto LABEL_102;
      }

      v44 = *(v28 + 8 * v25 + 32);
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
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
        goto LABEL_109;
      }
    }

    v204 = v44;
    v45 = sub_25E9D7840();
    v203 = v28;
    if (!v45)
    {
      v48 = 0;
LABEL_29:
      v54 = 1;
LABEL_30:
      (*v199)(v43, 1, 1, v10);
      goto LABEL_31;
    }

    v46 = v45;
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    v48 = v47;
    if (!v47)
    {

      goto LABEL_29;
    }

    v49 = [v47 eventMetadata];
    if (!v49)
    {
      v54 = 0;
      goto LABEL_30;
    }

    v196 = v42;
    v50 = v30;
    v51 = v48;
    v52 = v49;
    v53 = [v49 prId];

    if (!v53)
    {
      v54 = 0;
      v48 = v51;
      v30 = v50;
      v42 = v196;
      goto LABEL_30;
    }

    sub_25E9D8100();

    v28 = *v202;
    if ((*v202)(v43, 1, v10) != 1)
    {
      (*v181)(v35, v43, v10);
      v48 = v51;
      v30 = v50;
      v42 = v196;
      goto LABEL_38;
    }

    v54 = 0;
    v48 = v51;
    v30 = v50;
    v42 = v196;
LABEL_31:
    sub_25E9D77E0();
    v28 = *v202;
    if ((*v202)(v43, 1, v10) != 1)
    {
      sub_25E981210(v43, &qword_27FD0D7D8, &qword_25E9D9BC0);
    }

    if (v54)
    {
      v205 = v48;
LABEL_52:
      v90 = sub_25E9D7F00();
      v91 = sub_25E9D8120();
      v92 = os_log_type_enabled(v90, v91);
      v28 = v200;
      if (v92)
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_25E971000, v90, v91, "PRSiriSchemaPRClientEvent: something other thanstartedOrChanged or ended detected.", v93, 2u);
        v94 = v93;
        v43 = v194;
        MEMORY[0x25F8C51A0](v94, -1, -1);
      }

      (*v201)(v35, v10);
      goto LABEL_14;
    }

LABEL_38:
    v205 = v48;
    v55 = [v48 requestContext];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 startedOrChanged];

      if (v57)
      {
        break;
      }
    }

    v73 = [v205 requestContext];
    if (!v73)
    {
      goto LABEL_52;
    }

    v74 = v73;
    v75 = [v73 ended];

    if (!v75)
    {
      goto LABEL_52;
    }

    v28 = *v195;
    v76 = v183;
    v77 = v35;
    (*v195)(v183, v35, v10);
    v78 = sub_25E9D7850();
    if (!v78)
    {
      goto LABEL_113;
    }

    v79 = v78;
    v80 = sub_25E9D7870();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v206 = v42;
    v82 = sub_25E978FD4(v76);
    v84 = v42[2];
    v85 = (v83 & 1) == 0;
    v86 = __OFADD__(v84, v85);
    v87 = v84 + v85;
    if (v86)
    {
      goto LABEL_105;
    }

    v88 = v83;
    if (v42[3] >= v87)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v150 = v82;
        sub_25E97D964();
        v82 = v150;
      }
    }

    else
    {
      sub_25E979A54(v87, isUniquelyReferenced_nonNull_native);
      v82 = sub_25E978FD4(v183);
      if ((v88 & 1) != (v89 & 1))
      {
        goto LABEL_114;
      }
    }

    v35 = v77;
    v42 = v206;
    if (v88)
    {
      v136 = v206[7] + 16 * v82;
      *v136 = 38;
      *(v136 + 8) = v80;

      v137 = *v201;
      (*v201)(v183, v10);
      v137(v77, v10);
    }

    else
    {
      v206[(v82 >> 6) + 8] |= 1 << v82;
      v138 = v182;
      v139 = v82;
      v140 = v42[6] + *(v182 + 72) * v82;
      v141 = v42;
      v142 = v183;
      (v28)(v140, v183, v10);
      v143 = v141[7] + 16 * v139;
      *v143 = 38;
      *(v143 + 8) = v80;

      v144 = *(v138 + 8);
      v145 = v142;
      v42 = v141;
      v146 = v193;
      v144(v145, v10);
      v35 = v146;
      v144(v146, v10);
      v147 = v42[2];
      v86 = __OFADD__(v147, 1);
      v148 = v147 + 1;
      if (v86)
      {
        goto LABEL_108;
      }

      v42[2] = v148;
    }

    v43 = v194;
    v28 = v200;
    v30 = v185;
LABEL_14:
    ++v25;
    if (v203 == v197)
    {
      goto LABEL_94;
    }
  }

  v58 = v42;

  v59 = v191;
  v60 = v10;
  v192 = *v195;
  v192(v191, v35, v10);
  v61 = sub_25E9D7850();
  if (v61)
  {
    v62 = v61;
    v63 = sub_25E9D7870();

    v64 = v190;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v206 = v64;
    v66 = sub_25E978FD4(v59);
    v67 = *(v64 + 16);
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      goto LABEL_103;
    }

    v70 = v65;
    if (*(v64 + 24) >= v69)
    {
      if ((v10 & 1) == 0)
      {
        sub_25E97D964();
      }
    }

    else
    {
      sub_25E979A54(v69, v10);
      v71 = sub_25E978FD4(v191);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_115;
      }

      v66 = v71;
    }

    v10 = v60;
    v95 = v206;
    v196 = v58;
    v190 = v206;
    if (v70)
    {
      v96 = v206[7] + 16 * v66;
      *v96 = 37;
      *(v96 + 8) = v63;
      v97 = *v201;
      (*v201)(v191, v10);
      v98 = v189;
    }

    else
    {
      v206[(v66 >> 6) + 8] |= 1 << v66;
      v99 = v182;
      v100 = v191;
      v192((v95[6] + *(v182 + 72) * v66), v191, v60);
      v101 = v95[7] + 16 * v66;
      *v101 = 37;
      *(v101 + 8) = v63;
      v97 = *(v99 + 8);
      v97(v100, v10);
      v102 = v95[2];
      v86 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      v98 = v189;
      if (v86)
      {
        goto LABEL_106;
      }

      v95[2] = v103;
    }

    v104 = v186;
    v192(v186, v193, v10);
    v105 = [v205 requestContext];
    if (v105 && (v106 = v105, v107 = [v105 startedOrChanged], v106, v107) && (v108 = objc_msgSend(v107, sel_planCycleId), v107, v108))
    {
      v109 = v178;
      sub_25E9D8100();

      if ((v28)(v109, 1, v10) != 1)
      {
        (*v181)(v188, v109, v10);
        v28 = v200;
        v110 = v205;
LABEL_68:
        v112 = [v110 requestContext];
        if (v112 && (v113 = v112, v114 = [v112 startedOrChanged], v113, v114))
        {
          v115 = [v114 actionStatementId];
        }

        else
        {
          v115 = 0;
        }

        v116 = [v205 requestContext];
        if (v116 && (v117 = v116, v118 = [v116 startedOrChanged], v117, v118))
        {
          v119 = [v118 statementId];
        }

        else
        {
          v119 = 0;
        }

        v120 = v179;
        (*v181)(v179, v188, v10);
        v121 = v180;
        *(v120 + *(v180 + 20)) = v115;
        *(v120 + *(v121 + 24)) = v119;
        sub_25E981140(v120, v187, type metadata accessor for PRRequestContextMetadata);
        v122 = swift_isUniquelyReferenced_nonNull_native();
        v206 = v98;
        v123 = sub_25E978FD4(v104);
        v125 = *(v98 + 16);
        v126 = (v124 & 1) == 0;
        v86 = __OFADD__(v125, v126);
        v127 = v125 + v126;
        if (v86)
        {
          goto LABEL_104;
        }

        v128 = v124;
        if (*(v98 + 24) >= v127)
        {
          v35 = v193;
          v130 = v205;
          if ((v122 & 1) == 0)
          {
            v149 = v123;
            sub_25E97D928();
            v130 = v205;
            v123 = v149;
          }

          v43 = v194;
        }

        else
        {
          sub_25E979A18(v127, v122);
          v123 = sub_25E978FD4(v104);
          v35 = v193;
          if ((v128 & 1) != (v129 & 1))
          {
            goto LABEL_114;
          }

          v43 = v194;
          v130 = v205;
        }

        v131 = v206;
        v189 = v206;
        if (v128)
        {
          sub_25E98B57C(v187, v206[7] + *(v177 + 72) * v123, type metadata accessor for PRRequestContextMetadata);

          v97(v186, v10);
          v97(v35, v10);
          v30 = v185;
          v42 = v196;
        }

        else
        {
          v206[(v123 >> 6) + 8] |= 1 << v123;
          v132 = v123;
          v28 = v97;
          v133 = v186;
          v192((v131[6] + *(v182 + 72) * v123), v186, v10);
          sub_25E981140(v187, v131[7] + *(v177 + 72) * v132, type metadata accessor for PRRequestContextMetadata);

          (v28)(v133, v10);
          (v28)(v35, v10);
          v134 = v131[2];
          v86 = __OFADD__(v134, 1);
          v135 = v134 + 1;
          if (v86)
          {
            goto LABEL_107;
          }

          v131[2] = v135;
          v30 = v185;
          v42 = v196;
          v28 = v200;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v109 = v178;
      (*v199)(v178, 1, 1, v10);
    }

    sub_25E9D77E0();
    v111 = (v28)(v109, 1, v10);
    v28 = v200;
    v110 = v205;
    if (v111 != 1)
    {
      sub_25E981210(v109, &qword_27FD0D7D8, &qword_25E9D9BC0);
    }

    goto LABEL_68;
  }

  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  sub_25E9D8330();
  __break(1u);
LABEL_115:
  result = sub_25E9D8330();
  __break(1u);
  return result;
}

uint64_t sub_25E98A6F4(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  v125 = sub_25E9D77F0();
  v114 = *(v125 - 8);
  v5 = *(v114 + 64);
  v6 = MEMORY[0x28223BE20](v125);
  v124 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  isUniquelyReferenced_nonNull_native = v105 - v9;
  MEMORY[0x28223BE20](v8);
  v110 = v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8F0, &qword_25E9D98A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v122 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v105 - v16;
  v106 = sub_25E97FA38(MEMORY[0x277D84F90]);
  if (qword_280F6FE70 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v18 = sub_25E9D7F10();
    v19 = __swift_project_value_buffer(v18, qword_280F6FE78);

    v107 = v19;
    v20 = sub_25E9D7F00();
    v21 = sub_25E9D8120();

    v22 = os_log_type_enabled(v20, v21);
    v121 = v17;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v127 = v24;
      *v23 = 136315138;
      v126 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D900, &qword_25E9D98B8);
      v25 = sub_25E9D81B0();
      v27 = sub_25E9887EC(v25, v26, &v127);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_25E971000, v20, v21, "Compute Metrics PRRequestContextStart: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x25F8C51A0](v24, -1, -1);
      MEMORY[0x25F8C51A0](v23, -1, -1);
    }

    v28 = v113;

    v29 = sub_25E9D7F00();
    v30 = sub_25E9D8120();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v127 = v32;
      *v31 = 136315138;
      v126 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D900, &qword_25E9D98B8);
      v33 = sub_25E9D81B0();
      v35 = sub_25E9887EC(v33, v34, &v127);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_25E971000, v29, v30, "Compute Metrics PRRequestContextEnd: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x25F8C51A0](v32, -1, -1);
      MEMORY[0x25F8C51A0](v31, -1, -1);
    }

    v17 = v121;
    v36 = v122;
    if (!a1)
    {

      v91 = sub_25E9D7F00();
      v92 = sub_25E9D8120();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_25E971000, v91, v92, "computePRHandle PRRequestContextStart Missing!", v93, 2u);
        MEMORY[0x25F8C51A0](v93, -1, -1);
      }

      return 0;
    }

    v105[1] = v3;
    v37 = *(a1 + 64);
    v109 = a1 + 64;
    v38 = 1 << *(a1 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v3 = v39 & v37;
    v108 = (v38 + 63) >> 6;
    v123 = (v114 + 16);
    v116 = (v114 + 32);
    v111 = a1;
    v112 = (v114 + 8);

    v40 = 0;
    v41 = v106;
    v115 = isUniquelyReferenced_nonNull_native;
    if (v3)
    {
      break;
    }

LABEL_13:
    if (v108 <= v40 + 1)
    {
      v47 = v40 + 1;
    }

    else
    {
      v47 = v108;
    }

    v48 = (v47 - 1);
    while (1)
    {
      a1 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (a1 >= v108)
      {
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8F8, &qword_25E9D98B0);
        (*(*(v90 - 8) + 56))(v36, 1, 1, v90);
        v3 = 0;
        goto LABEL_22;
      }

      v3 = *(v109 + 8 * a1);
      v40 = (v40 + 1);
      if (v3)
      {
        v120 = v41;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  while (1)
  {
    v120 = v41;
    a1 = v40;
LABEL_21:
    v49 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v50 = v49 | (a1 << 6);
    v51 = v111;
    v52 = v114;
    (*(v114 + 16))(v110, *(v111 + 48) + *(v114 + 72) * v50, v125);
    v53 = *(v51 + 56) + 16 * v50;
    LOBYTE(v51) = *v53;
    v54 = *(v53 + 8);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8F8, &qword_25E9D98B0);
    v56 = &v122[*(v55 + 48)];
    v57 = v122;
    (*(v52 + 32))();
    *v56 = v51;
    *(v56 + 1) = v54;
    v36 = v57;
    (*(*(v55 - 8) + 56))(v57, 0, 1, v55);
    v48 = a1;
    isUniquelyReferenced_nonNull_native = v115;
    v41 = v120;
    v17 = v121;
LABEL_22:
    sub_25E98B514(v36, v17, &qword_27FD0D8F0, &qword_25E9D98A8);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8F8, &qword_25E9D98B0);
    v59 = (*(*(v58 - 8) + 48))(v17, 1, v58);
    v60 = v113;
    if (v59 == 1)
    {

      v94 = sub_25E9D7F00();
      v95 = sub_25E9D8120();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v127 = v97;
        *v96 = 136315138;
        sub_25E981094(&qword_27FD0D798);
        v98 = sub_25E9D7F50();
        v100 = sub_25E9887EC(v98, v99, &v127);

        *(v96 + 4) = v100;

        _os_log_impl(&dword_25E971000, v94, v95, "Computed PRHandleTime for PlanResolution: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x25F8C51A0](v97, -1, -1);
        MEMORY[0x25F8C51A0](v96, -1, -1);
      }

      else
      {
      }

      return v41;
    }

    v120 = v48;
    v61 = &v17[*(v58 + 48)];
    v62 = *v61;
    v63 = *(v61 + 1);
    (*v116)(isUniquelyReferenced_nonNull_native, v17, v125);
    if (!v60)
    {
      break;
    }

    v64 = *(v60 + 16);
    v119 = v63;
    if (v64 && (v65 = sub_25E978FD4(isUniquelyReferenced_nonNull_native), (v66 & 1) != 0))
    {
      v67 = (*(v60 + 56) + 16 * v65);
      v68 = *v67;
      v69 = *(v67 + 1);
      v117 = v68;
      v118 = v69;
    }

    else
    {
      v117 = 89;
      v118 = 0;
    }

    v70 = v124;
    a1 = *v123;
    (*v123)(v124, isUniquelyReferenced_nonNull_native, v125);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v41;
    v72 = sub_25E978FD4(v70);
    v73 = v41[2];
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_51;
    }

    v76 = v71;
    if (v41[3] >= v75)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25E97DBF0();
      }
    }

    else
    {
      sub_25E979E18(v75, isUniquelyReferenced_nonNull_native);
      v77 = sub_25E978FD4(v124);
      if ((v76 & 1) != (v78 & 1))
      {
        result = sub_25E9D8330();
        __break(1u);
        return result;
      }

      v72 = v77;
    }

    isUniquelyReferenced_nonNull_native = v115;
    v41 = v127;
    if (v76)
    {
      v42 = (v127[7] + 32 * v72);
      v43 = v119;
      *v42 = v62;
      v42[1] = v43;
      v44 = v118;
      v42[2] = v117;
      v42[3] = v44;
      v45 = *v112;
      v46 = v125;
      (*v112)(v124, v125);
      v45(isUniquelyReferenced_nonNull_native, v46);
      v40 = v120;
      v17 = v121;
      v36 = v122;
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v127[(v72 >> 6) + 8] |= 1 << v72;
      v79 = v114;
      v80 = isUniquelyReferenced_nonNull_native;
      v82 = v124;
      v81 = v125;
      (a1)(v41[6] + *(v114 + 72) * v72, v124, v125);
      v83 = (v41[7] + 32 * v72);
      v84 = v119;
      *v83 = v62;
      v83[1] = v84;
      v85 = v118;
      v83[2] = v117;
      v83[3] = v85;
      a1 = *(v79 + 8);
      v86 = v82;
      isUniquelyReferenced_nonNull_native = v80;
      v17 = v112;
      (a1)(v86, v81);
      (a1)(v80, v81);
      v87 = v41[2];
      v88 = __OFADD__(v87, 1);
      v89 = v87 + 1;
      if (v88)
      {
        goto LABEL_52;
      }

      v41[2] = v89;
      v40 = v120;
      v17 = v121;
      v36 = v122;
      if (!v3)
      {
        goto LABEL_13;
      }
    }
  }

  v101 = sub_25E9D7F00();
  v102 = sub_25E9D8120();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_25E971000, v101, v102, "computePRHandle PRRequestContextEnd Missing!", v103, 2u);
    MEMORY[0x25F8C51A0](v103, -1, -1);
  }

  (*v112)(isUniquelyReferenced_nonNull_native, v125);
  return 0;
}

uint64_t sub_25E98B1E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E98B230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E98B298(uint64_t a1)
{
  v2 = type metadata accessor for PRRequestContextMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E98B2F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_25E98B498(uint64_t a1)
{
  *a1 = 91;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  return result;
}

double sub_25E98B4E0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  return result;
}

uint64_t sub_25E98B514(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E98B57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Bookmark.userDefaultsKey.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void *sub_25E98B630(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_25E9D7FA0();
  v12 = [v10 initWithSuiteName_];

  v5[2] = v12;
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v13 = sub_25E9D7F10();
  __swift_project_value_buffer(v13, qword_280F6FE78);

  v14 = sub_25E9D7F00();
  v15 = sub_25E9D8120();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    v18 = sub_25E9887EC(a3, a4, &v21);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_25E971000, v14, v15, "Domain name is %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F8C51A0](v17, -1, -1);
    MEMORY[0x25F8C51A0](v16, -1, -1);
  }

  else
  {
  }

  v5[3] = a1;
  v5[4] = a2;
  v21 = a1;
  v22 = a2;

  MEMORY[0x25F8C4910](0xD000000000000015, 0x800000025E9DD680);
  v19 = v22;
  v5[5] = v21;
  v5[6] = v19;
  return v5;
}

uint64_t sub_25E98B828@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25E9D77A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  if (qword_280F700C0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_280F700C8);
  (*(v5 + 16))(v11, v12, v4);
  v13 = *(v1 + 16);
  if (v13)
  {
    swift_beginAccess();
    v14 = *(v2 + 40);
    v15 = *(v2 + 48);

    v16 = sub_25E9D7FA0();

    v17 = [v13 valueForKey_];

    if (v17)
    {
      sub_25E9D81E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      sub_25E98C2B8(&v48);
      v18 = *(v2 + 40);
      v19 = *(v2 + 48);

      v20 = sub_25E9D7FA0();

      [v13 doubleForKey_];
      v22 = v21;

      if (qword_280F6FE70 != -1)
      {
        swift_once();
      }

      v23 = sub_25E9D7F10();
      __swift_project_value_buffer(v23, qword_280F6FE78);

      v24 = sub_25E9D7F00();
      v25 = sub_25E9D8120();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v48 = v27;
        *v26 = 136315394;
        v45 = v11;
        v28 = a1;
        v30 = *(v2 + 40);
        v29 = *(v2 + 48);

        v31 = sub_25E9887EC(v30, v29, &v48);

        *(v26 + 4) = v31;
        a1 = v28;
        v11 = v45;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v22;
        _os_log_impl(&dword_25E971000, v24, v25, "The userdefault has key %s with the value %f", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x25F8C51A0](v27, -1, -1);
        MEMORY[0x25F8C51A0](v26, -1, -1);
      }

      sub_25E9D7760();
      sub_25E98C320();
      v32 = sub_25E9D7F80();
      v33 = *(v5 + 8);
      v34 = (v5 + 32);
      if (v32)
      {
        v33(v11, v4);
        return (*v34)(a1, v9, v4);
      }

      else
      {
        v33(v9, v4);
        return (*v34)(a1, v11, v4);
      }
    }
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  sub_25E98C2B8(&v48);
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v36 = sub_25E9D7F10();
  __swift_project_value_buffer(v36, qword_280F6FE78);

  v37 = sub_25E9D7F00();
  v38 = sub_25E9D8120();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v46 = v40;
    *v39 = 136315138;
    swift_beginAccess();
    v42 = *(v2 + 40);
    v41 = *(v2 + 48);

    v43 = sub_25E9887EC(v42, v41, &v46);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_25E971000, v37, v38, "The userdefault contained no value for %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x25F8C51A0](v40, -1, -1);
    MEMORY[0x25F8C51A0](v39, -1, -1);
  }

  return (*(v5 + 32))(a1, v11, v4);
}

uint64_t sub_25E98BD88(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (v4)
  {
    v5 = v1;
    sub_25E9D7770();
    v7 = v6;
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v8 = sub_25E9D7F10();
    __swift_project_value_buffer(v8, qword_280F6FE78);

    v9 = sub_25E9D7F00();
    v10 = sub_25E9D8120();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136315394;
      swift_beginAccess();
      v13 = v1[5];
      v14 = v1[6];

      v15 = sub_25E9887EC(v13, v14, &v37);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_25E971000, v9, v10, "Set key %s to %f", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x25F8C51A0](v12, -1, -1);
      MEMORY[0x25F8C51A0](v11, -1, -1);
    }

    v16 = v1[2];
    if (v16)
    {
      v17 = v16;
      v18 = sub_25E9D80D0();
      swift_beginAccess();
      v20 = v5[5];
      v19 = v5[6];

      v21 = sub_25E9D7FA0();

      [v17 setValue:v18 forKey:v21];
    }

    else
    {

      v29 = sub_25E9D7F00();
      v30 = sub_25E9D8120();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38 = v32;
        *v31 = 136315138;
        swift_beginAccess();
        v34 = v5[5];
        v33 = v5[6];

        v35 = sub_25E9887EC(v34, v33, &v38);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_25E971000, v29, v30, "Fail to set key %s due to empty userdefaults", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x25F8C51A0](v32, -1, -1);
        MEMORY[0x25F8C51A0](v31, -1, -1);
      }
    }

    v36 = sub_25E9D77A0();
    return (*(*(v36 - 8) + 8))(a1, v36);
  }

  else
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v22 = sub_25E9D7F10();
    __swift_project_value_buffer(v22, qword_280F6FE78);
    v23 = sub_25E9D7F00();
    v24 = sub_25E9D8120();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_25E971000, v23, v24, "Skip userDefault set due to empty identifier", v25, 2u);
      MEMORY[0x25F8C51A0](v25, -1, -1);
    }

    v26 = sub_25E9D77A0();
    v27 = *(*(v26 - 8) + 8);

    return v27(a1, v26);
  }
}

uint64_t Bookmark.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t Bookmark.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_25E98C2B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D908, &unk_25E9D9910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25E98C320()
{
  result = qword_27FD0D910;
  if (!qword_27FD0D910)
  {
    sub_25E9D77A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D910);
  }

  return result;
}

uint64_t sub_25E98C378(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEF6E6F6974634164;
  v5 = 0x6E41686372616553;
  if (a1 == 5)
  {
    v5 = 0x6E41686372616553;
  }

  else
  {
    v4 = 0xED00006D69685364;
  }

  v6 = 0x800000025E9DC9A0;
  v7 = 0x7041656C706D6953;
  if (a1 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v6 = 0xEF746E65746E4970;
  }

  if (a1 > 4u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x800000025E9DC970;
  v9 = 0xD000000000000015;
  if (a1 != 1)
  {
    v9 = 0x6C616E6F73726550;
    v8 = 0xEA00000000004151;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E55;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x800000025E9DC970;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v12 = 0xEA00000000004151;
        if (v10 != 0x6C616E6F73726550)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEF6E6F6974634164;
      if (v10 != 0x6E41686372616553)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xED00006D69685364;
      if (v10 != 0x6E41686372616553)
      {
LABEL_42:
        v13 = sub_25E9D8300();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000025E9DC9A0;
    if (v10 != 0xD000000000000013)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0xEF746E65746E4970;
    if (v10 != 0x7041656C706D6953)
    {
      goto LABEL_42;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_25E98C5E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E65657263536E4FLL;
  v5 = 0xEE006E6F74747542;
  if (a1 != 5)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x800000025E9DCB50;
  }

  v6 = 0x61546F54646C6F48;
  v7 = 0xEA00000000006B6CLL;
  if (a1 != 3)
  {
    v6 = 0x525654656C707041;
    v7 = 0xED000065746F6D65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v6 = v4;
  }

  v8 = 0xD000000000000011;
  v9 = 0x800000025E9DCB00;
  if (a1 != 1)
  {
    v8 = 0x6547726576726553;
    v9 = 0xEF6465746172656ELL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E55;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x800000025E9DCB00;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xEF6465746172656ELL;
        if (v10 != 0x6547726576726553)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEE006E6F74747542;
      if (v10 != 0x6E65657263536E4FLL)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0x800000025E9DCB50;
      if (v10 != 0xD00000000000001CLL)
      {
LABEL_40:
        v13 = sub_25E9D8300();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA00000000006B6CLL;
    if (v10 != 0x61546F54646C6F48)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xED000065746F6D65;
    if (v10 != 0x525654656C707041)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_25E98C860(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "Failed";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000020;
    }

    else
    {
      v6 = 0xD00000000000002BLL;
    }

    if (v4)
    {
      v7 = "urnGrainLatencyUploadFailed";
    }

    else
    {
      v7 = "Failed";
    }
  }

  else
  {
    if (a1 == 2)
    {
      v5 = "IERequestGrainUploadFailed";
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v5 = "IEPlannerGrainUploadFailed";
LABEL_12:
      v7 = (v5 - 32);
      v6 = 0xD00000000000001ALL;
      goto LABEL_14;
    }

    v7 = "IEPlannerGrainUploadFailed";
    v6 = 0xD000000000000019;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000020;
    }

    else
    {
      v2 = 0xD00000000000002BLL;
    }

    if (a2)
    {
      v3 = "urnGrainLatencyUploadFailed";
    }
  }

  else if (a2 == 2)
  {
    v3 = "encyUploadFailed";
  }

  else if (a2 == 3)
  {
    v3 = "IERequestGrainUploadFailed";
  }

  else
  {
    v3 = "IEPlannerGrainUploadFailed";
    v2 = 0xD000000000000019;
  }

  if (v6 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E9D8300();
  }

  return v8 & 1;
}

uint64_t sub_25E98C9C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006E6F697463;
  v3 = 0x4174736575716572;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  if (a1 == 5)
  {
    v6 = 0xD000000000000015;
    v5 = 0x800000025E9DCBE0;
  }

  v7 = 0x800000025E9DCBB0;
  v8 = 0xD00000000000001ALL;
  if (a1 != 3)
  {
    v8 = 0x65526E6F69746361;
    v7 = 0xEE0065736E6F7073;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x64656D7265746E69;
  v10 = 0xEC00000065746169;
  if (a1 != 1)
  {
    v9 = 0xD000000000000015;
    v10 = 0x800000025E9DCB90;
  }

  if (!a1)
  {
    v9 = 0x4174736575716572;
    v10 = 0xED00006E6F697463;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000065746169;
        if (v11 != 0x64656D7265746E69)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0x800000025E9DCB90;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000025E9DCBE0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0x800000025E9DCBB0;
      if (v11 != 0xD00000000000001ALL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x65526E6F69746361;
    v2 = 0xEE0065736E6F7073;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_25E9D8300();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

void SiriTurnGrainCalculator.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = qword_27FD0DD78;
    qword_27FD0DD78 = a1;
    v5 = a1;
  }

  *a2 = a1;
}

void SiriTurnGrainCalculator.extractLatencies()(_OWORD *a1@<X8>)
{
  v197 = sub_25E9D77F0();
  v4 = *(v197 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v197);
  v195 = (&v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v168 - v8;
  v10 = *v1;
  SiriTurnGrainCalculator.computeSRT()(&v208);
  v11 = v2;
  v12 = 0x280F6F000;
  if (v2)
  {
    goto LABEL_44;
  }

  v193 = v209;
  v194 = v208;
  swift_beginAccess();
  v13 = qword_27FD0DD78;
  v192 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D8B8, 0x277D5A0F0);
    v14 = v13;
    v15 = sub_25E9D7E70();

    if (v15 >> 62)
    {
      v16 = sub_25E9D8290();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v16 = 0;
  }

  v222 = MEMORY[0x277D84F98];
  type metadata accessor for SELFComponent.PR();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = sub_25E9870FC(&v222);
  swift_setDeallocating();
  v19 = *(v17 + 16);

  swift_deallocClassInstance();
  if (!v18)
  {
    v18 = sub_25E980308(MEMORY[0x277D84F90]);
  }

  v188 = v16;

  v222 = v18;
  if (qword_280F6FE70 != -1)
  {
    swift_once();
  }

  v191 = v10;
  v20 = sub_25E9D7F10();
  v190 = __swift_project_value_buffer(v20, qword_280F6FE78);
  v21 = sub_25E9D7F00();
  v22 = sub_25E9D8120();
  v23 = os_log_type_enabled(v21, v22);
  v196 = 0;
  v187 = v9;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *&v208 = swift_slowAlloc();
    v186 = a1;
    v25 = v208;
    *v24 = 136315138;
    type metadata accessor for PnRPlanResolutionRecord();
    sub_25E98F5E4();

    v26 = sub_25E9D7F40();
    v189 = v4;
    v28 = v27;

    v29 = sub_25E9887EC(v26, v28, &v208);
    v4 = v189;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_25E971000, v21, v22, "Plan Resolution metrics extracted: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v30 = v25;
    a1 = v186;
    MEMORY[0x25F8C51A0](v30, -1, -1);
    MEMORY[0x25F8C51A0](v24, -1, -1);
  }

  type metadata accessor for SELFComponent.PlanGeneration();
  swift_allocObject();
  SELFComponent.PlanGeneration.init()();

  v31 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D918, 0x277D59B80);
    v32 = v31;
    v33 = sub_25E9D7E70();

    if (v33 >> 62)
    {
      v186 = sub_25E9D8290();
    }

    else
    {
      v186 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v186 = 0;
  }

  v207 = MEMORY[0x277D84F98];
  swift_allocObject();
  SELFComponent.PlanGeneration.init()();
  v34 = v196;
  v35 = sub_25E98FCA4(&v207);
  v11 = v34;
  if (v34)
  {

LABEL_43:

    v12 = 0x280F6F000uLL;
LABEL_44:
    v196 = 0;
    if (*(v12 + 3696) != -1)
    {
      swift_once();
    }

    v77 = sub_25E9D7F10();
    __swift_project_value_buffer(v77, qword_280F6FE78);
    *&v208 = 0;
    *(&v208 + 1) = 0xE000000000000000;
    sub_25E9D8240();

    *&v208 = 0xD00000000000002FLL;
    *(&v208 + 1) = 0x800000025E9DD6A0;
    v78 = v195;
    sub_25E9D7EF0();
    v79 = sub_25E9D77C0();
    v81 = v80;
    (*(v4 + 8))(v78, v197);
    MEMORY[0x25F8C4910](v79, v81);

    v82 = v208;

    v83 = sub_25E9D7F00();
    v84 = sub_25E9D8120();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v208 = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_25E9887EC(v82, *(&v82 + 1), &v208);
      _os_log_impl(&dword_25E971000, v83, v84, "%s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x25F8C51A0](v86, -1, -1);
      MEMORY[0x25F8C51A0](v85, -1, -1);
    }

    LOBYTE(v208) = 0x80;
    _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(&v208, v82, *(&v82 + 1));

    _s20PnROnDeviceFramework14FileRadarUtilsO14autoBugCapture9errorType0k3SubL003subL7ContextySS_S2StFZ_0(0x6C61746146, 0xE500000000000000, 0xD000000000000014, 0x800000025E9D9910);

    sub_25E98F52C(&v208);
    v87 = v219;
    a1[10] = v218;
    a1[11] = v87;
    v88 = v221;
    a1[12] = v220;
    a1[13] = v88;
    v89 = v215;
    a1[6] = v214;
    a1[7] = v89;
    v90 = v217;
    a1[8] = v216;
    a1[9] = v90;
    v91 = v211;
    a1[2] = v210;
    a1[3] = v91;
    v92 = v213;
    a1[4] = v212;
    a1[5] = v92;
    v93 = v209;
    *a1 = v208;
    a1[1] = v93;
    return;
  }

  v36 = v35;

  v196 = 0;
  if (!v36)
  {
    v36 = sub_25E980524(MEMORY[0x277D84F90]);
  }

  v207 = v36;
  v37 = sub_25E9D7F00();
  v38 = sub_25E9D8120();
  v39 = os_log_type_enabled(v37, v38);
  v183 = v31;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v184 = v18;
    v42 = v41;
    *&v208 = v41;
    *v40 = 136315138;

    v43 = sub_25E9D7F40();
    v189 = v4;
    v44 = v36;
    v46 = v45;

    v47 = sub_25E9887EC(v43, v46, &v208);
    v36 = v44;
    v4 = v189;

    *(v40 + 4) = v47;
    _os_log_impl(&dword_25E971000, v37, v38, "Plan Generation metrics extracted: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v48 = v42;
    v18 = v184;
    MEMORY[0x25F8C51A0](v48, -1, -1);
    MEMORY[0x25F8C51A0](v40, -1, -1);
  }

  v182 = sub_25E997C24();
  v185 = v49;
  type metadata accessor for SELFComponent.QD();
  swift_allocObject();
  SELFComponent.QD.init()();

  v50 = qword_27FD0DD78;
  v51 = MEMORY[0x277D84F98];
  v181 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D920, 0x277D5A228);
    v52 = v50;
    v53 = sub_25E9D7E80();

    if (v53 >> 62)
    {
      v180 = sub_25E9D8290();
    }

    else
    {
      v180 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v180 = 0;
  }

  v206 = v51;
  swift_allocObject();
  SELFComponent.QD.init()();
  v54 = v196;
  sub_25E9AF338(&v206);
  v11 = v54;
  if (v54)
  {

    goto LABEL_43;
  }

  v56 = v55;

  v196 = 0;
  if (v56)
  {
    v57 = v56;
  }

  else
  {
    v57 = sub_25E9806B0(MEMORY[0x277D84F90]);
  }

  v58 = MEMORY[0x277D84F98];

  v206 = v57;
  v59 = sub_25E9D7F00();
  v60 = sub_25E9D8120();
  v61 = os_log_type_enabled(v59, v60);
  v179 = v57;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v184 = v18;
    v64 = v63;
    *&v208 = v63;
    *v62 = 136315138;

    v65 = sub_25E9D7F40();
    v189 = v4;
    v66 = v36;
    v68 = v67;

    v69 = sub_25E9887EC(v65, v68, &v208);
    v36 = v66;
    v4 = v189;

    *(v62 + 4) = v69;
    _os_log_impl(&dword_25E971000, v59, v60, "Print All QD: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    v70 = v64;
    v18 = v184;
    MEMORY[0x25F8C51A0](v70, -1, -1);
    v71 = v62;
    v58 = MEMORY[0x277D84F98];
    MEMORY[0x25F8C51A0](v71, -1, -1);
  }

  v175 = sub_25E997D40();
  v176 = sub_25E997BF8();
  type metadata accessor for SELFComponent.RG();
  swift_allocObject();
  SELFComponent.RG.init()();

  v72 = qword_27FD0DD78;
  v178 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D928, 0x277D5A478);
    v73 = v72;
    v74 = sub_25E9D7E80();

    if (v74 >> 62)
    {
      v177 = sub_25E9D8290();
    }

    else
    {
      v177 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v177 = 0;
  }

  v205 = v58;
  swift_allocObject();
  SELFComponent.RG.init()();
  v75 = v196;
  v76 = sub_25E99E3C0(&v205);
  v11 = v75;
  if (v75)
  {

    goto LABEL_43;
  }

  v94 = v76;

  v196 = 0;
  if (v94)
  {
    v95 = v94;
  }

  else
  {
    v95 = sub_25E98083C(MEMORY[0x277D84F90]);
  }

  v205 = v95;
  v96 = sub_25E9D7F00();
  v97 = sub_25E9D8120();
  v98 = os_log_type_enabled(v96, v97);
  v174 = v95;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v184 = v18;
    v101 = v100;
    *&v208 = v100;
    *v99 = 136315138;

    v102 = sub_25E9D7F40();
    v189 = v4;
    v103 = v36;
    v105 = v104;

    v106 = sub_25E9887EC(v102, v105, &v208);
    v36 = v103;
    v4 = v189;

    *(v99 + 4) = v106;
    _os_log_impl(&dword_25E971000, v96, v97, "Response Generation metrics extracted: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    v107 = v101;
    v18 = v184;
    MEMORY[0x25F8C51A0](v107, -1, -1);
    MEMORY[0x25F8C51A0](v99, -1, -1);
  }

  type metadata accessor for SELFComponent.SearchTool();
  swift_allocObject();
  SELFComponent.SearchTool.init()();

  v108 = qword_27FD0DD78;
  v173 = qword_27FD0DD78;
  if (qword_27FD0DD78)
  {
    sub_25E98F558(0, &qword_27FD0D690, 0x277D5AE38);
    v109 = v108;
    v110 = sub_25E9D7E70();

    if (v110 >> 62)
    {
      v172 = sub_25E9D8290();
    }

    else
    {
      v172 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v172 = 0;
  }

  v204 = MEMORY[0x277D84F98];
  swift_allocObject();
  SELFComponent.SearchTool.init()();
  v111 = v196;
  v112 = sub_25E976154(&v204);
  v11 = v111;
  if (v111)
  {

    goto LABEL_43;
  }

  v113 = v112;

  v196 = 0;
  if (!v113)
  {
    v113 = sub_25E98017C(MEMORY[0x277D84F90]);
  }

  v171 = v36;

  v204 = v113;
  v114 = v113;
  v115 = sub_25E9D7F00();
  v116 = sub_25E9D8120();
  v117 = os_log_type_enabled(v115, v116);
  v170 = v114;
  if (v117)
  {
    v118 = swift_slowAlloc();
    DWORD2(v169) = v116;
    v119 = v118;
    v120 = swift_slowAlloc();
    v184 = v18;
    v121 = v120;
    *&v208 = v120;
    *v119 = 136315138;

    v122 = sub_25E9D7F40();
    v124 = v123;

    v125 = sub_25E9887EC(v122, v124, &v208);

    *(v119 + 4) = v125;
    _os_log_impl(&dword_25E971000, v115, BYTE8(v169), "Search Tool metrics extracted: %s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v121);
    v126 = v121;
    v18 = v184;
    MEMORY[0x25F8C51A0](v126, -1, -1);
    v127 = v119;
    v128 = MEMORY[0x277D84F98];
    MEMORY[0x25F8C51A0](v127, -1, -1);
  }

  else
  {

    v128 = MEMORY[0x277D84F98];
  }

  v203 = v128;
  type metadata accessor for SELFComponent.Executor();
  swift_allocObject();
  SELFComponent.Executor.init()();
  v129 = v196;
  sub_25E9D6004(&v203);
  v11 = v129;
  if (v129)
  {

    goto LABEL_43;
  }

  v131 = v130;

  v189 = v4;
  if (!v131)
  {
    v131 = sub_25E980A5C(MEMORY[0x277D84F90]);
  }

  v196 = 0;

  v203 = v131;
  v132 = sub_25E9D7F00();
  v133 = sub_25E9D8120();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    *&v208 = v195;
    *v134 = 136315138;

    v135 = sub_25E9D7F40();
    v136 = v18;
    v138 = v137;

    v139 = sub_25E9887EC(v135, v138, &v208);
    v18 = v136;

    *(v134 + 4) = v139;
    _os_log_impl(&dword_25E971000, v132, v133, "Print All Executor: %s", v134, 0xCu);
    v140 = v195;
    __swift_destroy_boxed_opaque_existential_0(v195);
    MEMORY[0x25F8C51A0](v140, -1, -1);
    MEMORY[0x25F8C51A0](v134, -1, -1);
  }

  v141 = v183;
  type metadata accessor for SELFComponent.IFTranscript();
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_25E9D9920;
  sub_25E99A324(&v208);
  swift_setDeallocating();
  v143 = *(v142 + 24);
  sub_25E98F5A0(*(v142 + 16));
  swift_deallocClassInstance();
  v144 = v208;

  v146 = SiriTurnGrainCalculator.computeSearchToolCrossComponentMetrics(searchToolRecords:iftEventsRecord:)(v145, &v208);

  sub_25E98F5A0(v144);

  v147 = v187;
  sub_25E9D7EF0();
  v195 = sub_25E9D77C0();
  v191 = v148;
  (*(v189 + 8))(v147, v197);

  v149 = v179;

  v150 = v174;

  v151 = 0;
  v152 = 0;
  if ((v175 & 0x100000000) == 0)
  {
    v151 = sub_25E9D8170();
  }

  v190 = v152;
  v197 = v151;
  v184 = v18;
  *&v169 = v131;
  *(&v169 + 1) = v146;
  v153 = v150;
  v154 = v149;
  if ((v176 & 0x100000000) != 0)
  {

    v189 = 0;
    v187 = 0;
  }

  else
  {
    v189 = sub_25E9D8160();
    v187 = v155;
  }

  LODWORD(v176) = v173 == 0;
  v156 = v178 == 0;
  v157 = v181 == 0;
  v158 = v141 == 0;
  v159 = v192 == 0;
  v160 = v171;

  v202 = v157;
  v201 = v159;
  v200 = v158;
  v199 = v156;
  v198 = v176;
  *&v208 = v195;
  *(&v208 + 1) = v191;
  v210 = v193;
  v209 = v194;
  *&v211 = v154;
  *(&v211 + 1) = v180;
  LOBYTE(v212) = v157;
  *(&v212 + 1) = v184;
  *&v213 = v188;
  BYTE8(v213) = v159;
  *&v214 = v160;
  *(&v214 + 1) = v186;
  LOBYTE(v215) = v158;
  *(&v215 + 1) = v153;
  *&v216 = v177;
  BYTE8(v216) = v156;
  v217 = v169;
  *&v218 = v172;
  BYTE8(v218) = v176;
  *&v219 = v182;
  *(&v219 + 1) = v185;
  *&v220 = v197;
  *(&v220 + 1) = v190;
  *&v221 = v189;
  *(&v221 + 1) = v187;
  nullsub_1(&v208);
  v161 = v219;
  a1[10] = v218;
  a1[11] = v161;
  v162 = v221;
  a1[12] = v220;
  a1[13] = v162;
  v163 = v215;
  a1[6] = v214;
  a1[7] = v163;
  v164 = v217;
  a1[8] = v216;
  a1[9] = v164;
  v165 = v211;
  a1[2] = v210;
  a1[3] = v165;
  v166 = v213;
  a1[4] = v212;
  a1[5] = v166;
  v167 = v209;
  *a1 = v208;
  a1[1] = v167;
}

void SiriTurnGrainCalculator.computeSRT()(uint64_t *a1@<X8>)
{
  type metadata accessor for SELFComponent.UEI();
  swift_initStackObject();
  sub_25E99701C(&v29);
  if (!v1)
  {
    v4 = v29;
    v3 = v30;
    type metadata accessor for SELFComponent.MH();
    swift_initStackObject();
    sub_25E99589C(&v29);
    v27 = v4;
    v28 = v3;
    v5 = v29;
    v6 = v30;
    swift_initStackObject();
    sub_25E9974D8(&v29);
    v8 = v29;
    v7 = v30;
    v9 = sub_25E997BF8();
    swift_initStackObject();
    sub_25E9978A0(&v29);
    v10 = v29;
    type metadata accessor for SELFComponent.ACTV();
    swift_initStackObject();
    sub_25E9D3374(&v29);
    if (v10 == 7 || (v11 = v29, v12 = v30, (sub_25E98C5E0(v10, 3u) & 1) == 0))
    {
      v14 = (v9 & 0x1FFFFFFFFLL) == 1;
      if ((v9 & 0x1FFFFFFFFLL) == 1)
      {
        v13 = v5;
      }

      else
      {
        v13 = v8;
      }

      if (v14)
      {
        v7 = v6;
      }
    }

    else
    {
      v13 = v11;
      v7 = v12;
    }

    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v15 = sub_25E9D7F10();
    __swift_project_value_buffer(v15, qword_280F6FE78);
    v16 = sub_25E9D7F00();
    v17 = sub_25E9D8120();
    if (os_log_type_enabled(v16, v17))
    {
      v26 = v13;
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v18 = 136315138;
      v29 = v26;
      v30 = v7;
      v19 = v28;
      v31 = v27;
      v32 = v28;
      v20 = PnRLatencyContextMetrics.description.getter();
      v22 = v7;
      v23 = sub_25E9887EC(v20, v21, &v33);

      *(v18 + 4) = v23;
      v7 = v22;
      _os_log_impl(&dword_25E971000, v16, v17, "Compute Metrics srt: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F8C51A0](v25, -1, -1);
      v24 = v18;
      v13 = v26;
      MEMORY[0x25F8C51A0](v24, -1, -1);
    }

    else
    {

      v19 = v28;
    }

    *a1 = v13;
    a1[1] = v7;
    a1[2] = v27;
    a1[3] = v19;
  }
}

uint64_t SiriTurnGrainCalculator.computeSearchToolCrossComponentMetrics(searchToolRecords:iftEventsRecord:)(int64_t a1, unint64_t *a2)
{
  v175 = *a2;
  v173 = a2[1];
  if (qword_280F6FE70 != -1)
  {
LABEL_151:
    swift_once();
  }

  v3 = sub_25E9D7F10();
  __swift_project_value_buffer(v3, qword_280F6FE78);
  v4 = sub_25E9D7F00();
  v5 = sub_25E9D8120();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25E971000, v4, v5, "inside computeSearchToolCrossComponentMetrics()", v6, 2u);
    MEMORY[0x25F8C51A0](v6, -1, -1);
  }

  v7 = sub_25E98017C(MEMORY[0x277D84F90]);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v165 = v12;
  v166 = a1;
  for (i = a1 + 64; ; v8 = i)
  {
    if (!v11)
    {
      v15 = v175;
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v16 >= v12)
        {

          return v7;
        }

        v11 = *(v8 + 8 * v16);
        ++v13;
        if (v11)
        {
          v170 = v7;
          v13 = v16;
          goto LABEL_18;
        }
      }

LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v170 = v7;
    v15 = v175;
LABEL_18:
    v17 = __clz(__rbit64(v11)) | (v13 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v176 = *v18;
    v20 = *(a1 + 56) + 304 * v17;
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    v171 = *(v20 + 32);
    v169 = *(v20 + 40);
    v186 = 0x5AuLL;
    v187 = 0uLL;
    v184 = 0x5AuLL;
    v23 = v21;
    v185 = 0uLL;
    v24 = v21 - 89 >= 2 && v15 >= 2;
    v174 = v19;
    if (v24)
    {
      v161 = v21;
      v32 = 1 << *(v15 + 32);
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v34 = v33 & *(v15 + 64);
      v35 = (v32 + 63) >> 6;

      v36 = v175;
      a1 = 0;
      v37 = MEMORY[0x277D84F90];
      v167 = MEMORY[0x277D84F90];
      if (v34)
      {
LABEL_38:
        while (2)
        {
          while (1)
          {
            v38 = __clz(__rbit64(v34));
            v34 &= v34 - 1;
            v39 = *(v36 + 56) + ((a1 << 10) | (16 * v38));
            v40 = *(v39 + 8);
            if (v40 >= v22)
            {
              break;
            }

            v159 = *v39;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v167 = sub_25E983D78(0, *(v167 + 2) + 1, 1, v167);
            }

            v43 = *(v167 + 2);
            v42 = *(v167 + 3);
            v44 = v43 + 1;
            if (v43 >= v42 >> 1)
            {
              v157 = *(v167 + 2);
              v158 = v43 + 1;
              v49 = sub_25E983D78((v42 > 1), v43 + 1, 1, v167);
              v43 = v157;
              v44 = v158;
              v167 = v49;
            }

            *(v167 + 2) = v44;
            v45 = &v167[16 * v43];
            v45[32] = v159;
            *(v45 + 5) = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_25E983C74(0, *(v37 + 2) + 1, 1, v37);
            }

            v47 = *(v37 + 2);
            v46 = *(v37 + 3);
            v48 = v47 + 1;
            v36 = v175;
            if (v47 >= v46 >> 1)
            {
              v160 = v47 + 1;
              v50 = v37;
              v51 = *(v37 + 2);
              v52 = sub_25E983C74((v46 > 1), v47 + 1, 1, v50);
              v48 = v160;
              v47 = v51;
              v37 = v52;
              v36 = v175;
            }

            *(v37 + 2) = v48;
            *&v37[8 * v47 + 32] = v40;
            if (!v34)
            {
              goto LABEL_40;
            }
          }

          if (v34)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
      v19 = v174;
      while (1)
      {
        v41 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (v41 >= v35)
        {
          break;
        }

        v34 = *(v175 + 64 + 8 * v41);
        ++a1;
        if (v34)
        {
          a1 = v41;
          goto LABEL_38;
        }
      }

      v53 = *(v37 + 2);
      if (!v53)
      {
LABEL_69:

        v69 = sub_25E9D7F00();
        v70 = sub_25E9D8120();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&__src[0] = v72;
          *v71 = 136315138;
          *(v71 + 4) = sub_25E9887EC(v176, v174, __src);
          _os_log_impl(&dword_25E971000, v69, v70, "No corresponding queriesCreated Event for searchHandleStart for %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x25F8C51A0](v72, -1, -1);
          MEMORY[0x25F8C51A0](v71, -1, -1);
        }

        goto LABEL_76;
      }

      v54 = *(v37 + 4);
      v55 = v53 - 1;
      if (v53 != 1)
      {
        if (v53 >= 5)
        {
          v56 = v55 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v57 = vdupq_n_s64(v54);
          v58 = (v37 + 56);
          v59 = v55 & 0xFFFFFFFFFFFFFFFCLL;
          v60 = v57;
          do
          {
            v57 = vbslq_s8(vcgtq_u64(v57, v58[-1]), v57, v58[-1]);
            v60 = vbslq_s8(vcgtq_u64(v60, *v58), v60, *v58);
            v58 += 2;
            v59 -= 4;
          }

          while (v59);
          v61 = vbslq_s8(vcgtq_u64(v57, v60), v57, v60);
          v62 = vextq_s8(v61, v61, 8uLL).u64[0];
          v54 = vbsl_s8(vcgtd_u64(v61.u64[0], v62), *v61.i8, v62);
          if (v55 != (v55 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_62;
          }
        }

        else
        {
          v56 = 1;
LABEL_62:
          v63 = v53 - v56;
          v64 = &v37[8 * v56 + 32];
          do
          {
            v66 = *v64++;
            v65 = v66;
            if (v54 <= v66)
            {
              v54 = v65;
            }

            --v63;
          }

          while (v63);
        }
      }

      v67 = 0;
      v68 = (v167 + 40);
      while (*&v37[8 * v67 + 32] != v54)
      {
        ++v67;
        v68 += 2;
        if (v53 == v67)
        {
          goto LABEL_69;
        }
      }

      if (v67 >= *(v167 + 2))
      {
        goto LABEL_153;
      }

      v73 = *(v68 - 8);
      v74 = *v68;
      swift_beginAccess();
      *&v186 = v73;
      *(&v186 + 1) = v74;
      *&v187 = v161;
      *(&v187 + 1) = v22;

      v75 = sub_25E9D7F00();
      v76 = sub_25E9D8120();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        *&v182[0] = v162;
        *v77 = 136315394;
        *(v77 + 4) = sub_25E9887EC(v176, v174, v182);
        *(v77 + 12) = 2080;
        __src[0] = v186;
        __src[1] = v187;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D930, &qword_25E9D9950);
        v78 = sub_25E9D81B0();
        v80 = sub_25E9887EC(v78, v79, v182);

        *(v77 + 14) = v80;
        _os_log_impl(&dword_25E971000, v75, v76, "Computed preSearchTime for searchToolID %s and is %s", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8C51A0](v162, -1, -1);
        MEMORY[0x25F8C51A0](v77, -1, -1);
      }

LABEL_76:
      v29 = v173;
      if (v171 != 89 && v173)
      {
LABEL_78:
        v81 = 1 << *(v29 + 32);
        v82 = *(v29 + 64);
        if (v81 < 64)
        {
          v83 = ~(-1 << v81);
        }

        else
        {
          v83 = -1;
        }

        v84 = v83 & v82;
        a1 = (v81 + 63) >> 6;

        v85 = v173;
        v86 = 0;
        v87 = MEMORY[0x277D84F90];
        v168 = MEMORY[0x277D84F90];
        for (j = v169; v84; *&v87[8 * v98 + 32] = v91)
        {
LABEL_82:
          while (1)
          {
            v89 = __clz(__rbit64(v84));
            v84 &= v84 - 1;
            v90 = *(v85 + 56) + ((v86 << 10) | (16 * v89));
            v91 = *(v90 + 8);
            if (j < v91)
            {
              break;
            }

            if (!v84)
            {
              goto LABEL_84;
            }
          }

          v163 = *v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v168 = sub_25E983D78(0, *(v168 + 2) + 1, 1, v168);
          }

          v94 = *(v168 + 2);
          v93 = *(v168 + 3);
          v95 = v94 + 1;
          if (v94 >= v93 >> 1)
          {
            v100 = sub_25E983D78((v93 > 1), v94 + 1, 1, v168);
            v95 = v94 + 1;
            v168 = v100;
          }

          *(v168 + 2) = v95;
          v96 = &v168[16 * v94];
          v96[32] = v163;
          *(v96 + 5) = v91;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_25E983C74(0, *(v87 + 2) + 1, 1, v87);
          }

          v98 = *(v87 + 2);
          v97 = *(v87 + 3);
          v99 = v98 + 1;
          v85 = v173;
          j = v169;
          if (v98 >= v97 >> 1)
          {
            v101 = sub_25E983C74((v97 > 1), v98 + 1, 1, v87);
            v99 = v98 + 1;
            j = v169;
            v87 = v101;
            v85 = v173;
          }

          *(v87 + 2) = v99;
        }

LABEL_84:
        v19 = v174;
        while (1)
        {
          v92 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_148;
          }

          if (v92 >= a1)
          {
            break;
          }

          v84 = *(v173 + 64 + 8 * v92);
          ++v86;
          if (v84)
          {
            v86 = v92;
            goto LABEL_82;
          }
        }

        v106 = *(v87 + 2);
        if (!v106)
        {
LABEL_116:

          v122 = sub_25E9D7F00();
          v123 = sub_25E9D8120();

          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            *&__src[0] = v125;
            *v124 = 136315138;
            *(v124 + 4) = sub_25E9887EC(v176, v174, __src);
            _os_log_impl(&dword_25E971000, v122, v123, "No corresponding queriesCreated Event for searchHandleStart for %s", v124, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v125);
            MEMORY[0x25F8C51A0](v125, -1, -1);
            MEMORY[0x25F8C51A0](v124, -1, -1);
          }

          goto LABEL_123;
        }

        v107 = *(v87 + 4);
        v108 = v106 - 1;
        if (v106 != 1)
        {
          if (v106 >= 5)
          {
            v109 = v108 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v110 = vdupq_n_s64(v107);
            v111 = (v87 + 56);
            v112 = v108 & 0xFFFFFFFFFFFFFFFCLL;
            v113 = v110;
            do
            {
              v110 = vbslq_s8(vcgtq_u64(v110, v111[-1]), v111[-1], v110);
              v113 = vbslq_s8(vcgtq_u64(v113, *v111), *v111, v113);
              v111 += 2;
              v112 -= 4;
            }

            while (v112);
            v114 = vbslq_s8(vcgtq_u64(v113, v110), v110, v113);
            v115 = vextq_s8(v114, v114, 8uLL).u64[0];
            v107 = vbsl_s8(vcgtd_u64(v115, v114.u64[0]), *v114.i8, v115);
            if (v108 != (v108 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v109 = 1;
LABEL_109:
            v116 = v106 - v109;
            v117 = &v87[8 * v109 + 32];
            do
            {
              v119 = *v117;
              v117 += 8;
              v118 = v119;
              if (v119 < v107)
              {
                v107 = v118;
              }

              --v116;
            }

            while (v116);
          }
        }

        v120 = 0;
        v121 = (v168 + 40);
        while (*&v87[8 * v120 + 32] != v107)
        {
          ++v120;
          v121 += 2;
          if (v106 == v120)
          {
            goto LABEL_116;
          }
        }

        if (v120 < *(v168 + 2))
        {
          v126 = *(v121 - 8);
          v127 = *v121;
          swift_beginAccess();
          *&v184 = v171;
          *(&v184 + 1) = v169;
          *&v185 = v126;
          *(&v185 + 1) = v127;

          v128 = sub_25E9D7F00();
          v129 = sub_25E9D8120();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            *&v182[0] = v172;
            *v130 = 136315394;
            *(v130 + 4) = sub_25E9887EC(v176, v174, v182);
            *(v130 + 12) = 2080;
            __src[0] = v184;
            __src[1] = v185;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D930, &qword_25E9D9950);
            v131 = sub_25E9D81B0();
            v133 = sub_25E9887EC(v131, v132, v182);

            *(v130 + 14) = v133;
            _os_log_impl(&dword_25E971000, v128, v129, "Computed postSearchTime for searchToolID %s and is %s", v130, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F8C51A0](v172, -1, -1);
            MEMORY[0x25F8C51A0](v130, -1, -1);
          }

          goto LABEL_123;
        }

        goto LABEL_154;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v25 = sub_25E9D7F00();
      v26 = sub_25E9D8120();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&__src[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_25E9887EC(v176, v19, __src);
        _os_log_impl(&dword_25E971000, v25, v26, "preSearchTime: no start/end events found for searchToolId %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x25F8C51A0](v28, -1, -1);
        MEMORY[0x25F8C51A0](v27, -1, -1);
      }

      v29 = v173;
      if (v23 != 90)
      {
        v30 = v171 == 89 || v175 == 1;
        if (!v30 && v173 != 0)
        {
          goto LABEL_78;
        }
      }
    }

    v102 = sub_25E9D7F00();
    v103 = sub_25E9D8120();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&__src[0] = v105;
      *v104 = 136315138;
      *(v104 + 4) = sub_25E9887EC(v176, v19, __src);
      _os_log_impl(&dword_25E971000, v102, v103, "postSearchTime: no start/end events found for searchToolId %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x25F8C51A0](v105, -1, -1);
      MEMORY[0x25F8C51A0](v104, -1, -1);
    }

LABEL_123:
    a1 = v166;
    v7 = v170;
    if (*(v166 + 16) && (v134 = sub_25E978F5C(v176, v19), (v135 & 1) != 0))
    {
      v136 = (*(v166 + 56) + 304 * v134);
      memcpy(v182, v136, sizeof(v182));
      memmove(__src, v136, 0x130uLL);
      nullsub_1(__src);
      sub_25E97F4EC(v182, v181);
    }

    else
    {
      sub_25E97F43C(v182);
      memcpy(__src, v182, sizeof(__src));
    }

    memcpy(v182, __src, sizeof(v182));
    if (sub_25E97F474(v182) != 1)
    {
      swift_beginAccess();
      __src[15] = v186;
      __src[16] = v187;
    }

    memcpy(v181, __src, sizeof(v181));
    if (sub_25E97F474(v181) != 1)
    {
      swift_beginAccess();
      __src[17] = v184;
      __src[18] = v185;
    }

    memcpy(v179, __src, sizeof(v179));
    memcpy(v180, __src, sizeof(v180));
    if (sub_25E97F474(v180) != 1)
    {
      break;
    }

    v137 = sub_25E978F5C(v176, v19);
    v139 = v138;

    if (v139)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177[0] = v170;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25E97D76C();
        v7 = v177[0];
      }

      v14 = *(v7[6] + 16 * v137 + 8);

      memcpy(__dst, (v7[7] + 304 * v137), sizeof(__dst));
      sub_25E97F498(__dst);
      sub_25E97C530(v137, v7);
    }

    v12 = v165;
LABEL_10:
    v11 &= v11 - 1;
    memcpy(__dst, __src, sizeof(__dst));
    sub_25E98F63C(__dst);
  }

  memcpy(__dst, v179, sizeof(__dst));
  sub_25E97F4EC(__dst, v177);
  v141 = swift_isUniquelyReferenced_nonNull_native();
  v142 = sub_25E978F5C(v176, v19);
  v144 = v170[2];
  v145 = (v143 & 1) == 0;
  v146 = __OFADD__(v144, v145);
  v147 = v144 + v145;
  if (v146)
  {
    goto LABEL_150;
  }

  v148 = v143;
  if (v170[3] >= v147)
  {
    v12 = v165;
    if (v141)
    {
      if (v143)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v152 = v142;
      sub_25E97D76C();
      v12 = v165;
      v142 = v152;
      if (v148)
      {
        goto LABEL_142;
      }
    }
  }

  else
  {
    sub_25E979724(v147, v141);
    v142 = sub_25E978F5C(v176, v19);
    if ((v148 & 1) != (v149 & 1))
    {
      goto LABEL_155;
    }

    v12 = v165;
    if (v148)
    {
LABEL_142:
      v150 = v142;

      v7 = v170;
      v151 = (v170[7] + 304 * v150);
      memcpy(v177, v151, sizeof(v177));
      memcpy(v151, v179, 0x130uLL);
      sub_25E97F498(v177);
      goto LABEL_10;
    }
  }

  v7 = v170;
  v170[(v142 >> 6) + 8] |= 1 << v142;
  v153 = (v170[6] + 16 * v142);
  *v153 = v176;
  v153[1] = v19;
  memcpy((v170[7] + 304 * v142), v179, 0x130uLL);
  v154 = v170[2];
  v146 = __OFADD__(v154, 1);
  v155 = v154 + 1;
  if (!v146)
  {
    v170[2] = v155;
    goto LABEL_10;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  result = sub_25E9D8330();
  __break(1u);
  return result;
}

double sub_25E98F52C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  return result;
}

uint64_t sub_25E98F558(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25E98F5A0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_25E98F5E4()
{
  result = qword_27FD0D798;
  if (!qword_27FD0D798)
  {
    sub_25E9D77F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D798);
  }

  return result;
}

uint64_t sub_25E98F63C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D698, &qword_25E9D90E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SELFProcessedStreamTurnReader(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SELFProcessedStreamTurnReader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E98F744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_25E994254(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_25E978F5C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_25E97E32C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_25E97CA14(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_25E98F84C(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_25E97F474(__dst) == 1)
  {
    sub_25E988F30(a2, a3, v10);

    memcpy(v12, v10, sizeof(v12));
    return sub_25E981210(v12, &qword_27FD0D938, &qword_25E9D9998);
  }

  else
  {
    memcpy(v12, __src, sizeof(v12));
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *v3;
    sub_25E9943A4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10[0];
  }

  return result;
}

uint64_t sub_25E98F93C(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_25E994EC4(__dst) == 1)
  {
    sub_25E988FFC(a2, a3, v12);
  }

  else
  {
    memcpy(v12, __src, sizeof(v12));
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_25E994674(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_25E98FA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v11 = *v3;
    v12 = sub_25E978F5C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25E97EBA0();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_25E97D0E0(v12, v16);
      *v4 = v16;
    }
  }

  else
  {
    v7 = *v3;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_25E994908(a1, a2, a3, v9, sub_25E97EBA0, sub_25E97B9F4, sub_25E99B4F8);

    *v3 = v18;
  }

  return result;
}

double SELFComponent.PlanGeneration.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

double SELFComponent.PlanGeneration.init()()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_25E98FB88()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E98FC58();
  v1 = v0;
  v2 = sub_25E9D7E70();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

unint64_t sub_25E98FC58()
{
  result = qword_27FD0D918;
  if (!qword_27FD0D918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D918);
  }

  return result;
}

uint64_t sub_25E98FCA4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v279 = MEMORY[0x28223BE20](a1);
  if (qword_27FD0D5C0 != -1)
  {
LABEL_326:
    swift_once();
  }

  v5 = sub_25E9D7F10();
  __swift_project_value_buffer(v5, qword_27FD0DB78);
  v6 = sub_25E9D7F00();
  v7 = sub_25E9D8120();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25E971000, v6, v7, "Start: computePlanGenerationMetrics", v8, 2u);
    MEMORY[0x25F8C51A0](v8, -1, -1);
  }

  result = sub_25E991FB4();
  if (!v3)
  {
    if (v4[2])
    {
      v10 = v4[2];
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = 0;
      v13 = (v10 + 40);
      v245 = v11 - 1;
      v14 = 0x280F6F000uLL;
      v246 = v10;
      v247 = v5;
      while (1)
      {
        v278 = v12;
        v15 = *v13;
        v297 = *(v13 - 1);
        v276 = v13;
        v16 = v4[3];
        if (!v16 || !v4[4])
        {
          v30 = *(v14 + 3696);

          if (v30 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v31 = sub_25E9D7F00();
          v32 = sub_25E9D8120();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_25E971000, v31, v32, "pgFullPlannerHandleTime: PRRequestContextStart or PRRequestContextEnd or both missing!", v33, 2u);
            goto LABEL_30;
          }

LABEL_31:

          v268 = 0;
          v269 = 0;
          v270 = 90;
          v271 = 0;
          goto LABEL_32;
        }

        v17 = *(v16 + 16);

        if (!v17)
        {
          goto LABEL_26;
        }

        sub_25E978F5C(v297, v15);
        v19 = v18;

        if ((v19 & 1) == 0 || (v20 = v4[4]) == 0 || !*(v20 + 16) || (v21 = v4[4], , sub_25E978F5C(v297, v15), v23 = v22, , (v23 & 1) == 0))
        {
LABEL_26:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v31 = sub_25E9D7F00();
          v34 = sub_25E9D8120();

          if (os_log_type_enabled(v31, v34))
          {
            v33 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v295[0] = v35;
            *v33 = 136315138;
            *(v33 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v31, v34, "pgFullPlannerHandleTime: no start/end events found for planCycleId %s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            v36 = v35;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v36, -1, -1);
LABEL_30:
            MEMORY[0x25F8C51A0](v33, -1, -1);
          }

          goto LABEL_31;
        }

        v24 = v4[3];
        if (!v24 || !*(v24 + 16))
        {
          goto LABEL_274;
        }

        v25 = v4[3];

        v26 = sub_25E978F5C(v297, v15);
        if ((v27 & 1) == 0)
        {
          break;
        }

        v28 = (*(v24 + 56) + 16 * v26);
        v270 = *v28;
        v271 = *(v28 + 1);

        v29 = v4[4];
        if (!v29)
        {
          goto LABEL_309;
        }

LABEL_275:
        if (!*(v29 + 16))
        {
          goto LABEL_309;
        }

        v223 = sub_25E978F5C(v297, v15);
        if ((v224 & 1) == 0)
        {

LABEL_309:
          v268 = 89;
          v269 = 0;
          goto LABEL_32;
        }

        v225 = (*(v29 + 56) + 16 * v223);
        v268 = *v225;
        v269 = *(v225 + 1);

LABEL_32:
        v37 = v4[15];
        if (!v37 || !v4[16])
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v51 = sub_25E9D7F00();
          v52 = sub_25E9D8120();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_25E971000, v51, v52, "pgPlanGenTotalTime: pgGeneratePlanContextStart or pgGeneratePlanContextEnd or both missing!", v53, 2u);
            goto LABEL_52;
          }

LABEL_53:

          v264 = 0;
          v265 = 0;
          v266 = 90;
          v267 = 0;
          goto LABEL_54;
        }

        if (!*(v37 + 16))
        {
          goto LABEL_48;
        }

        v38 = v4[15];

        sub_25E978F5C(v297, v15);
        v40 = v39;

        if ((v40 & 1) == 0 || (v41 = v4[16]) == 0 || !*(v41 + 16) || (v42 = v4[16], , sub_25E978F5C(v297, v15), v44 = v43, , (v44 & 1) == 0))
        {
LABEL_48:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v51 = sub_25E9D7F00();
          v54 = sub_25E9D8120();

          if (os_log_type_enabled(v51, v54))
          {
            v53 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v295[0] = v55;
            *v53 = 136315138;
            *(v53 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v51, v54, "pgPlanGenTotalTime: no start/end events found for planCycleId %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v55);
            v56 = v55;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v56, -1, -1);
LABEL_52:
            MEMORY[0x25F8C51A0](v53, -1, -1);
          }

          goto LABEL_53;
        }

        v45 = v4[15];
        if (!v45 || !*(v45 + 16))
        {
          goto LABEL_279;
        }

        v46 = v4[15];

        v47 = sub_25E978F5C(v297, v15);
        if ((v48 & 1) == 0)
        {

LABEL_279:
          v266 = 89;
          v267 = 0;
          v50 = v4[16];
          if (!v50)
          {
            goto LABEL_311;
          }

          goto LABEL_280;
        }

        v49 = (*(v45 + 56) + 16 * v47);
        v266 = *v49;
        v267 = *(v49 + 1);

        v50 = v4[16];
        if (!v50)
        {
          goto LABEL_311;
        }

LABEL_280:
        if (!*(v50 + 16))
        {
          goto LABEL_311;
        }

        v226 = sub_25E978F5C(v297, v15);
        if ((v227 & 1) == 0)
        {

LABEL_311:
          v264 = 89;
          v265 = 0;
          goto LABEL_54;
        }

        v228 = (*(v50 + 56) + 16 * v226);
        v264 = *v228;
        v265 = *(v228 + 1);

LABEL_54:
        v57 = v4[5];
        if (!v57 || !v4[6])
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v71 = sub_25E9D7F00();
          v72 = sub_25E9D8120();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_25E971000, v71, v72, "pgModelInferenceTime: pgModelInferenceContextStart or pgModelInferenceContextEnd or both missing!", v73, 2u);
            goto LABEL_74;
          }

LABEL_75:

          v260 = 0;
          v261 = 0;
          v262 = 90;
          v263 = 0;
          goto LABEL_76;
        }

        if (!*(v57 + 16))
        {
          goto LABEL_70;
        }

        v58 = v4[5];

        sub_25E978F5C(v297, v15);
        v60 = v59;

        if ((v60 & 1) == 0 || (v61 = v4[6]) == 0 || !*(v61 + 16) || (v62 = v4[6], , sub_25E978F5C(v297, v15), v64 = v63, , (v64 & 1) == 0))
        {
LABEL_70:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v71 = sub_25E9D7F00();
          v74 = sub_25E9D8120();

          if (os_log_type_enabled(v71, v74))
          {
            v73 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v295[0] = v75;
            *v73 = 136315138;
            *(v73 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v71, v74, "pgModelInferenceTime: no start/end events found for planCycleId %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v75);
            v76 = v75;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v76, -1, -1);
LABEL_74:
            MEMORY[0x25F8C51A0](v73, -1, -1);
          }

          goto LABEL_75;
        }

        v65 = v4[5];
        if (!v65 || !*(v65 + 16))
        {
          goto LABEL_284;
        }

        v66 = v4[5];

        v67 = sub_25E978F5C(v297, v15);
        if ((v68 & 1) == 0)
        {

LABEL_284:
          v262 = 89;
          v263 = 0;
          v70 = v4[6];
          if (!v70)
          {
            goto LABEL_313;
          }

          goto LABEL_285;
        }

        v69 = (*(v65 + 56) + 16 * v67);
        v262 = *v69;
        v263 = *(v69 + 1);

        v70 = v4[6];
        if (!v70)
        {
          goto LABEL_313;
        }

LABEL_285:
        if (!*(v70 + 16))
        {
          goto LABEL_313;
        }

        v229 = sub_25E978F5C(v297, v15);
        if ((v230 & 1) == 0)
        {

LABEL_313:
          v260 = 89;
          v261 = 0;
          goto LABEL_76;
        }

        v231 = (*(v70 + 56) + 16 * v229);
        v260 = *v231;
        v261 = *(v231 + 1);

LABEL_76:
        v77 = v4[3];
        if (!v77 || !v4[5])
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v91 = sub_25E9D7F00();
          v92 = sub_25E9D8120();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            _os_log_impl(&dword_25E971000, v91, v92, "pgFullPlannerPreInferenceTime: pgRequestContextStart or pgModelInferenceContextStart or both missing!", v93, 2u);
            goto LABEL_96;
          }

LABEL_97:

          v256 = 0;
          v257 = 0;
          v258 = 90;
          v259 = 0;
          goto LABEL_98;
        }

        if (!*(v77 + 16))
        {
          goto LABEL_92;
        }

        v78 = v4[3];

        sub_25E978F5C(v297, v15);
        v80 = v79;

        if ((v80 & 1) == 0 || (v81 = v4[5]) == 0 || !*(v81 + 16) || (v82 = v4[5], , sub_25E978F5C(v297, v15), v84 = v83, , (v84 & 1) == 0))
        {
LABEL_92:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v91 = sub_25E9D7F00();
          v94 = sub_25E9D8120();

          if (os_log_type_enabled(v91, v94))
          {
            v93 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v295[0] = v95;
            *v93 = 136315138;
            *(v93 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v91, v94, "pgFullPlannerPreInferenceTime: no start/end events found for planCycleId %s", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v95);
            v96 = v95;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v96, -1, -1);
LABEL_96:
            MEMORY[0x25F8C51A0](v93, -1, -1);
          }

          goto LABEL_97;
        }

        v85 = v4[3];
        if (!v85 || !*(v85 + 16))
        {
          goto LABEL_289;
        }

        v86 = v4[3];

        v87 = sub_25E978F5C(v297, v15);
        if ((v88 & 1) == 0)
        {

LABEL_289:
          v258 = 89;
          v259 = 0;
          v90 = v4[5];
          if (!v90)
          {
            goto LABEL_315;
          }

          goto LABEL_290;
        }

        v89 = (*(v85 + 56) + 16 * v87);
        v258 = *v89;
        v259 = *(v89 + 1);

        v90 = v4[5];
        if (!v90)
        {
          goto LABEL_315;
        }

LABEL_290:
        if (!*(v90 + 16))
        {
          goto LABEL_315;
        }

        v232 = sub_25E978F5C(v297, v15);
        if ((v233 & 1) == 0)
        {

LABEL_315:
          v256 = 89;
          v257 = 0;
          goto LABEL_98;
        }

        v234 = (*(v90 + 56) + 16 * v232);
        v256 = *v234;
        v257 = *(v234 + 1);

LABEL_98:
        v97 = v4[6];
        if (!v97 || !v4[4])
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v111 = sub_25E9D7F00();
          v112 = sub_25E9D8120();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            *v113 = 0;
            _os_log_impl(&dword_25E971000, v111, v112, "pgFullPlannerPostInferenceTime: pgModelInferenceContextEnd or pgRequestContextEnd or both missing!", v113, 2u);
            goto LABEL_118;
          }

LABEL_119:

          v252 = 0;
          v253 = 0;
          v254 = 90;
          v255 = 0;
          goto LABEL_120;
        }

        if (!*(v97 + 16))
        {
          goto LABEL_114;
        }

        v98 = v4[6];

        sub_25E978F5C(v297, v15);
        v100 = v99;

        if ((v100 & 1) == 0 || (v101 = v4[4]) == 0 || !*(v101 + 16) || (v102 = v4[4], , sub_25E978F5C(v297, v15), v104 = v103, , (v104 & 1) == 0))
        {
LABEL_114:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v111 = sub_25E9D7F00();
          v114 = sub_25E9D8120();

          if (os_log_type_enabled(v111, v114))
          {
            v113 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v295[0] = v115;
            *v113 = 136315138;
            *(v113 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v111, v114, "pgFullPlannerPostInferenceTime: no start/end events found for planCycleId %s", v113, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v115);
            v116 = v115;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v116, -1, -1);
LABEL_118:
            MEMORY[0x25F8C51A0](v113, -1, -1);
          }

          goto LABEL_119;
        }

        v105 = v4[6];
        if (!v105 || !*(v105 + 16))
        {
          goto LABEL_294;
        }

        v106 = v4[6];

        v107 = sub_25E978F5C(v297, v15);
        if ((v108 & 1) == 0)
        {

LABEL_294:
          v254 = 89;
          v255 = 0;
          v110 = v4[4];
          if (!v110)
          {
            goto LABEL_317;
          }

          goto LABEL_295;
        }

        v109 = (*(v105 + 56) + 16 * v107);
        v254 = *v109;
        v255 = *(v109 + 1);

        v110 = v4[4];
        if (!v110)
        {
          goto LABEL_317;
        }

LABEL_295:
        if (*(v110 + 16))
        {

          v235 = sub_25E978F5C(v297, v15);
          if (v236)
          {
            v237 = (*(v110 + 56) + 16 * v235);
            v252 = *v237;
            v253 = *(v237 + 1);

            goto LABEL_120;
          }
        }

LABEL_317:
        v252 = 89;
        v253 = 0;
LABEL_120:
        v117 = v4[7];
        if (!v117)
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v128 = sub_25E9D7F00();
          v129 = sub_25E9D8120();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&dword_25E971000, v128, v129, "pgModelInterfaceDim pgModelInterface events missing!", v130, 2u);
            goto LABEL_139;
          }

LABEL_140:

LABEL_141:
          v275 = 0;
          v124 = v4[8];
          if (!v124)
          {
            goto LABEL_127;
          }

          goto LABEL_142;
        }

        v118 = v4[7];

        v119 = sub_25E981270(v297, v15, v117);

        if ((v119 & 0x100000000) != 0)
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v128 = sub_25E9D7F00();
          v131 = sub_25E9D8120();

          if (os_log_type_enabled(v128, v131))
          {
            v130 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v295[0] = v132;
            *v130 = 136315138;
            *(v130 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v128, v131, "pgModelInterface events not found for planCycleId %s", v130, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v132);
            v133 = v132;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v133, -1, -1);
LABEL_139:
            MEMORY[0x25F8C51A0](v130, -1, -1);
          }

          goto LABEL_140;
        }

        v120 = v4[7];
        if (!v120)
        {
          goto LABEL_141;
        }

        v121 = v4[7];

        v122 = sub_25E981270(v297, v15, v120);

        if ((v122 & 0x100000000) != 0)
        {
          v123 = 0;
        }

        else
        {
          v123 = v122;
        }

        v275 = v123;
        v124 = v4[8];
        if (!v124)
        {
LABEL_127:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v125 = sub_25E9D7F00();
          v126 = sub_25E9D8120();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            *v127 = 0;
            _os_log_impl(&dword_25E971000, v125, v126, "pgModelIdentifierDim pgModelInterface events missing!", v127, 2u);
            goto LABEL_150;
          }

          goto LABEL_151;
        }

LABEL_142:

        sub_25E976E70(v297, v15, v124);
        v135 = v134;

        if (!v135)
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v125 = sub_25E9D7F00();
          v140 = sub_25E9D8120();

          if (os_log_type_enabled(v125, v140))
          {
            v127 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v295[0] = v141;
            *v127 = 136315138;
            *(v127 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v125, v140, "pgModelIdentifier events not found for planCycleId %s", v127, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v141);
            v142 = v141;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v142, -1, -1);
LABEL_150:
            MEMORY[0x25F8C51A0](v127, -1, -1);
          }

LABEL_151:

          goto LABEL_152;
        }

        v136 = v4[8];
        if (v136)
        {
          v137 = v4[8];

          v274 = sub_25E976E70(v297, v15, v136);
          v277 = v138;

          v139 = v4[9];
          if (!v139)
          {
            goto LABEL_164;
          }

          goto LABEL_153;
        }

LABEL_152:
        v274 = 0;
        v277 = 0;
        v139 = v4[9];
        if (!v139)
        {
          goto LABEL_164;
        }

LABEL_153:
        if (!v4[10])
        {
LABEL_164:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v155 = sub_25E9D7F00();
          v156 = sub_25E9D8120();
          if (os_log_type_enabled(v155, v156))
          {
            v157 = swift_slowAlloc();
            *v157 = 0;
            _os_log_impl(&dword_25E971000, v155, v156, "pgOverridesTime: pgOverridesRequestContextStart or pgOverridesRequestContextEnd or both missing!", v157, 2u);
            v158 = v157;
            goto LABEL_172;
          }

LABEL_173:

          v248 = 0;
          v249 = 0;
          v250 = 90;
          v251 = 0;
          goto LABEL_174;
        }

        if (!*(v139 + 16))
        {
          goto LABEL_168;
        }

        sub_25E978F5C(v297, v15);
        v144 = v143;

        if ((v144 & 1) == 0 || (v145 = v4[10]) == 0 || !*(v145 + 16) || (v146 = v4[10], , sub_25E978F5C(v297, v15), v148 = v147, , (v148 & 1) == 0))
        {
LABEL_168:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v155 = sub_25E9D7F00();
          v159 = sub_25E9D8120();

          if (os_log_type_enabled(v155, v159))
          {
            v160 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            v295[0] = v161;
            *v160 = 136315138;
            *(v160 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v155, v159, "pgOverridesTime: no start/end events found for planCycleId %s", v160, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v161);
            v162 = v161;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v162, -1, -1);
            v158 = v160;
LABEL_172:
            MEMORY[0x25F8C51A0](v158, -1, -1);
          }

          goto LABEL_173;
        }

        v149 = v4[9];
        if (!v149 || !*(v149 + 16))
        {
          goto LABEL_299;
        }

        v150 = v4[9];

        v151 = sub_25E978F5C(v297, v15);
        if ((v152 & 1) == 0)
        {

LABEL_299:
          v250 = 89;
          v251 = 0;
          v154 = v4[10];
          if (!v154)
          {
            goto LABEL_319;
          }

          goto LABEL_300;
        }

        v153 = (*(v149 + 56) + 16 * v151);
        v250 = *v153;
        v251 = *(v153 + 1);

        v154 = v4[10];
        if (!v154)
        {
          goto LABEL_319;
        }

LABEL_300:
        if (*(v154 + 16))
        {

          v238 = sub_25E978F5C(v297, v15);
          if (v239)
          {
            v240 = (*(v154 + 56) + 16 * v238);
            v248 = *v240;
            v249 = *(v240 + 1);

            goto LABEL_174;
          }
        }

LABEL_319:
        v248 = 89;
        v249 = 0;
LABEL_174:
        v163 = v4[12];
        if (!v163)
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v176 = sub_25E9D7F00();
          v177 = sub_25E9D8120();
          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            *v178 = 0;
            _os_log_impl(&dword_25E971000, v176, v177, "pgOverridesAssetVersionDim pgOverridesAssetVersion events missing!", v178, 2u);
            v179 = v178;
            goto LABEL_191;
          }

LABEL_192:

          goto LABEL_193;
        }

        v164 = v4[12];

        sub_25E976E70(v297, v15, v163);
        v166 = v165;

        if (!v166)
        {
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v176 = sub_25E9D7F00();
          v180 = sub_25E9D8120();

          if (os_log_type_enabled(v176, v180))
          {
            v181 = swift_slowAlloc();
            v182 = swift_slowAlloc();
            v295[0] = v182;
            *v181 = 136315138;
            *(v181 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v176, v180, "pgOverridesMatched events not found for planCycleId %s", v181, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v182);
            v183 = v182;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v183, -1, -1);
            v179 = v181;
LABEL_191:
            MEMORY[0x25F8C51A0](v179, -1, -1);
          }

          goto LABEL_192;
        }

        v167 = v4[12];
        if (v167)
        {
          v168 = v4[12];

          v273 = sub_25E976E70(v297, v15, v167);
          v170 = v169;

          v171 = v4[11];
          if (!v171)
          {
            goto LABEL_178;
          }

          goto LABEL_194;
        }

LABEL_193:
        v273 = 0;
        v170 = 0;
        v171 = v4[11];
        if (!v171)
        {
LABEL_178:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v172 = sub_25E9D7F00();
          v173 = sub_25E9D8120();
          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            *v174 = 0;
            _os_log_impl(&dword_25E971000, v172, v173, "pgOverridesMatchedDim pgOverridesMatched events missing!", v174, 2u);
            v175 = v174;
            v14 = 0x280F6F000uLL;
            MEMORY[0x25F8C51A0](v175, -1, -1);
          }

LABEL_204:
          v272 = 0;
          v189 = v4[13];
          if (!v189)
          {
            goto LABEL_216;
          }

          goto LABEL_205;
        }

LABEL_194:

        v184 = sub_25E976ED4(v297, v15, v171);

        if (v184 != 2)
        {
          v190 = v4[11];
          if (v190)
          {
            v191 = v4[11];

            v272 = sub_25E976ED4(v297, v15, v190);

            v189 = v4[13];
            if (!v189)
            {
              goto LABEL_216;
            }

            goto LABEL_205;
          }

          goto LABEL_204;
        }

        if (*(v14 + 3696) != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v5, qword_280F6FE78);

        v185 = sub_25E9D7F00();
        v186 = sub_25E9D8120();

        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          v188 = swift_slowAlloc();
          v295[0] = v188;
          *v187 = 136315138;
          *(v187 + 4) = sub_25E9887EC(v297, v15, v295);
          _os_log_impl(&dword_25E971000, v185, v186, "pgOverridesMatched events not found for planCycleId %s", v187, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v188);
          MEMORY[0x25F8C51A0](v188, -1, -1);
          MEMORY[0x25F8C51A0](v187, -1, -1);
        }

        v272 = 0;
        v14 = 0x280F6F000uLL;
        v189 = v4[13];
        if (!v189)
        {
LABEL_216:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);
          v206 = sub_25E9D7F00();
          v207 = sub_25E9D8120();
          if (os_log_type_enabled(v206, v207))
          {
            v208 = swift_slowAlloc();
            *v208 = 0;
            _os_log_impl(&dword_25E971000, v206, v207, "pgPrescribedPlanTime pgPrescribedPlanRequestContextStart or pgPrescribedPlanRequestContextEnd or both missing!", v208, 2u);
            v209 = v208;
            goto LABEL_224;
          }

LABEL_225:

          v204 = 0;
          v213 = 0;
          v214 = 0;
          v203 = 90;
          goto LABEL_226;
        }

LABEL_205:
        if (!v4[14])
        {
          goto LABEL_216;
        }

        if (!*(v189 + 16))
        {
          goto LABEL_220;
        }

        sub_25E978F5C(v297, v15);
        v193 = v192;

        if ((v193 & 1) == 0 || (v194 = v4[14]) == 0 || !*(v194 + 16) || (v195 = v4[14], , sub_25E978F5C(v297, v15), v197 = v196, , (v197 & 1) == 0))
        {
LABEL_220:
          if (*(v14 + 3696) != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v5, qword_280F6FE78);

          v206 = sub_25E9D7F00();
          v210 = sub_25E9D8120();

          if (os_log_type_enabled(v206, v210))
          {
            v211 = swift_slowAlloc();
            v212 = swift_slowAlloc();
            v295[0] = v212;
            *v211 = 136315138;
            *(v211 + 4) = sub_25E9887EC(v297, v15, v295);
            _os_log_impl(&dword_25E971000, v206, v210, "pgPrescribedPlanTime: no start/end events found for planCycleId %s", v211, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v212);
            MEMORY[0x25F8C51A0](v212, -1, -1);
            v209 = v211;
LABEL_224:
            MEMORY[0x25F8C51A0](v209, -1, -1);
          }

          goto LABEL_225;
        }

        v198 = v4[13];
        if (!v198 || !*(v198 + 16))
        {
          goto LABEL_304;
        }

        v199 = v4[13];

        v200 = sub_25E978F5C(v297, v15);
        if ((v201 & 1) == 0)
        {

LABEL_304:
          v204 = 0;
          v203 = 89;
          v205 = v4[14];
          if (!v205)
          {
            goto LABEL_321;
          }

          goto LABEL_305;
        }

        v202 = (*(v198 + 56) + 16 * v200);
        v203 = *v202;
        v204 = *(v202 + 1);

        v205 = v4[14];
        if (!v205)
        {
          goto LABEL_321;
        }

LABEL_305:
        if (*(v205 + 16))
        {

          v241 = sub_25E978F5C(v297, v15);
          if (v242)
          {
            v243 = (*(v205 + 56) + 16 * v241);
            v213 = *v243;
            v214 = *(v243 + 1);

            goto LABEL_226;
          }
        }

LABEL_321:
        v214 = 0;
        v213 = 89;
LABEL_226:
        v215 = *v279;
        if (*(*v279 + 16) && (v216 = sub_25E978F5C(v297, v15), (v217 & 1) != 0))
        {
          v218 = (*(v215 + 56) + 288 * v216);
          memcpy(v294, v218, sizeof(v294));
          memmove(v295, v218, 0x120uLL);
          nullsub_1(v295);
          sub_25E981038(v294, __dst);
        }

        else
        {
          sub_25E98B4E0(v294);
          memcpy(v295, v294, sizeof(v295));
        }

        memcpy(v294, v295, sizeof(v294));
        if (sub_25E97F474(v294) == 1)
        {
          v291[0] = 0;
          __src[0] = xmmword_25E9D90A0;
          LODWORD(__src[1]) = 0;
          BYTE4(__src[1]) = 0;
          *(&__src[1] + 8) = xmmword_25E9D90A0;
          *(&__src[2] + 8) = xmmword_25E9D90A0;
          BYTE8(__src[3]) = 0;
          __src[5] = 0uLL;
          __src[4] = 0x5AuLL;
          __src[6] = 0x5AuLL;
          __src[7] = 0uLL;
          __src[9] = 0uLL;
          __src[8] = 0x5AuLL;
          __src[10] = 0x5AuLL;
          __src[11] = 0uLL;
          __src[13] = 0uLL;
          __src[12] = 0x5AuLL;
          __src[14] = 0x5AuLL;
          __src[15] = 0uLL;
          __src[16] = 0x5AuLL;
          __src[17] = 0uLL;
          nullsub_1(__src);
          memcpy(__dst, v295, sizeof(__dst));
          sub_25E981210(__dst, &qword_27FD0D938, &qword_25E9D9998);
          memcpy(v295, __src, sizeof(v295));
        }

        memcpy(__dst, v295, sizeof(__dst));
        if (sub_25E97F474(__dst) != 1)
        {

          v295[0] = v297;
          v295[1] = v15;
        }

        memcpy(__src, v295, sizeof(__src));
        if (sub_25E97F474(__src) != 1)
        {
          LODWORD(v295[2]) = v275;
          BYTE4(v295[2]) = 0;
        }

        memcpy(v291, v295, sizeof(v291));
        if (sub_25E97F474(v291) == 1)
        {
        }

        else
        {
          if (v277)
          {
            v219 = v274;
          }

          else
          {
            v219 = 0;
          }

          if (v277)
          {
            v220 = v277;
          }

          else
          {
            v220 = 0xE000000000000000;
          }

          v295[3] = v219;
          v295[4] = v220;
        }

        memcpy(v290, v295, sizeof(v290));
        if (sub_25E97F474(v290) == 1)
        {
        }

        else
        {
          if (v170)
          {
            v221 = v273;
          }

          else
          {
            v221 = 0;
          }

          if (v170)
          {
            v222 = v170;
          }

          else
          {
            v222 = 0xE000000000000000;
          }

          v295[5] = v221;
          v295[6] = v222;
        }

        memcpy(v289, v295, sizeof(v289));
        if (sub_25E97F474(v289) != 1)
        {
          LOBYTE(v295[7]) = v272 & 1;
        }

        memcpy(v288, v295, sizeof(v288));
        if (sub_25E97F474(v288) != 1)
        {
          v295[12] = v270;
          v295[13] = v271;
          v295[14] = v268;
          v295[15] = v269;
        }

        memcpy(v287, v295, sizeof(v287));
        if (sub_25E97F474(v287) != 1)
        {
          v295[16] = v262;
          v295[17] = v263;
          v295[18] = v260;
          v295[19] = v261;
        }

        memcpy(v286, v295, sizeof(v286));
        if (sub_25E97F474(v286) != 1)
        {
          v295[20] = v250;
          v295[21] = v251;
          v295[22] = v248;
          v295[23] = v249;
        }

        memcpy(v285, v295, sizeof(v285));
        if (sub_25E97F474(v285) != 1)
        {
          v295[24] = v203;
          v295[25] = v204;
          v295[26] = v213;
          v295[27] = v214;
        }

        memcpy(v284, v295, sizeof(v284));
        if (sub_25E97F474(v284) != 1)
        {
          v295[8] = v266;
          v295[9] = v267;
          v295[10] = v264;
          v295[11] = v265;
        }

        memcpy(v283, v295, sizeof(v283));
        v5 = v247;
        v14 = 0x280F6F000;
        if (sub_25E97F474(v283) != 1)
        {
          v295[28] = v258;
          v295[29] = v259;
          v295[30] = v256;
          v295[31] = v257;
        }

        memcpy(v282, v295, sizeof(v282));
        if (sub_25E97F474(v282) != 1)
        {
          v295[32] = v254;
          v295[33] = v255;
          v295[34] = v252;
          v295[35] = v253;
        }

        memcpy(v296, v295, 0x120uLL);
        sub_25E993F70(v296, v280);
        sub_25E98F84C(v296, v297, v15);
        memcpy(v281, v295, sizeof(v281));
        sub_25E981210(v281, &qword_27FD0D938, &qword_25E9D9998);
        if (v245 == v278)
        {
          goto LABEL_324;
        }

        v12 = v278 + 1;
        v3 = v246;
        v13 = v276 + 2;
        if ((v278 + 1) >= *(v246 + 16))
        {
          __break(1u);
          goto LABEL_326;
        }
      }

LABEL_274:
      v270 = 89;
      v271 = 0;
      v29 = v4[4];
      if (!v29)
      {
        goto LABEL_309;
      }

      goto LABEL_275;
    }

LABEL_324:

    v244 = *v279;
  }

  return result;
}