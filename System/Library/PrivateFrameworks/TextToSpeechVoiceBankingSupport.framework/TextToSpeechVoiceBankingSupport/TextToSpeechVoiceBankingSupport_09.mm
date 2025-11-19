uint64_t sub_2331F68B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_23328E37C();

  if (v9 <= 1)
  {
    v10 = sub_233225944();
    swift_beginAccess();
    (*(v5 + 16))(v8, v10, v4);

    v11 = sub_23328D6CC();
    v12 = sub_23328DE3C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_23311A8F4(a1, a2, &v28);
      _os_log_impl(&dword_233109000, v11, v12, "Cannot delete category with ID: %s. System categories cant be deleted", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23839CFD0](v14, -1, -1);
      MEMORY[0x23839CFD0](v13, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v16 = qword_27DDF8168;
  v29[0] = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
  sub_2331F3914(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v17 = sub_23328D87C();

  v18 = sub_23328D95C();
  [v16 setObject:v17 forKey:v18];

  v19 = qword_27DDF8168;
  v29[0] = sub_2331EDE08();

  v20 = sub_2331F668C(v29, a1, a2);

  v21 = v29[0];
  v22 = *(v29[0] + 16);
  if (v20 > v22)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v20 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v22, v20 - v22))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v20 > v21[3] >> 1)
  {
    if (v22 <= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    v29[0] = sub_2331F36EC(isUniquelyReferenced_nonNull_native, v24, 1, v21);
  }

  sub_2331F5634(v20, v22, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v25 = sub_23328DBDC();

  v26 = sub_23328D95C();
  [v19 setObject:v25 forKey:v26];

  return notify_post("com.apple.livespeech.localprefschanged");
}

uint64_t sub_2331F6D00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (sub_2331F5E64())
  {

    v17 = sub_233225944();
    swift_beginAccess();
    (*(v10 + 16))(v13, v17, v9);
    v18 = sub_23328D6CC();
    v19 = sub_23328DE3C();
    v20 = v9;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_23311A8F4(0xD00000000000004BLL, 0x80000002332AA980, &v47);
      _os_log_impl(&dword_233109000, v18, v19, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23839CFD0](v22, -1, -1);
      MEMORY[0x23839CFD0](v21, -1, -1);
    }

    (*(v10 + 8))(v13, v20);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    v24 = v23;
    v25 = 0x80000002332AA980;
    v26 = 0xD00000000000004BLL;
LABEL_5:
    TTSVBError.init(_:_:_:)(v26, v25, 0, 0, 0, v24);
    return swift_willThrow();
  }

  v28 = sub_2331F3914(v44, a5);
  if (!v28)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000003DLL, 0x80000002332AA940);
    MEMORY[0x23839B7E0](v44, a5);
    v35 = v45;
    v34 = v46;
    v36 = sub_233225944();
    swift_beginAccess();
    v37 = v9;
    (*(v10 + 16))(v16, v36, v9);

    v38 = sub_23328D6CC();
    v39 = sub_23328DE3C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v35;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_23311A8F4(v40, v34, &v47);
      _os_log_impl(&dword_233109000, v38, v39, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x23839CFD0](v42, -1, -1);
      MEMORY[0x23839CFD0](v41, -1, -1);

      (*(v10 + 8))(v16, v37);
    }

    else
    {

      (*(v10 + 8))(v16, v9);
      v40 = v35;
    }

    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    v24 = v43;
    v26 = v40;
    v25 = v34;
    goto LABEL_5;
  }

  v29 = v28;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v29;
  sub_2331F4240(a2, a3, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v31 = v45;

  v32 = *a1;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *a1;
  sub_2331F40C4(v31, v44, a5, v33);

  *a1 = v45;
  return notify_post("com.apple.livespeech.localprefschanged");
}

void sub_2331F71D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_23328E37C();

  if (v14 > 1)
  {
    if (qword_27DDF8160 != -1)
    {
      swift_once();
    }

    v23 = qword_27DDF8168;
    v27 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
    sub_2331F6D00(&v27, a3, a4, a1, a2);
    if (v4)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
      v24 = sub_23328D87C();

      v25 = sub_23328D95C();
      [v23 setObject:v24 forKey:v25];
    }
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332AA8E0);
    MEMORY[0x23839B7E0](a1, a2);
    MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332AA910);
    v15 = v27;
    v16 = v28;
    v17 = sub_233225944();
    swift_beginAccess();
    (*(v10 + 16))(v13, v17, v9);

    v18 = sub_23328D6CC();
    v19 = sub_23328DE3C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_23311A8F4(v15, v16, &v29);
      _os_log_impl(&dword_233109000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23839CFD0](v21, -1, -1);
      MEMORY[0x23839CFD0](v20, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(v15, v16, 0, 0, 0, v22);
    swift_willThrow();
  }
}

uint64_t sub_2331F75A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_23328E37C();

  if (v14 > 1)
  {
    if (qword_27DDF8160 != -1)
    {
      swift_once();
    }

    v24 = qword_27DDF8168;
    v28 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
    sub_2331F2C14(&v28, a1, a2, a3, a4);
    if (v4)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
      v25 = sub_23328D87C();

      v26 = sub_23328D95C();
      [v24 setObject:v25 forKey:v26];

      return notify_post("com.apple.livespeech.localprefschanged");
    }
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332AA830);
    MEMORY[0x23839B7E0](a1, a2);
    MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332AA860);
    v15 = v28;
    v16 = v29;
    v17 = sub_233225944();
    swift_beginAccess();
    (*(v10 + 16))(v13, v17, v9);

    v18 = sub_23328D6CC();
    v19 = sub_23328DE3C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_23311A8F4(v15, v16, &v30);
      _os_log_impl(&dword_233109000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23839CFD0](v21, -1, -1);
      MEMORY[0x23839CFD0](v20, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(v15, v16, 0, 0, 0, v22);
    return swift_willThrow();
  }
}

void _sSo18LiveSpeechCategoryC06TextToB19VoiceBankingSupportE27addSystemCategoriesIfNeededyyFZ_0()
{
  if (qword_27DDF8160 != -1)
  {
LABEL_74:
    swift_once();
  }

  v0 = qword_27DDF8168;
  v1 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

  v2 = sub_2331F00F0(v1);

  if (v2 >> 62)
  {
    v3 = sub_23328E19C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x23839BFC0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v9 = [v7 isSaved];

    ++v4;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  v10 = sub_2331F3820(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_2331F3820((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v6 = v10;
  v10[v12 + 32] = 0;
LABEL_16:
  if (!v3)
  {
LABEL_26:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2331F3820(0, *(v6 + 2) + 1, 1, v6);
    }

    v18 = qword_27DDF7AD0 + 1328;
    v20 = *(v6 + 2);
    v19 = *(v6 + 3);
    if (v20 >= v19 >> 1)
    {
      v6 = sub_2331F3820((v19 > 1), v20 + 1, 1, v6);
    }

    *(v6 + 2) = v20 + 1;
    v6[v20 + 32] = 1;
    goto LABEL_33;
  }

  v13 = 0;
  while (1)
  {
    if (v5)
    {
      v14 = MEMORY[0x23839BFC0](v13, v2);
    }

    else
    {
      if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v14 = *(v2 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_71;
    }

    v17 = [v14 isRecents];

    if (v17)
    {
      break;
    }

    ++v13;
    if (v16 == v3)
    {
      goto LABEL_26;
    }
  }

  if (*(v6 + 2))
  {
    v18 = &qword_27DDF7AD0[166];
LABEL_33:
    v21 = v18[45];
    v22 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
    v23 = *(v6 + 2);
    if (!v23)
    {
LABEL_62:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
      v58 = sub_23328D87C();

      v59 = sub_23328D95C();
      [v21 setObject:v58 forKey:v59];

      return;
    }

    v61 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F40, &qword_23329B800);
    v24 = 32;
    while (1)
    {
      v62 = v24;
      v63 = v23;
      v27 = v6[v24] == 0;
      if (v6[v24])
      {
        v28 = 0x73746E65636552;
      }

      else
      {
        v28 = 0x6465766153;
      }

      v29 = 0xE500000000000000;
      if (v6[v24])
      {
        v30 = 0xE700000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      v31 = 0x6B72616D6B6F6F62;
      if (v27)
      {
        v29 = 0xE800000000000000;
      }

      else
      {
        v31 = 0x6B636F6C63;
      }

      v64 = v31;
      v65 = v29;
      v32 = sub_23328E35C();

      v33 = sub_233144260(1701667182, 0xE400000000000000);
      if (v34)
      {
        goto LABEL_66;
      }

      *(v32 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
      v35 = (v32[6] + 16 * v33);
      *v35 = 1701667182;
      v35[1] = 0xE400000000000000;
      v36 = (v32[7] + 16 * v33);
      *v36 = v28;
      v36[1] = v30;
      v37 = v32[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_67;
      }

      v32[2] = v39;

      v40 = sub_233144260(0x6C6F626D7973, 0xE600000000000000);
      if (v41)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      *(v32 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v40;
      v42 = (v32[6] + 16 * v40);
      *v42 = 0x6C6F626D7973;
      v42[1] = 0xE600000000000000;
      v43 = (v32[7] + 16 * v40);
      *v43 = v64;
      v43[1] = v65;
      v44 = v32[2];
      v38 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v38)
      {
        goto LABEL_67;
      }

      v32[2] = v45;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F48, &qword_23329B808);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = sub_233144260(v28, v30);
      v49 = v22[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_68;
      }

      v52 = v47;
      if (v22[3] >= v51)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v47 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_2331F43C8();
          if ((v52 & 1) == 0)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        sub_2331F39AC(v51, isUniquelyReferenced_nonNull_native);
        v53 = sub_233144260(v28, v30);
        if ((v52 & 1) != (v54 & 1))
        {
          v60 = sub_23328E5AC();
          __break(1u);

          __break(1u);
          return;
        }

        v48 = v53;
        if ((v52 & 1) == 0)
        {
LABEL_57:
          v22[(v48 >> 6) + 8] |= 1 << v48;
          v55 = (v22[6] + 16 * v48);
          *v55 = v28;
          v55[1] = v30;
          *(v22[7] + 8 * v48) = v32;
          v56 = v22[2];
          v38 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v38)
          {
            goto LABEL_73;
          }

          v22[2] = v57;
          goto LABEL_36;
        }
      }

      v25 = v22[7];
      v26 = *(v25 + 8 * v48);
      *(v25 + 8 * v48) = v32;

LABEL_36:
      v24 = v62 + 1;
      --v23;
      v6 = v61;
      if (v63 == 1)
      {

        goto LABEL_62;
      }
    }
  }
}

uint64_t sub_2331F8078(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2331F817C()
{
  result = qword_27DDF8310[0];
  if (!qword_27DDF8310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF8310);
  }

  return result;
}

uint64_t sub_2331F81EC(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v5 = *(a1 + 16);
    v6 = [swift_getObjCClassFromMetadata() entity];
    v7 = [v6 attributesByName];
    sub_233144EEC(0, &qword_280D39B88, 0x277CBE358);
    v8 = sub_23328D89C();

    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = sub_2331F98A0(*(v8 + 16), 0);
      v11 = sub_2331F9BA8(&v13, v10 + 4, v9, v8);
      sub_233113BBC();
      if (v11 == v9)
      {
LABEL_9:
        v12 = sub_2331F8334(v10);

        return v12;
      }

      __break(1u);
    }

    v10 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  return sub_2331F8334(v3);
}

uint64_t sub_2331F8334(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2331F9924(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2331F9924((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_233145134(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id static DSO<>.entity.getter()
{
  v0 = [swift_getObjCClassFromMetadata() entity];

  return v0;
}

void static DSO<>.entityName.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = [v2 name];

  if (v3)
  {
    sub_23328D98C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static DSO<>.count(in:configure:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F80, &unk_23329B940);
  (*(a5 + 16))(a4, a5);
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_2331F9848();
  a2();
  v10 = sub_23328DF6C();

  return v10;
}

void static DSO<>.hydrated(in:matching:)(void *a1, void *a2)
{
  v2 = [a1 registeredObjects];
  sub_233144EEC(0, &qword_27DDE2F88, 0x277CBE438);
  sub_2331F9D00();
  v3 = sub_23328DD2C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_23328E18C();
    sub_23328DD4C();
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v18 = v5;
  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_23328E1BC() || (swift_dynamicCast(), v16 = v20, v14 = v6, v15 = v7, !v20))
    {
LABEL_21:
      sub_233113BBC();
      return;
    }

LABEL_18:
    if (([v16 isFault] & 1) == 0)
    {
      v17 = swift_dynamicCastUnknownClass();
      if (v17)
      {
        if ([a2 evaluateWithObject_])
        {
          goto LABEL_21;
        }
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_21;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t (*sub_2331F88A8(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return nullsub_1;
}

uint64_t static DSO<>.fetch(in:config:)(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23328D6EC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F80, &unk_23329B940);
  (*(a5 + 16))(a4, a5);
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_2331F9848();
  [v11 setReturnsObjectsAsFaults_];
  a2(v11);
  v12 = sub_23328DF7C();

  return v12;
}

uint64_t static DSO<>.fetch(properties:in:config:)(uint64_t *a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_23328D6EC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = *a1;
  (*(a6 + 16))(a5, a6);
  v13 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v14 = sub_23328D95C();

  v15 = [v13 initWithEntityName_];

  [v15 setResultType_];
  v16 = type metadata accessor for DSOFetchProperties();
  sub_2331F81EC(v16);
  v17 = sub_23328DBDC();

  [v15 setPropertiesToFetch_];

  a3(v15);
  sub_233144EEC(0, &qword_27DDE2F98, 0x277CBEAC0);
  v18 = sub_23328DF7C();
  v19 = sub_2331F8EC4(v18);

  if (v19)
  {
    return v19;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2331F8EC4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
  {
    v8 = MEMORY[0x277D84F90];
    sub_2331F9944(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_23328E19C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x23839BFC0](0, a1);
LABEL_10:
  v6 = v5;
  sub_23328D88C();

  return 0;
}

void static DSO<>.findOrFetch(in:matching:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  static DSO<>.hydrated(in:matching:)(a1, a2);
  if (!v8)
  {
    MEMORY[0x28223BE20](0);
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v9[7] = static DSO<>.fetch(in:config:)(a1, sub_2331F9DE8, v9, a3, a4);
    sub_23328DC5C();
    swift_getWitnessTable();
    sub_23328DDAC();
  }
}

void static DSO<>.findOrCreate(in:matching:config:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  static DSO<>.findOrFetch(in:matching:)(a1, a2, a5, a6);
  if (!v9)
  {
    NSManagedObjectContext.insertDSO<A>(_:)(0, a5, a6);
    a3();
  }
}

uint64_t NSManagedObjectContext.insertDSO<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = objc_opt_self();
  (*(a3 + 16))(a2, a3);
  v8 = sub_23328D95C();

  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:v4];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

void DSO<>.refresh(_:)(char a1)
{
  v3 = [v1 managedObjectContext];
  [v3 refreshObject:v1 mergeChanges:a1 & 1];
}

double DSO<>.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = [v4 changedValues];
  v9 = sub_23328D89C();

  if (*(v9 + 16) && (v10 = sub_233144260(a1, a2), (v11 & 1) != 0))
  {
    sub_23311B0C0(*(v9 + 56) + 32 * v10, a3);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_233297B30;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_23328DBDC();

  v10 = [v4 committedValuesForKeys_];

  v11 = sub_23328D89C();
  if (*(v11 + 16) && (v12 = sub_233144260(a1, a2), (v13 & 1) != 0))
  {
    sub_23311B0C0(*(v11 + 56) + 32 * v12, a3);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Bool __swiftcall NSManagedObjectContext.saveOrRollback()()
{
  v1 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 0;
  v7 = [v1 save_];
  if (v7)
  {
    v8 = v18[0];
  }

  else
  {
    v9 = v18[0];
    v10 = sub_23328CA7C();

    swift_willThrow();
    v11 = sub_233225440();
    (*(v3 + 16))(v6, v11, v2);
    v12 = sub_23328D6CC();
    v13 = sub_23328DE3C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_233109000, v12, v13, "CoreData save failed! Rolling back context", v14, 2u);
      MEMORY[0x23839CFD0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    [v1 rollback];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSManagedObjectContext.trySave()()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v5[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0;
  v7 = xmmword_23329B930;
  v8 = 3;
  swift_storeEnumTagMultiPayload();
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331F9E4C, v5, &v7, v4);
  sub_2331F9EC4(v4);
}

id sub_2331F9848()
{
  v1 = sub_23328D95C();

  v2 = [v0 initWithEntityName_];

  return v2;
}

void *sub_2331F98A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_2331F9924(char *a1, int64_t a2, char a3)
{
  result = sub_2331F9964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2331F9944(void *a1, int64_t a2, char a3)
{
  result = sub_2331F9A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2331F9964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26E0, &unk_23329B9C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2331F9A74(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F60, &unk_23329B820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2331F9BA8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2331F9D00()
{
  result = qword_27DDE2F90;
  if (!qword_27DDE2F90)
  {
    sub_233144EEC(255, &qword_27DDE2F88, 0x277CBE438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2F90);
  }

  return result;
}

uint64_t sub_2331F9D68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2978, &qword_233299A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2331F9DE8(void *a1)
{
  [a1 setPredicate_];
  [a1 setReturnsObjectsAsFaults_];

  return [a1 setFetchLimit_];
}

id sub_2331F9E4C()
{
  v1 = *(v0 + 16);
  v4 = 0;
  if ([v1 save_])
  {
    return v4;
  }

  v3 = v4;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_2331F9EC4(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError.Reason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2331F9F48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2331F9F90(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2331F9FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2331FA034(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2331FA04C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

TextToSpeechVoiceBankingSupport::TTSVBTrainingScriptItem::CodingKeys_optional __swiftcall TTSVBTrainingScriptItem.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

TextToSpeechVoiceBankingSupport::TTSVBTrainingScriptItem::CodingKeys_optional __swiftcall TTSVBTrainingScriptItem.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = TTSVBTrainingScriptItem.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_2331FA14C()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x636E617265747475;
    v7 = 0x7364726F77;
    if (v1 != 2)
    {
      v7 = 0x65735F656E6F6870;
    }

    if (*v0)
    {
      v6 = 0x697263736E617274;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x65636E65746E6573;
    v3 = 0xD00000000000001BLL;
    if (v1 != 7)
    {
      v3 = 0x656C61636F6CLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x745F747069726373;
    if (v1 != 4)
    {
      v4 = 0x7061726761726170;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2331FA2B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656D616E5F65;
  v3 = 0x636E617265747475;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE500000000000000;
    v14 = 0x7364726F77;
    if (a1 != 2)
    {
      v14 = 0x65735F656E6F6870;
      v13 = 0xEE0065636E657571;
    }

    v15 = 0x697263736E617274;
    v16 = 0xED00006E6F697470;
    if (!a1)
    {
      v15 = 0x636E617265747475;
      v16 = 0xEE00656D616E5F65;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x65636E65746E6573;
    v6 = 0xEC0000007864695FLL;
    v7 = 0xD00000000000001BLL;
    v8 = 0x80000002332AABF0;
    if (a1 != 7)
    {
      v7 = 0x656C61636F6CLL;
      v8 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x745F747069726373;
    v10 = 0xEC000000656C7469;
    if (a1 != 4)
    {
      v9 = 0x7061726761726170;
      v10 = 0xED00007864695F68;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v2 = 0x80000002332AABF0;
          if (v11 != 0xD00000000000001BLL)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v2 = 0xE600000000000000;
        v3 = 0x656C61636F6CLL;
        goto LABEL_44;
      }

      v19 = 0x65636E65746E6573;
      v20 = 2019846495;
LABEL_39:
      v2 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v11 != v19)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (a2 == 4)
    {
      v19 = 0x745F747069726373;
      v20 = 1701606505;
      goto LABEL_39;
    }

    v17 = 0x7061726761726170;
    v18 = 0x7864695F68;
LABEL_48:
    v2 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v11 != v17)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x7364726F77)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v2 = 0xEE0065636E657571;
      if (v11 != 0x65735F656E6F6870)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_45;
  }

  if (a2)
  {
    v17 = 0x697263736E617274;
    v18 = 0x6E6F697470;
    goto LABEL_48;
  }

LABEL_44:
  if (v11 != v3)
  {
LABEL_49:
    v21 = sub_23328E54C();
    goto LABEL_50;
  }

LABEL_45:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v21 = 1;
LABEL_50:

  return v21 & 1;
}

uint64_t sub_2331FA5B0()
{
  v1 = *v0;
  sub_23328E61C();
  sub_2331FA600();
  return sub_23328E66C();
}

uint64_t sub_2331FA600()
{
  sub_23328DA3C();
}

uint64_t sub_2331FA78C()
{
  v1 = *v0;
  sub_23328E61C();
  sub_2331FA600();
  return sub_23328E66C();
}

uint64_t sub_2331FA7DC@<X0>(uint64_t *a1@<X8>)
{
  result = TTSVBTrainingScriptItem.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2331FA84C(uint64_t a1)
{
  v2 = sub_2332015EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331FA888(uint64_t a1)
{
  v2 = sub_2332015EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall TTSVBTrainingScriptItem.init(id:transcript:phrase:phonemes:bookTitle:paragraphIndex:sentenceIndex:estimatedDuration:locale:)(TextToSpeechVoiceBankingSupport::TTSVBTrainingScriptItem *__return_ptr retstr, Swift::String id, Swift::String transcript, Swift::String phrase, Swift::String phonemes, Swift::String bookTitle, Swift::Int paragraphIndex, Swift::Int sentenceIndex, Swift::Double estimatedDuration, Swift::String locale)
{
  retstr->id = id;
  retstr->transcript = transcript;
  retstr->phrase = phrase;
  retstr->phonemes = phonemes;
  retstr->bookTitle = bookTitle;
  retstr->paragraphIndex = paragraphIndex;
  retstr->sentenceIndex = sentenceIndex;
  retstr->estimatedDuration = estimatedDuration;
  retstr->locale = locale;
}

uint64_t TTSVBTrainingScriptItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TTSVBTrainingScriptItem.transcript.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TTSVBTrainingScriptItem.phrase.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TTSVBTrainingScriptItem.phonemes.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TTSVBTrainingScriptItem.bookTitle.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t TTSVBTrainingScriptItem.locale.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

unint64_t TTSVBTrainingScriptItem.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  sub_23328E24C();

  MEMORY[0x23839B7E0](v1, v2);
  MEMORY[0x23839B7E0](0x6573617268702027, 0xEA0000000000273DLL);
  MEMORY[0x23839B7E0](v3, v4);
  MEMORY[0x23839B7E0](39, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t TTSVBTrainingScriptItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FA0, &qword_23329B9D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v25[9] = v1[3];
  v25[10] = v10;
  v11 = v1[4];
  v25[7] = v1[5];
  v25[8] = v11;
  v12 = v1[6];
  v25[5] = v1[7];
  v25[6] = v12;
  v13 = v1[8];
  v14 = v1[9];
  v15 = v1[11];
  v25[1] = v1[10];
  v25[2] = v14;
  v25[0] = v15;
  v16 = v1[12];
  v17 = v1[14];
  v25[3] = v1[13];
  v25[4] = v13;
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v18);
  sub_2332015EC();
  sub_23328E69C();
  v35 = 0;
  v23 = v26;
  sub_23328E48C();
  if (!v23)
  {
    v26 = v17;
    v34 = 1;
    sub_23328E48C();
    v33 = 2;
    sub_23328E48C();
    v32 = 3;
    sub_23328E48C();
    v31 = 4;
    sub_23328E48C();
    v30 = 5;
    sub_23328E4CC();
    v29 = 6;
    sub_23328E4CC();
    v28 = 7;
    sub_23328E4AC();
    v27 = 8;
    sub_23328E48C();
  }

  return (*(v4 + 8))(v7, v22);
}

uint64_t TTSVBTrainingScriptItem.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v9 = *(v0 + 8);
  v10 = *(v0 + 9);
  v14 = *(v0 + 10);
  v15 = *(v0 + 11);
  v11 = v0[12];
  v16 = *(v0 + 14);
  v17 = *(v0 + 13);
  sub_23328DA3C();
  sub_23328DA3C();
  sub_23328DA3C();
  sub_23328DA3C();
  sub_23328DA3C();
  MEMORY[0x23839C380](v14);
  MEMORY[0x23839C380](v15);
  v12 = 0.0;
  if (v11 != 0.0)
  {
    v12 = v11;
  }

  MEMORY[0x23839C3B0](*&v12);

  return sub_23328DA3C();
}

uint64_t TTSVBTrainingScriptItem.hashValue.getter()
{
  sub_23328E61C();
  TTSVBTrainingScriptItem.hash(into:)();
  return sub_23328E66C();
}

uint64_t TTSVBTrainingScriptItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FB0, &unk_23329B9D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2332015EC();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v55[0]) = 0;
  v11 = sub_23328E3CC();
  v46 = v12;
  LOBYTE(v55[0]) = 1;
  v13 = sub_23328E3CC();
  v45 = v14;
  v42 = v13;
  LOBYTE(v55[0]) = 2;
  v41 = sub_23328E3CC();
  v43 = v15;
  LOBYTE(v55[0]) = 3;
  v40 = sub_23328E3CC();
  v44 = v16;
  LOBYTE(v55[0]) = 4;
  v39 = sub_23328E3CC();
  v18 = v17;
  LOBYTE(v55[0]) = 5;
  v38 = sub_23328E40C();
  LOBYTE(v55[0]) = 6;
  v37 = sub_23328E40C();
  LOBYTE(v55[0]) = 7;
  sub_23328E3EC();
  v35 = v19;
  v56 = 8;
  v20 = sub_23328E3CC();
  v36 = v21;
  v22 = v20;
  (*(v6 + 8))(v9, v5);
  *&v47 = v11;
  v23 = v46;
  *(&v47 + 1) = v46;
  *&v48 = v42;
  *(&v48 + 1) = v45;
  *&v49 = v41;
  *(&v49 + 1) = v43;
  *&v50 = v40;
  *(&v50 + 1) = v44;
  *&v51 = v39;
  v34 = v18;
  *(&v51 + 1) = v18;
  v24 = v38;
  v25 = v37;
  *&v52 = v38;
  *(&v52 + 1) = v37;
  v26 = v35;
  *&v53 = v35;
  v27 = v36;
  *(&v53 + 1) = v22;
  v54 = v36;
  *(a2 + 112) = v36;
  v28 = v52;
  *(a2 + 64) = v51;
  *(a2 + 80) = v28;
  *(a2 + 96) = v53;
  v29 = v47;
  v30 = v48;
  v31 = v50;
  *(a2 + 32) = v49;
  *(a2 + 48) = v31;
  *a2 = v29;
  *(a2 + 16) = v30;
  sub_2331B4B78(&v47, v55);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v55[0] = v11;
  v55[1] = v23;
  v55[2] = v42;
  v55[3] = v45;
  v55[4] = v41;
  v55[5] = v43;
  v55[6] = v40;
  v55[7] = v44;
  v55[8] = v39;
  v55[9] = v34;
  v55[10] = v24;
  v55[11] = v25;
  v55[12] = v26;
  v55[13] = v22;
  v55[14] = v27;
  return sub_2331B4CC8(v55);
}

uint64_t sub_2331FB4CC()
{
  sub_23328E61C();
  TTSVBTrainingScriptItem.hash(into:)();
  return sub_23328E66C();
}

uint64_t sub_2331FB510()
{
  sub_23328E61C();
  TTSVBTrainingScriptItem.hash(into:)();
  return sub_23328E66C();
}

uint64_t static TTSVBTrainingScript.parseScript(fromMetadatFile:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = type metadata accessor for TTSVBError(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTSVBError.Reason(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v48 = xmmword_2332991F0;
  v49 = 3;
  v17 = sub_23328CC9C();
  (*(*(v17 - 8) + 16))(v16, a1, v17);
  swift_storeEnumTagMultiPayload();
  static TTSVBError.perform<A>(_:problem:reason:)(sub_233201640, v44, &v48, v16);
  result = sub_2331D1EE4(v16, type metadata accessor for TTSVBError.Reason);
  if (!v2)
  {
    v39 = v12;
    v19 = v9;
    v21 = v46;
    v20 = v47;
    v22 = sub_23328C85C();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_23328C84C();
    v26 = swift_allocObject();
    v40 = v7;
    v27 = v8;
    v28 = v26;
    *(v26 + 16) = MEMORY[0x277D84F90];
    v38 = v26 + 16;
    v29 = swift_allocBox();
    v31 = v30;
    (*(v19 + 56))(v30, 1, 1, v27);
    *&v48 = v21;
    *(&v48 + 1) = v20;
    v32 = swift_allocObject();
    v32[2] = v25;
    v32[3] = v28;
    v32[4] = v29;
    sub_23311A294();
    v42 = v25;

    v41 = v28;
    v33 = v40;

    v43 = v29;

    sub_23328E03C();

    swift_beginAccess();
    sub_233121D34(v31, v33, &qword_27DDE1B38, &unk_2332909A0);
    if ((*(v19 + 48))(v33, 1, v27) == 1)
    {

      sub_2331CD200(v33);
      swift_beginAccess();
      v34 = *(v41 + 16);

      *v50 = v34;
    }

    else
    {
      v35 = v33;
      v36 = v39;
      sub_2331D1E80(v35, v39);
      sub_23311A3F8();
      swift_allocError();
      sub_233121720(v36, v37);
      swift_willThrow();

      sub_2331D1EE4(v36, type metadata accessor for TTSVBError);
    }
  }

  return result;
}

uint64_t sub_2331FB9BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23328D9DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23328D9CC();
  result = sub_23328D91C();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_2331FBA54(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v40 = a4;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for TTSVBError.Reason(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  v14 = sub_23328D9DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D9CC();
  v19 = sub_23328D99C();
  v21 = v20;
  v22 = (*(v15 + 8))(v18, v14);
  if (v21 >> 60 == 15)
  {
    v50 = xmmword_2332991F0;
    LOBYTE(v51) = 3;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    v23 = swift_allocError();
    TTSVBError.init(_:_:_:)(&v50, v12, 0, v24);
    swift_willThrow();
    sub_2331524CC(&v50);
    v42 = v50;
    LOBYTE(v43) = v51;
    static TTSVBError.map(_:_:)(v23, &v42, v8);

    sub_2331220AC(v42, *(&v42 + 1), v43);
    v25 = type metadata accessor for TTSVBError(0);
    (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
    swift_beginAccess();
    result = sub_2331D2A00(v8, v13);
    *v41 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    *(&v39 - 4) = v40;
    *(&v39 - 3) = v19;
    *(&v39 - 2) = v21;
    static TTSVBError.perform<A>(_:errorTransform:)(sub_233202024, (&v39 - 6), sub_2331FBEB8);
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v42 = v50;
    v43 = v51;
    v44 = v52;
    v45 = v53;
    v27 = v39;
    swift_beginAccess();
    v28 = *(v27 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 16) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_2331B330C(0, *(v28 + 2) + 1, 1, v28);
      *(v27 + 16) = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_2331B330C((v30 > 1), v31 + 1, 1, v28);
    }

    *(v28 + 2) = v31 + 1;
    v32 = &v28[120 * v31];
    v33 = v42;
    v34 = v43;
    v35 = v45;
    *(v32 + 4) = v44;
    *(v32 + 5) = v35;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    *(v32 + 18) = v49;
    *(v32 + 7) = v37;
    *(v32 + 8) = v38;
    *(v32 + 6) = v36;
    *(v27 + 16) = v28;
    swift_endAccess();
    return sub_23312185C(v19, v21);
  }

  return result;
}

uint64_t sub_2331FBEB8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTSVBError.Reason(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = xmmword_2332991F0;
  v9 = 3;
  swift_storeEnumTagMultiPayload();
  v6 = sub_23328CA6C();
  return TTSVBError.init(_:_:_:)(&v8, v5, v6, a1);
}

unint64_t TTSVBTrainingScript.description.getter()
{
  v1 = *v0;
  sub_23328E24C();

  v4 = *(v1 + 16);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0x736D65746920, 0xE600000000000000);
  return 0xD000000000000010;
}

uint64_t sub_2331FC030(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 120)
    {
      v5 = *(a1 + i + 48);
      v4 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v32 = *(a1 + i + 80);
      v33 = *(a1 + i + 72);
      v31 = *(a1 + i + 88);
      v28 = *(a1 + i + 104);
      v29 = *(a1 + i + 96);
      v25 = *(a1 + i + 112);
      v23 = *(a1 + i + 120);
      v7 = *(a1 + i + 128);
      v20 = *(a1 + i + 144);
      v21 = *(a1 + i + 136);
      v9 = *(a2 + i + 48);
      v8 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a2 + i + 80);
      v30 = *(a2 + i + 88);
      v26 = *(a2 + i + 104);
      v27 = *(a2 + i + 96);
      v24 = *(a2 + i + 112);
      v22 = *(a2 + i + 120);
      v13 = *(a2 + i + 128);
      v18 = *(a2 + i + 144);
      v19 = *(a2 + i + 136);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_23328E54C() & 1) == 0)
      {
        break;
      }

      if ((v5 != v9 || v4 != v8) && (sub_23328E54C() & 1) == 0 || (v6 != v10 || v33 != v11) && (sub_23328E54C() & 1) == 0 || (v32 != v12 || v31 != v30) && (sub_23328E54C() & 1) == 0)
      {
        break;
      }

      if (v29 == v27 && v28 == v26)
      {
        result = 0;
      }

      else
      {
        v15 = sub_23328E54C();
        result = 0;
        if ((v15 & 1) == 0)
        {
          return result;
        }
      }

      if (v25 != v24 || v23 != v22 || v7 != v13)
      {
        return result;
      }

      if ((v21 != v19 || v20 != v18) && (sub_23328E54C() & 1) == 0)
      {
        return 0;
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

unint64_t sub_2331FC25C()
{
  v1 = *v0;
  sub_23328E24C();

  v4 = *(v1 + 16);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0x736D65746920, 0xE600000000000000);
  return 0xD000000000000010;
}

uint64_t TTSVBTrainingBook.TTSVBTrainingParagraph.paragraphIndex.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_2331FD838(0), (v3 & 1) != 0))
  {
    return *(*(v1 + 56) + 120 * v2 + 80);
  }

  else
  {
    return -1;
  }
}

char *TTSVBTrainingBook.TTSVBTrainingParagraph.items.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2331FD690(*(*v0 + 16), 0);
  v4 = sub_233200BD8(&v6, v3 + 32, v2, v1);
  swift_bridgeObjectRetain_n();
  sub_233113BBC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_2331FD8E8(&v6);

  return v6;
}

uint64_t sub_2331FC46C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = *(*(v3 + 56) + 8 * v12);
    v15 = v14 == 0;

    if (!v14)
    {
      return v15;
    }

    v16 = sub_2331FD838(v13);
    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(a2 + 56) + 8 * v16);

    v20 = sub_2331FC5C4(v19, v14);

    if ((v20 & 1) == 0)
    {
      return v15;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2331FC5C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 64);
  v49 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v50 = v9;
  v51 = result;
  if ((v7 & v5) == 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
    v12 = v10 | (v4 << 6);
LABEL_17:
    v17 = *(*(v3 + 48) + 8 * v12);
    v18 = *(v3 + 56) + 120 * v12;
    v19 = *(v18 + 32);
    v20 = *(v18 + 48);
    v21 = *(v18 + 16);
    v59[0] = *v18;
    v59[2] = v19;
    v59[3] = v20;
    v59[1] = v21;
    v23 = *(v18 + 80);
    v22 = *(v18 + 96);
    v24 = *(v18 + 64);
    v60 = *(v18 + 112);
    v59[5] = v23;
    v59[6] = v22;
    v59[4] = v24;
    v25 = *v18;
    v26 = *(v18 + 16);
    v27 = *(v18 + 48);
    v63 = *(v18 + 32);
    v64 = v27;
    v61 = v25;
    v62 = v26;
    v28 = *(v18 + 64);
    v29 = *(v18 + 80);
    v30 = *(v18 + 96);
    v68 = *(v18 + 112);
    v66 = v29;
    v67 = v30;
    v65 = v28;
    v69 = v17;
    v74 = v28;
    v75 = v29;
    v76 = v30;
    v77 = v68;
    v70 = v61;
    v71 = v62;
    v72 = v63;
    v73 = v27;
    nullsub_1(&v69);
    sub_2331B4B78(v59, v58);
    v31 = v69;
    v82 = v74;
    v83 = v75;
    v84 = v76;
    v85 = v77;
    v78 = v70;
    v79 = v71;
    v32 = v72;
    v33 = v73;
    v14 = v4;
LABEL_18:
    v80 = v32;
    v81 = v33;
    v74 = v82;
    v75 = v83;
    v76 = v84;
    v70 = v78;
    v71 = v79;
    v72 = v32;
    v77 = v85;
    v73 = v33;
    v69 = v31;
    result = sub_233201FF4(&v69);
    if (result == 1)
    {
      return result;
    }

    v54 = v14;
    v55 = v11;
    v65 = v82;
    v66 = v83;
    v67 = v84;
    v68 = v85;
    v61 = v78;
    v62 = v79;
    v63 = v80;
    v64 = v81;
    v34 = v31;
    v35 = v2;
    v36 = sub_2331FD838(v34);
    if ((v37 & 1) == 0)
    {
      goto LABEL_38;
    }

    v38 = *(v2 + 56) + 120 * v36;
    v39 = *(v38 + 16);
    v40 = *(v38 + 24);
    v41 = *(v38 + 32);
    v42 = *(v38 + 40);
    v43 = *(v38 + 48);
    v44 = *(v38 + 56);
    v45 = *(v38 + 64);
    v46 = *(v38 + 80);
    v56 = v46;
    v57 = *(v38 + 72);
    v53 = *(v38 + 88);
    v47 = *(v38 + 96);
    *&v52 = *(v38 + 112);
    *(&v52 + 1) = *(v38 + 104);
    if (*v38 != v61 && (sub_23328E54C() & 1) == 0)
    {
      goto LABEL_38;
    }

    if (__PAIR128__(v40, v39) != v62 && (sub_23328E54C() & 1) == 0 || __PAIR128__(v42, v41) != v63 && (sub_23328E54C() & 1) == 0 || __PAIR128__(v44, v43) != v64 && (sub_23328E54C() & 1) == 0 || __PAIR128__(v57, v45) != v65 && (sub_23328E54C() & 1) == 0 || __PAIR128__(v53, v56) != v66 || v47 != *&v67)
    {
LABEL_38:
      sub_2331B4CC8(&v61);
      return 0;
    }

    if (v52 == __PAIR128__(*(&v67 + 1), v68))
    {
      result = sub_2331B4CC8(&v61);
      v4 = v54;
      v8 = v55;
      v2 = v35;
      v9 = v50;
      v3 = v51;
      if (!v55)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v48 = sub_23328E54C();
      result = sub_2331B4CC8(&v61);
      v9 = v50;
      v3 = v51;
      v8 = v55;
      if ((v48 & 1) == 0)
      {
        return 0;
      }

      v2 = v35;
      v4 = v54;
      if (!v55)
      {
LABEL_9:
        if (v9 <= v4 + 1)
        {
          v13 = v4 + 1;
        }

        else
        {
          v13 = v9;
        }

        v14 = v13 - 1;
        while (1)
        {
          v15 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v15 >= v9)
          {
            sub_23320200C(&v69);
            v11 = 0;
            v85 = v77;
            v31 = v69;
            v82 = v74;
            v83 = v75;
            v84 = v76;
            v78 = v70;
            v79 = v71;
            v32 = v72;
            v33 = v73;
            goto LABEL_18;
          }

          v16 = *(v49 + 8 * v15);
          ++v4;
          if (v16)
          {
            v11 = (v16 - 1) & v16;
            v12 = __clz(__rbit64(v16)) | (v15 << 6);
            v4 = v15;
            goto LABEL_17;
          }
        }

        __break(1u);
        return result;
      }
    }
  }
}

uint64_t TTSVBTrainingBook.TTSVBTrainingParagraph.hashValue.getter()
{
  v1 = *v0;
  sub_23328E61C();
  sub_233200828(v3, v1);
  return sub_23328E66C();
}

uint64_t sub_2331FCA7C()
{
  v1 = *v0;
  sub_23328E61C();
  sub_233200828(v3, v1);
  return sub_23328E66C();
}

uint64_t sub_2331FCACC()
{
  v1 = *v0;
  sub_23328E61C();
  sub_233200828(v3, v1);
  return sub_23328E66C();
}

BOOL sub_2331FCB14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s31TextToSpeechVoiceBankingSupport17TTSVBTrainingBookV0G9ParagraphV1loiySbAE_AEtFZ_0(&v4, &v5);
}

BOOL sub_2331FCB50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s31TextToSpeechVoiceBankingSupport17TTSVBTrainingBookV0G9ParagraphV1loiySbAE_AEtFZ_0(&v5, &v4);
}

BOOL sub_2331FCB8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return _s31TextToSpeechVoiceBankingSupport17TTSVBTrainingBookV0G9ParagraphV1loiySbAE_AEtFZ_0(&v4, &v5);
}

uint64_t TTSVBTrainingBook.paragraphsByIndex.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TTSVBTrainingBook.paragraphs.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2331FD724(*(v1 + 16), 0);
  v4 = sub_233200D84(&v6, v3 + 4, v2, v1);
  swift_bridgeObjectRetain_n();
  sub_233113BBC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;
  sub_2331FDA98(&v6, sub_23320106C, &type metadata for TTSVBTrainingBook.TTSVBTrainingParagraph, sub_2331FE498, sub_2331FDC44);

  return v6;
}

uint64_t TTSVBTrainingBook.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static TTSVBTrainingBook.booksWithScriptItems(_:)(uint64_t a1)
{
  v2 = sub_2332019BC(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_44:
    v77 = v2[2];
    if (v77)
    {
      v78 = sub_2331FD7A8(v2[2], 0);
      v79 = sub_233200ED8(&v86, v78 + 4, v77, v2);

      sub_233113BBC();
      if (v79 == v77)
      {
LABEL_48:
        *&v86 = v78;

        sub_2331FDA98(&v86, sub_233201080, &type metadata for TTSVBTrainingBook, sub_2331FEB88, sub_2331FDD60);

        return v86;
      }

      __break(1u);
    }

    v78 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v4 = (a1 + 32);
  for (i = v3 - 1; ; --i)
  {
    v5 = v4[3];
    v88 = v4[2];
    v89 = v5;
    v93 = *(v4 + 14);
    v6 = v4[6];
    v91 = v4[5];
    v92 = v6;
    v90 = v4[4];
    v7 = v4[1];
    v86 = *v4;
    v87 = v7;
    v8 = v90;
    if (!v2[2])
    {
      sub_2331B4B78(&v86, v84);

LABEL_7:
      v13 = sub_2332018B4(MEMORY[0x277D84F90]);
      v12 = *(&v8 + 1);
      v82 = v8;
      goto LABEL_8;
    }

    sub_2331B4B78(&v86, v84);

    v9 = sub_233144260(v8, *(&v8 + 1));
    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v11 = (v2[7] + 24 * v9);
    v12 = v11[1];
    v82 = *v11;
    v13 = v11[2];

LABEL_8:
    v14 = v91;
    v83 = v12;
    if (v13[2] && (v15 = sub_2331FD838(v91), (v16 & 1) != 0))
    {
      v17 = *(v13[7] + 8 * v15);
    }

    else
    {
      v17 = sub_233201700(MEMORY[0x277D84F90]);
    }

    v18 = *(&v91 + 1);
    sub_2331B4B78(&v86, v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_2331FD838(v18);
    v22 = v17[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v17[3] < v25)
    {
      sub_2331FFE6C(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_2331FD838(v18);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_55;
      }

LABEL_17:
      if (v26)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    isUniquelyReferenced_nonNull_native = v20;
    sub_2332004F4();
    v20 = isUniquelyReferenced_nonNull_native;
    if (v26)
    {
LABEL_18:
      v28 = v17;
      v29 = v17[7] + 120 * v20;
      v30 = *(v29 + 48);
      v32 = *v29;
      v31 = *(v29 + 16);
      v84[2] = *(v29 + 32);
      v84[3] = v30;
      v84[0] = v32;
      v84[1] = v31;
      v34 = *(v29 + 80);
      v33 = *(v29 + 96);
      v35 = *(v29 + 64);
      v85 = *(v29 + 112);
      v84[5] = v34;
      v84[6] = v33;
      v84[4] = v35;
      v36 = v86;
      v37 = v87;
      v38 = v89;
      *(v29 + 32) = v88;
      *(v29 + 48) = v38;
      *v29 = v36;
      *(v29 + 16) = v37;
      v39 = v90;
      v40 = v91;
      v41 = v92;
      *(v29 + 112) = v93;
      *(v29 + 80) = v40;
      *(v29 + 96) = v41;
      *(v29 + 64) = v39;
      sub_2331B4CC8(v84);
      goto LABEL_22;
    }

LABEL_20:
    v28 = v17;
    v17[(v20 >> 6) + 8] |= 1 << v20;
    *(v17[6] + 8 * v20) = v18;
    v42 = v17[7] + 120 * v20;
    v43 = v89;
    v45 = v86;
    v44 = v87;
    *(v42 + 32) = v88;
    *(v42 + 48) = v43;
    *v42 = v45;
    *(v42 + 16) = v44;
    v46 = v90;
    v47 = v91;
    v48 = v92;
    *(v42 + 112) = v93;
    *(v42 + 80) = v47;
    *(v42 + 96) = v48;
    *(v42 + 64) = v46;
    v49 = v17[2];
    v24 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v24)
    {
      goto LABEL_52;
    }

    v17[2] = v50;
LABEL_22:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84[0] = v13;
    v51 = sub_2331FD838(v14);
    v53 = v13[2];
    v54 = (v52 & 1) == 0;
    v24 = __OFADD__(v53, v54);
    v55 = v53 + v54;
    if (v24)
    {
      goto LABEL_50;
    }

    v56 = v52;
    if (v13[3] < v55)
    {
      sub_2331FFBFC(v55, isUniquelyReferenced_nonNull_native);
      v51 = sub_2331FD838(v14);
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_55;
      }

LABEL_27:
      v58 = *&v84[0];
      if (v56)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    isUniquelyReferenced_nonNull_native = v51;
    sub_233200398();
    v51 = isUniquelyReferenced_nonNull_native;
    v58 = *&v84[0];
    if (v56)
    {
LABEL_28:
      v59 = v58[7];
      v60 = *(v59 + 8 * v51);
      *(v59 + 8 * v51) = v28;

      goto LABEL_32;
    }

LABEL_30:
    v58[(v51 >> 6) + 8] |= 1 << v51;
    *(v58[6] + 8 * v51) = v14;
    *(v58[7] + 8 * v51) = v28;
    v61 = v58[2];
    v24 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v24)
    {
      goto LABEL_53;
    }

    v58[2] = v62;
LABEL_32:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84[0] = v2;
    v63 = sub_233144260(v8, *(&v8 + 1));
    v65 = v2[2];
    v66 = (v64 & 1) == 0;
    v24 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (v24)
    {
      goto LABEL_51;
    }

    v68 = v64;
    if (v2[3] < v67)
    {
      sub_2331FF924(v67, isUniquelyReferenced_nonNull_native);
      v63 = sub_233144260(v8, *(&v8 + 1));
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_56;
      }

LABEL_37:
      v2 = *&v84[0];
      if (v68)
      {
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v73 = v63;
    sub_233200200();
    v63 = v73;
    v2 = *&v84[0];
    if (v68)
    {
LABEL_38:
      v70 = (v2[7] + 24 * v63);
      v72 = v70[1];
      v71 = v70[2];
      *v70 = v82;
      v70[1] = v83;
      v70[2] = v58;

      sub_2331B4CC8(&v86);
      goto LABEL_42;
    }

LABEL_40:
    v2[(v63 >> 6) + 8] |= 1 << v63;
    *(v2[6] + 16 * v63) = v8;
    v74 = (v2[7] + 24 * v63);
    *v74 = v82;
    v74[1] = v83;
    v74[2] = v58;

    sub_2331B4CC8(&v86);
    v75 = v2[2];
    v24 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v24)
    {
      goto LABEL_54;
    }

    v2[2] = v76;
LABEL_42:

    if (!i)
    {
      goto LABEL_44;
    }

    v4 = (v4 + 120);
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  sub_23328E5AC();
  __break(1u);
LABEL_56:
  sub_23328E5AC();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t static TTSVBTrainingBook.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  return sub_2331FC46C(v2, v3);
}

uint64_t TTSVBTrainingBook.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_23328DA3C();

  return sub_2332006D0(a1, v5);
}

uint64_t TTSVBTrainingBook.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23328E61C();
  sub_23328DA3C();
  sub_2332006D0(v5, v3);
  return sub_23328E66C();
}

uint64_t sub_2331FD514()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23328E61C();
  sub_23328DA3C();
  sub_2332006D0(v5, v3);
  return sub_23328E66C();
}

uint64_t sub_2331FD578(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_23328DA3C();

  return sub_2332006D0(a1, v5);
}

uint64_t sub_2331FD5BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23328E61C();
  sub_23328DA3C();
  sub_2332006D0(v5, v3);
  return sub_23328E66C();
}

uint64_t sub_2331FD61C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  return sub_2331FC46C(v2, v3);
}

void *sub_2331FD690(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A00, &unk_233299B10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 120);
  return result;
}

void *sub_2331FD724(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3008, &unk_23329BF70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_2331FD7A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3000, &qword_23329BF68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

unint64_t sub_2331FD838(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23328E60C();

  return sub_2331FD87C(a1, v4);
}

unint64_t sub_2331FD87C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2331FD8E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233201058(v2);
  }

  v3 = *(v2 + 2);
  v39[0] = (v2 + 32);
  v39[1] = v3;
  result = sub_23328E50C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 120;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 15) >= *v12)
          {
            break;
          }

          v13 = v12 - 88;
          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 5);
          v33 = *(v12 + 4);
          v34 = v16;
          v31 = v14;
          v32 = v15;
          v17 = *(v12 + 6);
          v18 = *(v12 + 7);
          v19 = *(v12 + 8);
          v38 = *(v12 + 18);
          v36 = v18;
          v37 = v19;
          v35 = v17;
          v20 = *(v12 - 8);
          *(v12 + 6) = *(v12 - 24);
          *(v12 + 7) = v20;
          *(v12 + 8) = *(v12 + 8);
          *(v12 + 18) = *(v12 + 3);
          v21 = *(v12 - 72);
          *(v12 + 2) = *(v12 - 88);
          *(v12 + 3) = v21;
          v22 = *(v12 - 40);
          *(v12 + 4) = *(v12 - 56);
          *(v12 + 5) = v22;
          v23 = v31;
          v24 = v32;
          v25 = v34;
          *(v13 + 2) = v33;
          *(v13 + 3) = v25;
          *v13 = v23;
          *(v13 + 1) = v24;
          v26 = v35;
          v27 = v36;
          v28 = v37;
          *(v12 + 3) = v38;
          *(v13 + 5) = v27;
          *(v12 + 8) = v28;
          *(v13 + 4) = v26;
          v12 -= 120;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 120;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_23328DC3C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v31 = v7 + 32;
    *(&v31 + 1) = v6;
    sub_2331FDE44(&v31, v30, v39, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2331FDA98(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_2331FDB34(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_2331FDB34(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_23328E50C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_23328DC3C();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

unint64_t sub_2331FDC44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      if (*(v8 + 16) && (result = sub_2331FD838(0), (v12 & 1) != 0))
      {
        v13 = *(*(v8 + 56) + 120 * result + 80);
        if (!*(v11 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = -1;
        if (!*(v11 + 16))
        {
          goto LABEL_14;
        }
      }

      result = sub_2331FD838(0);
      if (v14)
      {
        if (v13 >= *(*(v11 + 56) + 120 * result + 80))
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

LABEL_14:
      if (v13 >= -1)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v15 = *v10;
      v8 = v10[1];
      *v10 = v8;
      v10[1] = v15;
      --v10;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_2331FDD60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_23328E54C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2331FDE44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_233173C84(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_2331FF194((*a3 + 120 * *v86), (*a3 + 120 * *v88), (*a3 + 120 * v89), v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 120 * v6 + 88);
      v10 = 120 * v8;
      v11 = *a3 + 120 * v8;
      v12 = *(v11 + 88);
      v13 = v8 + 2;
      v14 = (v11 + 328);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 15;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 120 * v6 - 120;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v102 = *(v22 + v10 + 64);
            v104 = *(v22 + v10 + 80);
            v106 = *(v22 + v10 + 96);
            v108 = *(v22 + v10 + 112);
            v94 = *(v22 + v10);
            v96 = *(v22 + v10 + 16);
            v98 = *(v22 + v10 + 32);
            v100 = *(v22 + v10 + 48);
            result = memmove((v22 + v10), (v22 + v18), 0x78uLL);
            *(v21 + 64) = v102;
            *(v21 + 80) = v104;
            *(v21 + 96) = v106;
            *(v21 + 112) = v108;
            *v21 = v94;
            *(v21 + 16) = v96;
            *(v21 + 32) = v98;
            *(v21 + 48) = v100;
          }

          ++v20;
          v18 -= 120;
          v10 += 120;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_233173D7C((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_2331FF194((*a3 + 120 * *v79), (*a3 + 120 * *v81), (*a3 + 120 * v82), v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 120 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 88) >= *(v27 - 32))
    {
LABEL_29:
      ++v6;
      v24 += 120;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 120;
    v103 = *(v27 + 64);
    v105 = *(v27 + 80);
    v107 = *(v27 + 96);
    v109 = *(v27 + 112);
    v95 = *v27;
    v97 = *(v27 + 16);
    v99 = *(v27 + 32);
    v101 = *(v27 + 48);
    v29 = *(v27 - 120);
    v30 = *(v27 - 104);
    v31 = *(v27 - 72);
    *(v27 + 32) = *(v27 - 88);
    *(v27 + 48) = v31;
    *v27 = v29;
    *(v27 + 16) = v30;
    v32 = *(v27 - 56);
    v33 = *(v27 - 40);
    v34 = *(v27 - 24);
    *(v27 + 112) = *(v27 - 8);
    *(v27 + 80) = v33;
    *(v27 + 96) = v34;
    *(v27 + 64) = v32;
    *(v28 + 32) = v99;
    *(v28 + 48) = v101;
    *v28 = v95;
    *(v28 + 16) = v97;
    *(v28 + 112) = v109;
    *(v28 + 80) = v105;
    *(v28 + 96) = v107;
    v27 -= 120;
    *(v28 + 64) = v103;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_2331FE498(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = *(a3 + 1);
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_114:
    v16 = *v101;
    if (!*v101)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_146:
      result = sub_233173C84(v8);
      v8 = result;
    }

    v92 = *(v8 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v8[16 * v92];
        v94 = *&v8[16 * v92 + 24];
        sub_2331FF3D8((*a3 + 8 * v93), (*a3 + 8 * *&v8[16 * v92 + 16]), (*a3 + 8 * v94), v16);
        if (v5)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_233173C84(v8);
        }

        if (v92 - 2 >= *(v8 + 2))
        {
          goto LABEL_140;
        }

        v95 = &v8[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        result = sub_233173BF8(v92 - 1);
        v92 = *(v8 + 2);
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v11 = *a3;
      v12 = *(*a3 + 8 * v10);
      v13 = *(*a3 + 8 * v7);
      if (*(v12 + 16) && (result = sub_2331FD838(0), (v14 & 1) != 0))
      {
        v15 = *(*(v12 + 56) + 120 * result + 80);
        if (!*(v13 + 16))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v15 = -1;
        if (!*(v13 + 16))
        {
          goto LABEL_13;
        }
      }

      result = sub_2331FD838(0);
      if (v17)
      {
        v18 = *(*(v13 + 56) + 120 * result + 80);
LABEL_14:
        v10 = v7 + 2;
        v99 = v7;
        if (v7 + 2 < v6)
        {
          v96 = v5;
          v19 = v11 + 8 * v7 + 16;
          do
          {
            v20 = v10;
            v22 = *(v19 - 8);
            v21 = *v19;
            if (*(*v19 + 16) && (result = sub_2331FD838(0), (v23 & 1) != 0))
            {
              v24 = *(*(v21 + 56) + 120 * result + 80);
            }

            else
            {
              v24 = -1;
            }

            v10 = v20;
            if (*(v22 + 16) && (result = sub_2331FD838(0), v10 = v20, (v25 & 1) != 0))
            {
              if (v15 < v18 == v24 >= *(*(v22 + 56) + 120 * result + 80))
              {
                goto LABEL_27;
              }
            }

            else if (v15 < v18 == v24 > -2)
            {
              goto LABEL_27;
            }

            ++v10;
            v19 += 8;
          }

          while (v6 != v10);
          v10 = v6;
LABEL_27:
          v5 = v96;
        }

        v16 = a3;
        if (v15 >= v18)
        {
          v9 = v99;
        }

        else
        {
          v9 = v99;
          if (v10 < v99)
          {
            goto LABEL_143;
          }

          if (v99 < v10)
          {
            v26 = 8 * v10 - 8;
            v27 = 8 * v99;
            v28 = v10;
            v29 = v99;
            do
            {
              if (v29 != --v28)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_149;
                }

                v30 = *(v31 + v27);
                *(v31 + v27) = *(v31 + v26);
                *(v31 + v26) = v30;
              }

              ++v29;
              v26 -= 8;
              v27 += 8;
            }

            while (v29 < v28);
          }
        }

        goto LABEL_38;
      }

LABEL_13:
      v18 = -1;
      goto LABEL_14;
    }

    v16 = a3;
LABEL_38:
    v32 = *(v16 + 1);
    if (v10 < v32)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_142;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_144;
        }

        if (v9 + a4 < v32)
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v10 != v32)
        {
          break;
        }
      }
    }

LABEL_63:
    if (v10 < v9)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v7 = v10;
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_233173D7C((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_151;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_83:
          if (v54)
          {
            goto LABEL_130;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_133;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_137;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_97:
        if (v72)
        {
          goto LABEL_132;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_135;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_104:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
          goto LABEL_145;
        }

        if (!*v16)
        {
          goto LABEL_148;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_2331FF3D8((*v16 + 8 * v89), (*v16 + 8 * *&v8[16 * v50 + 32]), (*v16 + 8 * v90), v49);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_233173C84(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_127;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_233173BF8(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_128;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_129;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_131;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_134;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_138;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v6 = *(v16 + 1);
    if (v7 >= v6)
    {
      goto LABEL_114;
    }
  }

  v103 = v32;
  v97 = v5;
  v33 = *v16;
  v34 = *v16 + 8 * v10 - 8;
  v100 = v9;
  v35 = v9 - v10;
LABEL_48:
  v104 = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    if (*(v36 + 16) && (result = sub_2331FD838(0), (v40 & 1) != 0))
    {
      v41 = *(*(v36 + 56) + 120 * result + 80);
      if (!*(v39 + 16))
      {
        goto LABEL_57;
      }
    }

    else
    {
      v41 = -1;
      if (!*(v39 + 16))
      {
        goto LABEL_57;
      }
    }

    result = sub_2331FD838(0);
    if (v42)
    {
      if (v41 >= *(*(v39 + 56) + 120 * result + 80))
      {
        goto LABEL_47;
      }

      goto LABEL_58;
    }

LABEL_57:
    if (v41 >= -1)
    {
      goto LABEL_47;
    }

LABEL_58:
    if (!v33)
    {
      break;
    }

    v43 = *v38;
    v36 = v38[1];
    *v38 = v36;
    v38[1] = v43;
    --v38;
    if (__CFADD__(v37++, 1))
    {
LABEL_47:
      v10 = v104 + 1;
      v34 += 8;
      --v35;
      if (v104 + 1 != v103)
      {
        goto LABEL_48;
      }

      v16 = a3;
      v10 = v103;
      v5 = v97;
      v9 = v100;
      goto LABEL_63;
    }
  }

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
  return result;
}

uint64_t sub_2331FEB88(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_233173C84(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_2331FF6C4((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_23328E54C();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23328E54C();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_233173D7C((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_2331FF6C4((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_233173C84(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_233173BF8(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_23328E54C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2331FF194(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 120;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 120;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[120 * v9] <= a4)
    {
      memmove(a4, __dst, 120 * v9);
    }

    v12 = &v4[120 * v9];
    if (v8 < 120)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 11) < *(v4 + 11))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 120;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 120;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 120;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x78uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[120 * v11] <= a4)
  {
    memmove(a4, __src, 120 * v11);
  }

  v12 = &v4[120 * v11];
  if (v10 >= 120 && v6 > v7)
  {
LABEL_20:
    v5 -= 120;
    do
    {
      v15 = v5 + 120;
      if (*(v12 - 4) < *(v6 - 4))
      {
        v17 = v6 - 120;
        if (v15 != v6)
        {
          memmove(v5, v6 - 120, 0x78uLL);
        }

        if (v12 <= v4 || (v6 -= 120, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 120);
      if (v15 != v12)
      {
        memmove(v5, v12 - 120, 0x78uLL);
      }

      v5 -= 120;
      v12 -= 120;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 120;
  if (v6 != v4 || v6 >= &v4[120 * v18])
  {
    memmove(v6, v4, 120 * v18);
  }

  return 1;
}

uint64_t sub_2331FF3D8(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 < 8 || v6 <= v7)
    {
      goto LABEL_52;
    }

LABEL_32:
    v24 = (v6 - 8);
    v5 -= 8;
    v25 = v14;
    v35 = v6 - 8;
    while (1)
    {
      v27 = *(v25 - 1);
      v25 -= 8;
      v26 = v27;
      v28 = *v24;
      if (*(v27 + 16) && (v29 = sub_2331FD838(0), (v30 & 1) != 0))
      {
        v31 = *(*(v26 + 56) + 120 * v29 + 80);
        if (!*(v28 + 16))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v31 = -1;
        if (!*(v28 + 16))
        {
          goto LABEL_42;
        }
      }

      v32 = sub_2331FD838(0);
      if ((v33 & 1) == 0)
      {
LABEL_42:
        if (v31 < -1)
        {
LABEL_45:
          if (v5 + 8 != v6)
          {
            *v5 = *v35;
          }

          if (v14 <= v4 || (v6 -= 8, v35 <= v7))
          {
            v6 = v35;
            goto LABEL_52;
          }

          goto LABEL_32;
        }

        goto LABEL_43;
      }

      if (v31 < *(*(v28 + 56) + 120 * v32 + 80))
      {
        goto LABEL_45;
      }

LABEL_43:
      v24 = (v6 - 8);
      if (v5 + 8 != v14)
      {
        *v5 = *v25;
      }

      v5 -= 8;
      v14 = v25;
      if (v25 <= v4)
      {
        v14 = v25;
        goto LABEL_52;
      }
    }
  }

  if (a4 != __src || &__src[8 * v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v14 = &v4[8 * v10];
  if (v8 >= 8 && v6 < v5)
  {
    do
    {
      v15 = *v6;
      v16 = *v4;
      if (*(*v6 + 16) && (v17 = sub_2331FD838(0), (v18 & 1) != 0))
      {
        v19 = *(*(v15 + 56) + 120 * v17 + 80);
        if (!*(v16 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = -1;
        if (!*(v16 + 16))
        {
          goto LABEL_23;
        }
      }

      v20 = sub_2331FD838(0);
      if (v21)
      {
        if (v19 >= *(*(v16 + 56) + 120 * v20 + 80))
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      }

LABEL_23:
      if (v19 >= -1)
      {
LABEL_18:
        v22 = v4;
        v23 = v7 == v4;
        v4 += 8;
        if (v23)
        {
          goto LABEL_20;
        }

LABEL_19:
        *v7 = *v22;
        goto LABEL_20;
      }

LABEL_24:
      v22 = v6;
      v23 = v7 == v6;
      v6 += 8;
      if (!v23)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 += 8;
    }

    while (v4 < v14 && v6 < v5);
  }

  v6 = v7;
LABEL_52:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_2331FF6C4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_23328E54C() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_23328E54C() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_2331FF924(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FF8, &unk_23329BF58);
  v39 = a2;
  result = sub_23328E34C();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v40 = *v25;
      v41 = *v23;
      v27 = v25[2];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_23328E61C();
      sub_23328DA3C();
      result = sub_23328E66C();
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
      *v17 = v41;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v40;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
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

uint64_t sub_2331FFBFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FF0, &qword_23329BF50);
  result = sub_23328E34C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_23328E60C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2331FFE6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FE8, &qword_23329BF48);
  v43 = a2;
  result = sub_23328E34C();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 120 * v21;
      if (v43)
      {
        v24 = *(v23 + 8);
        v25 = *(v23 + 24);
        v48 = *(v23 + 32);
        v44 = *v23;
        v45 = *(v23 + 40);
        v46 = *(v23 + 16);
        v47 = *(v23 + 56);
        v49 = *(v23 + 72);
        v50 = *(v23 + 48);
        v51 = *(v23 + 80);
        v26 = *(v23 + 96);
        v54 = *(v23 + 104);
        v52 = *(v23 + 64);
        v53 = *(v23 + 112);
      }

      else
      {
        v28 = *(v23 + 32);
        v27 = *(v23 + 48);
        v29 = *(v23 + 16);
        v56 = *v23;
        v57 = v29;
        v58 = v28;
        v31 = *(v23 + 80);
        v30 = *(v23 + 96);
        v32 = *(v23 + 64);
        v63 = *(v23 + 112);
        v61 = v31;
        v62 = v30;
        v59 = v27;
        v60 = v32;
        v53 = v63;
        v54 = *(&v30 + 1);
        v26 = v30;
        v51 = v31;
        v49 = *(&v32 + 1);
        v52 = v32;
        v47 = *(&v27 + 1);
        v50 = v27;
        v48 = v58;
        v25 = *(&v57 + 1);
        v45 = *(&v58 + 1);
        v46 = v57;
        v24 = *(&v56 + 1);
        v44 = v56;
        sub_2331B4B78(&v56, v55);
      }

      v33 = *(v8 + 40);
      result = sub_23328E60C();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 120 * v16;
      *v17 = v44;
      *(v17 + 8) = v24;
      *(v17 + 16) = v46;
      *(v17 + 24) = v25;
      *(v17 + 32) = v48;
      *(v17 + 40) = v45;
      *(v17 + 48) = v50;
      *(v17 + 56) = v47;
      *(v17 + 64) = v52;
      *(v17 + 72) = v49;
      *(v17 + 80) = v51;
      *(v17 + 96) = v26;
      *(v17 + 104) = v54;
      *(v17 + 112) = v53;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_233200200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FF8, &unk_23329BF58);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

void *sub_233200398()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FF0, &qword_23329BF50);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_2332004F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FE8, &qword_23329BF48);
  v2 = *v0;
  v3 = sub_23328E33C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_2331B4B78(&v34, v33))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 8 * v16;
      v18 = *(*(v2 + 48) + 8 * v16);
      v16 *= 120;
      v19 = *(v2 + 56) + v16;
      v21 = *(v19 + 80);
      v20 = *(v19 + 96);
      v22 = *(v19 + 64);
      v41 = *(v19 + 112);
      v39 = v21;
      v40 = v20;
      v38 = v22;
      v24 = *v19;
      v23 = *(v19 + 16);
      v25 = *(v19 + 48);
      v36 = *(v19 + 32);
      v37 = v25;
      v34 = v24;
      v35 = v23;
      *(*(v4 + 48) + v17) = v18;
      v26 = *(v4 + 56) + v16;
      v27 = v34;
      v28 = v35;
      v29 = v37;
      *(v26 + 32) = v36;
      *(v26 + 48) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      v30 = v38;
      v31 = v39;
      v32 = v40;
      *(v26 + 112) = v41;
      *(v26 + 80) = v31;
      *(v26 + 96) = v32;
      *(v26 + 64) = v30;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

uint64_t sub_2332006D0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v14 = *(*(a2 + 48) + v13);
      v15 = *(*(a2 + 56) + v13);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v16 = *(a1 + 48);
      v18[2] = *(a1 + 32);
      v18[3] = v16;
      v19 = *(a1 + 64);
      v17 = *(a1 + 16);
      v18[0] = *a1;
      v18[1] = v17;
      MEMORY[0x23839C380](v14);

      sub_233200828(v18, v15);
      swift_bridgeObjectRelease_n();
      result = sub_23328E66C();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x23839C380](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_233200828(__int128 *a1, uint64_t a2)
{
  v36 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v35 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_12:
      v11 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v12 = v11 | (v8 << 6);
      v13 = *(*(a2 + 48) + 8 * v12);
      v14 = *(a2 + 56) + 120 * v12;
      v15 = *(v14 + 32);
      v16 = *(v14 + 48);
      v17 = *(v14 + 16);
      v41 = *v14;
      v43 = v15;
      v44 = v16;
      v42 = v17;
      v19 = *(v14 + 80);
      v18 = *(v14 + 96);
      v20 = *(v14 + 64);
      v48 = *(v14 + 112);
      v46 = v19;
      v47 = v18;
      v45 = v20;
      v21 = *v14;
      v22 = *(v14 + 16);
      v23 = *(v14 + 48);
      v51 = *(v14 + 32);
      v52 = v23;
      v49 = v21;
      v50 = v22;
      v24 = *(v14 + 64);
      v25 = *(v14 + 80);
      v26 = *(v14 + 96);
      v56 = *(v14 + 112);
      v54 = v25;
      v55 = v26;
      v53 = v24;
      v57 = v13;
      v62 = v24;
      v63 = v25;
      v64 = v26;
      v65 = v56;
      v58 = v49;
      v59 = v50;
      v60 = v51;
      v61 = v23;
      nullsub_1(&v57);
      sub_2331B4B78(&v41, v40);
      v27 = v57;
      v70 = v62;
      v71 = v63;
      v72 = v64;
      v73 = v65;
      v66 = v58;
      v67 = v59;
      v28 = v60;
      v29 = v61;
      v10 = v8;
LABEL_13:
      v68 = v28;
      v69 = v29;
      v62 = v70;
      v63 = v71;
      v64 = v72;
      v58 = v66;
      v59 = v67;
      v60 = v28;
      v65 = v73;
      v61 = v29;
      v57 = v27;
      if (sub_233201FF4(&v57) == 1)
      {
        break;
      }

      v54 = v71;
      v55 = v72;
      v49 = v66;
      v50 = v67;
      v51 = v68;
      v52 = v69;
      v53 = v70;
      v30 = a1[2];
      v31 = a1[3];
      v32 = *a1;
      v42 = a1[1];
      v43 = v30;
      v56 = v73;
      v44 = v31;
      v33 = *&v72;
      v39 = v71;
      *&v45 = *(a1 + 8);
      v41 = v32;
      MEMORY[0x23839C380](v27);
      sub_23328DA3C();
      sub_23328DA3C();
      sub_23328DA3C();
      sub_23328DA3C();
      sub_23328DA3C();
      MEMORY[0x23839C380](v39);
      MEMORY[0x23839C380](*(&v39 + 1));
      if (v33 == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v33;
      }

      MEMORY[0x23839C3B0](*&v34);
      sub_23328DA3C();
      sub_2331B4CC8(&v49);
      result = sub_23328E66C();
      v7 = v10;
      v6 ^= result;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x23839C380](v6);
  }

  else
  {
LABEL_5:
    if (v35 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v35;
    }

    v10 = v9 - 1;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v35)
      {
        sub_23320200C(&v57);
        v4 = 0;
        v73 = v65;
        v27 = v57;
        v70 = v62;
        v71 = v63;
        v72 = v64;
        v66 = v58;
        v67 = v59;
        v28 = v60;
        v29 = v61;
        goto LABEL_13;
      }

      v4 = *(v36 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_233200BD8(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 120 * (v17 | (v12 << 6)));
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[1];
      v29[0] = *v18;
      v29[2] = v19;
      v29[3] = v20;
      v29[1] = v21;
      v23 = v18[5];
      v22 = v18[6];
      v24 = v18[4];
      v30 = *(v18 + 14);
      v29[5] = v23;
      v29[6] = v22;
      v29[4] = v24;
      memmove(v11, v18, 0x78uLL);
      if (v14 == v10)
      {
        sub_2331B4B78(v29, v28);
        goto LABEL_23;
      }

      v11 += 120;
      sub_2331B4B78(v29, v28);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_233200D84(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_233200ED8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

char *sub_233201094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A00, &unk_233299B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2332011B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3008, &unk_23329BF70);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2332012C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3000, &qword_23329BF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s31TextToSpeechVoiceBankingSupport23TTSVBTrainingScriptItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v28 = *(a1 + 56);
  v29 = *(a1 + 48);
  v26 = *(a1 + 72);
  v27 = *(a1 + 64);
  v21 = *(a1 + 88);
  v6 = *(a1 + 96);
  v18 = *(a1 + 112);
  v19 = *(a1 + 104);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v25 = *(a2 + 64);
  v23 = *(a1 + 80);
  v24 = *(a2 + 72);
  v22 = *(a2 + 80);
  v20 = *(a2 + 88);
  v13 = *(a2 + 96);
  v16 = *(a2 + 112);
  v17 = *(a2 + 104);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23328E54C() & 1) == 0 || (v2 != v8 || v4 != v7) && (sub_23328E54C() & 1) == 0 || (v3 != v10 || v5 != v9) && (sub_23328E54C() & 1) == 0 || (v29 != v12 || v28 != v11) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  if (v27 == v25 && v26 == v24)
  {
    result = 0;
  }

  else
  {
    v15 = sub_23328E54C();
    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  if (v23 == v22 && v21 == v20 && v6 == v13)
  {
    if (v19 == v17 && v18 == v16)
    {
      return 1;
    }

    else
    {

      return sub_23328E54C();
    }
  }

  return result;
}

unint64_t sub_2332015EC()
{
  result = qword_27DDE2FA8;
  if (!qword_27DDE2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2FA8);
  }

  return result;
}

BOOL _s31TextToSpeechVoiceBankingSupport17TTSVBTrainingBookV0G9ParagraphV1loiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) && (v4 = sub_2331FD838(0), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 120 * v4 + 80);
    if (!*(v3 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = -1;
    if (!*(v3 + 16))
    {
LABEL_8:
      v9 = -1;
      return v6 < v9;
    }
  }

  v7 = sub_2331FD838(0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(*(v3 + 56) + 120 * v7 + 80);
  return v6 < v9;
}

unint64_t sub_233201700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FE8, &qword_23329BF48);
  v3 = sub_23328E35C();
  v4 = *(a1 + 112);
  *&v28[64] = *(a1 + 96);
  *&v28[80] = v4;
  v5 = *(a1 + 144);
  *&v28[96] = *(a1 + 128);
  *&v28[112] = v5;
  v6 = *(a1 + 48);
  *v28 = *(a1 + 32);
  *&v28[16] = v6;
  v7 = *(a1 + 80);
  *&v28[32] = *(a1 + 64);
  *&v28[48] = v7;
  v8 = *v28;
  result = sub_2331FD838(*v28);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_233121D34(v28, v27, &qword_27DDE3010, &unk_23329BF80);
    return v3;
  }

  v11 = (a1 + 160);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v8;
    v12 = v3[7] + 120 * result;
    v13 = *&v28[8];
    v14 = *&v28[24];
    v15 = *&v28[56];
    *(v12 + 32) = *&v28[40];
    *(v12 + 48) = v15;
    *v12 = v13;
    *(v12 + 16) = v14;
    v16 = *&v28[72];
    v17 = *&v28[88];
    v18 = *&v28[104];
    *(v12 + 112) = *&v28[120];
    *(v12 + 80) = v17;
    *(v12 + 96) = v18;
    *(v12 + 64) = v16;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v3[2] = v21;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_233121D34(v28, v27, &qword_27DDE3010, &unk_23329BF80);
    v22 = v11[5];
    *&v28[64] = v11[4];
    *&v28[80] = v22;
    v23 = v11[7];
    *&v28[96] = v11[6];
    *&v28[112] = v23;
    v24 = v11[1];
    *v28 = *v11;
    *&v28[16] = v24;
    v25 = v11[3];
    *&v28[32] = v11[2];
    *&v28[48] = v25;
    v8 = *v28;
    result = sub_2331FD838(*v28);
    v11 += 8;
    if (v26)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2332018B4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FF0, &qword_23329BF50);
  v3 = sub_23328E35C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2331FD838(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_2331FD838(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2332019BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2FF8, &unk_23329BF58);
    v3 = sub_23328E35C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_233144260(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_233201AE4()
{
  result = qword_27DDE2FB8;
  if (!qword_27DDE2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2FB8);
  }

  return result;
}

unint64_t sub_233201B3C()
{
  result = qword_27DDE2FC0;
  if (!qword_27DDE2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2FC0);
  }

  return result;
}

unint64_t sub_233201B94()
{
  result = qword_27DDE2FC8;
  if (!qword_27DDE2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2FC8);
  }

  return result;
}

unint64_t sub_233201BEC()
{
  result = qword_27DDE2FD0;
  if (!qword_27DDE2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2FD0);
  }

  return result;
}

unint64_t sub_233201C44()
{
  result = qword_27DDE2FD8;
  if (!qword_27DDE2FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2FD8);
  }

  return result;
}

unint64_t sub_233201C9C()
{
  result = qword_27DDE2FE0;
  if (!qword_27DDE2FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2FE0);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_233201D1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_233201D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSVBTrainingScriptItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSVBTrainingScriptItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_233201F44(uint64_t a1, int a2)
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

uint64_t sub_233201F8C(uint64_t result, int a2, int a3)
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

uint64_t sub_233201FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_23320200C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_233202024()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_23320208C();
  return sub_23328C83C();
}

unint64_t sub_23320208C()
{
  result = qword_27DDE3018;
  if (!qword_27DDE3018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3018);
  }

  return result;
}

void *static TTSVBVoiceSampleTrainingValidity.evaluate(userScore:spl:splThreshold:snr:snrThreshold:)@<X0>(void *result@<X0>, int *a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  LOWORD(v10) = result;
  if ((result & 0x8000) != 0 && (v10 = -result, result + -result))
  {
    __break(1u);
  }

  else
  {
    result = sub_2331693B8();
    v12 = *result < v10;
    if (*result >= v10)
    {
      v13 = 4;
    }

    else
    {
      v13 = 5;
    }

    if (a4 < a3)
    {
      v12 = v13;
    }

    if (a5 < a6)
    {
      v12 |= 2u;
    }

    *a2 = v12;
  }

  return result;
}

unint64_t TTSVBVoiceSampleTrainingValidity.stringValue.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = MEMORY[0x277D84F90];
    if ((v1 & 2) != 0)
    {
      v30 = MEMORY[0x277D84F90];
      sub_23320283C(0, 1, 1);
      v3 = v30;
      v7 = *(v30 + 16);
      v6 = *(v30 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_23320283C((v6 > 1), v7 + 1, 1);
        v3 = v30;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 4 * v7 + 32) = 2;
      if ((v1 & 4) == 0)
      {
LABEL_4:
        if ((v1 & 1) == 0)
        {
LABEL_5:
          v4 = *(v3 + 16);
          if (!v4)
          {
LABEL_37:

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
            sub_2331E3128();
            v5 = sub_23328D8FC();

            return v5;
          }

          v29 = v3;
LABEL_21:
          sub_23312676C(0, v4, 0);
          v12 = v29;
          v13 = 0x80000002332AACA0;
          v14 = 0x80000002332AAC80;
          v15 = 32;
          do
          {
            v16 = *(v12 + v15);
            v17 = 0xD000000000000014;
            v18 = 0xD000000000000015;
            if ((v16 & 4) != 0)
            {
              v19 = 0x80000002332AAC60;
            }

            else
            {
              v18 = 0;
              v19 = 0xE000000000000000;
            }

            if ((v16 & 2) != 0)
            {
              v20 = v14;
            }

            else
            {
              v17 = v18;
              v20 = v19;
            }

            if (v16)
            {
              v21 = 0xD000000000000022;
            }

            else
            {
              v21 = v17;
            }

            if (v16)
            {
              v22 = v13;
            }

            else
            {
              v22 = v20;
            }

            v31 = v2;
            v24 = *(v2 + 16);
            v23 = *(v2 + 24);
            if (v24 >= v23 >> 1)
            {
              v26 = v13;
              v28 = v14;
              sub_23312676C((v23 > 1), v24 + 1, 1);
              v14 = v28;
              v12 = v29;
              v13 = v26;
              v2 = v31;
            }

            *(v2 + 16) = v24 + 1;
            v25 = v2 + 16 * v24;
            *(v25 + 32) = v21;
            *(v25 + 40) = v22;
            v15 += 4;
            --v4;
          }

          while (v4);
          goto LABEL_37;
        }

LABEL_16:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23320283C(0, *(v3 + 16) + 1, 1);
        }

        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        v4 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          sub_23320283C((v10 > 1), v11 + 1, 1);
        }

        *(v3 + 16) = v4;
        v29 = v3;
        *(v3 + 4 * v11 + 32) = 1;
        goto LABEL_21;
      }
    }

    else if ((v1 & 4) == 0)
    {
      goto LABEL_4;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23320283C(0, *(v3 + 16) + 1, 1);
    }

    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_23320283C((v8 > 1), v9 + 1, 1);
    }

    *(v3 + 16) = v9 + 1;
    *(v3 + 4 * v9 + 32) = 4;
    if ((v1 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  return 0xD000000000000012;
}

unint64_t TTSVBVoiceSampleTrainingValidity.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  if ((*v0 & 4) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 = 0xD000000000000014;
  }

  if (v1)
  {
    return 0xD000000000000022;
  }

  else
  {
    return v2;
  }
}

uint64_t TTSVBVoiceSampleTrainingValidity.localizedValidTitle.getter()
{
  if ((*v0 & 1) == 0 && (*v0 & 4) == 0)
  {
    return 0;
  }

  v2 = sub_23328D95C();
  v3 = TTSVBSupportLocString(v2);

  v1 = sub_23328D98C();
  return v1;
}

uint64_t TTSVBVoiceSampleTrainingValidity.localizedInvalidTitle.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0 && (v1 & 2) == 0 && (v1 & 4) == 0)
  {
    return 0;
  }

  v3 = sub_23328D95C();
  v4 = TTSVBSupportLocString(v3);

  v2 = sub_23328D98C();
  return v2;
}

uint64_t TTSVBVoiceSampleTrainingValidity.localizedValidDescription.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0 && (v1 & 2) == 0 && (v1 & 4) == 0)
  {
    return 0;
  }

  v3 = sub_23328D95C();
  v4 = TTSVBSupportLocString(v3);

  v2 = sub_23328D98C();
  return v2;
}

uint64_t TTSVBVoiceSampleTrainingValidity.localizedInvalidDescription.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0 && (v1 & 2) == 0 && (v1 & 4) == 0)
  {
    return 0;
  }

  v3 = sub_23328D95C();
  v4 = TTSVBSupportLocString(v3);

  v2 = sub_23328D98C();
  return v2;
}

char *sub_23320283C(char *a1, int64_t a2, char a3)
{
  result = sub_233202978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_233202860()
{
  result = qword_27DDE3020;
  if (!qword_27DDE3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3020);
  }

  return result;
}

unint64_t sub_2332028BC()
{
  result = qword_27DDE3028;
  if (!qword_27DDE3028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3028);
  }

  return result;
}

unint64_t sub_233202914()
{
  result = qword_27DDE3030;
  if (!qword_27DDE3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3030);
  }

  return result;
}

char *sub_233202978(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3038, &unk_23329C188);
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

id *sub_233202AAC(id *result)
{
  if (*result)
  {
    v1 = *result;
    v2 = sub_23328D98C();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTSVBTCCInfo.localizedName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void static TTSVBTCCInfo.query(service:)(uint64_t a1, unint64_t a2)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D95C();
  v10 = TCCAccessCopyInformation();

  if (!v10)
  {
    v51 = sub_233225314();
    (*(v5 + 16))(v8, v51, v4);

    v52 = sub_23328D6CC();
    v53 = sub_23328DE3C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v68[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_23311A8F4(a1, a2, v68);
      _os_log_impl(&dword_233109000, v52, v53, "No TCC service for %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23839CFD0](v55, -1, -1);
      MEMORY[0x23839CFD0](v54, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_43;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_43;
  }

  v68[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  sub_23328DBEC();

  v11 = v68[0];
  if (!v68[0])
  {
LABEL_43:
    v56 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *(v68[0] + 16);
  if (!v12)
  {
    goto LABEL_42;
  }

  v13 = 0;
  v63 = 0;
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D6C0C8];
  v64 = v12 - 1;
  while (2)
  {
    v16 = v13;
    while (1)
    {
      if (v16 >= *(v11 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
      }

      if (!*v15)
      {
        goto LABEL_45;
      }

      v17 = *(v11 + 32 + 8 * v16);
      v18 = *v15;
      v19 = sub_23328D98C();
      v21 = v20;

      if (*(v17 + 16))
      {
        break;
      }

LABEL_8:
      ++v16;

      if (v12 == v16)
      {
        goto LABEL_42;
      }
    }

    v22 = sub_233144260(v19, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_23311B0C0(*(v17 + 56) + 32 * v22, v68);
    sub_23311B0C0(v68, &v66);
    type metadata accessor for CFBundle();
    swift_dynamicCast();
    v25 = v65;
    v26 = CFBundleGetIdentifier(v65);
    if (!v26)
    {
      __swift_destroy_boxed_opaque_existential_0(v68);

      goto LABEL_35;
    }

    v27 = v26;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v68);
      goto LABEL_35;
    }

    v66 = 0;
    v67 = 0;
    sub_23328D97C();

    v28 = v67;
    if (!v67)
    {

      goto LABEL_25;
    }

    v61 = v25;
    v29 = v66;
    v30 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v60 = v29;
    v31 = sub_23328D95C();
    v62 = v28;
    v32 = v31;
    v66 = 0;
    v33 = [v30 initWithBundleIdentifier:v31 allowPlaceholder:0 error:&v66];

    if (!v33)
    {
      v44 = v66;

      v45 = sub_23328CA7C();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v68);
      v63 = 0;
      goto LABEL_35;
    }

    v34 = v66;
    v35 = [v33 localizedName];
    v36 = sub_23328D98C();
    v58 = v37;
    v59 = v36;

    if (*MEMORY[0x277D6C0D0])
    {
      v38 = *MEMORY[0x277D6C0D0];
      v57 = sub_23328D98C();
      v40 = v39;

      if (*(v17 + 16))
      {
        v57 = sub_233144260(v57, v40);
        v42 = v41;

        if (v42)
        {
          sub_23311B0C0(*(v17 + 56) + 32 * v57, &v66);

          if (swift_dynamicCast())
          {
            v43 = v65;
            goto LABEL_30;
          }

LABEL_29:
          v43 = 0;
LABEL_30:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_23320360C(0, *(v14 + 2) + 1, 1, v14);
          }

          v47 = *(v14 + 2);
          v46 = *(v14 + 3);
          if (v47 >= v46 >> 1)
          {
            v14 = sub_23320360C((v46 > 1), v47 + 1, 1, v14);
          }

          __swift_destroy_boxed_opaque_existential_0(v68);
          *(v14 + 2) = v47 + 1;
          v48 = &v14[40 * v47];
          v49 = v58;
          *(v48 + 4) = v59;
          *(v48 + 5) = v49;
          v50 = v62;
          *(v48 + 6) = v60;
          *(v48 + 7) = v50;
          v48[64] = v43;
LABEL_35:
          v13 = v16 + 1;
          if (v64 == v16)
          {
LABEL_42:

            goto LABEL_43;
          }

          continue;
        }
      }

      else
      {
      }

      goto LABEL_29;
    }

    break;
  }

  __break(1u);
}

uint64_t TTSVBTCCInfo.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

Swift::Void __swiftcall TTSVBTCCInfo.updateStatus(_:)(Swift::Bool a1)
{
  if (*MEMORY[0x277D6C240])
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = *MEMORY[0x277D6C240];
    v6 = sub_23328D95C();
    TCCAccessSetForBundleId();

    v7 = *v1;
    v8 = v1[1];
    v9 = v1[3];

    *v1 = v7;
    v1[1] = v8;
    v1[2] = v3;
    v1[3] = v4;
    *(v1 + 32) = a1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static TTSVBTCCInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_23328E54C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_23328E54C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t TTSVBTCCInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_23328DA3C();
  sub_23328DA3C();
  return sub_23328E63C();
}

uint64_t TTSVBTCCInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_23328E61C();
  sub_23328DA3C();
  sub_23328DA3C();
  sub_23328E63C();
  return sub_23328E66C();
}

uint64_t sub_233203410()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_23328E61C();
  sub_23328DA3C();
  sub_23328DA3C();
  sub_23328E63C();
  return sub_23328E66C();
}

uint64_t sub_233203490()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_23328DA3C();
  sub_23328DA3C();
  return sub_23328E63C();
}

uint64_t sub_2332034E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_23328E61C();
  sub_23328DA3C();
  sub_23328DA3C();
  sub_23328E63C();
  return sub_23328E66C();
}

uint64_t sub_233203560@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_23320356C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_23328E54C()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_23328E54C()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

char *sub_23320360C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3050, &unk_23329C2A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void type metadata accessor for CFBundle()
{
  if (!qword_27DDE3048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DDE3048);
    }
  }
}

unint64_t sub_23320377C()
{
  result = qword_27DDE3040;
  if (!qword_27DDE3040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3040);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2332037E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_23320382C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTSVBVoiceSample()
{
  result = qword_27DDF9630;
  if (!qword_27DDF9630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTSVBVoiceSample.phonemes.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBVoiceSample() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBVoiceSample.phrase.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBVoiceSample() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBVoiceSample.transcript.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBVoiceSample() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBVoiceSample.bookTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBVoiceSample() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBVoiceSample.locale.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBVoiceSample() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBVoiceSample.userPhrase.getter()
{
  v1 = (v0 + *(type metadata accessor for TTSVBVoiceSample() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TTSVBVoiceSample.flags.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for TTSVBVoiceSample();
  *a1 = *(v1 + *(result + 88));
  return result;
}

uint64_t TTSVBVoiceSample.hasVoiceRecording.getter()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for TTSVBVoiceSample() + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  sub_233121D34(v0 + v6, &v14 - v9, &qword_27DDE19A0, &unk_233290360);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    sub_233121E04(v10, &qword_27DDE19A0, &unk_233290360);
    v11 = 0;
  }

  else
  {
    (*(v2 + 32))(v5, v10, v1);
    v15 = *sub_2331DEBE8();
    v12 = v15;
    v11 = _TTSVBFileManager.fileExists(_:)();

    (*(v2 + 8))(v5, v1);
  }

  return v11 & 1;
}

uint64_t TTSVBVoiceSample.trainingValidity.getter@<X0>(int *a1@<X8>)
{
  v3 = type metadata accessor for TTSVBVoiceSample();
  result = *(v1 + v3[17]);
  if (result < -32768)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= 0x8000)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = *(v1 + v3[18]);
  v6 = *(v1 + v3[20]);
  v7 = *(v1 + v3[19]);
  v8 = *(v1 + v3[21]);

  return static TTSVBVoiceSampleTrainingValidity.evaluate(userScore:spl:splThreshold:snr:snrThreshold:)(result, a1, v5, v6, v7, v8);
}

uint64_t TTSVBVoiceSample.init(sampleID:url:recordingDuration:phonemes:phrase:transcript:bookTitle:paragraphIndex:sentenceIndex:estimatedDuration:locale:recordingDate:userPhrase:userScore:spl:snr:splThreshold:snrThreshold:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, float a13@<S3>, float a14@<S4>, float a15@<S5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int *a27)
{
  v48 = *a27;
  *a9 = a1;
  a9[1] = a2;
  v36 = type metadata accessor for TTSVBVoiceSample();
  sub_233121D9C(a3, a9 + v36[5], &qword_27DDE19A0, &unk_233290360);
  *(a9 + v36[6]) = a10;
  v37 = (a9 + v36[7]);
  *v37 = a4;
  v37[1] = a5;
  v38 = (a9 + v36[8]);
  *v38 = a6;
  v38[1] = a7;
  v39 = (a9 + v36[9]);
  *v39 = a8;
  v39[1] = a16;
  v40 = (a9 + v36[10]);
  *v40 = a17;
  v40[1] = a18;
  *(a9 + v36[11]) = a19;
  *(a9 + v36[12]) = a20;
  *(a9 + v36[13]) = a11;
  v41 = (a9 + v36[14]);
  *v41 = a21;
  v41[1] = a22;
  result = sub_233121D9C(a23, a9 + v36[15], &qword_27DDE1A18, &unk_233297730);
  v43 = (a9 + v36[16]);
  *v43 = a24;
  v43[1] = a25;
  *(a9 + v36[17]) = a26;
  *(a9 + v36[18]) = a12;
  *(a9 + v36[19]) = a13;
  *(a9 + v36[20]) = a14;
  *(a9 + v36[21]) = a15;
  *(a9 + v36[22]) = v48;
  return result;
}

uint64_t TTSVBVoiceSample.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_233204100(char a1)
{
  result = 0x4449656C706D6173;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x73656D656E6F6870;
      break;
    case 4:
      result = 0x657361726870;
      break;
    case 5:
      result = 0x697263736E617274;
      break;
    case 6:
      result = 0x6C7469546B6F6F62;
      break;
    case 7:
      result = 0x7061726761726170;
      break;
    case 8:
      result = 0x65636E65746E6573;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x656C61636F6CLL;
      break;
    case 11:
      result = 0x6E6964726F636572;
      break;
    case 12:
      result = 0x6172685072657375;
      break;
    case 13:
      result = 0x726F635372657375;
      break;
    case 14:
      result = 7106675;
      break;
    case 15:
      result = 7499379;
      break;
    case 16:
      v3 = 1416392819;
      goto LABEL_15;
    case 17:
      v3 = 1416785523;
LABEL_15:
      result = v3 | 0x7365726800000000;
      break;
    case 18:
      result = 0x7367616C66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2332042FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_233206CE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_233204330(uint64_t a1)
{
  v2 = sub_23320662C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23320436C(uint64_t a1)
{
  v2 = sub_23320662C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBVoiceSample.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3058, &qword_23329C2B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23320662C();
  sub_23328E69C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v45) = 0;
  sub_23328E48C();
  if (!v2)
  {
    v13 = type metadata accessor for TTSVBVoiceSample();
    v14 = v13[5];
    LOBYTE(v45) = 1;
    sub_23328CC9C();
    sub_2332072E8(&qword_27DDE1F88, MEMORY[0x28220BE00]);
    sub_23328E47C();
    v15 = *(v3 + v13[6]);
    LOBYTE(v45) = 2;
    sub_23328E4AC();
    v16 = (v3 + v13[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v45) = 3;
    sub_23328E48C();
    v19 = (v3 + v13[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v45) = 4;
    sub_23328E48C();
    v22 = (v3 + v13[9]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v45) = 5;
    sub_23328E48C();
    v25 = (v3 + v13[10]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v45) = 6;
    sub_23328E48C();
    v28 = *(v3 + v13[11]);
    LOBYTE(v45) = 7;
    sub_23328E4CC();
    v29 = *(v3 + v13[12]);
    LOBYTE(v45) = 8;
    sub_23328E4CC();
    v30 = *(v3 + v13[13]);
    LOBYTE(v45) = 9;
    sub_23328E4AC();
    v31 = (v3 + v13[14]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v45) = 10;
    sub_23328E48C();
    v34 = v13[15];
    LOBYTE(v45) = 11;
    sub_23328CE1C();
    sub_2332072E8(&qword_27DDE2430, MEMORY[0x28220BF40]);
    sub_23328E47C();
    v35 = (v3 + v13[16]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v45) = 12;
    sub_23328E46C();
    v38 = *(v3 + v13[17]);
    LOBYTE(v45) = 13;
    sub_23328E4CC();
    v39 = *(v3 + v13[18]);
    LOBYTE(v45) = 14;
    sub_23328E4BC();
    v40 = *(v3 + v13[19]);
    LOBYTE(v45) = 15;
    sub_23328E4BC();
    v41 = *(v3 + v13[20]);
    LOBYTE(v45) = 16;
    sub_23328E4BC();
    v42 = *(v3 + v13[21]);
    LOBYTE(v45) = 17;
    sub_23328E4BC();
    v45 = *(v3 + v13[22]);
    v44[11] = 18;
    sub_233206680();
    sub_23328E4DC();
  }

  return (*(v6 + 8))(v9, v5);
}