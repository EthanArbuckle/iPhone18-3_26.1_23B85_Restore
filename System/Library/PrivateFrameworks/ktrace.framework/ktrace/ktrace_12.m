uint64_t sub_22EE2E9D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_22EE2EA08(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = a2;
  v5 = sub_22EE3BCB4();
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v58 = v8 != 0;
  if (v8)
  {
    v9 = (a1 + 40);
    v10 = v8;
    do
    {
      if (*(v9 - 1) == 0x6972657078652D2DLL && *v9 == 0xEE006C61746E656DLL)
      {
        break;
      }

      if (sub_22EE3CBA4())
      {
        break;
      }

      v9 += 2;
      v58 = --v10 != 0;
    }

    while (v10);
  }

  v12 = 0x746C7561666564;
  if (!v8)
  {
    v21 = 0xE700000000000000;
    v18 = v57;
    v19 = v58;
LABEL_24:
    v22 = sub_22EE0099C(v19, v18 & 1);
    v23 = v2;
    if (!v2)
    {
      v49 = v21;
      v24 = v22;

      v25 = *(v24 + 16);
      if (v25)
      {
        v45 = v12;
        v46 = 0;
        v47 = v5;
        v56[0] = MEMORY[0x277D84F90];
        v48 = v24;
        sub_22EDD2DD4(0, v25, 0);
        v26 = v56[0];
        v27 = (v48 + 40);
        do
        {
          v28 = *(v27 - 1);
          v29 = *v27;
          v56[0] = v26;
          v31 = *(v26 + 16);
          v30 = *(v26 + 24);

          if (v31 >= v30 >> 1)
          {
            sub_22EDD2DD4((v30 > 1), v31 + 1, 1);
            v26 = v56[0];
          }

          *(v26 + 16) = v31 + 1;
          v32 = v26 + 16 * v31;
          *(v32 + 32) = v28;
          *(v32 + 40) = v29;
          v27 += 41;
          --v25;
        }

        while (v25);

        v23 = v46;
        v5 = v47;
        v18 = v57;
        v19 = v58;
        v12 = v45;
      }

      else
      {

        v26 = MEMORY[0x277D84F90];
      }

      v3 = v51;
      sub_22EE00518(v51, v12, v49, v19, v18 & 1, 0, 0);
      if (!v23)
      {

        sub_22EDFC60C(v56);
        memcpy(v55, v56, 0x141uLL);
        v52[0] = 0;
        v52[1] = 0xE000000000000000;
        sub_22EE3C864();

        v52[0] = 0x6020202020;
        v52[1] = 0xE500000000000000;
        v34 = v55[0];
        v35 = v55[1];

        MEMORY[0x2318F58F0](v34, v35);

        MEMORY[0x2318F58F0](0x203A6E616C702027, 0xE800000000000000);
        v36 = v55[10];
        v37 = v55[11];

        MEMORY[0x2318F58F0](v36, v37);

        MEMORY[0x2318F58F0](10, 0xE100000000000000);
        v53 = v52[0];
        v54 = v52[1];
        memcpy(v52, v55, 0x141uLL);
        v38 = sub_22EDFE0AC(0x2020202020202020, 0xE800000000000000);
        MEMORY[0x2318F58F0](v38);

        MEMORY[0x2318F58F0](10, 0xE100000000000000);
        sub_22ED80F70(v55);
        v40 = v53;
        v39 = v54;
        v56[0] = 0;
        v56[1] = 0xE000000000000000;
        sub_22EE3C864();

        v56[0] = 0xD00000000000002FLL;
        v56[1] = 0x800000022EE4B6E0;
        MEMORY[0x2318F58F0](v40, v39);

        MEMORY[0x2318F58F0](0xD000000000000015, 0x800000022EE4B710);
        v55[0] = v26;

        sub_22EE2DE94(v55);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
        sub_22EDD3F74();
        v41 = sub_22EE3C0B4();
        v43 = v42;

        MEMORY[0x2318F58F0](v41, v43);

        v3 = v56[0];
        (*(v50 + 8))(v51, v5);
        return v3;
      }
    }

    return v3;
  }

  v13 = 0;
  v14 = a1 + 32;
  v15 = (a1 + 40);
  while (1)
  {
    v16 = *(v15 - 1) == 0x6E616C702D2DLL && *v15 == 0xE600000000000000;
    if (v16 || (sub_22EE3CBA4() & 1) != 0)
    {
      break;
    }

    ++v13;
    v15 += 2;
    if (v8 == v13)
    {
      goto LABEL_22;
    }
  }

  v17 = (v13 + 1);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= v8)
    {
LABEL_22:
      v21 = 0xE700000000000000;
      v18 = v57;
      v19 = v58;
      v12 = 0x746C7561666564;
      goto LABEL_24;
    }

    v18 = v57;
    v19 = v58;
    if ((v17 & 0x8000000000000000) == 0)
    {
      v20 = (v14 + 16 * v17);
      v12 = *v20;
      v21 = v20[1];

      goto LABEL_24;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22EE2EFFC(uint64_t a1, uint64_t a2)
{
  sub_22EE18DB0();
  result = *(v2 + 40);
  if (result)
  {
    nullsub_1(result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22EE3F500;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    sub_22ED82560();

    sub_22EE3CC44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22EE2F0DC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for RecordingOptions.Options(0);
  if (a2)
  {
    v5 = result;
    v6 = swift_projectBox();
    swift_beginAccess();
    v7 = (v6 + *(v5 + 124));
    v8 = v7[1];
    *v7 = a1;
    v7[1] = a2;
  }

  return result;
}

uint64_t sub_22EE2F16C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for RecordingOptions.Options(0);
  if (a2)
  {
    v5 = result;
    v6 = swift_projectBox();
    swift_beginAccess();
    v7 = (v6 + *(v5 + 128));
    v8 = v7[1];
    *v7 = a1;
    v7[1] = a2;
  }

  return result;
}

uint64_t sub_22EE2F1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = (v5 + *(v4 + 128));
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_22EE2F288(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  v26[0] = 44;
  v26[1] = 0xE100000000000000;
  v25 = v26;

  v7 = sub_22EDD1FA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22EE1DF80, v24, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v23 = v5;
    v27 = v4;
    v26[0] = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v8, 0);
    v9 = v26[0];
    v10 = (v7 + 56);
    do
    {
      v12 = *(v10 - 3);
      v11 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      v15 = MEMORY[0x2318F5880](v12, v11, v13, v14);
      v17 = v16;

      v26[0] = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22EDD2DD4((v18 > 1), v19 + 1, 1);
        v9 = v26[0];
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 4;
      --v8;
    }

    while (v8);

    v4 = v27;
    v5 = v23;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v21 = v5 + *(v4 + 96);
  sub_22EE1C928(v9);
  swift_endAccess();
}

uint64_t sub_22EE2F45C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  v26[0] = 44;
  v26[1] = 0xE100000000000000;
  v25 = v26;

  v7 = sub_22EDD1FA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22EE1DD00, v24, a1, a2, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v23 = v5;
    v27 = v4;
    v26[0] = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v8, 0);
    v9 = v26[0];
    v10 = (v7 + 56);
    do
    {
      v12 = *(v10 - 3);
      v11 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      v15 = MEMORY[0x2318F5880](v12, v11, v13, v14);
      v17 = v16;

      v26[0] = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22EDD2DD4((v18 > 1), v19 + 1, 1);
        v9 = v26[0];
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 4;
      --v8;
    }

    while (v8);

    v4 = v27;
    v5 = v23;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v21 = v5 + *(v4 + 100);
  sub_22EE1C928(v9);
  swift_endAccess();
}

uint64_t sub_22EE2F630(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = type metadata accessor for RecordingOptions.Options(0);
  v8 = swift_projectBox();
  if (a1 == 0x687461702D6F74 && a2 == 0xE700000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {
    result = swift_beginAccess();
    *(v6 + 16) = 1;
  }

  else
  {
    sub_22ED80FA0();
    if (sub_22EE3C6A4())
    {
      swift_beginAccess();
      v10 = *(v7 + 104);
      v11 = *(v8 + v10);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + v10) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_22EDDA224(0, *(v11 + 2) + 1, 1, v11);
        *(v8 + v10) = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_22EDDA224((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v15 = &v11[16 * v14];
      *(v15 + 4) = a1;
      *(v15 + 5) = a2;
      *(v8 + v10) = v11;
      return swift_endAccess();
    }

    else
    {
      type metadata accessor for KTraceRecordError();
      sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
      swift_allocError();
      *v16 = a1;
      *(v16 + 8) = a2;
      *(v16 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22EE2F854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = *(v4 + 48);
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22EDDA224(0, *(v7 + 2) + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22EDDA224((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v5 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_22EE2F958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = *(v4 + 52);
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22EDDA224(0, *(v7 + 2) + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22EDDA224((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v5 + v6) = v7;
  return swift_endAccess();
}

void sub_22EE2FA5C(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = swift_projectBox();
  v7 = sub_22EE10DF0(a1, a2, 1);
  if (v2)
  {
    v27 = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    type metadata accessor for KTraceRecordError();
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    v10 = v9;
    v11 = sub_22EE10C98();
    if (v12)
    {
      v13 = v11;
      v14 = v12;

      sub_22EE31668(v25);
      *v10 = 0xD000000000000014;
      v10[1] = 0x800000022EE4B6C0;
      v10[2] = v13;
      v10[3] = v14;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    swift_beginAccess();
    v16 = *(v5 + 32);
    v17 = *(v6 + v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_22EE2DFF8(0, *(v17 + 2) + 1, 1, v17);
      *(v6 + v16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_22EE2DFF8((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[24 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = 0;
    v21[48] = 1;
    *(v6 + v16) = v17;
    swift_endAccess();
  }
}

uint64_t sub_22EE2FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = *(v4 + 28);
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22EE2DFF8(0, *(v7 + 2) + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22EE2DFF8((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  v11[48] = 2;
  *(v5 + v6) = v7;
  *(v5 + *(v4 + 56)) = 1;
  return swift_endAccess();
}

unint64_t sub_22EE2FDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  v6 = sub_22ED80FA0();
  result = sub_22EE11A98(MEMORY[0x277D837D0], v6);
  if (v8)
  {
    type metadata accessor for KTraceRecordError();
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    *v9 = 0xD000000000000015;
    v9[1] = 0x800000022EE4B6A0;
    v9[2] = a1;
    v9[3] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v10 = result;
    if (HIDWORD(result))
    {
      __break(1u);
    }

    else
    {
      result = swift_beginAccess();
      v11 = v5 + *(v4 + 40);
      *v11 = v10;
      *(v11 + 4) = 0;
    }
  }

  return result;
}

void sub_22EE2FF14(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = swift_projectBox();
  v7 = sub_22EE11334(a1, a2);
  if (v2)
  {
    v22 = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    v20[0] = v17;
    v20[1] = v18;
    v21 = v19;
    type metadata accessor for KTraceRecordError();
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    v10 = v9;
    v11 = sub_22EE10C98();
    if (v12)
    {
      v13 = v11;
      v14 = v12;

      sub_22EE31668(v20);
      *v10 = 0xD00000000000001ELL;
      v10[1] = 0x800000022EE4B680;
      v10[2] = v13;
      v10[3] = v14;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_5;
    }
  }

  else
  {
    if (v7 >> 54)
    {
      __break(1u);
    }

    else if (!(v7 >> 44))
    {
      v15 = v7 << 14;
      swift_beginAccess();
      v16 = v6 + *(v5 + 44);
      *v16 = v15;
      *(v16 + 8) = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22EE300F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = *(v4 + 24);
  v7 = *(v5 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22EE2E114(0, *(v7 + 2) + 1, 1, v7);
    *(v5 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_22EE2E114((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v5 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_22EE301F8()
{
  type metadata accessor for RecordingOptions.Options(0);
  v0 = swift_projectBox();
  result = swift_beginAccess();
  if ((*v0 & 1) == 0)
  {
    *v0 |= 1uLL;
  }

  return result;
}

void sub_22EE30258(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecordingOptions.Options(0);
  v7 = swift_projectBox();
  v8 = sub_22ED808E4();
  v9 = sub_22EE10DF0(a1, a2, v8 & 1);
  if (!v2)
  {
    if (v9 >> 4 > 0xC34)
    {
      v19 = v9 / 0x3E8;
      swift_beginAccess();
      v20 = v7 + *(v6 + 60);
      *v20 = v19;
      *(v20 + 8) = 0;
      return;
    }

    v10 = v9;
    type metadata accessor for KTraceRecordError();
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    v3 = swift_allocError();
    *v11 = v10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v26 = v3;
  v12 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return;
  }

  v24[0] = v21;
  v24[1] = v22;
  v25 = v23;
  type metadata accessor for KTraceRecordError();
  sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
  swift_allocError();
  v14 = v13;
  v15 = sub_22EE10C98();
  if (v16)
  {
    v17 = v15;
    v18 = v16;

    sub_22EE31668(v24);
    *v14 = 0xD000000000000014;
    v14[1] = 0x800000022EE4B660;
    v14[2] = v17;
    v14[3] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22EE304C4()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 64)) = 1;
  return result;
}

uint64_t sub_22EE3052C()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 68)) = 1;
  return result;
}

void sub_22EE30594(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = swift_projectBox();
  v7 = sub_22ED808E4();
  v8 = sub_22EE10DF0(a1, a2, v7 & 1);
  if (v2)
  {
    v23 = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    v21[0] = v18;
    v21[1] = v19;
    v22 = v20;
    type metadata accessor for KTraceRecordError();
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    v11 = v10;
    v12 = sub_22EE10C98();
    if (v13)
    {
      v14 = v12;
      v15 = v13;

      sub_22EE31668(v21);
      *v11 = 0xD000000000000013;
      v11[1] = 0x800000022EE4B640;
      v11[2] = v14;
      v11[3] = v15;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    v16 = v8;
    swift_beginAccess();
    v17 = v6 + *(v5 + 120);
    *v17 = v16;
    *(v17 + 8) = 0;
  }
}

uint64_t sub_22EE30764()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 112)) = 1;
  return result;
}

uint64_t sub_22EE307CC()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 108)) = 1;
  return result;
}

void sub_22EE30834(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = swift_projectBox();
  v7 = sub_22EE11334(a1, a2);
  if (v2)
  {
    v22 = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    v20[0] = v17;
    v20[1] = v18;
    v21 = v19;
    type metadata accessor for KTraceRecordError();
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    v10 = v9;
    v11 = sub_22EE10C98();
    if (v12)
    {
      v13 = v11;
      v14 = v12;

      sub_22EE31668(v20);
      *v10 = 0xD000000000000014;
      v10[1] = 0x800000022EE4B620;
      v10[2] = v13;
      v10[3] = v14;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_5;
    }
  }

  else
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v15 = v7;
      swift_beginAccess();
      v16 = v6 + *(v5 + 84);
      *v16 = v15;
      *(v16 + 8) = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22EE30A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = (v5 + *(v4 + 76));
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_22EE30A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  v5 = swift_projectBox();
  swift_beginAccess();
  v6 = (v5 + *(v4 + 80));
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_22EE30B1C()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 88)) = 1;
  return result;
}

uint64_t sub_22EE30B84(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  result = swift_projectBox();
  v6 = HIBYTE(a2) & 0xF;
  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v36[0] = a1;
      v36[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (!v6)
        {
LABEL_73:
          __break(1u);
          return result;
        }

        if (--v6)
        {
          LODWORD(v11) = 0;
          v22 = v36 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v11;
            if (v24 != v24)
            {
              break;
            }

            LODWORD(v11) = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (a1 == 45)
      {
        if (!v6)
        {
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if (--v6)
        {
          LODWORD(v11) = 0;
          v15 = v36 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if (v17 != v17)
            {
              break;
            }

            LODWORD(v11) = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v6)
      {
        LODWORD(v11) = 0;
        v27 = v36;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v11;
          if (v29 != v29)
          {
            break;
          }

          LODWORD(v11) = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v35 = result;
        v6 = sub_22EE3C8C4();
        result = v35;
      }

      v9 = *v6;
      if (v9 == 43)
      {
        if (v7 >= 1)
        {
          v18 = v7 - 1;
          if (v7 != 1)
          {
            LODWORD(v11) = 0;
            if (!v6)
            {
              goto LABEL_62;
            }

            v19 = (v6 + 1);
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v11;
              if (v21 != v21)
              {
                break;
              }

              LODWORD(v11) = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v18)
              {
LABEL_53:
                LOBYTE(v6) = 0;
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_72;
      }

      if (v9 == 45)
      {
        if (v7 >= 1)
        {
          v10 = v7 - 1;
          if (v7 != 1)
          {
            LODWORD(v11) = 0;
            if (!v6)
            {
              goto LABEL_62;
            }

            v12 = (v6 + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              v14 = 10 * v11;
              if (v14 != v14)
              {
                break;
              }

              LODWORD(v11) = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                break;
              }

              ++v12;
              if (!--v10)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_61;
        }

        __break(1u);
        goto LABEL_71;
      }

      if (v7)
      {
        LODWORD(v11) = 0;
        if (!v6)
        {
          goto LABEL_62;
        }

        while (1)
        {
          v25 = *v6 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v11;
          if (v26 != v26)
          {
            break;
          }

          LODWORD(v11) = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v6;
          if (!--v7)
          {
            goto LABEL_53;
          }
        }
      }
    }

LABEL_61:
    LODWORD(v11) = 0;
    LOBYTE(v6) = 1;
LABEL_62:
    v37 = v6;
    if (v6)
    {
LABEL_63:
      type metadata accessor for KTraceRecordError();
      sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
      swift_allocError();
      *v30 = 0xD000000000000015;
      v30[1] = 0x800000022EE4B600;
      v30[2] = a1;
      v30[3] = a2;
      swift_storeEnumTagMultiPayload();

      return swift_willThrow();
    }

    goto LABEL_65;
  }

  v31 = result;

  v11 = sub_22EE2E454(a1, a2, 10);

  result = v31;
  if ((v11 & 0x100000000) != 0)
  {
    goto LABEL_63;
  }

LABEL_65:
  if ((v11 - 64) < 0xFFFFFFC4)
  {
    type metadata accessor for KTraceRecordError();
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    *v32 = v11;
    *(v32 + 4) = 0x3F00000004;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v33 = result;
  result = swift_beginAccess();
  v34 = v33 + *(v4 + 92);
  *v34 = v11;
  *(v34 + 4) = 0;
  return result;
}

uint64_t sub_22EE30FC4()
{
  v0 = type metadata accessor for RecordingOptions.Options(0);
  v1 = swift_projectBox();
  result = swift_beginAccess();
  *(v1 + *(v0 + 72)) = 0;
  return result;
}

uint64_t sub_22EE31028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22EE31088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22EE310F4()
{
  result = qword_27DA95A18;
  if (!qword_27DA95A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A18);
  }

  return result;
}

unint64_t sub_22EE3114C()
{
  result = qword_27DA95A20;
  if (!qword_27DA95A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A20);
  }

  return result;
}

unint64_t sub_22EE311A4()
{
  result = qword_27DA95A28;
  if (!qword_27DA95A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A28);
  }

  return result;
}

unint64_t sub_22EE311FC()
{
  result = qword_27DA95A30;
  if (!qword_27DA95A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A30);
  }

  return result;
}

void sub_22EE31278()
{
  sub_22EE31704(319, &qword_27DA94C10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecordingOptions.Options(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22EE31348()
{
  sub_22EE1D6CC();
  if (v0 <= 0x3F)
  {
    sub_22EE31704(319, &qword_27DA94C18, &type metadata for StartWait, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22EE31704(319, &qword_27DA94C20, &type metadata for EndWait, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22EE31704(319, &qword_27DA94C08, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22EE31704(319, &qword_27DA94BE8, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22EE31704(319, &qword_27DA94BE0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22EE31704(319, &qword_27DA94C10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_22EE31704(319, &qword_27DA94C28, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_22EE31704(319, &qword_27DA94BF8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_22EE31704(319, &qword_27DA94BF0, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_22EE159A8();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22EE316BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22EE31704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22EE31758()
{
  v0 = sub_22EE3BCB4();
  __swift_allocate_value_buffer(v0, qword_27DA9C778);
  __swift_project_value_buffer(v0, qword_27DA9C778);
  return sub_22EE3BBF4();
}

uint64_t sub_22EE317BC()
{
  v0 = sub_22EE3BCB4();
  __swift_allocate_value_buffer(v0, qword_27DA9C798);
  __swift_project_value_buffer(v0, qword_27DA9C798);
  return sub_22EE3BBF4();
}

uint64_t sub_22EE31820()
{
  v0 = sub_22EE3BCB4();
  __swift_allocate_value_buffer(v0, qword_27DA9C7B8);
  __swift_project_value_buffer(v0, qword_27DA9C7B8);
  return sub_22EE3BBF4();
}

uint64_t sub_22EE31884()
{
  v0 = sub_22EE3BCB4();
  __swift_allocate_value_buffer(v0, qword_27DA9C7D8);
  __swift_project_value_buffer(v0, qword_27DA9C7D8);
  return sub_22EE3BBF4();
}

uint64_t sub_22EE318E8()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27DA9C978);
  __swift_project_value_buffer(v0, qword_27DA9C978);
  if (qword_27DA9C770 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DA9C778);
  (*(v1 + 16))(v5, v6, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_22EE31A60()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27DA9C990);
  __swift_project_value_buffer(v0, qword_27DA9C990);
  if (qword_27DA9C790 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DA9C798);
  (*(v1 + 16))(v5, v6, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_22EE31BD8()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27DA9C9A8);
  __swift_project_value_buffer(v0, qword_27DA9C9A8);
  if (qword_27DA9C7B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DA9C7B8);
  (*(v1 + 16))(v5, v6, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_22EE31D50()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27DA9C9C0);
  __swift_project_value_buffer(v0, qword_27DA9C9C0);
  if (qword_27DA9C770 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DA9C778);
  (*(v1 + 16))(v5, v6, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_22EE31ED0()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27DA9C9D8);
  __swift_project_value_buffer(v0, qword_27DA9C9D8);
  if (qword_27DA9C790 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DA9C798);
  (*(v1 + 16))(v5, v6, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_22EE32050()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27DA9C9F0);
  __swift_project_value_buffer(v0, qword_27DA9C9F0);
  if (qword_27DA9C7B0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DA9C7B8);
  (*(v1 + 16))(v5, v6, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_22EE321D0()
{
  v0 = sub_22EE3BCB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27DA9CA08);
  __swift_project_value_buffer(v0, qword_27DA9CA08);
  if (qword_27DA9C7D0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DA9C7D8);
  (*(v1 + 16))(v5, v6, v0);
  sub_22EE3BC34();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_22EE323CC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_22EE3BCB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v12, v13, v7);
  sub_22EE3BC34();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_22EE3254C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_22EE3BCB4();

  return __swift_project_value_buffer(v3, a2);
}

void ktrace_postprocess_file_internal_cold_2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "failed to start ktrace session to postprocess file (%{errno}d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void ktariadne_read_times_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "unable to decode artrace traceinfo extended chunk (%{errno}d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void kttimesync_init_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to read mach_get_times (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void kttimesync_init_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get timebase info (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void kttimesync_init_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get timezone (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __kttimesync_init_block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get abstime from tailspin time chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __kttimesync_init_block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unable to decode tailspin time chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sysctlbyname_string_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sysctlbyname_string_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void sysctl_number_internal_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void sysctl_number_internal_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_dict_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "data does not contain a dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_dict_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void create_dict_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unknown error reading dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void dict_string_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_number_internal_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_number_internal_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_BOOL_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_BOOL_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_data_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_number_arr_internal_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_number_arr_internal_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_set_string_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_set_cfstring_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not allocate C string (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void dict_set_number_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_set_number_arr_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void dict_set_number_arr_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not create array (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_map_data_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to map 0 size data of chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_map_data_cold_10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to map non-file chunk data (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_copy_plist_cold_1(__CFError **a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = utf8_cferror(*a1);
  v7 = 136315394;
  v8 = v5;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_22ED7A000, a3, OS_LOG_TYPE_ERROR, "failed to decode plist chunk: %s (%{errno}d)", &v7, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_copy_plist_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to map chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_iterate_subchunks_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not validate the first chunk for iteration (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void kteventnames_append_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void append_eventnames_from_path_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136315394;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_22ED7A000, log, OS_LOG_TYPE_ERROR, "failed to append codes file: %s (%{errno}d)", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void ktrace_config_create_current_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get event disabling matcher (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_config_create_current_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to allocate event disabling match (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get kperf action count (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get timer count (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get action for kdebug trigger (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get PET timer ID (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get kperf lazy wait time threshold (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get kperf lazy wait action (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get kperf lazy CPU time threshold (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get kperf lazy CPU action (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_13()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get kperf sampling status (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_14()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get PET idle rate (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kperf_cold_15()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get lightweight PET status (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kpc_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get config for KPC (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kpc_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get action IDs for KPC (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void config_current_kpc_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get periods for KPC (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_config_serialize_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "length of serialized config is 0 (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_config_serialize_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_config_serialize_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unknown error reading config dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_local_log_content_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get os_log local store (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_log_content_from_store_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v4 = v0;
  _os_log_error_impl(&dword_22ED7A000, v1, OS_LOG_TYPE_ERROR, "exception occurred while setting logging predicate: %@ (%{errno}d)", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_cold_1(void *a1, int a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 localizedDescription];
  OUTLINED_FUNCTION_2_0();
  v7 = a2;
  _os_log_error_impl(&dword_22ED7A000, a3, OS_LOG_TYPE_ERROR, "failed to prepare log source: %@ (%{errno}d)", v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to prepare log source for unknown reason (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to append log data (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "log stream failed to initialize while appending (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "log stream failed to evaluate predicate while appending (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "log stream had insufficient permissions while appending (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "log stream unsupported invalidation while appending (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "log stream requested invalidation while appending (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "log stream in invalid position while appending (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "log stream backlogged while appending (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "log stream disconnected while appending (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_append_log_content_from_store_block_invoke_4_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to append log metadata (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void fd_size_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot get file size (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_open_internal_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(&dword_22ED7A000, v0, v1, "failed to read V2 header of %zu bytes (%{errno}d)", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_open_internal_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_open_internal_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_file_open_internal_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot append artrace chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_open_internal_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot allocate memory for synthesized artrace chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_open_internal_cold_7()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(&dword_22ED7A000, v0, v1, "cannot read %zu bytes at offset 0 to parse version 0 header (%{errno}d)", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_open_internal_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_array_next_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_DEBUG, "no more chunks to return from file, next position %zu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_array_next_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_array_next_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_array_next_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_array_next_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot write correct file size to chunk with EOF size (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_array_next_cold_7(int *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_chunk_array_next_cold_8(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void ktrace_file_iterate_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not validate the first chunk for iteration (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_data_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot seek to end of file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_data_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_file_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_file_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_file_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_file_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_start_internal_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "chunk with subchunk bit set cannot be created (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_start_internal_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot seek to the end to start appending chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_start_internal_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_DEBUG, "aligning appended chunk by %zu bytes", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_start_internal_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_start_internal_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot write chunk header to file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_finish_internal_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot append chunk to internal table (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_finish_internal_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to write chunk header, truncating the file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_align_next_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to seek to end (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_align_next_cold_4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void ktrace_file_align_next_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to extend file by one byte (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_align_next_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to extend file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_update_header_size_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot update header size (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_header_append_chunk_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void ktrace_file_header_append_chunk_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot append header chunk because normal chunks have been appended (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_header_append_chunk_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot append header chunk because chunk is already being appended (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_header_append_live_cpu_map_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unable to read CPU map (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_thread_map_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unable to read thread map (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "start time only supported when compressing (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "file is not appendable (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_cold_3(int a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  OUTLINED_FUNCTION_11();
  v7 = 1024;
  v8 = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "cannot seek to end of file after writing events %d (%{errno}d)", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "Unrecognized compression level (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_transformed_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "compression or filtering must be requested (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_transformed_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22ED7A000, v0, OS_LOG_TYPE_DEBUG, "starting to read for %u ms", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_transformed_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not read events from kernel (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_transformed_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to append transformed events to file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_transformed_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to allocate scratch buffer (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_ktrace_transformed_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to allocate read buffer (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_append_live_filtered_ktrace_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "Unrecognized compression level (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_compress_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to fcopyfile (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_compress_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to create temporary file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_compress_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get path to input file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void append_transformed_events_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to map chunk data (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_capture_live_stackshot_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to set flags on stackshot config %{errno}d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_capture_live_stackshot_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "stackshot failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_capture_live_stackshot_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to create stackshot config (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_earliest_timestamp_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to iterate file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_earliest_timestamp_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "inner iteration failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_earliest_timestamp_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "never set timestamp from events (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_latest_timestamp_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to iterate file to find last timestamp (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_write_header_system_default_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not append machine chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_write_header_system_default_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_write_header_system_default_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unknown error reading machine dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_file_write_header_internal_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot write file header when creating new file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_iterate_subfiles_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "invalid subfile: no header or bad header version (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_iterate_subfiles_block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "invalid subfile: id out of range (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_iterate_subfiles_block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "invalid subfile: bad size or version for subfile relationship chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_iterate_subfiles_block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "invalid subfile: bad size, version, or position for subfile header chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_iterate_subfiles_block_invoke_2_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "invalid subfile: bad size or version for subfile id chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void parse_v1_file_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void parse_v1_file_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "CPU map location cannot be determined (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void parse_v1_file_cold_6(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void parse_v1_file_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot append synthesized CPU map chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void parse_v1_file_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot create chunk for CPU map (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void parse_v1_file_cold_10(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

void parse_v1_file_cold_11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot read number of CPUs in CPU map (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void parse_v1_file_cold_12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot read magic number for CPU map (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void parse_v3_header_cold_1(uint64_t a1, _DWORD *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 180);
  *a2;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x277D85DE8];
}

void parse_v3_header_cold_2(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 280);
  v3 = *a2;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}

void parse_v3_header_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __parse_artrace_file_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unsupported type for k64 value (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __parse_artrace_file_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not get 32-bit unsigned integer from CFNumber (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __parse_artrace_file_block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not find K64 key in extended trace info block (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __parse_artrace_file_block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __parse_artrace_file_block_invoke_cold_5()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(&dword_22ED7A000, v0, v1, "size of artrace extended trace info block is %llu (%{errno}d)", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

void __parse_artrace_file_block_invoke_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "size of artrace trace info block is smaller than structure (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void synthesize_thread_map_chunk_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "V1 thread map is not valid (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void synthesize_thread_map_chunk_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void synthesize_thread_map_chunk_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot append synthesized thread map chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void synthesize_events_chunk_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot read first 64-bit event's unused field (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void synthesize_events_chunk_cold_3(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 280) - a2;
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void synthesize_events_chunk_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot append synthesized events chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void synthesize_events_chunk_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot create chunk for events (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void synthesize_events_chunk_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot read first event's timestamp (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_iterate_subfile_block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "invalid subfile: bad size, version, or position for subfile id chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __ktrace_file_iterate_subfile_block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "invalid subfile: unexpected subchunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void setup_events_chunk_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to append events header to chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void setup_events_chunk_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to start appending chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void finish_events_chunk_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to update compressed events count (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void finish_events_chunk_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to finish appending chunk (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void flatbuffers::FlatBufferBuilder::GetBufferPointer()
{
  __assert_rtn("Finished", "flatbuffers.h", 1321, "finished");
}

{
  __assert_rtn("data", "flatbuffers.h", 1020, "cur_");
}

void flatbuffers::FlatBufferBuilder::NotNested()
{
  __assert_rtn("NotNested", "flatbuffers.h", 1436, "!num_field_loc");
}

{
  __assert_rtn("NotNested", "flatbuffers.h", 1434, "!nested");
}

void flatbuffers::vector_downward::ensure_space()
{
  __assert_rtn("ensure_space", "flatbuffers.h", 996, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
}

{
  __assert_rtn("ensure_space", "flatbuffers.h", 992, "cur_ >= scratch_ && scratch_ >= buf_");
}

void flatbuffers::FlatBufferBuilder::EndTable()
{
  __assert_rtn("EndTable", "flatbuffers.h", 1452, "nested");
}

{
  __assert_rtn("EndTable", "flatbuffers.h", 1478, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
}

{
  __assert_rtn("scratch_data", "flatbuffers.h", 1025, "buf_");
}

{
  __assert_rtn("scratch_end", "flatbuffers.h", 1030, "scratch_");
}

{
  __assert_rtn("EndTable", "flatbuffers.h", 1467, "table_object_size < 0x10000");
}

void _session_start_file_cold_1(int *a1, int *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&dword_22ED7A000, log, OS_LOG_TYPE_DEBUG, "no timebase found in the file; using supplemental timebase (%d / %d)", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void _session_start_live_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "attempt to live trace but not available (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _session_start_live_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "existing session cannot take over live session (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _session_start_live_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unable to initialize tracing (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _session_start_live_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot set event match disable (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _session_start_live_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "unable to disable tracing for existing trace mode (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _session_start_live_cold_7(uint64_t *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_22ED7A000, log, OS_LOG_TYPE_ERROR, "failed to start tracing with providers: %@ (%{errno}d)", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

void _session_start_live_cold_12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "trace remove failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _session_start_live_cold_13()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void __drain_events_block_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_22ED7A000, v1, OS_LOG_TYPE_ERROR, "trace collection failed: %d (%{errno}d)", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

void __drain_events_block_block_invoke_cold_4(int a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 136315394;
  v7 = strerror(a1);
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_22ED7A000, a3, OS_LOG_TYPE_ERROR, "trace collection failed: %s (%{errno}d)", &v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void kdebug_wait_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KERN_KDBUFWAIT failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void kdebug_read_events_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_22ED7A000, v2, v3, "KERN_KDREADTR failed to read %zu bytes (%{errno}d)");
  v4 = *MEMORY[0x277D85DE8];
}

void kdebug_write_events_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KERN_KDWRITETR failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void kdebug_get_bufinfo_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KERN_KDGETBUF failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void kdebug_alloc_current_cpu_map_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_22ED7A000, v2, v3, "KERN_KDCPUMAP_EXT failed %zu (%{errno}d)");
  v4 = *MEMORY[0x277D85DE8];
}

void kdebug_alloc_current_cpu_map_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KERN_KDCPUMAP_EXT failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void kdebug_alloc_current_thread_map_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KERN_KDREADCURTHRMAP failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void kdebug_alloc_thread_map_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KERN_KDTHRMAP failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace::RingBufferImpl::handleTracepoint()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "WARNING: The maximum ring buffer size has been reached. The trace will not be able to cover the full requested ring buffer time. (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

{
  __assert_rtn("handleTracepoint", "time_ringbuffer.cpp", 492, "nextChunk");
}

void ktrace::RingBufferImpl::handlerSupportCheckTimeTruncation()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "ERROR: Timestamp size exceeded. Trace file will probably be corrupted and unreadable. You can fix this by rebooting. (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace::RingBufferImpl::handlerSupportCheckTimeBackwards(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 3);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace::RingBufferImpl::handleCompletion()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "ERROR: The trace buffer has lost samples. This is currently not supported by the UI. Run with --help-dropped-events for additional help. (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "ERROR: Failed to create kdebug events chunk in output file (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace::RingBufferImpl::RingBufferImpl()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "ERROR: Couldn't allocate ring buffer. (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _session_teardown_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "could not find last timestamp, not writing summary chunk (%{errno}d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void ktrace_start_cold_1(unsigned __int8 *a1)
{
  atomic_load(a1);
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void ktrace_file_append_ioreg_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "error writing ioreg plist (%{errno}d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_current_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot find ProductVersion in SupplementalVersionDictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_current_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot find ProductName in SupplementalVersionDictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_current_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot find BuildVersion in SupplementalVersionDictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_current_cold_4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_22ED7A000, log, OS_LOG_TYPE_DEBUG, "ignoring CPU due to missing logical-cpu-id property", buf, 2u);
}

void ktrace_machine_create_current_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to get IORegistry entry for cpus (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_current_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to fill machine clusters (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_current_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not set internal content in dict (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_current_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "device UUID is NULL, cannot create machine (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_current_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to fill machine from sysctl (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_fill_name_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 1024;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_3(&dword_22ED7A000, a2, a3, "cannot determine if current task is entitled to user-assigned device name: %@ (%{errno}d)", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_fill_volume_size_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot stat root node (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_fill_volume_size_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "could not set root volume size in dict (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_fill_volume_size_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "overflow when getting root volume size (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_create_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 136315394;
  *&v4[4] = a1;
  *&v4[12] = 1024;
  *&v4[14] = a2;
  v3 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_v1_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_v1_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_v1_3_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot find clusters by CPU in machine dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_v1_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_v1_4_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot find dies by CPU in machine dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_machine_v1_7_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_start_writing_fd_cold_2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "unable to create output ktrace_file when starting to trace (%{errno}d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void ktrace_start_writing_fd_cold_3()
{
  OUTLINED_FUNCTION_0_2();
  _os_crash();
  __break(1u);
}

void ktrace_start_writing_file_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "unable to open output trace file (%{errno}d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void _session_ensure_uuidmap_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_ERROR, "failed to get ktrace_machine_t for session. (%{errno}d)", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void convert_events_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_22ED7A000, a2, OS_LOG_TYPE_DEBUG, "did not convert data, provided data with size %zu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void ktrace_iter_init_chunk_cold_1(const __CFData *a1, uint64_t *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(a1);
  v6 = *a2;
  v8 = 134218240;
  v9 = Length;
  v10 = 2048;
  v11 = v6;
  _os_log_debug_impl(&dword_22ED7A000, a3, OS_LOG_TYPE_DEBUG, "decompressed %zu bytes, but expected %zu", &v8, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void kthmap_update_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "new thread has no associated task (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_thread_map_update_prepass_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "thread groups found on 32-bit target (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_dictionary_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "deserialized property list is not a dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_dictionary_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to create property list from data (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void create_dictionary_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "failed to create CFData for dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ariadne_thread_dict_apply_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot convert tid key to number (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ariadne_thread_dict_apply_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot find pid key in thread dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _ariadne_process_dict_apply_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "cannot find name key in thread dictionary (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_uuid_map_create_cold_2(char a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0)
  {
    v2 = *(a2 + 192);
    v3 = *(a2 + 196);
  }

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
  v9 = *MEMORY[0x277D85DE8];
}

void ktrace_address_space_from_stackshot()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "bad stackshot: no STACKSHOT_KCTYPE_TASK_SNAPSHOT or pid is -1", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "bad stackshot: unbalanced containers!", v2, v3, v4, v5, v6);
}

void ktrace_address_space_from_stackshot(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
}

void ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_3()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13(&dword_22ED7A000, v0, v1, "tailspin process info chunk invalid pid (%ld), ignoring", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void ktrace_uuid_map_learn_inodes_with_chunk_cold_3(__CFError **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  utf8_cferror(*a1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_14(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_uuid_map_read_process_info_dict()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict has no pid", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict has invalid uuid", v2, v3, v4, v5, v6);
}

{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13(&dword_22ED7A000, v0, v1, "process info dict segment has invalid length: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict segment has no length", v2, v3, v4, v5, v6);
}

{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13(&dword_22ED7A000, v0, v1, "process info dict segment has invalid address: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict segment has no address", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict segment has no name", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict image has no uuid", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "process info dict has no images", v2, v3, v4, v5, v6);
}

void dyldtp_decode_window_update(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14(&dword_22ED7A000, v2, v3, "ignoring DBG_DYLD tracepoint with a threadid of -1, at time %llu", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void ___Z31ktrace_uuid_map_update_internalP15ktrace_uuid_mapP14ktrace_sessionP12ktrace_pointbbU13block_pointerFv12PrepassOpRefE_block_invoke_2_cold_3(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v4 = *(a2 + 48);
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_22ED7A000, log, OS_LOG_TYPE_ERROR, "missing dyld unload event for uuid %s at address %llx rdar://problem/54088896", buf, 0x16u);
}

uint64_t make_image_summary(void *a1, const char *a2, uint64_t a3, uint64_t a4, char *a5)
{
  bzero(a1, 0x801uLL);
  v8 = strlen(a2);
  if (v8 >= 0x400)
  {
    v9 = 1024;
  }

  else
  {
    v9 = v8;
  }

  if (v8)
  {
    v10 = 2049;
    v11 = a1;
    do
    {
      v12 = *a2++;
      snprintf(v11, v10, "%0hhx", v12);
      v11 += 2;
      v10 -= 2;
      --v9;
    }

    while (v9);
  }

  CSSymbolOwnerGetSymbolicator();
  if (CSIsNull())
  {
    Pid = -1;
  }

  else
  {
    Pid = CSSymbolicatorGetPid();
  }

  result = snprintf(a5, 0xC00uLL, "non-UTF-8 path: %s, pid: %d", a1, Pid);
  qword_27DA95A50 = a5;
  __break(1u);
  return result;
}

void make_image_summary()
{
  v5 = *MEMORY[0x277D85DE8];
  CSSymbolOwnerGetPath();
  CSSymbolOwnerGetName();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void ktrace_uuid_map_postprocess_file_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 24);
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(&dword_22ED7A000, v2, OS_LOG_TYPE_DEBUG, "no CPU count found in file, using %llu", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __ktrace_uuid_map_postprocess_file_block_invoke_7_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void __ktrace_uuid_map_postprocess_file_block_invoke_7_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_make_symbolicator(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __ktrace_dsym_search_configuration_create_with_plist_block_invoke_cold_1(const __CFString *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  utf8(a1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_14(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void CSRegionGetSegmentName()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ___ZL13visit_processP16operating_systemj_block_invoke_cold_1(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

void ___ZL13visit_processP16operating_systemj_block_invoke_cold_2(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

void ___ZL13visit_processP16operating_systemj_block_invoke_cold_3(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

void ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_cold_1(uint64_t *a1, unsigned __int8 **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  describe2(*a1, *a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_207_cold_1(uint64_t *a1, unsigned __int8 **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  describe2(*a1, *a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void ktrace_find_executable()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_14(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14(&dword_22ED7A000, v0, v1, "failed to parse output from command: %s\n", v3);
  v2 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0(&dword_22ED7A000, v0, v1, "fdopen failed!\n", v2, v3, v4, v5, v6);
}

void ktrace_find_executable(int *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  strerror(*a1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_14(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_find_executable(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x277D85DE8];
}

void ktrace_find_executable(const __CFString *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  utf8(a1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void ktrace_find_executable(FILE *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = ferror(a1);
  strerror(v1);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13(v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x277D85DE8];
}

void ktrace_find_executable(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void ktrace_find_arch_with_default(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void ktrace_find_segment_count(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void ktrace_find_image_type(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void ktrace_iterate_segments(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void ktrace_find_base_address(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  describe2(a1, a2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void flatbuffers::IterateObject()
{
  __assert_rtn("InlineSize", "minireflect.h", 99, "false");
}

{
  __assert_rtn("InlineSize", "minireflect.h", 101, "false");
}

void flatbuffers::IterateValue()
{
  __assert_rtn("IterateValue", "minireflect.h", 227, "false");
}

{
  __assert_rtn("Get", "flatbuffers.h", 279, "i < size()");
}

{
  __assert_rtn("IterateValue", "minireflect.h", 200, "prev_val");
}

void trace_get_bufinfo_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KDGETBUF sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void trace_readtrace_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KDREADTR sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void trace_set_filter_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KDSET_TYPEFILTER sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void trace_parse_filter_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "parsing filter: unexpected end of string (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void trace_parse_filter_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_parse_filter_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_parse_filter_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_parse_filter_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_parse_filter_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_parse_filter_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_parse_filter_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_set_pid_filter_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KDPID{TR,EX} sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void trace_initialize_bufs_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KERN_KDSETUP sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void trace_initialize_bufs_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KERN_KDSETBUF sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void trace_set_flags_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void trace_set_event_match_disable_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KDSET_EDM sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void trace_readcurthreadmap_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22ED7A000, v0, v1, "KDREADCURTHRMAP sysctl failed (%{errno}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void vfs_trace_paths_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}