uint64_t sub_22F0492A0()
{
  v1 = v0[57];
  sub_22F0B301C(v0[55], v0[34]);

  return MEMORY[0x2822009F8](sub_22F049310, 0, 0);
}

uint64_t sub_22F049310()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 272);
  if ((*(v0 + 344))(v2, 1, *(v0 + 216)) == 1)
  {
    v4 = *(v0 + 440);
    v3 = *(v0 + 448);
    sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
    v5 = swift_task_alloc();
    *(v0 + 464) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = 0;
    *(v5 + 40) = v0 + 56;
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 472) = v7;
    *v7 = v0;
    v7[1] = sub_22F049664;
    v8 = *(v0 + 192);
    v9 = *(v0 + 176);

    return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F04A0D4, v5, v9);
  }

  else
  {
    sub_22F04A06C(v2, *(v0 + 280), type metadata accessor for ResolvedFamily);
    v10 = *(v0 + 480);
    v11 = *(v0 + 336);
    v12 = *(v0 + 280);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 216);
    v16 = *(v0 + 224);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    sub_22F01DF14(v13, type metadata accessor for ResolvedFamily);
    v17 = *(v16 + 56);
    v17(v12, 0, 1, v15);
    sub_22F04A06C(v12, v14, type metadata accessor for ResolvedFamily);
    sub_22F003A4C(v11 + v10, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F04A06C(v14, v11 + v10, type metadata accessor for ResolvedFamily);
    v17(v11 + v10, 0, 1, v15);
    v18 = *(v0 + 336);
    v19 = *(v0 + 312);
    v20 = *(v0 + 320);
    v22 = *(v0 + 296);
    v21 = *(v0 + 304);
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 272);
    v28 = *(v0 + 264);
    v29 = *(v0 + 256);
    v30 = *(v0 + 248);
    v31 = *(v0 + 240);
    v32 = *(v0 + 232);
    v33 = *(v0 + 208);
    v34 = *(v0 + 200);
    v35 = *(v0 + 192);
    v36 = *(v0 + 184);
    sub_22F040184(v18, *(v0 + 160), type metadata accessor for MessageDetails);
    sub_22F01DF14(v18, type metadata accessor for MessageDetails);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_22F049664()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F04977C, 0, 0);
}

uint64_t sub_22F04977C()
{
  v1 = v0[22];
  sub_22F049FF4(v0[24], v0[23], &qword_27DAA1760, &unk_22F0D77D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[35];
    v3 = v0[31];
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[23];
    v7 = v0[24];
    v8 = *v6;
    v0[19] = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();

    sub_22F003A4C(v7, &qword_27DAA1760, &unk_22F0D77D8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    (*(v5 + 56))(v2, 1, 1, v4);
    sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000014, 0x800000022F0DE460, 500);
    swift_willThrow();
    sub_22F01DF14(v3, type metadata accessor for ResolvedFamily);
    v9 = v0[39];
    v10 = v0[40];
    v12 = v0[37];
    v11 = v0[38];
    v14 = v0[35];
    v13 = v0[36];
    v16 = v0[33];
    v15 = v0[34];
    v20 = v0[32];
    v21 = v0[31];
    v22 = v0[30];
    v23 = v0[29];
    v24 = v0[26];
    v25 = v0[25];
    v26 = v0[24];
    v27 = v0[23];
    sub_22F01DF14(v0[42], type metadata accessor for MessageDetails);

    v17 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[57];
  sub_22F04A06C(v0[23], v0[29], type metadata accessor for ResolvedFamily);

  return MEMORY[0x2822009F8](sub_22F049A58, v18, 0);
}

uint64_t sub_22F049A58()
{
  v1 = [**(v0 + 232) dsid];
  if (v1)
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 296);
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 216);
    v7 = v1;
    v8 = [v1 integerValue];
    sub_22F040184(v4, v3, type metadata accessor for ResolvedFamily);
    (*(v5 + 56))(v3, 0, 1, v6);
    swift_beginAccess();
    sub_22F046214(v3, v8);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F049B84, 0, 0);
}

uint64_t sub_22F049B84()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  sub_22F003A4C(*(v0 + 192), &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F04A06C(v2, v1, type metadata accessor for ResolvedFamily);
  v3 = *(v0 + 480);
  v4 = *(v0 + 336);
  v5 = *(v0 + 280);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_22F01DF14(v6, type metadata accessor for ResolvedFamily);
  v10 = *(v9 + 56);
  v10(v5, 0, 1, v8);
  sub_22F04A06C(v5, v7, type metadata accessor for ResolvedFamily);
  sub_22F003A4C(v4 + v3, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F04A06C(v7, v4 + v3, type metadata accessor for ResolvedFamily);
  v10(v4 + v3, 0, 1, v8);
  v11 = *(v0 + 336);
  v12 = *(v0 + 312);
  v13 = *(v0 + 320);
  v15 = *(v0 + 296);
  v14 = *(v0 + 304);
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v18 = *(v0 + 272);
  v21 = *(v0 + 264);
  v22 = *(v0 + 256);
  v23 = *(v0 + 248);
  v24 = *(v0 + 240);
  v25 = *(v0 + 232);
  v26 = *(v0 + 208);
  v27 = *(v0 + 200);
  v28 = *(v0 + 192);
  v29 = *(v0 + 184);
  sub_22F040184(v11, *(v0 + 160), type metadata accessor for MessageDetails);
  sub_22F01DF14(v11, type metadata accessor for MessageDetails);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22F049DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D6710;
  v1 = *MEMORY[0x277CC24B8];
  *(v0 + 32) = sub_22F0D0CAC();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CC2460];
  result = sub_22F0D0CAC();
  *(v0 + 48) = result;
  *(v0 + 56) = v5;
  qword_27DAA17D0 = v0;
  return result;
}

uint64_t sub_22F049E5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D6710;
  v1 = *MEMORY[0x277CC2450];
  *(v0 + 32) = sub_22F0D0CAC();
  *(v0 + 40) = v2;
  *(v0 + 48) = 0xD000000000000022;
  *(v0 + 56) = 0x800000022F0DCFB0;
  if (qword_27DAA0500 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0CFF1C();
  result = sub_22F007248(v3);
  qword_27DAA17D8 = v0;
  return result;
}

uint64_t sub_22F049F34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D2BF0;
  v1 = *MEMORY[0x277CC2450];
  *(v0 + 32) = sub_22F0D0CAC();
  *(v0 + 40) = v2;
  if (qword_27DAA0500 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0CFF1C();
  result = sub_22F007248(v3);
  qword_27DAA17E0 = v0;
  return result;
}

uint64_t sub_22F049FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22F04A06C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F04A0D8()
{
  v0 = sub_22F0D08BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22F0D08AC();
  v3 = sub_22F0D089C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22F0D088C();
  type metadata accessor for DaemonConnection();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v7 = type metadata accessor for PeopleXPCConnectionFactory();
  v8 = swift_allocObject();
  v6[8] = v7;
  v6[9] = &off_2843CCEB0;
  v6[5] = v8;
  v9 = sub_22F0D090C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_22F04A28C();
  result = sub_22F0D08FC();
  qword_27DAA17F0 = result;
  return result;
}

uint64_t static DaemonMessageSender.shared.getter()
{
  if (qword_27DAA0518 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

unint64_t sub_22F04A28C()
{
  result = qword_27DAA17F8;
  if (!qword_27DAA17F8)
  {
    type metadata accessor for DaemonConnection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA17F8);
  }

  return result;
}

id ContactPerson.contact.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ContactPerson.idsHandle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_22F0CFF1C();
  return v1;
}

uint64_t ContactPerson.init(contact:idsHandle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_22F04A348(uint64_t a1, int a2)
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

uint64_t sub_22F04A390(uint64_t result, int a2, int a3)
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

uint64_t sub_22F04A3E0()
{
  sub_22F0D152C();

  v3 = *(*(v0 + 16) + 16);
  v1 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v1);

  MEMORY[0x2318FD2C0](0x73656372756F7320, 0xE900000000000029);
  return 0x28206E6F6D656164;
}

uint64_t DaemonStatusFetcher.__allocating_init(statusTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22F04A4D8(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_22F04A4F8, 0, 0);
}

uint64_t sub_22F04A4F8()
{
  v1 = v0[15];
  v2 = *(v0[16] + 16);
  v0[17] = v2;
  v3 = qword_27DAA0518;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  if (v3 != -1)
  {
    swift_once();
    v1 = v0[15];
  }

  v0[12] = v1;
  v0[13] = v2;
  v4 = *(MEMORY[0x277CE4658] + 4);
  v8 = (*MEMORY[0x277CE4658] + MEMORY[0x277CE4658]);
  v5 = swift_task_alloc();
  v0[18] = v5;
  v6 = sub_22F04AA48();
  *v5 = v0;
  v5[1] = sub_22F04A624;

  return v8(v0 + 14, v0 + 12, &type metadata for FetchContactsStatusMessage, v6);
}

uint64_t sub_22F04A624()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_22F04A9D8;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 120);

    v4 = sub_22F04A74C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F04A74C()
{
  v1 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA08B0, &qword_22F0D2CE0);
  result = sub_22F0D16FC();
  v3 = result;
  v4 = 0;
  v5 = *(v1 + 64);
  v27 = v1 + 64;
  v28 = result;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v29 = v1;
  v30 = result + 64;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v33 = *v14;
      v15 = *(*(v1 + 56) + 8 * v13);
      v16 = *(v15 + 16);
      if (v16)
      {
        v32 = v8;
        v34 = MEMORY[0x277D84F90];
        v31 = v14[1];
        sub_22F0CFF1C();
        sub_22F0CFF1C();
        v17 = v15;
        sub_22EFFC538(0, v16, 0);
        v18 = v34;
        v19 = v17 + 32;
        do
        {
          sub_22EFFFBA4(v19, v0 + 56);
          sub_22EFE6B9C((v0 + 56), v0 + 16);
          v21 = *(v34 + 16);
          v20 = *(v34 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_22EFFC538((v20 > 1), v21 + 1, 1);
          }

          *(v34 + 16) = v21 + 1;
          sub_22EFE6B9C((v0 + 16), v34 + 40 * v21 + 32);
          v19 += 40;
          --v16;
        }

        while (v16);

        v3 = v28;
        v1 = v29;
        result = v31;
        v8 = v32;
      }

      else
      {
        result = sub_22F0CFF1C();
        v18 = MEMORY[0x277D84F90];
      }

      *(v30 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v22 = (v3[6] + 16 * v13);
      *v22 = v33;
      v22[1] = result;
      *(v3[7] + 8 * v13) = v18;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = *(v27 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v26 = *(v0 + 8);

    return v26(v3);
  }

  return result;
}

uint64_t sub_22F04A9D8()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

unint64_t sub_22F04AA48()
{
  result = qword_27DAA1800;
  if (!qword_27DAA1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1800);
  }

  return result;
}

uint64_t DaemonStatusFetcher.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DaemonStatusFetcher.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22F04AB18(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F015708;

  return sub_22F04A4D8(a1);
}

uint64_t sub_22F04ABB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DaemonStatusFetcher();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = &protocol witness table for DaemonStatusFetcher;
  *a2 = v5;

  return sub_22F0CFF1C();
}

uint64_t dispatch thunk of DaemonStatusFetcher.fetchStatus(for:)(uint64_t a1)
{
  v4 = *(*v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F015A70;

  return v8(a1);
}

uint64_t static AskToBuyBuilder.createFromAPRequestHandler(withDetails:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22F04AE58, 0, 0);
}

uint64_t sub_22F04AE58()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  *v4 = v0;
  v4[1] = sub_22F04AF60;
  v6 = v0[2];

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v2, v5);
}

uint64_t sub_22F04AF60()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_22F04B074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1808, &unk_22F0D7E40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  type metadata accessor for MessageDetails();
  v9 = swift_allocBox();
  v11 = v10;
  sub_22F040184(a2, v10, type metadata accessor for MessageDetails);
  v12 = objc_opt_self();
  v13 = *v11;
  v14 = v11[1];
  sub_22F0CFF1C();
  v15 = sub_22F0D0C7C();

  (*(v5 + 16))(v8, a1, v4);
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  (*(v5 + 32))(v17 + v16, v8, v4);
  aBlock[4] = sub_22F04CE24;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F04CEB4;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0D00CC();
  [v12 getRequestWithIdentifier:v15 completion:v18];
  _Block_release(v18);
  sub_22F0D00CC();
}

void sub_22F04B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v167 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v151 - v9;
  v168 = type metadata accessor for MessageDetails();
  v166 = *(v168 - 1);
  v11 = *(v166 + 64);
  MEMORY[0x28223BE20](v168);
  v159 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResolvedFamily();
  v157 = *(v13 - 8);
  v158 = v13;
  v14 = *(v157 + 64);
  MEMORY[0x28223BE20](v13);
  v156 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v161 = *(v16 - 8);
  v17 = *(v161 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v151 - v18;
  v20 = sub_22F0D05BC();
  v162 = *(v20 - 8);
  v21 = *(v162 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v151 - v26;
  MEMORY[0x28223BE20](v25);
  v163 = &v151 - v28;
  v160 = a3;
  v164 = swift_projectBox();
  if (!a1)
  {
    v61 = v10;
    if (a2)
    {
      swift_getErrorValue();
      v62 = sub_22F0D192C();
      v64 = v63;
    }

    else
    {
      v64 = 0xED0000726F727245;
      v62 = 0x206E776F6E6B6E55;
    }

    v46 = v168;
    v65 = v164;
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_22F0D152C();

    v177[0] = 0xD000000000000017;
    v177[1] = 0x800000022F0DE5C0;
    swift_beginAccess();
    v66 = *v65;
    v67 = v65[1];
    sub_22F0CFF1C();
    MEMORY[0x2318FD2C0](v66, v67);

    MEMORY[0x2318FD2C0](0x203A656863616320, 0xE800000000000000);
    MEMORY[0x2318FD2C0](v62, v64);

    v60 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v177[0], v177[1], 500);

    swift_willThrow();
    v10 = v61;
    goto LABEL_33;
  }

  v173 = 0x737574617473;
  v174 = 0xE600000000000000;
  sub_22F0D149C();
  if (*(a1 + 16) && (v165 = a1, v29 = sub_22EFFDA98(&v175), (v30 & 1) != 0))
  {
    sub_22F003598(*(v165 + 56) + 32 * v29, v177);
    sub_22F003484(&v175);
    sub_22F04CF78();
    if (swift_dynamicCast())
    {
      v154 = v20;
      v155 = v10;
      v31 = v173;
      v32 = [v173 integerValue];

      v33 = 0x20301u >> (8 * (v32 + 1));
      if (v32 + 1 >= 3)
      {
        v33 = 5;
      }

      v153 = v33;
      type metadata accessor for DaemonConnection();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v151 = objc_opt_self();
      v152 = ObjCClassFromMetadata;
      v35 = [v151 bundleForClass_];
      v36 = sub_22F0D031C();
      v38 = v37;

      v39 = v164;
      swift_beginAccess();
      v40 = *(v39 + 32);
      *(v39 + 24) = v36;
      *(v39 + 32) = v38;
      v41 = v39;

      v172[3] = 0xD000000000000013;
      v172[4] = 0x800000022F0DE600;
      sub_22F0D149C();
      if (*(v165 + 16) && (v42 = sub_22EFFDA98(&v175), (v43 & 1) != 0))
      {
        sub_22F003598(*(v165 + 56) + 32 * v42, v177);
        sub_22F003484(&v175);
        if (swift_dynamicCast())
        {
          v44 = v163;
          sub_22F0D04BC();
          if (qword_280CBE790 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v16, qword_280CBE798);
          v45 = [objc_opt_self() seconds];
          sub_22F0D019C();

          sub_22F0D018C();
          (*(v161 + 8))(v19, v16);
          sub_22F0D054C();
          swift_beginAccess();
          v46 = v168;
          v47 = v162;
          (*(v162 + 40))(v41 + v168[8], v27, v154);
          strcpy(v172, "requesterDSID");
          HIWORD(v172[1]) = -4864;
          sub_22F0D149C();
          if (*(v165 + 16) && (v48 = sub_22EFFDA98(&v175), (v49 & 1) != 0))
          {
            sub_22F003598(*(v165 + 56) + 32 * v48, v177);
            sub_22F003484(&v175);
            if (swift_dynamicCast())
            {
              v50 = sub_22F0B6FEC(v172[0], v172[1]);
              v52 = v51;

              v10 = v155;
              if ((v52 & 1) == 0)
              {
                swift_beginAccess();
                v53 = v41 + v46[9];
                *v53 = v50;
                *(v53 + 8) = 0;
                if (v153 == 3)
                {
                  swift_beginAccess();
                  v72 = v46[11];
                  v73 = 3;
                }

                else
                {
                  v54 = v154;
                  if (v153 == 2)
                  {
                    swift_beginAccess();
                    v72 = v46[11];
                    v73 = 2;
                  }

                  else
                  {
                    if (v153 == 1)
                    {
                      swift_beginAccess();
                      *(v41 + v46[11]) = 1;
                      strcpy(v177, "productURL");
                      BYTE3(v177[1]) = 0;
                      HIDWORD(v177[1]) = -369098752;
                      sub_22F0D149C();
                      if (*(v165 + 16) && (v55 = sub_22EFFDA98(&v175), (v56 & 1) != 0))
                      {
                        sub_22F003598(*(v165 + 56) + 32 * v55, v177);
                        sub_22F003484(&v175);
                        v57 = swift_dynamicCast();
                        if (v57)
                        {
                          v58 = v170;
                        }

                        else
                        {
                          v58 = 0;
                        }

                        if (v57)
                        {
                          v59 = v171;
                        }

                        else
                        {
                          v59 = 0;
                        }
                      }

                      else
                      {
                        sub_22F003484(&v175);
                        v58 = 0;
                        v59 = 0;
                      }

                      swift_beginAccess();
                      v80 = (v41 + v46[20]);
                      v81 = v80[1];
                      *v80 = v58;
                      v80[1] = v59;

                      strcpy(v177, "productType");
                      HIDWORD(v177[1]) = -352321536;
                      sub_22F0D149C();
                      if (*(v165 + 16) && (v82 = sub_22EFFDA98(&v175), (v83 & 1) != 0))
                      {
                        sub_22F003598(*(v165 + 56) + 32 * v82, v177);
                        sub_22F003484(&v175);
                        v84 = swift_dynamicCast();
                        if (v84)
                        {
                          v85 = v170;
                        }

                        else
                        {
                          v85 = 0;
                        }

                        if (v84)
                        {
                          v86 = v171;
                        }

                        else
                        {
                          v86 = 0;
                        }
                      }

                      else
                      {
                        sub_22F003484(&v175);
                        v85 = 0;
                        v86 = 0;
                      }

                      swift_beginAccess();
                      v87 = (v41 + v46[21]);
                      v88 = v87[1];
                      *v87 = v85;
                      v87[1] = v86;

                      strcpy(v177, "thumbnailURL");
                      BYTE5(v177[1]) = 0;
                      HIWORD(v177[1]) = -5120;
                      sub_22F0D149C();
                      if (*(v165 + 16) && (v89 = sub_22EFFDA98(&v175), (v90 & 1) != 0))
                      {
                        sub_22F003598(*(v165 + 56) + 32 * v89, v177);
                        sub_22F003484(&v175);
                        if (swift_dynamicCast())
                        {
                          v92 = v170;
                          v91 = v171;
LABEL_69:
                          swift_beginAccess();
                          v93 = (v41 + v46[13]);
                          v94 = v93[1];
                          *v93 = v92;
                          v93[1] = v91;
                          sub_22F0CFF1C();

                          object = String.trimToNil()().value._object;

                          if (!object)
                          {
                            v175 = 0;
                            v176 = 0xE000000000000000;
                            sub_22F0D152C();

                            v175 = 0xD00000000000001FLL;
                            v176 = 0x800000022F0DE680;
                            v99 = sub_22F0D0B0C();
                            MEMORY[0x2318FD2C0](v99);

                            v60 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v175, v176, 500);

                            swift_willThrow();
                            (*(v162 + 8))(v163, v54);
                            goto LABEL_33;
                          }

                          strcpy(v177, "requestString");
                          HIWORD(v177[1]) = -4864;
                          sub_22F0D149C();
                          if (*(v165 + 16) && (v96 = sub_22EFFDA98(&v175), (v97 & 1) != 0))
                          {
                            sub_22F003598(*(v165 + 56) + 32 * v96, v177);
                            sub_22F003484(&v175);
                            swift_dynamicCast();
                            v10 = v155;
                            v46 = v168;
                            v41 = v164;
                          }

                          else
                          {
                            sub_22F003484(&v175);
                          }

                          v121 = String.trimToNil()().value._object;

                          if (!v121)
                          {
                            v175 = 0;
                            v176 = 0xE000000000000000;
                            sub_22F0D152C();

                            v175 = 0xD00000000000002BLL;
                            v176 = 0x800000022F0DE6A0;
                            v138 = sub_22F0D0B0C();
                            MEMORY[0x2318FD2C0](v138);

                            v60 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v175, v176, 500);

                            swift_willThrow();
                            (*(v162 + 8))(v163, v154);
                            goto LABEL_33;
                          }

                          swift_beginAccess();
                          v122 = String.trimToNil()();
                          v123 = (v41 + v46[15]);
                          v124 = v123->value._object;
                          *v123 = v122;
                          swift_endAccess();

                          v177[0] = 0x637365446D657469;
                          v177[1] = 0xEF6E6F6974706972;
                          v125 = MEMORY[0x277D837D0];
                          sub_22F0D149C();
                          if (*(v165 + 16) && (v126 = sub_22EFFDA98(&v175), (v127 & 1) != 0))
                          {
                            sub_22F003598(*(v165 + 56) + 32 * v126, v177);
                            sub_22F003484(&v175);
                            swift_dynamicCast();
                          }

                          else
                          {
                            sub_22F003484(&v175);
                          }

                          v128 = String.trimToNil()();

                          if (v128.value._object)
                          {
                            v129 = [v151 bundleForClass_];
                            sub_22F0D031C();

                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
                            v130 = swift_allocObject();
                            *(v130 + 16) = xmmword_22F0D6710;
                            v131 = v164;
                            swift_beginAccess();
                            v132 = *(v131 + 40);
                            v133 = *(v131 + 48);
                            *(v130 + 56) = v125;
                            v134 = sub_22F03DB30();
                            *(v130 + 32) = v132;
                            *(v130 + 40) = v133;
                            *(v130 + 96) = v125;
                            *(v130 + 104) = v134;
                            *(v130 + 64) = v134;
                            *(v130 + 72) = v128;
                            sub_22F0CFF1C();
                            v135 = sub_22F0D0CCC();
                            v137 = v136;
                          }

                          else
                          {
                            v137 = 0xE300000000000000;
                            v135 = 6235171;
                          }

                          v139 = v164;
                          swift_beginAccess();
                          v140 = (v139 + v168[19]);
                          v141 = v140[1];
                          *v140 = v135;
                          v140[1] = v137;

                          strcpy(v177, "requestSummary");
                          HIBYTE(v177[1]) = -18;
                          sub_22F0D149C();
                          v142 = v165;
                          if (*(v165 + 16) && (v143 = sub_22EFFDA98(&v175), (v144 & 1) != 0))
                          {
                            sub_22F003598(*(v142 + 56) + 32 * v143, v177);
                            sub_22F003484(&v175);
                            swift_dynamicCast();
                          }

                          else
                          {
                            sub_22F003484(&v175);
                          }

                          v41 = v164;
                          swift_beginAccess();
                          v145 = String.trimToNil()();
                          v46 = v168;
                          v146 = (v41 + v168[16]);
                          v147 = v146->value._object;
                          *v146 = v145;
                          swift_endAccess();

                          v47 = v162;
LABEL_51:
                          swift_beginAccess();
                          if (*(v41 + v46[11]) == 1)
                          {
                            goto LABEL_75;
                          }

                          v98 = sub_22F0D188C();

                          if (v98)
                          {
LABEL_79:
                            if (qword_27DAA0570 != -1)
                            {
                              swift_once();
                            }

                            v101 = sub_22F0D0A1C();
                            __swift_project_value_buffer(v101, qword_27DAA1A28);
                            sub_22F0CFFAC();
                            v102 = sub_22F0D09FC();
                            v103 = sub_22F0D122C();
                            sub_22F0D00CC();
                            if (os_log_type_enabled(v102, v103))
                            {
                              v104 = swift_slowAlloc();
                              v105 = swift_slowAlloc();
                              v169[0] = v105;
                              *v104 = 136315138;
                              swift_beginAccess();
                              v106 = v159;
                              sub_22F040184(v41, v159, type metadata accessor for MessageDetails);
                              v107 = MessageDetails.debugDescription.getter();
                              v109 = v108;
                              sub_22F04CFC4(v106, type metadata accessor for MessageDetails);
                              v110 = sub_22F00A560(v107, v109, v169);

                              *(v104 + 4) = v110;
                              _os_log_impl(&dword_22EFE1000, v102, v103, "Details %s", v104, 0xCu);
                              __swift_destroy_boxed_opaque_existential_1Tm(v105);
                              v111 = v105;
                              v46 = v168;
                              MEMORY[0x2318FE8B0](v111, -1, -1);
                              MEMORY[0x2318FE8B0](v104, -1, -1);
                            }

                            v112 = v155;
                            swift_beginAccess();
                            sub_22F040184(v41, v112, type metadata accessor for MessageDetails);
                            (*(v166 + 56))(v112, 0, 1, v46);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1808, &unk_22F0D7E40);
                            sub_22F0D108C();
                            (*(v47 + 8))(v163, v154);
                            return;
                          }

                          swift_beginAccess();
                          if (*(v41 + v46[11]) == 4)
                          {
LABEL_75:

                            goto LABEL_79;
                          }

                          v100 = sub_22F0D188C();

                          if (v100)
                          {
                            goto LABEL_79;
                          }

                          strcpy(v169, "approverDSID");
                          BYTE5(v169[1]) = 0;
                          HIWORD(v169[1]) = -5120;
                          sub_22F0D149C();
                          if (*(v165 + 16) && (v113 = sub_22EFFDA98(&v175), (v114 & 1) != 0))
                          {
                            sub_22F003598(*(v165 + 56) + 32 * v113, v177);
                            sub_22F003484(&v175);
                            if (swift_dynamicCast())
                            {
                              v115 = sub_22F0B6FEC(v169[0], v169[1]);
                              v117 = v116;

                              v46 = v168;
                              v47 = v162;
                              if ((v117 & 1) == 0)
                              {
                                v118 = v164;
                                swift_beginAccess();
                                v119 = v46[12];
                                if (!(*(v157 + 48))(v118 + v119, 1, v158))
                                {
                                  v148 = v156;
                                  sub_22F040184(v164 + v119, v156, type metadata accessor for ResolvedFamily);
                                  v149 = ResolvedFamily.approverByDSID(with:)(v115);
                                  sub_22F04CFC4(v148, type metadata accessor for ResolvedFamily);
                                  if (v149)
                                  {

                                    v41 = v164;
                                    swift_beginAccess();
                                    v46 = v168;
                                    v150 = v41 + v168[10];
                                    *v150 = v115;
                                    *(v150 + 8) = 0;
                                    v47 = v162;
                                    goto LABEL_79;
                                  }
                                }

                                v177[0] = 0;
                                v177[1] = 0xE000000000000000;
                                sub_22F0D152C();

                                v177[0] = 0xD00000000000001ALL;
                                v177[1] = 0x800000022F0DE660;
                                v120 = sub_22F0D0B0C();
                                MEMORY[0x2318FD2C0](v120);

                                v60 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v177[0], v177[1], 500);

                                swift_willThrow();
                                (*(v162 + 8))(v163, v154);
                                goto LABEL_38;
                              }
                            }

                            else
                            {
                              v46 = v168;
                              v47 = v162;
                            }
                          }

                          else
                          {
                            sub_22F003484(&v175);
                          }

                          v60 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000011, 0x800000022F0DE4C0, 500);
                          swift_willThrow();
                          (*(v47 + 8))(v163, v154);
                          v10 = v155;
                          goto LABEL_33;
                        }
                      }

                      else
                      {
                        sub_22F003484(&v175);
                      }

                      v92 = 0;
                      v91 = 0;
                      goto LABEL_69;
                    }

                    swift_beginAccess();
                    (*(v47 + 16))(v27, v41 + v46[8], v54);
                    sub_22F0D05AC();
                    v74 = sub_22F0D053C();
                    v75 = *(v162 + 8);
                    v75(v24, v54);
                    v75(v27, v54);
                    v47 = v162;
                    if ((v74 & 1) == 0)
                    {
                      goto LABEL_51;
                    }

                    if (qword_27DAA0570 != -1)
                    {
                      swift_once();
                    }

                    v76 = sub_22F0D0A1C();
                    __swift_project_value_buffer(v76, qword_27DAA1A28);
                    v77 = sub_22F0D09FC();
                    v78 = sub_22F0D122C();
                    if (os_log_type_enabled(v77, v78))
                    {
                      v79 = swift_slowAlloc();
                      *v79 = 0;
                      _os_log_impl(&dword_22EFE1000, v77, v78, "No status but expired set", v79, 2u);
                      MEMORY[0x2318FE8B0](v79, -1, -1);
                    }

                    swift_beginAccess();
                    v72 = v46[11];
                    v73 = 4;
                  }
                }

                *(v41 + v72) = v73;
                goto LABEL_51;
              }

LABEL_41:
              v175 = 0;
              v176 = 0xE000000000000000;
              sub_22F0D152C();

              v175 = 0xD000000000000017;
              v176 = 0x800000022F0DE640;
              v71 = sub_22F0D0B0C();
              MEMORY[0x2318FD2C0](v71);

              v60 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v175, v176, 500);

              swift_willThrow();
              (*(v47 + 8))(v44, v154);
              goto LABEL_33;
            }
          }

          else
          {
            sub_22F003484(&v175);
          }

          v10 = v155;
          goto LABEL_41;
        }
      }

      else
      {
        sub_22F003484(&v175);
      }

      v175 = 0;
      v176 = 0xE000000000000000;
      sub_22F0D152C();

      v175 = 0xD000000000000013;
      v176 = 0x800000022F0DE620;
      v70 = sub_22F0D0B0C();
      MEMORY[0x2318FD2C0](v70);

      v60 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v175, v176, 500);

      swift_willThrow();
LABEL_38:
      v10 = v155;
      v46 = v168;
      goto LABEL_33;
    }
  }

  else
  {
    sub_22F003484(&v175);
  }

  v60 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000010, 0x800000022F0DE400, 500);
  swift_willThrow();
  v46 = v168;
LABEL_33:
  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v68 = sub_22F0D0A1C();
  __swift_project_value_buffer(v68, qword_27DAA1A28);
  v69 = v60;
  Logger.ifError(_:message:)(v60);

  (*(v166 + 56))(v10, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1808, &unk_22F0D7E40);
  sub_22F0D108C();
}

void sub_22F04CE24(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1808, &unk_22F0D7E40) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_22F04B2C0(a1, a2, v6, v7);
}

uint64_t sub_22F04CEB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_22F0D0AFC();
  }

  else
  {
    v6 = 0;
  }

  sub_22F0CFFAC();
  v7 = a3;
  v5(v6, a3);
  sub_22F0D00CC();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

unint64_t sub_22F04CF78()
{
  result = qword_27DAA1850;
  if (!qword_27DAA1850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA1850);
  }

  return result;
}

uint64_t sub_22F04CFC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static RequestMessageDetailsBuilder.shared.getter()
{
  v0 = type metadata accessor for RequestMessageDetailsBuilder();

  return MEMORY[0x2821FEAF0](v0, &unk_27DAA06B8);
}

uint64_t sub_22F04D090(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 333) = a6;
  *(v8 + 332) = a5;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 96) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  *(v8 + 136) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v13 = type metadata accessor for ResolvedFamily();
  *(v8 + 160) = v13;
  v14 = *(v13 - 8);
  *(v8 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v16 = type metadata accessor for MessageDetails();
  *(v8 + 184) = v16;
  v17 = *(v16 - 8);
  *(v8 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 334) = *a2;

  return MEMORY[0x2822009F8](sub_22F04D260, 0, 0);
}

uint64_t sub_22F04D260()
{
  if (*(v0 + 334) && *(v0 + 334) == 1)
  {

LABEL_5:
    v2 = *(v0 + 224);
    v3 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    *(v2 + 16) = 3;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0xE000000000000000;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0xE000000000000000;
    v6 = v2 + v3[8];
    sub_22F0D04EC();
    v7 = v2 + v3[9];
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v2 + v3[10];
    *v8 = 0;
    *(v8 + 8) = 1;
    *(v2 + v3[11]) = 0;
    v9 = v3[12];
    *(v0 + 328) = v9;
    v10 = *(v5 + 56);
    *(v0 + 232) = v10;
    *(v0 + 240) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v2 + v9, 1, 1, v4);
    v11 = (v2 + v3[13]);
    *v11 = 0;
    v11[1] = 0;
    *(v2 + v3[14]) = xmmword_22F0D6620;
    v12 = (v2 + v3[15]);
    *v12 = 0;
    v12[1] = 0;
    v13 = (v2 + v3[16]);
    *v13 = 0;
    v13[1] = 0;
    v14 = (v2 + v3[17]);
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v15 = (v2 + v3[18]);
    *v15 = 0;
    v15[1] = 0;
    v16 = (v2 + v3[19]);
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    v17 = (v2 + v3[20]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v2 + v3[21]);
    *v18 = 0;
    v18[1] = 0;
    if (qword_280CBEC28 != -1)
    {
      swift_once();
    }

    v19 = qword_280CBEC30;
    *(v0 + 80) = type metadata accessor for ContactFetcher();
    *(v0 + 88) = &protocol witness table for ContactFetcher;
    *(v0 + 56) = v19;
    sub_22F0CFFAC();
    v20 = swift_task_alloc();
    *(v0 + 248) = v20;
    *v20 = v0;
    v20[1] = sub_22F04D694;
    v21 = *(v0 + 152);

    return static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)(v21, v0 + 56);
  }

  v1 = sub_22F0D188C();

  if (v1)
  {
    goto LABEL_5;
  }

  if (!*(v0 + 334))
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000013, 0x800000022F0DE3E0, 500);
    goto LABEL_14;
  }

  if (*(v0 + 334) == 1)
  {
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    sub_22F0D152C();

    MEMORY[0x2318FD2C0](v24, v23);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000021, 0x800000022F0DE6F0, 500);

LABEL_14:
    swift_willThrow();
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    v29 = *(v0 + 176);
    v31 = *(v0 + 144);
    v30 = *(v0 + 152);

    v32 = *(v0 + 8);

    return v32();
  }

  v33 = swift_task_alloc();
  *(v0 + 280) = v33;
  *v33 = v0;
  v33[1] = sub_22F04DD78;
  v34 = *(v0 + 112);
  v35 = *(v0 + 120);
  v36 = *(v0 + 104);

  return sub_22F08E0EC(v36, v34, v35);
}

uint64_t sub_22F04D694()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(v2 + 256) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  if (v0)
  {
    v4 = sub_22F04E654;
  }

  else
  {
    v4 = sub_22F04D7B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F04D7B0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  if ((*(*(v0 + 168) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 224);
    sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000028, 0x800000022F0DD4B0, 500);
    swift_willThrow();
    sub_22F01DF14(v3, type metadata accessor for MessageDetails);
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v8 = *(v0 + 176);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 232);
    v13 = *(v0 + 240);
    v15 = *(v0 + 328);
    v16 = *(v0 + 224);
    v17 = *(v0 + 176);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    sub_22F01DE40(v2, v17, type metadata accessor for ResolvedFamily);
    sub_22F003A4C(v16 + v15, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F01DEA8(v17, v16 + v15);
    v14(v16 + v15, 0, 1, v1);
    v20 = *v17;
    *(v16 + 40) = FAFamilyMember.displayNameWithFallback.getter();
    *(v16 + 48) = v21;
    *v16 = v19;
    *(v16 + 8) = v18;
    *(v16 + 16) = 1;
    sub_22F0CFF1C();
    v22 = swift_task_alloc();
    *(v0 + 264) = v22;
    *(v22 + 16) = v16;
    v23 = *(MEMORY[0x277D859E0] + 4);
    v24 = swift_task_alloc();
    *(v0 + 272) = v24;
    *v24 = v0;
    v24[1] = sub_22F04DA58;
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);

    return MEMORY[0x2822007B8](v25, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v22, v26);
  }
}

uint64_t sub_22F04DA58()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22F04DB70, 0, 0);
}

uint64_t sub_22F04DB70()
{
  v1 = v0[18];
  v2 = (*(v0[24] + 48))(v1, 1, v0[23]);
  v3 = v0[28];
  v4 = v0[22];
  if (v2 == 1)
  {
    sub_22F003A4C(v1, qword_27DAA11D0, &qword_22F0D5D88);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000022, 0x800000022F0DD510, 500);
    swift_willThrow();
    sub_22F01DF14(v4, type metadata accessor for ResolvedFamily);
    sub_22F01DF14(v3, type metadata accessor for MessageDetails);
    v6 = v0[27];
    v5 = v0[28];
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[22];
    v11 = v0[18];
    v10 = v0[19];
  }

  else
  {
    v13 = v0[12];
    sub_22F01DF14(v0[22], type metadata accessor for ResolvedFamily);
    sub_22F01DE40(v1, v13, type metadata accessor for MessageDetails);
    sub_22F01DF14(v3, type metadata accessor for MessageDetails);
    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[22];
    v20 = v0[18];
    v19 = v0[19];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22F04DD78(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22F04DE78, 0, 0);
}

uint64_t sub_22F04DE78()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = type metadata accessor for AppBundleResolver();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_22F09EEDC;
    *(v3 + 24) = 0;
    *(v0 + 40) = v2;
    *(v0 + 48) = &protocol witness table for AppBundleResolver;
    *(v0 + 16) = v3;
    v4 = v1;
    v5 = swift_task_alloc();
    *(v0 + 296) = v5;
    *v5 = v0;
    v5[1] = sub_22F04E07C;
    v6 = *(v0 + 208);
    v7 = *(v0 + 333);

    return sub_22F06801C(v6, v4, v0 + 16, v7);
  }

  else
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    sub_22F0D152C();

    MEMORY[0x2318FD2C0](v10, v9);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000013, 0x800000022F0DD490, 500);

    swift_willThrow();
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 176);
    v17 = *(v0 + 144);
    v16 = *(v0 + 152);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_22F04E07C()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_22F04E578;
  }

  else
  {
    v3 = sub_22F04E190;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F04E190()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  sub_22F01DE40(v1, v2, type metadata accessor for MessageDetails);
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *v3 = v0;
  v3[1] = sub_22F04E25C;
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 128);
  v7 = *(v0 + 332);

  return sub_22F03F290(v5, v6, v4, v7);
}

uint64_t sub_22F04E25C()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_22F04E480;
  }

  else
  {
    v3 = sub_22F04E370;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F04E370()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[12];

  sub_22F01DF14(v2, type metadata accessor for MessageDetails);
  sub_22F01DE40(v3, v2, type metadata accessor for MessageDetails);
  sub_22F01DE40(v2, v4, type metadata accessor for MessageDetails);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];
  v11 = v0[18];
  v10 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22F04E480()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[27];
  swift_willThrow();

  sub_22F01DF14(v3, type metadata accessor for MessageDetails);
  v4 = v0[40];
  v5 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[22];
  v12 = v0[18];
  v11 = v0[19];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22F04E578()
{
  v1 = v0[38];
  v2 = v0[36];

  swift_willThrow();
  v3 = v0[38];
  v4 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[22];
  v11 = v0[18];
  v10 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22F04E654()
{
  sub_22F01DF14(v0[28], type metadata accessor for MessageDetails);
  v1 = v0[32];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22F04E740(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22F00CD54;

  return sub_22F04D090(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of RequestMessageDetailsBuilderProtocol.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_22F00CF60;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of RequestMessageDetailsBuilder.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 88);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = sub_22F00CD54;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t static PeopleBiomeEventIndexer.indexEvent(askToBuyEvent:withContactFetcher:withIndexer:completion:)(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v10 = [a1 userID];
  v11 = sub_22F0D0CAC();
  v13 = v12;

  v14 = sub_22F0B6FEC(v11, v13);
  LOBYTE(v10) = v15;

  if (v10)
  {
    if (qword_27DAA05D8 != -1)
    {
      swift_once();
    }

    v16 = qword_27DAACEF8;
    return a4(v16, 1);
  }

  v17 = [a1 actionUserID];
  if (v17)
  {
    v18 = sub_22F0D0CAC();
    v20 = v19;

    v21 = sub_22F0B6FEC(v18, v20);
    LOBYTE(v18) = v22;

    if (v18)
    {
      if (qword_27DAA05E0 != -1)
      {
        swift_once();
      }

      v16 = qword_27DAACF00;
      return a4(v16, 1);
    }

    v35 = v21;
    v36 = v14;
  }

  else
  {
    v35 = 0;
    v36 = v14;
  }

  v34 = v17 == 0;
  sub_22EFFFB40(a3, v37);
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a1;
  sub_22EFE6B9C(v37, (v24 + 5));
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = MEMORY[0x277D84F90];
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = a2[4];
  v33 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_22F050678;
  *(v30 + 24) = v24;
  *(v30 + 32) = v27;
  *(v30 + 40) = v36;
  *(v30 + 48) = v25;
  *(v30 + 56) = v28;
  *(v30 + 64) = v35;
  *(v30 + 72) = v34;
  *(v30 + 80) = v26;
  v31 = *(v29 + 8);
  sub_22F0CFFAC();
  v32 = a1;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v31(sub_22F050688, v30, v33, v29);
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

void sub_22F04EE74(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for ResolvedFamily();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v20 - v16);
  sub_22F040114(a1, &v20 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = *v17;
    a2(v18, 1);
  }

  else
  {
    sub_22F03DCB4(v17, v13);
    sub_22F0440B0(a4, *v13, *(v13 + 1), *(v13 + 2), a5, a2, a3);
    sub_22F050788(v13);
  }
}

uint64_t static PeopleBiomeEventIndexer.indexEvent(locationEvent:withPerson:withIndexer:completion:)(void *a1, __int128 *a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v5 = *(a2 + 2);
  v7 = *a2;
  v8 = v5;
  return sub_22F04280C(a1, &v7, a3, a4, a5);
}

uint64_t static PeopleBiomeEventIndexer.indexEvent(screenTimeRequest:bundleResolver:withContactFetcher:withIndexer:completion:)(void *a1, void (*a2)(char *, uint64_t), void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v134 = a5;
  v135 = a6;
  v130 = a4;
  v131 = a3;
  v133 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v127 = *(v7 - 8);
  v8 = *(v127 + 64);
  MEMORY[0x28223BE20](v7);
  v126 = &v114 - v9;
  v128 = sub_22F0D0A8C();
  v129 = *(v128 - 8);
  isa = v129[8].isa;
  v11 = MEMORY[0x28223BE20](v128);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v114 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = v15 + 16;
  v137 = v15;
  *(v15 + 24) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_22F0D6620;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = v17;
  *(v17 + 24) = 0;
  v19 = [a1 requesterDSID];
  v20 = sub_22F0D0CAC();
  v22 = v21;

  v23 = sub_22F0B6FEC(v20, v22);
  LOBYTE(v19) = v24;

  if (v19)
  {
    if (qword_27DAA05D8 != -1)
    {
      swift_once();
    }

    v25 = qword_27DAACEF8;
LABEL_5:
    v134(v25, 1);
    sub_22F0D00CC();
LABEL_34:
    sub_22F0D00CC();

    return sub_22F0D00CC();
  }

  v26 = [a1 responderDSID];
  v124 = v26;
  if (v26)
  {
    v123 = v16;
    v27 = v13;
    v28 = v7;
    v29 = a1;
    v30 = v23;
    v31 = v26;
    v32 = sub_22F0D0CAC();
    v34 = v33;

    v125 = sub_22F0B6FEC(v32, v34);
    LOBYTE(v32) = v35;

    if (v32)
    {
      if (qword_27DAA05E0 != -1)
      {
        swift_once();
      }

      v134(qword_27DAACF00, 1);
      sub_22F0D00CC();
      goto LABEL_34;
    }

    v23 = v30;
    a1 = v29;
    v7 = v28;
    v13 = v27;
  }

  else
  {
    v125 = 0;
  }

  if ([a1 kind] != 2)
  {
    v61 = *(v133 + 3);
    v62 = *(v133 + 4);
    __swift_project_boxed_opaque_existential_1(v133, v61);
    (*(v62 + 32))(&v138, 0xD000000000000016, 0x800000022F0DD8D0, v61, v62);
    v63 = v139;
    v64 = v140;
    sub_22F0303BC(v139, v140);

    sub_22F00AB48(v63, v64);
    if (v64 >> 60 == 15)
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v65 = sub_22F0D0A1C();
      __swift_project_value_buffer(v65, qword_280CBDB98);
      v66 = sub_22F0D09FC();
      v67 = sub_22F0D123C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v138 = v69;
        *v68 = 136315138;
        *(v68 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v138);
        _os_log_impl(&dword_22EFE1000, v66, v67, "%s bundle image failed for safari icon", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x2318FE8B0](v69, -1, -1);
        MEMORY[0x2318FE8B0](v68, -1, -1);
      }

      if (qword_27DAA05A8 != -1)
      {
        swift_once();
      }

      v134(qword_27DAACED8, 1);
      sub_22F0D00CC();
      goto LABEL_34;
    }

    v120 = v23;
    v50 = v136;
    if (qword_280CBDB90 != -1)
    {
      swift_once();
    }

    v71 = sub_22F0D0A1C();
    __swift_project_value_buffer(v71, qword_280CBDB98);
    v72 = sub_22F0D09FC();
    v73 = sub_22F0D124C();
    v74 = os_log_type_enabled(v72, v73);
    v121 = a1;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v138 = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v138);
      _os_log_impl(&dword_22EFE1000, v72, v73, "%s safari icon as fallback", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x2318FE8B0](v76, -1, -1);
      MEMORY[0x2318FE8B0](v75, -1, -1);
    }

    goto LABEL_42;
  }

  v36 = [a1 bundleID];
  if (!v36)
  {
    if (qword_27DAA05A8 != -1)
    {
      swift_once();
    }

    v25 = qword_27DAACED8;
    goto LABEL_5;
  }

  v120 = v23;
  v121 = a1;
  v37 = v36;
  v119 = sub_22F0D0CAC();
  v38 = v18;
  v123 = v39;

  v40 = dispatch_group_create();
  v115 = v40;
  dispatch_group_enter(v40);
  v41 = *(v133 + 4);
  v118 = *(v133 + 3);
  v117 = __swift_project_boxed_opaque_existential_1(v133, v118);
  v42 = swift_allocObject();
  v43 = v136;
  v42[2] = v137;
  v42[3] = v38;
  v42[4] = v43;
  v42[5] = v40;
  v116 = *(v41 + 8);
  sub_22F0CFFAC();
  v122 = v38;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v44 = v115;
  v116(v119, v123, sub_22F050740, v42, v118, v41);
  sub_22F0D00CC();
  sub_22F0D0A7C();
  if (qword_280CBD948 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_280CBD950);
  v45 = [objc_opt_self() seconds];
  v46 = v126;
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v127 + 8))(v46, v7);
  sub_22F0D0A9C();
  v47 = v129[1].isa;
  v48 = v128;
  v47(v13, v128);
  sub_22F0D125C();
  v49 = v44;
  if (sub_22F0D0A3C())
  {
    swift_beginAccess();
    v18 = v122;
    v50 = v136;
    if (!*(v122 + 24))
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v99 = sub_22F0D0A1C();
      __swift_project_value_buffer(v99, qword_280CBDB98);
      v100 = v123;
      sub_22F0CFF1C();
      v56 = sub_22F0D09FC();
      v101 = sub_22F0D123C();

      if (!os_log_type_enabled(v56, v101))
      {

        goto LABEL_63;
      }

      v102 = swift_slowAlloc();
      v103 = v100;
      v104 = swift_slowAlloc();
      *&v138 = v104;
      *v102 = 136315394;
      *(v102 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v138);
      *(v102 + 12) = 2080;
      v105 = v47;
      v106 = sub_22F00A560(v119, v103, &v138);

      *(v102 + 14) = v106;
      v47 = v105;
      _os_log_impl(&dword_22EFE1000, v56, v101, "%s %s lookup failed ", v102, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v104, -1, -1);
      v60 = v102;
LABEL_61:
      MEMORY[0x2318FE8B0](v60, -1, -1);
LABEL_63:

      if (qword_27DAA05A8 != -1)
      {
        swift_once();
      }

      v134(qword_27DAACED8, 1);

      v47(v132, v48);
      sub_22F0D00CC();
      goto LABEL_52;
    }

    swift_beginAccess();
    if (*(v137 + 24) || (swift_beginAccess(), *(v50 + 24) >> 60 != 15))
    {

      v47(v132, v48);
      goto LABEL_51;
    }

    v51 = *(v133 + 3);
    v52 = *(v133 + 4);
    __swift_project_boxed_opaque_existential_1(v133, v51);
    LOBYTE(v138) = 7;
    v53 = (*(v52 + 16))(&v138, v51, v52);
    if (v54 >> 60 == 15)
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v55 = sub_22F0D0A1C();
      __swift_project_value_buffer(v55, qword_280CBDB98);
      v56 = sub_22F0D09FC();
      v57 = sub_22F0D123C();
      if (!os_log_type_enabled(v56, v57))
      {
        goto LABEL_63;
      }

      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v138 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v138);
      _os_log_impl(&dword_22EFE1000, v56, v57, "%s image failed for screentime icon", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x2318FE8B0](v59, -1, -1);
      v60 = v58;
      goto LABEL_61;
    }

    v63 = v53;
    v64 = v54;
    if (qword_280CBDB90 != -1)
    {
      swift_once();
    }

    v107 = sub_22F0D0A1C();
    __swift_project_value_buffer(v107, qword_280CBDB98);
    v108 = sub_22F0D09FC();
    v109 = sub_22F0D124C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v133 = v47;
      v111 = v110;
      v112 = swift_slowAlloc();
      v129 = v49;
      v113 = v112;
      *&v138 = v112;
      *v111 = 136315138;
      *(v111 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v138);
      _os_log_impl(&dword_22EFE1000, v108, v109, "%s screentime icon as fallback", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      MEMORY[0x2318FE8B0](v113, -1, -1);
      v18 = v122;
      MEMORY[0x2318FE8B0](v111, -1, -1);

      v133(v132, v48);
    }

    else
    {

      v47(v132, v48);
    }

LABEL_42:
    v77 = *(v50 + 16);
    v78 = *(v50 + 24);
    *(v50 + 16) = v63;
    *(v50 + 24) = v64;
    sub_22F00AB48(v77, v78);
LABEL_51:
    v87 = v124 == 0;
    sub_22EFFFB40(v130, &v138);
    v88 = swift_allocObject();
    v89 = v135;
    v88[2] = v134;
    v88[3] = v89;
    v88[4] = v121;
    v88[5] = v18;
    v88[6] = v137;
    v88[7] = v50;
    sub_22EFE6B9C(&v138, (v88 + 8));
    v90 = swift_allocObject();
    *(v90 + 16) = 0;
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    v92 = swift_allocObject();
    v122 = v18;
    v93 = v92;
    *(v92 + 16) = MEMORY[0x277D84F90];
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    v95 = v131[4];
    v134 = v131[3];
    v130 = v95;
    v133 = __swift_project_boxed_opaque_existential_1(v131, v134);
    v96 = swift_allocObject();
    *(v96 + 16) = sub_22F05068C;
    *(v96 + 24) = v88;
    v97 = v120;
    *(v96 + 32) = v93;
    *(v96 + 40) = v97;
    *(v96 + 48) = v90;
    *(v96 + 56) = v94;
    *(v96 + 64) = v125;
    *(v96 + 72) = v87;
    *(v96 + 80) = v91;
    v132 = *(v95 + 8);
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    v98 = v121;
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    (v132)(sub_22F0507E4, v96, v134, v130);
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
LABEL_52:
    sub_22F0D00CC();
    return sub_22F0D00CC();
  }

  if (qword_280CBDB90 != -1)
  {
    swift_once();
  }

  v79 = sub_22F0D0A1C();
  __swift_project_value_buffer(v79, qword_280CBDB98);
  v80 = v123;
  sub_22F0CFF1C();
  v81 = sub_22F0D09FC();
  v82 = sub_22F0D123C();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v138 = v84;
    *v83 = 136315394;
    *(v83 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v138);
    *(v83 + 12) = 2080;
    v85 = v47;
    v86 = sub_22F00A560(v119, v80, &v138);

    *(v83 + 14) = v86;
    v47 = v85;
    _os_log_impl(&dword_22EFE1000, v81, v82, "%s %s lookup timeout", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v84, -1, -1);
    MEMORY[0x2318FE8B0](v83, -1, -1);
  }

  else
  {
  }

  if (qword_27DAA05B0 != -1)
  {
    swift_once();
  }

  v134(qword_27DAACEE0, 1);

  v47(v132, v48);
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

void sub_22F050354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  swift_beginAccess();
  v14 = *(a2 + 24);
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0303BC(v12, v13);

  swift_beginAccess();
  v15 = *(a3 + 24);
  *(a3 + 16) = v9;
  *(a3 + 24) = v8;

  swift_beginAccess();
  v16 = *(a4 + 16);
  v17 = *(a4 + 24);
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  sub_22F00AB48(v16, v17);
  dispatch_group_leave(a5);
}

void sub_22F05043C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v37 = a4;
  v15 = type metadata accessor for ResolvedFamily();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v33 - v21);
  sub_22F040114(a1, &v33 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    v24 = *v22;
    a2(v23, 1);
  }

  else
  {
    sub_22F03DCB4(v22, v18);
    swift_beginAccess();
    v25 = *(a5 + 16);
    v26 = *(a5 + 24);
    v36 = v25;
    swift_beginAccess();
    v27 = *(a6 + 16);
    v28 = *(a6 + 24);
    v35 = v27;
    swift_beginAccess();
    v30 = *(a7 + 16);
    v29 = *(a7 + 24);
    v31 = *(v18 + 1);
    v34 = *v18;
    v32 = *(v18 + 2);
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    sub_22F0303BC(v30, v29);
    sub_22F02F0A4(v37, v36, v26, v35, v28, v30, v29, v34, v31, v32, a8, a2, a3);
    sub_22F00AB48(v30, v29);

    sub_22F050788(v18);
  }
}

uint64_t objectdestroy_12Tm()
{
  v1 = v0[3];
  sub_22F0D00CC();
  v2 = v0[4];
  sub_22F0D00CC();
  v3 = v0[6];
  sub_22F0D00CC();
  v4 = v0[7];
  sub_22F0D00CC();
  v5 = v0[10];
  sub_22F0D00CC();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22F050788(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedFamily();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

People::HandleType_optional __swiftcall HandleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HandleType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C69616D65;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_22F05088C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C69616D65;
  }

  else
  {
    v4 = 0x6D754E656E6F6870;
  }

  if (v3)
  {
    v5 = 0xEB00000000726562;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C69616D65;
  }

  else
  {
    v6 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xEB00000000726562;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F0D188C();
  }

  return v9 & 1;
}

uint64_t sub_22F050938()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F0509C0()
{
  *v0;
  sub_22F0D0D5C();
}

uint64_t sub_22F050A34()
{
  v1 = *v0;
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F050AB8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22F0D174C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22F050B18(uint64_t *a1@<X8>)
{
  v2 = 0x6D754E656E6F6870;
  if (*v1)
  {
    v2 = 0x6C69616D65;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Person.statuses.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Person.displayName.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(*v0, v1, v2);
}

uint64_t Person.contactSearchURL.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v50 - v4;
  v55 = sub_22F0D02DC();
  v54 = *(v55 - 8);
  v5 = *(v54 + 64);
  v6 = MEMORY[0x28223BE20](v55);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = MEMORY[0x28223BE20](v6);
  v53 = &v50 - v9;
  v51 = v1;
  v10 = *(v1 + 8);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = v10 + 32;
    do
    {
      sub_22EFFFB40(v13, v64);
      sub_22EFFFB40(v64, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA06E0, &qword_22F0D2C10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1810, &qword_22F0D7F18);
      if (swift_dynamicCast())
      {
        v14 = *(&v62 + 1);
        v15 = v63;
        __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
        v16 = (*(v15 + 16))(v14, v15);
        v18 = v17;
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        __swift_destroy_boxed_opaque_existential_1Tm(&v61);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_22F03C784(0, *(v12 + 16) + 1, 1, v12);
          v12 = isUniquelyReferenced_nonNull_native;
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_22F03C784((v19 > 1), v20 + 1, 1, v12);
          v12 = isUniquelyReferenced_nonNull_native;
        }

        *(v12 + 16) = v20 + 1;
        v21 = v12 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
      }

      else
      {
        v63 = 0;
        v61 = 0u;
        v62 = 0u;
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        isUniquelyReferenced_nonNull_native = sub_22F003A4C(&v61, &qword_27DAA1818, &qword_22F0D7F20);
      }

      v13 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v22 = *(v12 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v12 + 40;
    v58 = MEMORY[0x277D84F90];
    v50 = v12 + 40;
    do
    {
      v25 = (v24 + 16 * v23);
      while (1)
      {
        if (v23 >= v22)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          sub_22F0D00CC();

          result = sub_22F0D00CC();
          __break(1u);
          return result;
        }

        if (__OFADD__(v23, 1))
        {
          goto LABEL_32;
        }

        v59 = v23 + 1;
        v27 = *(v25 - 1);
        v26 = *v25;
        v64[0] = v27;
        v64[1] = v26;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v50 - 2) = v64;
        sub_22F0CFF1C();
        v28 = v58;
        sub_22F0CFF1C();
        v29 = sub_22F051C9C(sub_22F04268C, (&v50 - 4), v28);

        if ((v29 & 1) == 0)
        {
          break;
        }

        ++v23;
        v25 += 2;
        if (v59 == v22)
        {
          goto LABEL_27;
        }
      }

      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_22F03C784(0, *(v58 + 2) + 1, 1, v58);
      }

      v31 = *(v58 + 2);
      v30 = *(v58 + 3);
      if (v31 >= v30 >> 1)
      {
        v58 = sub_22F03C784((v30 > 1), v31 + 1, 1, v58);
      }

      v32 = v58;
      *(v58 + 2) = v31 + 1;
      v33 = &v32[16 * v31];
      *(v33 + 4) = v27;
      *(v33 + 5) = v26;

      v23 = v59;
      v24 = v50;
    }

    while (v59 != v22);
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

LABEL_27:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E28, &qword_22F0D4FF8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22F0D6710;
  v35 = [*v51 identifier];
  v36 = sub_22F0D0CAC();
  v38 = v37;

  *(v34 + 32) = 1;
  *(v34 + 40) = v36;
  *(v34 + 48) = v38;
  *(v34 + 56) = 0;
  *(v34 + 72) = 0;
  *(v34 + 80) = 0;
  *(v34 + 64) = v58;
  *(v34 + 88) = 1;
  v39 = v52;
  sub_22F0D02CC();
  sub_22F0D02BC();
  MEMORY[0x2318FC7D0](0xD000000000000010, 0x800000022F0DC490);
  swift_getKeyPath();
  v64[0] = v34;
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F008F78(v64);

  sub_22F005844(v64[0]);
  sub_22F0D00CC();
  v40 = v54;
  v41 = v53;
  v42 = v55;
  (*(v54 + 32))(v53, v39, v55);
  v43 = v56;
  sub_22F0D026C();
  (*(v40 + 8))(v41, v42);
  v44 = sub_22F0D043C();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 48))(v43, 1, v44);
  v47 = v57;
  if (v46 == 1)
  {
    sub_22F003A4C(v43, &qword_27DAA10F8, &qword_22F0D5320);
    v48 = 1;
  }

  else
  {
    (*(v45 + 32))(v57, v43, v44);
    v48 = 0;
  }

  return (*(v45 + 56))(v47, v48, 1, v44);
}

uint64_t sub_22F0513D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v23 - v2;
  v4 = sub_22F0D02DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  __swift_allocate_value_buffer(v0, qword_280CBD1C8);
  v12 = __swift_project_value_buffer(v0, qword_280CBD1C8);
  v13 = MEMORY[0x277D84F90];
  v14 = sub_22F07D138(MEMORY[0x277D84F90]);
  v15 = sub_22F07D244(v13);
  v16 = sub_22F003CCC(v14);

  v17 = sub_22F003F28(v15);

  v23[0] = v16;
  sub_22F007154(v17);
  v18 = v23[0];
  sub_22F0D02CC();
  sub_22F0D02BC();
  MEMORY[0x2318FC7D0](0xD000000000000010, 0x800000022F0DC490);
  swift_getKeyPath();
  v23[0] = v18;
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F008F78(v23);

  sub_22F005844(v23[0]);
  sub_22F0D00CC();
  (*(v5 + 32))(v11, v9, v4);
  sub_22F0D026C();
  (*(v5 + 8))(v11, v4);
  v19 = sub_22F0D043C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v3, 1, v19) == 1)
  {
    sub_22F003A4C(v3, &qword_27DAA10F8, &qword_22F0D5320);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(v12, v3, v19);
    v21 = 0;
  }

  return (*(v20 + 56))(v12, v21, 1, v19);
}

uint64_t static Person.emptyContactSearchURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = __swift_project_value_buffer(v2, qword_280CBD1C8);
  swift_beginAccess();
  return sub_22F036154(v3, a1);
}

uint64_t static Person.emptyContactSearchURL.setter(uint64_t a1)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = __swift_project_value_buffer(v2, qword_280CBD1C8);
  swift_beginAccess();
  sub_22F051D48(a1, v3);
  swift_endAccess();
  return sub_22F003A4C(a1, &qword_27DAA10F8, &qword_22F0D5320);
}

uint64_t (*static Person.emptyContactSearchURL.modify())()
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  __swift_project_value_buffer(v0, qword_280CBD1C8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F051938@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = __swift_project_value_buffer(v2, qword_280CBD1C8);
  swift_beginAccess();
  return sub_22F036154(v3, a1);
}

uint64_t sub_22F0519D0(uint64_t a1)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = __swift_project_value_buffer(v2, qword_280CBD1C8);
  swift_beginAccess();
  sub_22F051D48(a1, v3);
  return swift_endAccess();
}

uint64_t Person.init(from:statuses:contactFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_22EFE6B9C(a3, (a4 + 2));
}

unint64_t Person.description.getter()
{
  v1 = v0;
  sub_22F0D152C();

  v2 = [*v0 description];
  v3 = sub_22F0D0CAC();
  v5 = v4;

  MEMORY[0x2318FD2C0](v3, v5);

  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE800);
  v6 = v1[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA06E0, &qword_22F0D2C10);
  v8 = MEMORY[0x2318FD490](v6, v7);
  MEMORY[0x2318FD2C0](v8);

  MEMORY[0x2318FD2C0](10506, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_22F051C9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_22F0CFF1C();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22F051D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F051DBC()
{
  result = qword_27DAA1820;
  if (!qword_27DAA1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1820);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22F051E3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22F051E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F051EE0()
{
  result = qword_27DAA1828;
  if (!qword_27DAA1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1828);
  }

  return result;
}

uint64_t sub_22F051F34(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;
      sub_22F0CFF1C();
      a1(&v12, v13);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        MEMORY[0x2318FD450](v9);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F0D0F8C();
        }

        sub_22F0D0FEC();
        v4 = v14;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

char *sub_22F052050(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318FDAB0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(a3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v19 = v8;
      a1(&v18, &v19);
      if (v3)
      {

        return v7;
      }

      if (v18)
      {
        v17 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_22F03D340(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        v13 = v17;
        if (v12 >= v11 >> 1)
        {
          v14 = sub_22F03D340((v11 > 1), v12 + 1, 1, v7);
          v13 = v17;
          v7 = v14;
        }

        *(v7 + 2) = v12 + 1;
        *&v7[16 * v12 + 32] = v13;
      }

      else
      {
        sub_22F059A80(0);
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_22F052218(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v6;
    v16[0] = *(v6 - 1);
    v16[1] = v8;
    sub_22F0CFF1C();
    a1(&v15, v16);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22F03D340(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v11 = v14;
      if (v10 >= v9 >> 1)
      {
        v12 = sub_22F03D340((v9 > 1), v10 + 1, 1, v7);
        v11 = v14;
        v7 = v12;
      }

      *(v7 + 2) = v10 + 1;
      *&v7[16 * v10 + 32] = v11;
    }

    else
    {
      sub_22F059A80(0);
    }

    v6 += 2;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t static ContactFetcher.shared.getter()
{
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

unint64_t static SimpleContactFilter.phraseMatching(for:with:)(unint64_t a1)
{
  v2 = String.trimToNil()();
  if (v2.value._object)
  {
    countAndFlagsBits = v2.value._countAndFlagsBits;
    v19 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
    {
      v5 = 0;
      v6 = a1 & 0xC000000000000001;
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      v16 = a1;
      v17 = countAndFlagsBits;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x2318FDAB0](v5, a1);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_17;
          }

          v8 = *(a1 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v18 = v8;
        if (sub_22F052580(&v18, countAndFlagsBits, v2.value._object))
        {
          sub_22F0D15EC();
          v11 = v7;
          v12 = v6;
          v13 = i;
          v14 = *(v19 + 16);
          sub_22F0D162C();
          i = v13;
          v6 = v12;
          v7 = v11;
          sub_22F0D163C();
          sub_22F0D15FC();
          a1 = v16;
          countAndFlagsBits = v17;
        }

        else
        {
        }

        ++v5;
        if (v10 == i)
        {
          a1 = v19;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_20:
  }

  else
  {
    sub_22F0CFF1C();
  }

  return a1;
}

uint64_t sub_22F052580(id *a1, uint64_t a2, unint64_t a3)
{
  v101 = sub_22F0D01DC();
  v6 = *(v101 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v101);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *a1;
  result = String.splitWith(_:)(32, 0xE100000000000000, a2, a3);
  v11 = result;
  v12 = *(result + 16);
  v94 = v6;
  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v13 = 0;
  v14 = (v6 + 8);
  v15 = result + 40;
  v95 = v12;
  v92 = v12 - 1;
  v16 = MEMORY[0x277D84F90];
  v93 = result + 40;
  do
  {
    v90 = v16;
    v17 = (v15 + 16 * v13);
    v18 = v13;
    while (1)
    {
      if (v18 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = v18 + 1;
      v19 = *v17;
      v99 = *(v17 - 1);
      v100 = v19;
      sub_22F0CFF1C();
      sub_22F0D01CC();
      sub_22F00901C();
      v20 = sub_22F0D136C();
      v22 = v21;
      (*v14)(v9, v101);

      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        break;
      }

      v17 += 2;
      ++v18;
      if (v95 == v13)
      {
        v16 = v90;
        goto LABEL_17;
      }
    }

    v24 = v90;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F03C784(0, *(v24 + 16) + 1, 1, v24);
      v24 = result;
    }

    v25 = v24;
    v26 = *(v24 + 16);
    v27 = v25;
    v28 = *(v25 + 24);
    if (v26 >= v28 >> 1)
    {
      result = sub_22F03C784((v28 > 1), v26 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 16) = v26 + 1;
    v29 = v27 + 16 * v26;
    v16 = v27;
    *(v29 + 32) = v20;
    *(v29 + 40) = v22;
    v15 = v93;
  }

  while (v92 != v18);
LABEL_17:

  v30 = *(v16 + 16);
  v90 = v16;
  if (v30)
  {
    v95 = (v94 + 8);
    v31 = (v16 + 40);
    v32 = 1;
    while ((v32 & 1) == 0)
    {
      v32 = 0;
LABEL_20:
      v31 += 16;
      if (!--v30)
      {
        goto LABEL_59;
      }
    }

    v92 = v31;
    v93 = v30;
    v33 = *(v31 - 1);
    v34 = *v31;
    sub_22F0CFF1C();
    v35 = [v96 givenName];
    v36 = sub_22F0D0CAC();
    v38 = v37;

    v99 = v36;
    v100 = v38;
    sub_22F0D01CC();
    sub_22F00901C();
    v39 = sub_22F0D136C();
    v41 = v40;
    v91 = *v95;
    v91(v9, v101);

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v94 = v33;
    if (v42)
    {
      v99 = v39;
      v100 = v41;
      v97 = v33;
      v98 = v34;
      v43 = sub_22F0D13AC();

      if (v43)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v44 = [v96 middleName];
    v45 = sub_22F0D0CAC();
    v47 = v46;

    v99 = v45;
    v100 = v47;
    sub_22F0D01CC();
    v48 = sub_22F0D136C();
    v50 = v49;
    v51 = v91;
    v91(v9, v101);

    v52 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v52 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v99 = v48;
      v100 = v50;
      v97 = v94;
      v98 = v34;
      v53 = sub_22F0D13AC();

      if (v53)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v54 = [v96 familyName];
    v55 = sub_22F0D0CAC();
    v57 = v56;

    v99 = v55;
    v100 = v57;
    sub_22F0D01CC();
    v58 = sub_22F0D136C();
    v60 = v59;
    v51(v9, v101);

    v61 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v61 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      v99 = v58;
      v100 = v60;
      v97 = v94;
      v98 = v34;
      v62 = sub_22F0D13AC();

      if (v62)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v63 = [v96 phoneticGivenName];
    v64 = sub_22F0D0CAC();
    v66 = v65;

    v99 = v64;
    v100 = v66;
    sub_22F0D01CC();
    v67 = sub_22F0D136C();
    v69 = v68;
    v51(v9, v101);

    v70 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v70 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (v70)
    {
      v99 = v67;
      v100 = v69;
      v97 = v94;
      v98 = v34;
      v71 = sub_22F0D13AC();

      if (v71)
      {
LABEL_50:

        v32 = 1;
        goto LABEL_51;
      }
    }

    else
    {
    }

    v72 = [v96 phoneticMiddleName];
    v73 = sub_22F0D0CAC();
    v75 = v74;

    v99 = v73;
    v100 = v75;
    sub_22F0D01CC();
    v76 = sub_22F0D136C();
    v78 = v77;
    v51(v9, v101);

    v79 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v79 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (v79)
    {
      v99 = v76;
      v100 = v78;
      v97 = v94;
      v98 = v34;
      v80 = sub_22F0D13AC();

      if (v80)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v81 = [v96 phoneticFamilyName];
    v82 = sub_22F0D0CAC();
    v84 = v83;

    v99 = v82;
    v100 = v84;
    sub_22F0D01CC();
    v85 = sub_22F0D136C();
    v87 = v86;
    v51(v9, v101);

    v88 = HIBYTE(v87) & 0xF;
    if ((v87 & 0x2000000000000000) == 0)
    {
      v88 = v85 & 0xFFFFFFFFFFFFLL;
    }

    if (v88)
    {
      v99 = v85;
      v100 = v87;
      v97 = v94;
      v98 = v34;
      v32 = sub_22F0D13AC();
    }

    else
    {

      v32 = 0;
    }

LABEL_51:
    v31 = v92;
    v30 = v93;
    goto LABEL_20;
  }

  v32 = 1;
LABEL_59:

  return v32 & 1;
}

uint64_t CNContact.people_normalizedHandles.getter()
{
  v0 = CNContact.people_normalizedEmails.getter();
  v1 = CNContact.people_normalizedPhoneNumbers.getter();
  sub_22F007248(v1);
  return v0;
}

uint64_t CNContact.people_normalizedEmails.getter()
{
  v1 = [v0 emailAddressStrings];
  v2 = sub_22F0D0F4C();

  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v3, 0);
    v4 = v16;
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = sub_22F0D0D0C();
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v8;
        v14 = v9;
        sub_22EFFC4E8((v10 > 1), v11 + 1, 1);
        v9 = v14;
        v8 = v13;
      }

      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

char *CNContact.people_normalizedPhoneNumbers.getter()
{
  v1 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1480, &qword_22F0D7B10);
  v2 = sub_22F0D0F4C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_22F0D143C();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v17 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2318FDAB0](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = [v6 value];
      v9 = [v8 fullyQualifiedDigits];

      if (v9)
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = sub_22F0D0CAC();
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_22F03C784(0, *(v17 + 2) + 1, 1, v17);
    }

    v14 = *(v17 + 2);
    v13 = *(v17 + 3);
    if (v14 >= v13 >> 1)
    {
      v17 = sub_22F03C784((v13 > 1), v14 + 1, 1, v17);
    }

    *(v17 + 2) = v14 + 1;
    v15 = &v17[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = v12;
  }

  while (v4 != v3);
LABEL_23:

  return v17;
}

uint64_t sub_22F0530FC(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_22F0D0F4C();

  return v3;
}

uint64_t CNContact.callHistoryHandles.getter()
{
  v1 = v0;
  v2 = [v0 emailAddressStrings];
  v3 = sub_22F0D0F4C();

  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22F0D161C();
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = objc_allocWithZone(MEMORY[0x277CF7D30]);
      sub_22F0CFF1C();
      v10 = sub_22F0D0C7C();

      [v9 initWithType:3 value:v10];

      sub_22F0D15EC();
      v11 = *(v28 + 16);
      sub_22F0D162C();
      sub_22F0D163C();
      sub_22F0D15FC();
      v6 += 2;
      --v4;
    }

    while (v4);

    v12 = v28;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v13 = [v1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1480, &qword_22F0D7B10);
  v14 = sub_22F0D0F4C();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:

    v26 = MEMORY[0x277D84F90];
LABEL_19:
    sub_22F007700(v26);
    return v12;
  }

  v15 = sub_22F0D143C();
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  result = sub_22F0D161C();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v27 = v12;
    v17 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2318FDAB0](v17, v14);
      }

      else
      {
        v21 = *(v14 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = [v21 value];
      v24 = [v23 fullyQualifiedDigits];

      if (!v24)
      {
        v25 = [v22 value];
        v24 = [v25 stringValue];
      }

      sub_22F0D0CAC();

      ++v17;
      v18 = objc_allocWithZone(MEMORY[0x277CF7D30]);
      v19 = sub_22F0D0C7C();

      [v18 initWithType:2 value:v19];

      sub_22F0D15EC();
      v20 = *(v5 + 16);
      sub_22F0D162C();
      sub_22F0D163C();
      sub_22F0D15FC();
    }

    while (v15 != v17);

    v12 = v27;
    v26 = v5;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0534B4(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1848, &qword_22F0D8120);
  v3 = sub_22F0D0F2C();
  v10[0] = 0;
  v4 = [v1 unifiedContactsMatchingPredicate:a1 keysToFetch:v3 error:v10];

  v5 = v10[0];
  if (v4)
  {
    sub_22F01B924(0, &qword_280CBDC30, 0x277CBDA58);
    a1 = sub_22F0D0F4C();
    v6 = v5;
  }

  else
  {
    v7 = v10[0];
    sub_22F0D033C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_22F0535F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  aBlock[4] = sub_22F059A40;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F0537C8;
  aBlock[3] = &block_descriptor_6;
  v8 = _Block_copy(aBlock);
  v15 = 0;
  sub_22F0CFFAC();
  LODWORD(a1) = [v3 enumerateContactsWithFetchRequest:a1 error:&v15 usingBlock:v8];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = v15;
  if (a1)
  {
    v10 = v15;
    sub_22F0D00CC();
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    result = sub_22F0D00CC();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = isEscapingClosureAtFileLocation;
  sub_22F0D033C();

  swift_willThrow();
  sub_22F0D00CC();
  v13 = swift_isEscapingClosureAtFileLocation();
  result = sub_22F0D00CC();
  if (v13)
  {
    __break(1u);
  }

LABEL_5:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22F0537C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

id sub_22F053848()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v1 = [v0 meContactIdentifiers_];
  v2 = v8[0];
  if (v1)
  {
    v3 = v1;
    v4 = sub_22F0D0F4C();
    v5 = v2;
  }

  else
  {
    v4 = v8[0];
    sub_22F0D033C();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

char *sub_22F053914(uint64_t a1)
{
  v3 = sub_22F0D112C();
  v4 = [v1 contactSuggestionsForPeopleWidgetWithMaxSuggestions:a1 excludeContactsWithIdentifiers:v3];

  sub_22F01B924(0, &qword_280CBDC48, 0x277D3A098);
  v5 = sub_22F0D0F4C();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v6 = sub_22F0D143C();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v20 = MEMORY[0x277D84F90];
  result = sub_22EFFC4E8(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v20;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2318FDAB0](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 contact];
      v13 = [v12 identifier];

      v14 = sub_22F0D0CAC();
      v16 = v15;

      v18 = *(v20 + 16);
      v17 = *(v20 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22EFFC4E8((v17 > 1), v18 + 1, 1);
      }

      ++v8;
      *(v20 + 16) = v18 + 1;
      v19 = v20 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

id sub_22F053B34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D80D0;
  v1 = *MEMORY[0x277CBD020];
  v5 = *MEMORY[0x277CBD158];
  v2 = *MEMORY[0x277CBD158];
  *(v0 + 32) = *MEMORY[0x277CBD020];
  *(v0 + 40) = v2;
  qword_27DAACE60 = v0;
  v3 = v1;

  return v5;
}

id sub_22F053BBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D80E0;
  v1 = *MEMORY[0x277CBD078];
  v2 = *MEMORY[0x277CBD000];
  *(v0 + 32) = *MEMORY[0x277CBD078];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD058];
  v4 = *MEMORY[0x277CBCFF8];
  *(v0 + 48) = *MEMORY[0x277CBD058];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v6 = *MEMORY[0x277CBD098];
  *(v0 + 64) = *MEMORY[0x277CBCFC0];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD0A8];
  v8 = *MEMORY[0x277CBD0B0];
  *(v0 + 80) = *MEMORY[0x277CBD0A8];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CBD0B8];
  v23 = *MEMORY[0x277CBD050];
  v10 = *MEMORY[0x277CBD050];
  *(v0 + 96) = *MEMORY[0x277CBD0B8];
  *(v0 + 104) = v10;
  v22 = objc_opt_self();
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v23;
  result = [v22 descriptorForRequiredKeysForStyle_];
  *(v0 + 112) = result;
  qword_280CC1270 = v0;
  return result;
}

void *sub_22F053D24()
{
  result = _s6People14ContactFetcherCACycfC_0();
  qword_280CBEC30 = result;
  return result;
}

unint64_t sub_22F053D48()
{
  result = sub_22F05520C(1, 0);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v3 = result;
  v4 = sub_22F0D143C();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x2318FDAB0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F053E08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (qword_280CBE540 != -1)
  {
    v16 = a3;
    swift_once();
    a3 = v16;
  }

  v18 = qword_280CC1270;
  if (a3)
  {
    v7 = qword_27DAA0528;
    sub_22F0CFF1C();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_22F0CFF1C();
    sub_22F0077F0(v8);
  }

  else
  {
    sub_22F0CFF1C();
  }

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F0D2BF0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  sub_22F0CFF1C();
  v11 = sub_22F0D0F2C();

  v12 = [v9 predicateForContactsWithIdentifiers_];

  v13 = MEMORY[0x2318FE070]();
  sub_22F053FA4(v4, v12, &v18, &v17);
  objc_autoreleasePoolPop(v13);

  v14 = v17;

  return v14;
}

void sub_22F053FA4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = a1[5];
  v9 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v8);
  v10 = *a3;
  v11 = *(v9 + 8);
  sub_22F0CFF1C();
  v12 = v11(a2, v10, v8, v9);
  if (v4)
  {

    if (qword_280CBDB28 != -1)
    {
      swift_once();
    }

    v13 = sub_22F0D0A1C();
    __swift_project_value_buffer(v13, qword_280CBDB30);
    v14 = v4;
    v15 = sub_22F0D09FC();
    v16 = sub_22F0D123C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_22F0D192C();
      v21 = sub_22F00A560(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22EFE1000, v15, v16, "error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x2318FE8B0](v18, -1, -1);
      MEMORY[0x2318FE8B0](v17, -1, -1);
    }

    else
    {
    }

    v24 = 0;
    goto LABEL_14;
  }

  v22 = v12;

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_16:

    v24 = 0;
    goto LABEL_14;
  }

  if (!sub_22F0D143C())
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x2318FDAB0](0, v22);
    goto LABEL_11;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 32);
LABEL_11:
    v24 = v23;

LABEL_14:
    *a4 = v24;
    return;
  }

  __break(1u);
}

uint64_t sub_22F054230(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_280CBE540 != -1)
  {
    v14 = a2;
    swift_once();
    a2 = v14;
  }

  v5 = qword_280CC1270;
  v15 = qword_280CC1270;
  if (a2)
  {
    v6 = qword_27DAA0528;
    sub_22F0CFF1C();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0CFF1C();
    v8 = sub_22F0077F0(v7);
    v5 = v15;
  }

  else
  {
    v8 = sub_22F0CFF1C();
  }

  v9 = MEMORY[0x2318FE070](v8);
  v10 = v3[5];
  v11 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
  v12 = (*(v11 + 8))(a1, v5, v10, v11);
  objc_autoreleasePoolPop(v9);

  return v12;
}

uint64_t sub_22F054380(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_22F0543A4, 0, 0);
}

uint64_t sub_22F0543A4()
{
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1838, &qword_22F0D80F8);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1840, &unk_22F0D8110);
  v5 = *(MEMORY[0x277D859B8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_22F0544C8;

  return MEMORY[0x282200740](v0 + 16, v2, v4, 0, 0, &unk_22F0D8108, v3, v2);
}

void sub_22F0544C8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_22F054604, 0, 0);
  }
}

uint64_t sub_22F054620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 137) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460) - 8) + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0546D0, 0, 0);
}

uint64_t sub_22F0546D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v23 = *(v2 + 168);
    }

    v4 = sub_22F0D143C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_19:
    *(v2 + 200) = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D85810] + 4);
    v25 = swift_task_alloc();
    *(v2 + 208) = v25;
    a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1890, &unk_22F0D82A0);
    *v25 = v2;
    v25[1] = sub_22F054A60;
    v26 = *(v2 + 160);
    v4 = v2 + 128;

    return MEMORY[0x2822004C0](v4, a2);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v30 = v3 & 0xC000000000000001;
    v31 = **(v2 + 160);
    v28 = *(v2 + 168) + 32;
    v29 = *(v2 + 137);
    v32 = v4;
    while (1)
    {
      if (v30)
      {
        v7 = MEMORY[0x2318FDAB0](v5, *(v2 + 168));
      }

      else
      {
        v7 = *(v28 + 8 * v5);
      }

      v8 = v7;
      v10 = *(v2 + 184);
      v9 = *(v2 + 192);
      v11 = *(v2 + 176);
      v12 = sub_22F0D10EC();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v9, 1, 1, v12);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v11;
      *(v14 + 40) = v8;
      *(v14 + 48) = v29;
      sub_22F01B0B8(v9, v10);
      LODWORD(v10) = (*(v13 + 48))(v10, 1, v12);
      sub_22F0CFFAC();
      v16 = v8;
      v17 = *(v2 + 184);
      if (v10 == 1)
      {
        sub_22F003A4C(*(v2 + 184), &qword_27DAA1418, &qword_22F0D7460);
        if (!*v15)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_22F0D10DC();
        (*(v13 + 8))(v17, v12);
        if (!*v15)
        {
LABEL_13:
          v19 = 0;
          v21 = 0;
          goto LABEL_14;
        }
      }

      v18 = *(v14 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_22F0D106C();
      v21 = v20;
      swift_unknownObjectRelease();
LABEL_14:
      sub_22F0CFFAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1838, &qword_22F0D80F8);
      v22 = v21 | v19;
      if (v21 | v19)
      {
        v22 = v2 + 16;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
        *(v2 + 32) = v19;
        *(v2 + 40) = v21;
      }

      ++v5;
      v6 = *(v2 + 192);
      *(v2 + 80) = 1;
      *(v2 + 88) = v22;
      *(v2 + 96) = v31;
      swift_task_create();
      sub_22F0D00CC();

      sub_22F0D00CC();
      sub_22F003A4C(v6, &qword_27DAA1418, &qword_22F0D7460);
      if (v32 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822004C0](v4, a2);
}

uint64_t sub_22F054A60()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_22F055138;
  }

  else
  {
    *(v2 + 224) = *(v2 + 128);
    *(v2 + 138) = *(v2 + 136);
    v4 = sub_22F054B84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F054B84(uint64_t a1, uint64_t a2)
{
  v69 = v2;
  v3 = *(v2 + 138);
  if (v3 != 255)
  {
    v4 = *(v2 + 224);
    if (v3)
    {
      sub_22F015CE4(*(v2 + 224), 1);
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v5 = *(v2 + 224);
      v6 = sub_22F0D0A1C();
      __swift_project_value_buffer(v6, qword_280CBEC40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22F0D2BF0;
      swift_getErrorValue();
      v8 = *(v2 + 104);
      v9 = *(v2 + 112);
      v10 = *(v2 + 120);
      sub_22F015CE4(v5, 1);
      v11 = sub_22F0D192C();
      v13 = v12;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_22F03DB30();
      *(v7 + 32) = v11;
      *(v7 + 40) = v13;
      v14 = sub_22F0D0CCC();
      v16 = v15;
      v17 = sub_22F0D09FC();
      v18 = sub_22F0D123C();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v2 + 138);
      v21 = *(v2 + 224);
      if (v19)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v68 = v23;
        *v22 = 136315138;
        v24 = sub_22F00A560(v14, v16, &v68);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_22EFE1000, v17, v18, "%s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x2318FE8B0](v23, -1, -1);
        MEMORY[0x2318FE8B0](v22, -1, -1);
        sub_22F059B88(v21, v20);
        sub_22F059B88(v21, v20);

        sub_22F059B88(v21, v20);
      }

      else
      {
        sub_22F059B88(*(v2 + 224), *(v2 + 138));
        sub_22F059B88(v21, v20);

        sub_22F059B88(v21, v20);
      }

      goto LABEL_43;
    }

    v31 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v62 = *(v2 + 224);
      }

      v32 = sub_22F0D143C();
    }

    else
    {
      v32 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = *(v2 + 200);
    v34 = v33 >> 62;
    if (v33 >> 62)
    {
      if (v33 < 0)
      {
        v63 = *(v2 + 200);
      }

      isUniquelyReferenced_nonNull_bridgeObject = sub_22F0D143C();
      v36 = isUniquelyReferenced_nonNull_bridgeObject + v32;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v32))
      {
LABEL_14:
        v37 = *(v2 + 200);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v34)
          {
            v38 = v33 & 0xFFFFFFFFFFFFFF8;
            v39 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
            if (v39 >= v36)
            {
              v40 = *(v2 + 200);
              goto LABEL_26;
            }

            goto LABEL_21;
          }
        }

        else if (!v34)
        {
          v38 = v33 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
          v41 = *(v38 + 16);
LABEL_25:
          v44 = *(v2 + 200);
          isUniquelyReferenced_nonNull_bridgeObject = sub_22F0D158C();
          v40 = isUniquelyReferenced_nonNull_bridgeObject;
          v38 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
          v39 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_26:
          v45 = *(v38 + 16);
          v46 = *(v2 + 224) & 0xFFFFFFFFFFFFFF8;
          if (v31)
          {
            if (v4 >= 0)
            {
              v49 = *(v2 + 224) & 0xFFFFFFFFFFFFFF8;
            }

            isUniquelyReferenced_nonNull_bridgeObject = sub_22F0D143C();
            v47 = isUniquelyReferenced_nonNull_bridgeObject;
            if (isUniquelyReferenced_nonNull_bridgeObject)
            {
LABEL_28:
              if (v39 - v45 >= v32)
              {
                v65 = v40;
                v66 = v32;
                v40 = v38 + 8 * v45 + 32;
                v67 = v2;
                v64 = v38;
                if (!v31)
                {
                  v48 = *(v2 + 224) & 0xFFFFFFFFFFFFFF8;
                  sub_22F01B924(0, &qword_280CBDC30, 0x277CBDA58);
                  swift_arrayInitWithCopy();
                  goto LABEL_39;
                }

LABEL_36:
                if (v47 < 1)
                {
LABEL_56:
                  __break(1u);
                  return MEMORY[0x2822004C0](isUniquelyReferenced_nonNull_bridgeObject, a2);
                }

                v50 = v4;
                v51 = (v2 + 48);
                sub_22F059BA0();
                for (i = 0; i != v47; ++i)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1838, &qword_22F0D80F8);
                  v53 = sub_22F058984(v51, i, v50);
                  v55 = *v54;
                  (v53)(v51, 0);
                  *(v40 + 8 * i) = v55;
                }

LABEL_39:
                v2 = v67;
                sub_22F059B88(*(v67 + 224), *(v67 + 138));
                v40 = v65;
                if (v66 > 0)
                {
                  v56 = *(v64 + 16);
                  v57 = __OFADD__(v56, v66);
                  v58 = v56 + v66;
                  if (!v57)
                  {
                    *(v64 + 16) = v58;
                    goto LABEL_42;
                  }

                  goto LABEL_55;
                }

LABEL_42:
                *(v2 + 200) = v40;
LABEL_43:
                v59 = *(MEMORY[0x277D85810] + 4);
                v60 = swift_task_alloc();
                *(v2 + 208) = v60;
                a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1890, &unk_22F0D82A0);
                *v60 = v2;
                v60[1] = sub_22F054A60;
                v61 = *(v2 + 160);
                isUniquelyReferenced_nonNull_bridgeObject = v2 + 128;

                return MEMORY[0x2822004C0](isUniquelyReferenced_nonNull_bridgeObject, a2);
              }

LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }

          else
          {
            v47 = *((*(v2 + 224) & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v47)
            {
              goto LABEL_28;
            }
          }

          sub_22F059B88(*(v2 + 224), *(v2 + 138));
          if (v32 <= 0)
          {
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_36;
        }

        v42 = *(v2 + 200);
        if (v33 < 0)
        {
          v43 = *(v2 + 200);
        }

        sub_22F0D143C();
        goto LABEL_25;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_bridgeObject = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = isUniquelyReferenced_nonNull_bridgeObject + v32;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v32))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  v25 = *(v2 + 192);
  v26 = *(v2 + 184);
  v27 = *(v2 + 152);
  v28 = sub_22F058C20(*(v2 + 200));

  *v27 = v28;

  v29 = *(v2 + 8);

  return v29();
}

uint64_t sub_22F055154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22F05517C, 0, 0);
}

uint64_t sub_22F05517C()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = sub_22F054230(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F05520C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_280CBE540 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1848, &qword_22F0D8120);
  v6 = sub_22F0D0F2C();
  v7 = [v5 initWithKeysToFetch_];

  [v7 setSortOrder_];
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v9 = v3[5];
  v10 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v12 = sub_22F058B88(v11);

  v20 = MEMORY[0x2318FE070](v13);
  v14 = v3[5];
  v15 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v8;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2 & 1;
  v17 = *(v15 + 16);
  sub_22F0CFFAC();
  v17(v7, sub_22F059524, v16, v14, v15);
  sub_22F0D00CC();
  objc_autoreleasePoolPop(v20);

  swift_beginAccess();
  v18 = *(v8 + 16);
  sub_22F0CFF1C();
  sub_22F0D00CC();
  return v18;
}

uint64_t sub_22F0556F4(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = [a1 identifier];
  v13 = sub_22F0D0CAC();
  v15 = v14;

  LOBYTE(a3) = sub_22F055864(v13, v15, a3);

  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    v17 = a1;
    MEMORY[0x2318FD450]();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F0D0F8C();
    }

    sub_22F0D0FEC();
    result = swift_endAccess();
  }

  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    v18 = *(a4 + 16);
    if (!(v18 >> 62))
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result != a5)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (v18 < 0)
    {
      v20 = *(a4 + 16);
    }

    result = sub_22F0D143C();
    if (result == a5)
    {
LABEL_8:
      *a2 = 1;
    }
  }

  return result;
}

uint64_t sub_22F055864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22F0D199C();
  sub_22F0D0D5C();
  v7 = sub_22F0D19CC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22F0D188C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22F05595C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x2318FE070]();
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  v7 = sub_22F0CFF1C();
  v8 = sub_22F058B88(v7);

  v9 = (*(v6 + 8))(a1, v8, v5, v6);

  v10 = 0;
  v41 = v4;
  v44 = v4;
  v11 = v9 + 40;
  v42 = *(v9 + 16);
LABEL_2:
  v12 = (v11 + 16 * v10);
  while (v42 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v14 = *(v12 - 1);
    v15 = *v12;
    v16 = qword_280CBE540;
    sub_22F0CFF1C();
    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_280CC1270;
    v18 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22F0D2BF0;
    *(v19 + 32) = v14;
    *(v19 + 40) = v15;
    sub_22F0CFF1C();
    v20 = sub_22F0D0F2C();

    v21 = [v18 predicateForContactsWithIdentifiers_];

    v43 = MEMORY[0x2318FE070]();
    v8 = v2[5];
    v22 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
    v23 = (*(v22 + 8))(v21, v17, v8, v22);
    if (v23 >> 62)
    {
      v25 = v23;
      v26 = sub_22F0D143C();
      v23 = v25;
      if (v26)
      {
LABEL_10:
        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x2318FDAB0](0);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v24 = *(v23 + 32);
        }

        v8 = v24;

        goto LABEL_3;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v8 = 0;
LABEL_3:
    ++v10;
    v12 += 2;
    objc_autoreleasePoolPop(v43);

    if (v8)
    {
      MEMORY[0x2318FD450](v13);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F0D0F8C();
      }

      sub_22F0D0FEC();
      v41 = v44;
      v11 = v9 + 40;
      goto LABEL_2;
    }
  }

  swift_beginAccess();
  v8 = v41;
  v46 = v41;
  if (qword_280CBEC38 == -1)
  {
    goto LABEL_21;
  }

LABEL_26:
  swift_once();
LABEL_21:
  v28 = sub_22F0D0A1C();
  __swift_project_value_buffer(v28, qword_280CBEC40);
  v29 = sub_22F0D09FC();
  v30 = sub_22F0D124C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v31 = 136315138;
    v33 = sub_22F01B924(0, &qword_280CBDC30, 0x277CBDA58);
    v34 = sub_22F0CFF1C();
    v35 = MEMORY[0x2318FD4D0](v34, v33);
    v37 = v36;

    v38 = sub_22F00A560(v35, v37, &v45);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_22EFE1000, v29, v30, "contacts returned from core duet: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x2318FE8B0](v32, -1, -1);
    MEMORY[0x2318FE8B0](v31, -1, -1);
  }

  objc_autoreleasePoolPop(v40);
  return v8;
}

uint64_t *ContactFetcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t ContactFetcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_22F055FEC()
{
  v1 = *v0;
  result = sub_22F05520C(1, 0);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v5 = result;
  v6 = sub_22F0D143C();
  result = v5;
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x2318FDAB0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_6:
    v4 = v3;

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F056118(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  v4 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v4;
  return MEMORY[0x2822009F8](sub_22F056140, 0, 0);
}

uint64_t sub_22F056140()
{
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1838, &qword_22F0D80F8);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1840, &unk_22F0D8110);
  v5 = *(MEMORY[0x277D859B8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_22F056264;

  return MEMORY[0x282200740](v0 + 16, v2, v4, 0, 0, &unk_22F0D8268, v3, v2);
}

void sub_22F056264()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_22F059CB0, 0, 0);
  }
}

uint64_t sub_22F0563EC(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_22F0D199C();
  sub_22F09DA8C();
  v6 = sub_22F0D19CC();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v35 = ~v7;
    v9 = 0xEF74736575716552;
    v10 = 0x6C69617641646E64;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      v37 = v8;
      if (v11 > 4)
      {
        if (*(*(v4 + 48) + v8) <= 6u)
        {
          if (v11 == 5)
          {
            v16 = 0x617453646C696863;
            v17 = 0xEA00000000006574;
          }

          else
          {
            v16 = 0x654D646165726E75;
            v17 = 0xED00006567617373;
          }
        }

        else if (v11 == 7)
        {
          v16 = 0x7373654D64616572;
          v17 = 0xEB00000000656761;
        }

        else if (v11 == 8)
        {
          v17 = 0xEA00000000006C6CLL;
          v16 = 0x614364657373696DLL;
        }

        else
        {
          v17 = 0xE800000000000000;
          v16 = 0x7261646E656C6163;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x7975426F546B7361;
        }

        else
        {
          v12 = 0xD000000000000011;
        }

        if (v11 == 3)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0x800000022F0DC350;
        }

        if (v11 == 2)
        {
          v12 = 0x6E6F697461636F6CLL;
          v13 = 0xE800000000000000;
        }

        v14 = 0xEB00000000657461;
        if (*(*(v4 + 48) + v8))
        {
          v15 = 0x74536E6F69746F6DLL;
        }

        else
        {
          v15 = v10;
        }

        if (!*(*(v4 + 48) + v8))
        {
          v14 = 0xEF7974696C696261;
        }

        v16 = *(*(v4 + 48) + v8) <= 1u ? v15 : v12;
        v17 = *(*(v4 + 48) + v8) <= 1u ? v14 : v13;
      }

      v18 = 0xEA00000000006C6CLL;
      v19 = 0x7261646E656C6163;
      if (a2 == 8)
      {
        v19 = 0x614364657373696DLL;
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      if (a2 == 7)
      {
        v19 = 0x7373654D64616572;
        v18 = 0xEB00000000656761;
      }

      v20 = 0x654D646165726E75;
      if (a2 == 5)
      {
        v20 = 0x617453646C696863;
      }

      v21 = 0xED00006567617373;
      if (a2 == 5)
      {
        v21 = 0xEA00000000006574;
      }

      if (a2 <= 6u)
      {
        v19 = v20;
        v18 = v21;
      }

      if (a2 == 3)
      {
        v22 = 0x7975426F546B7361;
      }

      else
      {
        v22 = 0xD000000000000011;
      }

      if (a2 == 3)
      {
        v23 = v9;
      }

      else
      {
        v23 = 0x800000022F0DC350;
      }

      if (a2 == 2)
      {
        v22 = 0x6E6F697461636F6CLL;
        v23 = 0xE800000000000000;
      }

      v24 = 0xEB00000000657461;
      if (a2)
      {
        v25 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v25 = v10;
      }

      if (!a2)
      {
        v24 = 0xEF7974696C696261;
      }

      if (a2 <= 1u)
      {
        v22 = v25;
        v23 = v24;
      }

      v26 = a2 <= 4u ? v22 : v19;
      v27 = a2 <= 4u ? v23 : v18;
      if (v16 == v26 && v17 == v27)
      {
        break;
      }

      v28 = v10;
      v29 = v9;
      v36 = sub_22F0D188C();

      if (v36)
      {
        goto LABEL_71;
      }

      v8 = (v37 + 1) & v35;
      v9 = v29;
      v10 = v28;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

LABEL_71:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v37);
  }

  else
  {
LABEL_69:
    v30 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v33;
    sub_22F057678(a2, v8, isUniquelyReferenced_nonNull_native);
    *v33 = v38;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22F0567DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22F0D199C();
  sub_22F0D0D5C();
  v9 = sub_22F0D19CC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22F0D188C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;
    sub_22F0CFF1C();
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22F0CFF1C();
    sub_22F057AB0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22F05692C(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;
    sub_22F0CFF1C();
    v17 = sub_22F0D144C();

    if (v17)
    {

      sub_22F01B924(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22F0D143C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_22F056BA0(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_22F0573D4(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_22F0575F4(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_22F01B924(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22F0D12EC();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22F0D12FC();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_22F057C30(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22F056BA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22F0D14DC();
    v24 = v10;
    sub_22F0D142C();
    if (sub_22F0D145C())
    {
      sub_22F01B924(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_22F0573D4(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22F0D12EC();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_22F0D145C());
    }

    sub_22F0D00CC();
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22F056DA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA18C8, &qword_22F0D82C0);
  result = sub_22F0D14CC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();

      result = sub_22F0D19CC();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  result = sub_22F0D00CC();
  *v2 = v6;
  return result;
}

uint64_t sub_22F057174(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
  result = sub_22F0D14CC();
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
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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

  result = sub_22F0D00CC();
  *v2 = v6;
  return result;
}

uint64_t sub_22F0573D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F0D14CC();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_22F0D12EC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
  *v4 = v8;
  return result;
}

unint64_t sub_22F0575F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22F0D12EC();
  v5 = -1 << *(a2 + 32);
  result = sub_22F0D141C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22F057678(uint64_t result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_76;
  }

  if (a3)
  {
    sub_22F056DA0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22F057DC0();
      goto LABEL_76;
    }

    sub_22F05819C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22F0D199C();
  sub_22F09DA8C();
  result = sub_22F0D19CC();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v33 = ~v9;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v10 == 5)
          {
            v15 = 0x617453646C696863;
            v16 = 0xEA00000000006574;
          }

          else
          {
            v15 = 0x654D646165726E75;
            v16 = 0xED00006567617373;
          }
        }

        else if (v10 == 7)
        {
          v15 = 0x7373654D64616572;
          v16 = 0xEB00000000656761;
        }

        else if (v10 == 8)
        {
          v16 = 0xEA00000000006C6CLL;
          v15 = 0x614364657373696DLL;
        }

        else
        {
          v16 = 0xE800000000000000;
          v15 = 0x7261646E656C6163;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x7975426F546B7361;
        }

        else
        {
          v11 = 0xD000000000000011;
        }

        if (v10 == 3)
        {
          v12 = 0xEF74736575716552;
        }

        else
        {
          v12 = 0x800000022F0DC350;
        }

        if (v10 == 2)
        {
          v11 = 0x6E6F697461636F6CLL;
          v12 = 0xE800000000000000;
        }

        v13 = 0xEB00000000657461;
        if (*(*(v7 + 48) + a2))
        {
          v14 = 0x74536E6F69746F6DLL;
        }

        else
        {
          v14 = 0x6C69617641646E64;
        }

        if (!*(*(v7 + 48) + a2))
        {
          v13 = 0xEF7974696C696261;
        }

        v15 = *(*(v7 + 48) + a2) <= 1u ? v14 : v11;
        v16 = *(*(v7 + 48) + a2) <= 1u ? v13 : v12;
      }

      v17 = 0xEA00000000006C6CLL;
      v18 = 0x7261646E656C6163;
      if (v34 == 8)
      {
        v18 = 0x614364657373696DLL;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      if (v34 == 7)
      {
        v18 = 0x7373654D64616572;
        v17 = 0xEB00000000656761;
      }

      v19 = 0x654D646165726E75;
      if (v34 == 5)
      {
        v19 = 0x617453646C696863;
      }

      v20 = 0xED00006567617373;
      if (v34 == 5)
      {
        v20 = 0xEA00000000006574;
      }

      if (v34 <= 6u)
      {
        v18 = v19;
        v17 = v20;
      }

      if (v34 == 3)
      {
        v21 = 0x7975426F546B7361;
      }

      else
      {
        v21 = 0xD000000000000011;
      }

      if (v34 == 3)
      {
        v22 = 0xEF74736575716552;
      }

      else
      {
        v22 = 0x800000022F0DC350;
      }

      if (v34 == 2)
      {
        v21 = 0x6E6F697461636F6CLL;
        v22 = 0xE800000000000000;
      }

      v23 = 0xEB00000000657461;
      if (v34)
      {
        v24 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v24 = 0x6C69617641646E64;
      }

      if (!v34)
      {
        v23 = 0xEF7974696C696261;
      }

      if (v34 <= 1u)
      {
        v21 = v24;
        v22 = v23;
      }

      v25 = v34 <= 4u ? v21 : v18;
      v26 = v34 <= 4u ? v22 : v17;
      if (v15 == v25 && v16 == v26)
      {
        goto LABEL_79;
      }

      v27 = sub_22F0D188C();

      if (v27)
      {
        goto LABEL_80;
      }

      a2 = (a2 + 1) & v33;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_76:
  v28 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + a2) = v34;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_79:

LABEL_80:
  result = sub_22F0D190C();
  __break(1u);
  return result;
}

uint64_t sub_22F057AB0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22F057174(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22F057F00();
      goto LABEL_16;
    }

    sub_22F058540(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22F0D199C();
  sub_22F0D0D5C();
  result = sub_22F0D19CC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22F0D188C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22F0D190C();
  __break(1u);
  return result;
}

void sub_22F057C30(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22F0573D4(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22F05805C(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22F058778(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22F0D12EC();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_22F01B924(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22F0D12FC();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22F0D190C();
  __break(1u);
}

void *sub_22F057DC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA18C8, &qword_22F0D82C0);
  v2 = *v0;
  v3 = sub_22F0D14BC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F057F00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
  v2 = *v0;
  v3 = sub_22F0D14BC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_22F0CFF1C();
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
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

id sub_22F05805C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22F0D14BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v3 = v6;
  }

  return result;
}

uint64_t sub_22F05819C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA18C8, &qword_22F0D82C0);
  result = sub_22F0D14CC();
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
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();

      result = sub_22F0D19CC();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        result = sub_22F0D00CC();
        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22F058540(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
  result = sub_22F0D14CC();
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
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
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
        result = sub_22F0D00CC();
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
    result = sub_22F0D00CC();
LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22F058778(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F0D14CC();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_22F0D12EC();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        result = sub_22F0D00CC();
        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t (*sub_22F058984(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318FDAB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22F059CAC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22F058A04(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2318FDAB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_22F058A84;
  }

  __break(1u);
  return result;
}

void (*sub_22F058A8C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318FDAB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22F058B0C;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F058B14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22F059C54();
  result = MEMORY[0x2318FD670](v2, &type metadata for StatusType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_22F0563EC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22F058B88(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318FD670](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_22F0CFF1C();
      sub_22F0567DC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22F058C20(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F0D143C())
  {
    v4 = sub_22F01B924(0, &qword_280CBDC30, 0x277CBDA58);
    v5 = sub_22F059C04(&qword_27DAA18A0, &qword_280CBDC30, 0x277CBDA58);
    result = MEMORY[0x2318FD670](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CBDA58uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2318FDAB0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_22F05692C(&v12, v10, &qword_280CBDC30, 0x277CBDA58, &qword_27DAA18A8, &unk_22F0D82B0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_22F0D143C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F058DAC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F0D143C())
  {
    v4 = sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
    v5 = sub_22F059C04(&qword_27DAA1858, &qword_27DAA1850, 0x277CCABB0);
    result = MEMORY[0x2318FD670](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CCABB0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2318FDAB0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_22F05692C(&v12, v10, &qword_27DAA1850, 0x277CCABB0, &unk_27DAA1860, &qword_22F0D8260);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_22F0D143C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void *sub_22F058F38(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v40 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1870, &unk_22F0D8270);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1700, &qword_22F0D7718);
  v14 = *(*(v36 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v36);
  v39 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v35 = &v32 - v19;
  v20 = a5 >> 1;
  v21 = (a5 >> 1) - a4;
  if (a5 >> 1 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v34 = v18;
    v37 = (v18 + 32);
    v38 = (v18 + 48);
    if (a4 > v20)
    {
      v20 = a4;
    }

    v22 = v20 - a4;
    v23 = (a3 + 8 * a4);
    v41 = MEMORY[0x277D84F90];
    v24 = v36;
    v33 = a1;
    while (v22)
    {
      v42 = *v23;
      v25 = v42;
      a1(&v42);
      if (v5)
      {

        return v41;
      }

      if ((*v38)(v13, 1, v24) == 1)
      {
        result = sub_22F003A4C(v13, &unk_27DAA1870, &unk_22F0D8270);
      }

      else
      {
        v26 = *v37;
        v27 = v35;
        (*v37)(v35, v13, v24);
        v26(v39, v27, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_22F03D44C(0, v41[2] + 1, 1, v41);
        }

        v29 = v41[2];
        v28 = v41[3];
        if (v29 >= v28 >> 1)
        {
          v41 = sub_22F03D44C(v28 > 1, v29 + 1, 1, v41);
        }

        v30 = v41;
        v41[2] = v29 + 1;
        v31 = v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29;
        v24 = v36;
        result = (v26)(v31, v39, v36);
        a1 = v33;
      }

      --v22;
      ++v23;
      if (!--v21)
      {
        return v41;
      }
    }

    __break(1u);
  }

  return result;
}

void *_s6People14ContactFetcherCACycfC_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  if (_s6People0A12DemoOverrideC010isContactsC7EnabledSbyFZ_0())
  {
    v1 = type metadata accessor for DemoContactSuggester();
    v2 = swift_allocObject();
    v3 = &off_2843CDD00;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D3A090]) init];
    v1 = sub_22F01B924(0, &qword_280CBF158, 0x277D3A090);
    v3 = &off_2843CEBF8;
  }

  v20 = v1;
  v21 = v3;
  *&v19 = v2;
  v4 = type metadata accessor for FamilyRequestFactory();
  v5 = swift_allocObject();
  v17 = sub_22F01B924(0, qword_280CBF040, 0x277CBDAB8);
  v18 = &protocol witness table for CNContactStore;
  *&v16 = v0;
  v15[3] = v4;
  v15[4] = &off_2843D10E8;
  v15[0] = v5;
  type metadata accessor for ContactFetcher();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v4);
  v8 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v6[15] = v4;
  v6[16] = &off_2843D10E8;
  v6[12] = v12;
  sub_22EFE6B9C(&v16, (v6 + 2));
  sub_22EFE6B9C(&v19, (v6 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v15);

  return v6;
}

uint64_t sub_22F059460(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22F00CF60;

  return sub_22F054620(a1, a2, v6, v7, v8);
}

uint64_t dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_22F059CA8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContactFetcher.contacts(withPredicates:includeImages:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F015A70;

  return v10(a1, a2);
}

uint64_t sub_22F059A40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t sub_22F059A80(uint64_t result)
{
  if (result)
  {
    sub_22F0D00CC();

    return sub_22F0D00CC();
  }

  return result;
}

uint64_t sub_22F059AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22F00CD54;

  return sub_22F055154(a1, v4, v5, v6, v7, v8);
}

void sub_22F059B88(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_22F015BE4(a1, a2 & 1);
  }
}

unint64_t sub_22F059BA0()
{
  result = qword_27DAA1898;
  if (!qword_27DAA1898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1838, &qword_22F0D80F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1898);
  }

  return result;
}

uint64_t sub_22F059C04(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22F01B924(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F059C54()
{
  result = qword_27DAA18C0;
  if (!qword_27DAA18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA18C0);
  }

  return result;
}

void sub_22F059CB4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 mechanism];
  if (v4 >= 0x12 || ((0x2191Fu >> v4) & 1) == 0)
  {

    *(a2 + 58) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v5 = byte_22F0D82C8[v4];
  v6 = [a1 contact];
  if (!v6)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = v6;
  v8 = [v6 personId];

  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = sub_22F0D0CAC();
  v11 = v10;

  v12 = [a1 contact];
  if (!v12)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 customIdentifier];

  if (v14)
  {
    v15 = sub_22F0D0CAC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [a1 contact];
  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = v18;
  v33 = v17;
  v34 = v15;
  v20 = [v18 identifier];

  v21 = v11;
  v22 = v9;
  if (v20)
  {
    v23 = sub_22F0D0CAC();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = v5;
  v27 = [a1 bundleId];
  if (v27)
  {
    v28 = v27;
    v29 = sub_22F0D0CAC();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  if (qword_27DAA0610 != -1)
  {
    swift_once();
  }

  v32 = byte_27DAA2160;

  *a2 = v26;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21;
  *(a2 + 24) = v34;
  *(a2 + 32) = v33;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  *(a2 + 56) = v29;
  *(a2 + 64) = v31;
  *(a2 + 72) = 0;
  *(a2 + 73) = v32;
}

id PeopleLegacyExtension.configuration.getter@<X0>(void *a1@<X8>)
{
  result = sub_22F036740(v1);
  *a1 = result;
  return result;
}

uint64_t PeopleLegacyResult.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID + 8);
  sub_22F0CFF1C();
  return v1;
}

uint64_t PeopleLegacyResult.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6People18PeopleLegacyResult_data);
  sub_22F0303BC(v1, *(v0 + OBJC_IVAR____TtC6People18PeopleLegacyResult_data + 8));
  return v1;
}

id PeopleLegacyResult.__allocating_init(bundleID:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC6People18PeopleLegacyResult_data];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id PeopleLegacyResult.init(bundleID:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC6People18PeopleLegacyResult_data];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for PeopleLegacyResult();
  return objc_msgSendSuper2(&v8, sel_init);
}

id PeopleLegacyResult.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22F05A408();

  return v4;
}

id PeopleLegacyResult.init(coder:)(void *a1)
{
  v2 = sub_22F05A408();

  return v2;
}

void sub_22F05A164(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID);
  v4 = *(v1 + OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID + 8);
  v5 = sub_22F0D0C7C();
  v6 = sub_22F0D0C7C();
  [a1 encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC6People18PeopleLegacyResult_data + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC6People18PeopleLegacyResult_data);
    v7 = sub_22F0D046C();
  }

  v9 = sub_22F0D0C7C();
  [a1 encodeObject:v7 forKey:v9];
}

id PeopleLegacyResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleLegacyResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeopleLegacyResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F05A408()
{
  sub_22F01B924(0, &qword_27DAA18E8, 0x277CCACA8);
  v1 = sub_22F0D12CC();
  if (v1)
  {
    v2 = v1;
    sub_22F0D0C9C();
  }

  v3 = &v0[OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID];
  *v3 = 0x21726F727245;
  *(v3 + 1) = 0xE600000000000000;
  v4 = &v0[OBJC_IVAR____TtC6People18PeopleLegacyResult_data];
  *v4 = 0;
  *(v4 + 1) = 0xF000000000000000;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PeopleLegacyResult();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t dispatch thunk of PeopleLegacyExtension.messagePayloadForScreenTime(for:baseURL:fallbackToLP:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22F059CA8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PeopleLegacyExtension.messagePayloadForAskToBuy(for:baseURL:fallbackToLP:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22F015A70;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t RuntimeEnvironment.__allocating_init(environment:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RuntimeEnvironment.init(environment:)(a1);
  return v2;
}

uint64_t RuntimeEnvironment.init(environment:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_22EFFDA80(0xD00000000000001CLL, 0x800000022F0DE9C0), (v5 & 1) != 0))
  {
    v6 = 0xEB00000000676E69;
    v7 = 0x7473655474696E55;
    v8 = (*(a1 + 56) + 16 * v4);
    v9 = *v8;
    v10 = v8[1];
    sub_22F0CFF1C();

    if (v9 == 0x7473655474696E55 && v10 == 0xEB00000000676E69)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_22F0D188C();
      v7 = v9;
      v6 = v10;
    }
  }

  else
  {

    v12 = 0;
    v7 = 0;
    v6 = 0;
  }

  *(v2 + 16) = v12 & 1;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v13 = sub_22F0D0A1C();
  __swift_project_value_buffer(v13, qword_280CBEC40);
  sub_22F0CFF1C();
  swift_retain_n();
  v14 = sub_22F0D09FC();
  v15 = sub_22F0D122C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    if (v6)
    {
      v18 = v7;
    }

    else
    {
      v18 = 0x74657320746F6ELL;
    }

    if (!v6)
    {
      v6 = 0xE700000000000000;
    }

    v19 = sub_22F00A560(v18, v6, &v22);

    *(v16 + 4) = v19;
    *(v16 + 12) = 1024;
    swift_beginAccess();
    v20 = *(v2 + 16);
    sub_22F0D00CC();
    *(v16 + 14) = v20;
    sub_22F0D00CC();
    _os_log_impl(&dword_22EFE1000, v14, v15, "env is: %s  testing mode:%{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2318FE8B0](v17, -1, -1);
    MEMORY[0x2318FE8B0](v16, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t static RuntimeEnvironment.defaultEnvironment.getter()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_22F0D0AFC();
  type metadata accessor for RuntimeEnvironment();
  v3 = swift_allocObject();
  RuntimeEnvironment.init(environment:)(v2);
  return v3;
}

uint64_t sub_22F05ACA4(CGImage *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x277CC2120], 1uLL, 0);
    if (v4)
    {
      v5 = v4;
      CGImageDestinationAddImage(v4, a1, 0);
      if (CGImageDestinationFinalize(v5))
      {
        v6 = v3;
        v7 = sub_22F0D049C();

        return v7;
      }

      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v16 = sub_22F0D0A1C();
      __swift_project_value_buffer(v16, qword_280CBEC40);
      v17 = sub_22F0D09FC();
      v18 = sub_22F0D123C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22EFE1000, v17, v18, "CGImageDestinationFinalize failed", v19, 2u);
        MEMORY[0x2318FE8B0](v19, -1, -1);
      }
    }

    else
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v12 = sub_22F0D0A1C();
      __swift_project_value_buffer(v12, qword_280CBEC40);
      v13 = sub_22F0D09FC();
      v14 = sub_22F0D123C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_22EFE1000, v13, v14, "CGImageDestinationCreateWithData failed", v15, 2u);
        MEMORY[0x2318FE8B0](v15, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280CBE8C0 != -1)
    {
      swift_once();
    }

    v9 = sub_22F0D0A1C();
    __swift_project_value_buffer(v9, qword_280CBE8C8);
    v3 = sub_22F0D09FC();
    v10 = sub_22F0D123C();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22EFE1000, v3, v10, "CFDataCreateMutable failed", v11, 2u);
      MEMORY[0x2318FE8B0](v11, -1, -1);
    }
  }

  return 0;
}

CGImage *sub_22F05AF80(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() imageDescriptorNamed_];
  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v6 = sub_22F0D0C7C();
  v7 = [v5 initWithBundleIdentifier_];

  v8 = [v7 prepareImageForDescriptor_];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  if ([v8 placeholder])
  {

LABEL_4:
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v10 = sub_22F0D0A1C();
    __swift_project_value_buffer(v10, qword_280CBEC40);
    sub_22F0CFF1C();
    v11 = sub_22F0D09FC();
    v12 = sub_22F0D124C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22F00A560(a1, a2, v28);
      _os_log_impl(&dword_22EFE1000, v11, v12, "Iconservice lookup for %s failed; is placeholder", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2318FE8B0](v14, -1, -1);
      MEMORY[0x2318FE8B0](v13, -1, -1);
    }

    return 0;
  }

  result = [v9 CGImage];
  if (result)
  {
    v17 = result;
    v15 = sub_22F05ACA4(result);
    v19 = v18;

    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v20 = sub_22F0D0A1C();
    __swift_project_value_buffer(v20, qword_280CBEC40);
    sub_22F0CFF1C();
    sub_22F0303BC(v15, v19);
    v21 = sub_22F0D09FC();
    v22 = sub_22F0D124C();

    sub_22F00AB48(v15, v19);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v23 = 136315394;
      *(v23 + 4) = sub_22F00A560(a1, a2, &v29);
      *(v23 + 12) = 2080;
      v28[0] = v15;
      v28[1] = v19;
      sub_22F0303BC(v15, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1680, &qword_22F0D74D8);
      v24 = sub_22F0D0CFC();
      v26 = sub_22F00A560(v24, v25, &v29);

      *(v23 + 14) = v26;
      _os_log_impl(&dword_22EFE1000, v21, v22, "Iconservice lookup for %s returned %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v27, -1, -1);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F05B380(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() hours];
  sub_22F014850();
  return sub_22F0D017C();
}

uint64_t sub_22F05B410()
{
  v1 = OBJC_IVAR____TtC6People13IndexableItem_eventDate;
  v2 = sub_22F0D05BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22F003A4C(v0 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, &qword_27DAA1440, &unk_22F0D65F0);
  v3 = *(v0 + OBJC_IVAR____TtC6People13IndexableItem_keywordStrings);

  v4 = *(v0 + OBJC_IVAR____TtC6People13IndexableItem_title + 8);

  v5 = *(v0 + OBJC_IVAR____TtC6People13IndexableItem_description + 8);

  v6 = *(v0 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8);

  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IndexableItem()
{
  result = qword_27DAA1900;
  if (!qword_27DAA1900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F05B574()
{
  v0 = sub_22F0D05BC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22F05B668();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22F05B668()
{
  if (!qword_27DAA1910)
  {
    sub_22F0D05BC();
    v0 = sub_22F0D132C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAA1910);
    }
  }
}

uint64_t sub_22F05B6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1918, &qword_22F0D8420);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  v19 = *(a2 + 16);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_29;
    }
  }

  else if (v19)
  {
    goto LABEL_29;
  }

  v38 = v15;
  v20 = *(a1 + OBJC_IVAR____TtC6People13IndexableItem_indexableID) == *(a2 + OBJC_IVAR____TtC6People13IndexableItem_indexableID) && *(a1 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8) == *(a2 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8);
  if (!v20 && (sub_22F0D188C() & 1) == 0)
  {
    goto LABEL_29;
  }

  v36 = v4;
  v37 = v5;
  v35 = v8;
  if (v18)
  {
    v21 = [v18 identifier];
    sub_22F0D0CAC();
  }

  v22 = String.trimToNil()();

  if (v19)
  {
    v23 = [v19 _swift_FORCE_LOAD___swiftCoreMIDI___People];
    sub_22F0D0CAC();
  }

  v24 = String.trimToNil()();

  if (v22.value._object)
  {
    if (v24.value._object)
    {
      if (v22.value._countAndFlagsBits == v24.value._countAndFlagsBits && v22.value._object == v24.value._object)
      {
      }

      else
      {
        v26 = sub_22F0D188C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_22;
    }
  }

  else if (!v24.value._object)
  {
LABEL_22:
    if (sub_22F0D057C())
    {
      v27 = OBJC_IVAR____TtC6People13IndexableItem_expirationDate;
      v28 = *(v38 + 48);
      sub_22F022BA4(a1 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, v17);
      sub_22F022BA4(a2 + v27, &v17[v28]);
      v29 = v36;
      v30 = v37;
      v31 = *(v37 + 48);
      if (v31(v17, 1, v36) == 1)
      {
        if (v31(&v17[v28], 1, v29) == 1)
        {
          sub_22F003A4C(v17, &qword_27DAA1440, &unk_22F0D65F0);
          v25 = 1;
          return v25 & 1;
        }
      }

      else
      {
        sub_22F022BA4(v17, v12);
        if (v31(&v17[v28], 1, v29) != 1)
        {
          v33 = v35;
          (*(v30 + 32))(v35, &v17[v28], v29);
          sub_22F05BB40();
          v25 = sub_22F0D0C2C();
          v34 = *(v30 + 8);
          v34(v33, v29);
          v34(v12, v29);
          sub_22F003A4C(v17, &qword_27DAA1440, &unk_22F0D65F0);
          return v25 & 1;
        }

        (*(v30 + 8))(v12, v29);
      }

      sub_22F003A4C(v17, &qword_27DAA1918, &qword_22F0D8420);
    }

LABEL_29:
    v25 = 0;
    return v25 & 1;
  }

  v25 = 0;
  return v25 & 1;
}

unint64_t sub_22F05BB40()
{
  result = qword_27DAA1920;
  if (!qword_27DAA1920)
  {
    sub_22F0D05BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1920);
  }

  return result;
}

uint64_t sub_22F05BB98(uint64_t a1)
{
  v2 = sub_22F0D01DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F0D0C7C();
  v8 = [objc_opt_self() bundleWithIdentifier_];

  if (!v8)
  {
    if (qword_280CBDB90 == -1)
    {
LABEL_6:
      v17 = sub_22F0D0A1C();
      __swift_project_value_buffer(v17, qword_280CBDB98);
      v18 = sub_22F0D09FC();
      v19 = sub_22F0D123C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_22EFE1000, v18, v19, "Bundle not loaded", v20, 2u);
        MEMORY[0x2318FE8B0](v20, -1, -1);
      }

      return 0;
    }

LABEL_79:
    swift_once();
    goto LABEL_6;
  }

  v9 = [v8 localizations];
  v10 = sub_22F0D0F4C();

  v11 = sub_22F058B88(v10);

  v12 = *(v11 + 16);
  if (!v12)
  {

    v16 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v13 = sub_22F0BBB50(*(v11 + 16), 0);
  v14 = sub_22F0BFD34(&v110, v13 + 4, v12, v11);
  sub_22F003524();
  if (v14 != v12)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v16 = v13;
LABEL_10:
  v106 = v16[2];
  if (v106)
  {
    v21 = 0;
    v105 = v16 + 4;
    v107 = (v3 + 8);
    v99 = (a1 + 40);
    v104 = MEMORY[0x277D84F98];
    *&v15 = 136315138;
    v100 = v15;
    v101 = v8;
    v102 = v2;
    v98 = a1;
    v103 = v16;
    do
    {
      if (v21 >= v16[2])
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v22 = &v105[2 * v21];
      v23 = v22[1];
      v108 = *v22;
      v24 = sub_22F0D0D0C();
      v26 = v25;
      if (v24 == sub_22F0D0D0C() && v26 == v27)
      {
      }

      else
      {
        v29 = sub_22F0D188C();
        sub_22F0CFF1C();

        if (v29)
        {

          v16 = v103;
        }

        else
        {
          v30 = sub_22F0D0C7C();
          v31 = sub_22F0D0C7C();
          v32 = [v8 pathForResource:v30 ofType:v31];

          if (v32)
          {
            v33 = [objc_allocWithZone(MEMORY[0x277CCA8D8]) initWithPath_];

            v16 = v103;
            v109 = v33;
            if (v33)
            {
              v34 = *(a1 + 16);
              if (v34)
              {
                v35 = v99;
                do
                {
                  v36 = *(v35 - 1);
                  v37 = *v35;
                  sub_22F0CFF1C();
                  v38 = sub_22F0D0C7C();

                  v39 = sub_22F0D0C7C();
                  v40 = [v109 localizedStringForKey:v38 value:v39 table:0];

                  v41 = sub_22F0D0CAC();
                  v43 = v42;

                  v110 = v41;
                  v111 = v43;
                  sub_22F0D01CC();
                  sub_22F00901C();
                  v44 = sub_22F0D136C();
                  v46 = v45;
                  (*v107)(v6, v2);

                  v47 = HIBYTE(v46) & 0xF;
                  if ((v46 & 0x2000000000000000) == 0)
                  {
                    v47 = v44 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v47 || v44 == 11565 && v46 == 0xE200000000000000 || (sub_22F0D188C() & 1) != 0)
                  {
                  }

                  else
                  {
                    v48 = v104;
                    if (*(v104 + 16) && (v49 = sub_22EFFDA80(v108, v23), (v50 & 1) != 0))
                    {
                      v51 = (*(v48 + 56) + 16 * v49);
                      v53 = *v51;
                      v52 = v51[1];
                      v54 = sub_22F0CFF1C();
                    }

                    else
                    {
                      v53 = 0;
                      v54 = 0xE000000000000000;
                    }

                    v55 = HIBYTE(v54) & 0xF;
                    if ((v54 & 0x2000000000000000) == 0)
                    {
                      v55 = v53 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v55)
                    {
                      v56 = 44;
                    }

                    else
                    {
                      v56 = 0;
                    }

                    if (v55)
                    {
                      v57 = 0xE100000000000000;
                    }

                    else
                    {
                      v57 = 0xE000000000000000;
                    }

                    v110 = v53;
                    v111 = v54;
                    sub_22F0CFF1C();
                    MEMORY[0x2318FD2C0](v56, v57);

                    MEMORY[0x2318FD2C0](v44, v46);

                    v59 = v110;
                    v58 = v111;
                    v60 = v104;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v110 = v60;
                    v62 = sub_22EFFDA80(v108, v23);
                    v64 = *(v60 + 16);
                    v65 = (v63 & 1) == 0;
                    v66 = __OFADD__(v64, v65);
                    v67 = v64 + v65;
                    if (v66)
                    {
                      goto LABEL_76;
                    }

                    v68 = v63;
                    if (*(v60 + 24) >= v67)
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v77 = v62;
                        sub_22F0600F4();
                        v62 = v77;
                      }
                    }

                    else
                    {
                      sub_22F07A54C(v67, isUniquelyReferenced_nonNull_native);
                      v62 = sub_22EFFDA80(v108, v23);
                      if ((v68 & 1) != (v69 & 1))
                      {
                        result = sub_22F0D191C();
                        __break(1u);
                        return result;
                      }
                    }

                    v70 = v110;
                    v104 = v110;
                    if (v68)
                    {
                      v71 = (v110[7] + 16 * v62);
                      v72 = v71[1];
                      *v71 = v59;
                      v71[1] = v58;
                    }

                    else
                    {
                      v110[(v62 >> 6) + 8] |= 1 << v62;
                      v73 = (v70[6] + 16 * v62);
                      *v73 = v108;
                      v73[1] = v23;
                      v74 = (v70[7] + 16 * v62);
                      *v74 = v59;
                      v74[1] = v58;
                      v75 = v70[2];
                      v66 = __OFADD__(v75, 1);
                      v76 = v75 + 1;
                      if (v66)
                      {
                        goto LABEL_77;
                      }

                      v70[2] = v76;
                    }

                    v2 = v102;
                  }

                  v35 += 2;
                  --v34;
                }

                while (v34);

                v8 = v101;
                a1 = v98;
                v16 = v103;
              }

              else
              {

                v8 = v101;
              }
            }

            else
            {
              if (qword_280CBDB90 != -1)
              {
                swift_once();
              }

              v85 = sub_22F0D0A1C();
              __swift_project_value_buffer(v85, qword_280CBDB98);
              sub_22F0CFF1C();
              v86 = sub_22F0D09FC();
              v87 = sub_22F0D123C();

              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                v110 = v89;
                *v88 = v100;
                v90 = sub_22F00A560(v108, v23, &v110);

                *(v88 + 4) = v90;
                _os_log_impl(&dword_22EFE1000, v86, v87, "No bundle for %s", v88, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v89);
                v91 = v89;
                v2 = v102;
                MEMORY[0x2318FE8B0](v91, -1, -1);
                v92 = v88;
                v16 = v103;
                MEMORY[0x2318FE8B0](v92, -1, -1);
              }

              else
              {
              }
            }
          }

          else
          {
            if (qword_280CBDB90 != -1)
            {
              swift_once();
            }

            v78 = sub_22F0D0A1C();
            __swift_project_value_buffer(v78, qword_280CBDB98);
            sub_22F0CFF1C();
            v79 = sub_22F0D09FC();
            v80 = sub_22F0D122C();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v110 = v82;
              *v81 = v100;
              v83 = sub_22F00A560(v108, v23, &v110);

              *(v81 + 4) = v83;
              _os_log_impl(&dword_22EFE1000, v79, v80, "No bundle path for %s", v81, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v82);
              v84 = v82;
              v2 = v102;
              MEMORY[0x2318FE8B0](v84, -1, -1);
              MEMORY[0x2318FE8B0](v81, -1, -1);
            }

            else
            {
            }

            v16 = v103;
          }
        }
      }

      ++v21;
    }

    while (v21 != v106);
    sub_22F0D00CC();
    v93 = v104;
    if (!*(v104 + 16))
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  sub_22F0D00CC();
  v93 = MEMORY[0x277D84F98];
  if (*(MEMORY[0x277D84F98] + 16))
  {
LABEL_71:
    sub_22F00DFEC(v93);
    v94 = objc_allocWithZone(MEMORY[0x277CC3440]);
    v95 = sub_22F0D0AEC();

    v96 = [v94 initWithLocalizedStrings_];

    return v96;
  }

LABEL_73:

  return 0;
}

uint64_t sub_22F05C5E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_22F0D119C();
  if (!v26)
  {
    return sub_22F0D0FBC();
  }

  v48 = v26;
  v52 = sub_22F0D165C();
  v39 = sub_22F0D166C();
  sub_22F0D160C();
  result = sub_22F0D118C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_22F0D11FC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);
        sub_22F0D00CC();
        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_22F0D164C();
      result = sub_22F0D11BC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F05CA04@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t Collection<>.uniqueWithOrder()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  v4 = sub_22F0D0FBC();
  sub_22F0D0EBC();
  return v4;
}

uint64_t Collection<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_22F0D0FBC();
  if (sub_22F0D0FFC())
  {
    v16 = sub_22F05D9F8(v15, AssociatedTypeWitness, a3);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v21 = v16;
  v17 = (*(v8 + 16))(v11, v4, a1);
  MEMORY[0x28223BE20](v17);
  *(&v20 - 4) = a1;
  *(&v20 - 3) = a2;
  *(&v20 - 2) = a3;
  *(&v20 - 1) = &v21;
  v18 = sub_22F0D0E7C();

  return v18;
}

uint64_t sub_22F05CF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v7 + 16))(v11, a1, AssociatedTypeWitness);
  sub_22F0D115C();
  v14 = sub_22F0D114C();
  (*(v7 + 8))(v13, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t sub_22F05D0C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  v16[1] = *a2;
  sub_22F0D103C();
  swift_getWitnessTable();
  v14 = *(a5 + 8);
  result = sub_22F0D0ECC();
  if ((result & 1) == 0)
  {
    (*(v10 + 16))(v13, a1, AssociatedTypeWitness);
    return sub_22F0D100C();
  }

  return result;
}

uint64_t sub_22F05D214(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v11 = sub_22F0D0BBC();
  v12 = *(v4 + 8);
  v12(v8, v3);
  v12(v10, v3);
  return v11 & 1;
}

uint64_t sub_22F05D38C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_22F05D214(a1, a2, *(v2 + 40)) & 1;
}

uint64_t Collection.expanded(toSize:placeholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a2, AssociatedTypeWitness);
  result = sub_22F0D119C();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
  }

  else
  {
    v13 = (a1 - result) & ~((a1 - result) >> 63);
    sub_22F0D103C();
    v14 = sub_22F05DDD8(v11, v13, AssociatedTypeWitness);
    (*(v8 + 8))(v11, AssociatedTypeWitness);
    v15[0] = v14;
    swift_getWitnessTable();
    sub_22F0D120C();

    return v15[1];
  }

  return result;
}

uint64_t Collection<>.matrix(rowCount:placeholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22F0D119C();
  v10 = ceil(result / a1);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v17[9] = 0;
    v17[10] = a1;
    MEMORY[0x28223BE20](result);
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = &v18;
    v17[5] = v11;
    v17[6] = v4;
    v17[7] = a2;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1928, &qword_22F0D8428);
    v13 = *(a4 + 8);
    swift_getAssociatedTypeWitness();
    v14 = sub_22F0D103C();
    v15 = sub_22F05DF14();
    return sub_22F05C5E4(sub_22F05DEEC, v17, v12, v14, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22F05D6D4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = *a1;
  v34 = a2;
  v17 = __OFADD__(v16, a2);
  v18 = v16 + a2;
  if (v17)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v18 < v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v30 = a3;
  result = sub_22F0D11AC();
  if (v33[0] < v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = a7;
  v29 = a1;
  v27 = &v27;
  if (v33[0] >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v33[0];
  }

  MEMORY[0x28223BE20](result);
  *(&v27 - 6) = a5;
  *(&v27 - 5) = a6;
  *(&v27 - 4) = v34;
  *(&v27 - 3) = v16;
  *(&v27 - 2) = v19;
  v20 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  sub_22F0D132C();
  v21 = sub_22F0D103C();
  v22 = v32;
  sub_22F05CA04(sub_22F05DFF4, (&v27 - 8), MEMORY[0x277D84A98], v21, v23, v33);
  v32 = v22;
  if (!v33[0])
  {
    sub_22F0D0FBC();
  }

  v33[0] = v16;
  v33[1] = v19;
  sub_22F0D11EC();
  v24 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_22F0D104C();
  v25 = sub_22F0D0FAC();

  v26 = v29;
  *v28 = v25;
  if (!__OFADD__(*v26, v34))
  {
    *v26 += v34;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22F05D954@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
  }

  else
  {
    v8 = a2 - v7;
    if (!__OFSUB__(a2, v7))
    {
      v9 = result;
      v10 = *(a5 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      result = sub_22F05DDD8(v9, v8, AssociatedTypeWitness);
      *a6 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F05D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (sub_22F0D0FFC())
  {
    sub_22F0D14FC();
    v16 = sub_22F0D14EC();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_22F0D0FFC();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_22F0D0FDC();
    sub_22F0D0F7C();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_22F0D156C();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_22F0D0B7C();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_22F0D0C2C();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}