uint64_t sub_23151CF48()
{
  result = sub_231586964();
  qword_280D6F780 = result;
  unk_280D6F788 = v1;
  return result;
}

uint64_t static LastNowPlayingSignal.signalName.getter()
{
  if (qword_280D6F778 != -1)
  {
    swift_once();
  }

  v0 = qword_280D6F780;

  return v0;
}

uint64_t LastNowPlayingSignal.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_23151D014()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[5];
    v6 = v0[2];
    v7 = v0[3];

    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v2, v1);

    return v6;
  }

  else
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  return v3;
}

uint64_t static LastNowPlayingSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  v2 = swift_allocObject();
  v3 = sub_23151E208(v2);
  *(v0 + 56) = NowPlayingSignal;
  *(v0 + 64) = &protocol witness table for LastNowPlayingSignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static LastNowPlayingSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151E078(v4, v1, v2, v3);
}

uint64_t static LastNowPlayingSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  v4 = swift_allocObject();
  sub_2314B5008(v8, &v7);
  v5 = sub_23151E2EC(v8, v4);
  *(v2 + 56) = NowPlayingSignal;
  *(v2 + 64) = &protocol witness table for LastNowPlayingSignal;
  *(v2 + 32) = v5;
  return v2;
}

uint64_t static LastNowPlayingSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846122A8);
  *a1 = result;
  return result;
}

uint64_t sub_23151D250(void (*a1)(uint64_t *))
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];

  v6 = sub_2314CE684();

  if (v6)
  {
    v8 = v6;
    v9 = 1;
    a1(&v8);
    return sub_2314A5EEC(v8, v9);
  }

  else
  {
    v8 = -1;
    v9 = 0;
    return (a1)(&v8);
  }
}

_BYTE *sub_23151D304@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v3 = -1;
  if (result[8] == 1)
  {
    v4 = *result;
    v5 = *result + 64;
    v6 = 1 << *(*result + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(*result + 64);
    if (v8)
    {
      v9 = 0;
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
      v12 = (v6 + 63) >> 6;
      goto LABEL_12;
    }

    v14 = 0;
    v12 = (v6 + 63) >> 6;
    do
    {
      v9 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        v13 = 0;
        v3 = -1;
        goto LABEL_61;
      }

      v15 = *(v4 + 72 + 8 * v8);
      v14 += 64;
      ++v8;
    }

    while (!v15);
    v11 = (v15 - 1) & v15;
    v10 = __clz(__rbit64(v15)) + v14;
LABEL_12:
    v16 = (*(v4 + 48) + 16 * v10);
    v17 = v16[1];
    v66 = *v16;
    v18 = *(*(v4 + 56) + 8 * v10);

    sub_2314A5168(v4, 1u);
    while (v11)
    {
LABEL_18:
      v20 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v21 = v20 | (v9 << 6);
      v22 = *(*(v4 + 56) + 8 * v21);
      if (v18 < v22)
      {
        v23 = *(*(v4 + 48) + 16 * v21 + 8);
        v66 = *(*(v4 + 48) + 16 * v21);

        v17 = v23;
        v18 = v22;
      }
    }

    while (1)
    {
      v19 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v19 >= v12)
      {
        break;
      }

      v11 = *(v5 + 8 * v19);
      ++v9;
      if (v11)
      {
        v9 = v19;
        goto LABEL_18;
      }
    }

    if (v18 > 0)
    {
      v62 = a2;
      v3 = sub_2315860F4();
      v24 = 1 << *(v4 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v4 + 64);
      sub_2314A5168(v4, 1u);
      v27 = 0;
      v28 = (v24 + 63) >> 6;
      v64 = v4;
      v65 = v17;
      for (i = v28; v26; v4 = v64)
      {
        v29 = v27;
LABEL_28:
        v30 = (*(v4 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v26)))));
        v31 = *v30;
        v32 = v30[1];
        v33 = *v30 == v66 && v32 == v17;
        v67 = v33 || (sub_231586C44() & 1) != 0;

        swift_isUniquelyReferenced_nonNull_native();
        v34 = sub_23149C888(v31, v32);
        if (__OFADD__(*(v3 + 16), (v35 & 1) == 0))
        {
          goto LABEL_65;
        }

        v36 = v34;
        v37 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v38 = sub_23149C888(v31, v32);
          v17 = v65;
          if ((v37 & 1) != (v39 & 1))
          {
            goto LABEL_68;
          }

          v36 = v38;
        }

        else
        {
          v17 = v65;
        }

        v26 &= v26 - 1;
        if (v37)
        {
          *(*(v3 + 56) + 8 * v36) = v67;
        }

        else
        {
          *(v3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
          v40 = (*(v3 + 48) + 16 * v36);
          *v40 = v31;
          v40[1] = v32;
          *(*(v3 + 56) + 8 * v36) = v67;
          v41 = *(v3 + 16);
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_67;
          }

          *(v3 + 16) = v43;
        }

        v27 = v29;
        v28 = i;
      }

      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v28)
        {

          v13 = 1;
          a2 = v62;
          goto LABEL_61;
        }

        v26 = *(v5 + 8 * v29);
        ++v27;
        if (v26)
        {
          goto LABEL_28;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
    result = sub_231586AC4();
    v3 = result;
    v44 = 0;
    v45 = 1 << *(v4 + 32);
    v46 = *(v4 + 64);
    v47 = -1;
    if (v45 < 64)
    {
      v47 = ~(-1 << v45);
    }

    v48 = v47 & v46;
    v49 = (v45 + 63) >> 6;
    v50 = result + 64;
    if ((v47 & v46) == 0)
    {
LABEL_51:
      v52 = v44;
      while (1)
      {
        v44 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_64;
        }

        if (v44 >= v49)
        {
          v13 = 1;
          goto LABEL_61;
        }

        v53 = *(v5 + 8 * v44);
        ++v52;
        if (v53)
        {
          v51 = __clz(__rbit64(v53));
          v48 = (v53 - 1) & v53;
          goto LABEL_56;
        }
      }
    }

    while (1)
    {
      v51 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
LABEL_56:
      v54 = v51 | (v44 << 6);
      v55 = (*(v4 + 48) + 16 * v54);
      v57 = *v55;
      v56 = v55[1];
      v58 = *(*(v4 + 56) + 8 * v54);
      *&v50[(v54 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v54;
      v59 = (*(v3 + 48) + 16 * v54);
      *v59 = v57;
      v59[1] = v56;
      *(*(v3 + 56) + 8 * v54) = v58 & ~(v58 >> 63);
      v60 = *(v3 + 16);
      v42 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v42)
      {
        break;
      }

      *(v3 + 16) = v61;

      if (!v48)
      {
        goto LABEL_51;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    result = sub_231586C84();
    __break(1u);
  }

  else
  {
    v13 = 0;
LABEL_61:
    *a2 = v3;
    *(a2 + 8) = v13;
  }

  return result;
}

void sub_23151D80C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 72);
  v8 = *(v2 + 56);
  v9 = v5;
  v10 = *(v2 + 88);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23151D860(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v42 = v11;
  LOBYTE(v43) = a1;
  swift_unknownObjectRetain();
  sub_2315074D0(v11, a1);
  sub_2314D6BA0(&v42, v41);
  v12 = v41[0];
  if (!v41[0])
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_231496000, v21, v22, "LastNowPlayingSignal: Invalid input", v23, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_22;
  }

  v14 = v41[1];
  v13 = v41[2];
  v15 = v41[4];
  if ([v41[0] playbackState] != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "LastNowPlayingSignal: ignoring stop event";
    goto LABEL_20;
  }

  v16 = [v12 absoluteTimestamp];
  if (v16)
  {
    v17 = v16;
    sub_231585834();

    v18 = sub_231585884();
    v19 = 0;
  }

  else
  {
    v18 = sub_231585884();
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v19, 1, v18);
  sub_2314A0710(v8, v10);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
  {
    sub_2314CC1C4(v10, &qword_27DD5BF60, &qword_231587FD0);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v29 = sub_231585FF4();
    __swift_project_value_buffer(v29, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "LastNowPlayingSignal: no timestamp";
LABEL_20:
    _os_log_impl(&dword_231496000, v25, v26, v28, v27, 2u);
    OUTLINED_FUNCTION_10();
LABEL_21:

    v42 = v14;
    v43 = v13;
    sub_2315074E4(&v42);
    v44 = v15;
    sub_2314CC1C4(&v44, &qword_27DD5B2E8, &unk_23158B460);
LABEL_22:
    v30 = 0;
    v31 = -1;
    goto LABEL_23;
  }

  sub_23149C774();
  (*(*(v18 - 8) + 8))(v10, v18);

  swift_isUniquelyReferenced_nonNull_native();
  v42 = v15;
  sub_23157562C();
  v30 = v42;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v32 = sub_231585FF4();
  __swift_project_value_buffer(v32, qword_280D72248);

  v33 = v12;

  v34 = sub_231585FE4();
  v35 = sub_2315865D4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v36 = 136315394;

    sub_2315860E4();
    v40 = v33;

    v37 = sub_2314A22E8();

    *(v36 + 4) = v37;
    *(v36 + 12) = 2080;

    sub_2315860E4();

    v38 = sub_2314A22E8();

    *(v36 + 14) = v38;
    _os_log_impl(&dword_231496000, v34, v35, "LastNowPlayingSignal: updated %s to %s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v31 = 1;
LABEL_23:
  *a2 = v30;
  *(a2 + 8) = v31;
}

void *LastNowPlayingSignal.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t LastNowPlayingSignal.__deallocating_deinit()
{
  LastNowPlayingSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 89, 7);
}

uint64_t sub_23151DF88(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_23151E078(v4, v1, v2, v3);
}

uint64_t sub_23151E078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v6 + 16);
  v13(&v19 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_231588340;
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  v16 = swift_allocObject();
  (v13)(v10, v12, a3);
  v17 = sub_23151E4D0(v10, v16, a3, a4);
  *(v14 + 56) = NowPlayingSignal;
  *(v14 + 64) = &protocol witness table for LastNowPlayingSignal;
  *(v14 + 32) = v17;
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_23151E208(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = (a1 + 40);
  if (qword_280D6F778 != -1)
  {
    swift_once();
    v10 = *(a1 + 48);
  }

  v3 = unk_280D6F788;
  *(a1 + 16) = qword_280D6F780;
  *(a1 + 24) = v3;
  *v2 = 0;
  v2[1] = 0;

  v4 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(a1 + 32) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v7);
  *(a1 + 56) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  return a1;
}

uint64_t sub_23151E2EC(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v4 = (a2 + 40);
  if (qword_280D6F778 != -1)
  {
    swift_once();
    v13 = *(a2 + 48);
  }

  v5 = unk_280D6F788;
  *(a2 + 16) = qword_280D6F780;
  *(a2 + 24) = v5;
  v15 = *(a1 + 24);
  *v4 = v15;

  sub_23151B92C(&v15, &v14);

  v6 = *a1;
  v7 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();

  *(a2 + 32) = sub_231528564(v11, sub_23149A718, 0, v10);

  sub_2314C1D18(a1);
  *(a2 + 56) = v6;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return a2;
}

uint64_t sub_23151E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v10);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  if (qword_280D6F778 != -1)
  {
    swift_once();
  }

  v11 = unk_280D6F788;
  *(a2 + 16) = qword_280D6F780;
  *(a2 + 24) = v11;
  v12 = *(a4 + 16);

  v13 = v12(a3, a4);
  v14 = *(a2 + 48);
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;

  v16 = *(a4 + 8);
  v17 = v16(a3, a4);
  v18 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(a2 + 32) = sub_231528564(v17, sub_23149A718, 0, v21);
  *(a2 + 56) = v16(a3, a4);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  (*(v7 + 8))(v10, a3);
  return a2;
}

uint64_t sub_23151E6B0()
{
  sub_23151EDC8();
  sub_23151E708(v2);
  type metadata accessor for MeDeviceCheck();
  v0 = swift_allocObject();
  result = sub_23151E76C(v2);
  qword_280D721C8 = v0;
  return result;
}

unint64_t sub_23151E708@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D02938]) init];
  [v2 setMeDeviceUseFindMyLocate_];
  result = sub_23151EDC8();
  a1[3] = result;
  a1[4] = &off_284619668;
  *a1 = v2;
  return result;
}

uint64_t sub_23151E76C(uint64_t *a1)
{
  *(v1 + 56) = 2;
  sub_2314A2C74(a1, v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 24);

  v5(sub_23151EE0C, v1, v3, v4);
  swift_endAccess();
  sub_2314A2C74(v1 + 16, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 40))(sub_23151EA80, 0, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1;
}

void sub_23151E894(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = __swift_project_boxed_opaque_existential_1((a1 + 16), v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = (*(v2 + 8))(v3, v2);
  (*(v5 + 8))(v8, v3);
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v10 = sub_231585FF4();
  __swift_project_value_buffer(v10, qword_280D72248);
  v11 = sub_231585FE4();
  v12 = sub_2315865D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 & 1;
    _os_log_impl(&dword_231496000, v11, v12, "MeDeviceCheck detected whether meDevice: %{BOOL}d", v13, 8u);
    MEMORY[0x231931280](v13, -1, -1);
  }

  *(a1 + 56) = v9 & 1;
}

void sub_23151EA80()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  oslog = sub_231585FE4();
  v1 = sub_2315865D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_231496000, oslog, v1, "MeDeviceCheck activated SystemMonitor", v2, 2u);
    MEMORY[0x231931280](v2, -1, -1);
  }
}

uint64_t sub_23151EB68()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

void sub_23151EC10(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_23149B484;
    v4[3] = &block_descriptor_13;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setMeDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_23151ECB8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a2 = 0;
  }

  v3 = *v2;
  sub_23151ED08(a1, a2);
}

void sub_23151ED08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_23149B484;
    v4[3] = &block_descriptor_11;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 activateWithCompletion_];
  _Block_release(v3);
}

unint64_t sub_23151EDC8()
{
  result = qword_280D6C6A8;
  if (!qword_280D6C6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6C6A8);
  }

  return result;
}

uint64_t sub_23151EE1C(uint64_t a1)
{
  v2 = sub_231586674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_231586654();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v10 = sub_231586064();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_5();
  sub_2314A207C(0, &qword_280D6FE88, 0x277D85C78);
  sub_231586054();
  sub_23151FBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_23151FC30();
  sub_2315867C4();
  (*(v3 + 104))(v7, *MEMORY[0x277D85260], v2);
  *(v1 + 16) = sub_2315866A4();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t static MediaCategorySupportedSignal.instances(candidateAppBundleIds:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23158C0A0;
  *(v2 + 56) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 64) = &protocol witness table for MediaCategorySupportedSignal;
  sub_2314A207C(0, &qword_280D6C5E8, 0x277CD3A68);
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BAD0, &qword_23158C0B8);
  swift_allocObject();
  *(v2 + 48) = OUTLINED_FUNCTION_2_22();
  *(v2 + 40) = 0;
  *(v2 + 32) = a1;
  *(v2 + 96) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 104) = &protocol witness table for MediaCategorySupportedSignal;
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 88) = OUTLINED_FUNCTION_2_22();
  *(v2 + 80) = 1;
  *(v2 + 72) = a1;
  *(v2 + 136) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 144) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 128) = OUTLINED_FUNCTION_2_22();
  *(v2 + 120) = 2;
  *(v2 + 112) = a1;
  *(v2 + 176) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 184) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 168) = OUTLINED_FUNCTION_2_22();
  *(v2 + 160) = 3;
  *(v2 + 152) = a1;
  *(v2 + 216) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 224) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 208) = OUTLINED_FUNCTION_2_22();
  *(v2 + 200) = 4;
  *(v2 + 192) = a1;
  *(v2 + 256) = &type metadata for MediaCategorySupportedSignal;
  *(v2 + 264) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_3_22();
  sub_2315860F4();
  OUTLINED_FUNCTION_6_16();
  *(v2 + 248) = OUTLINED_FUNCTION_2_22();
  *(v2 + 240) = 5;
  *(v2 + 232) = a1;
  return v2;
}

SiriSignals::MediaCategorySupportedSignal::MediaCategory_optional __swiftcall MediaCategorySupportedSignal.MediaCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaCategorySupportedSignal.MediaCategory.rawValue.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 2:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23151F334@<X0>(unint64_t *a1@<X8>)
{
  result = MediaCategorySupportedSignal.MediaCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MediaCategorySupportedSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23158C0A0;
  *(v0 + 56) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 64) = &protocol witness table for MediaCategorySupportedSignal;
  sub_2314A207C(0, &qword_280D6C5E8, 0x277CD3A68);
  OUTLINED_FUNCTION_4_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BAD0, &qword_23158C0B8);
  swift_allocObject();
  *(v0 + 48) = OUTLINED_FUNCTION_1_24();
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 96) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 104) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 88) = OUTLINED_FUNCTION_1_24();
  *(v0 + 80) = 1;
  *(v0 + 72) = 0;
  *(v0 + 136) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 144) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 128) = OUTLINED_FUNCTION_1_24();
  *(v0 + 120) = 2;
  *(v0 + 112) = 0;
  *(v0 + 176) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 184) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 168) = OUTLINED_FUNCTION_1_24();
  *(v0 + 160) = 3;
  *(v0 + 152) = 0;
  *(v0 + 216) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 224) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 208) = OUTLINED_FUNCTION_1_24();
  *(v0 + 200) = 4;
  *(v0 + 192) = 0;
  *(v0 + 256) = &type metadata for MediaCategorySupportedSignal;
  *(v0 + 264) = &protocol witness table for MediaCategorySupportedSignal;
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_18();
  *(v0 + 248) = OUTLINED_FUNCTION_1_24();
  *(v0 + 240) = 5;
  *(v0 + 232) = 0;
  return v0;
}

uint64_t MediaCategorySupportedSignal.init(category:candidateAppBundleIds:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_2314A207C(0, &qword_280D6C5E8, 0x277CD3A68);
  v6 = sub_2315860F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BAD0, &qword_23158C0B8);
  swift_allocObject();
  result = sub_23151EE1C(v6);
  *(a3 + 16) = result;
  *(a3 + 8) = v5;
  *a3 = a2;
  return result;
}

uint64_t sub_23151F5E4(uint64_t (*a1)(uint64_t))
{
  qword_280D6C9A0 = MEMORY[0x277D84F90];

  return a1(1);
}

uint64_t sub_23151F640()
{
  result = sub_231586964();
  qword_280D6C990 = result;
  qword_280D6C998 = v1;
  return result;
}

uint64_t *sub_23151F674()
{
  if (qword_280D6C988 != -1)
  {
    OUTLINED_FUNCTION_0_62();
  }

  return &qword_280D6C990;
}

uint64_t static MediaCategorySupportedSignal.signalName.getter()
{
  if (qword_280D6C988 != -1)
  {
    OUTLINED_FUNCTION_0_62();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_280D6C990;

  return v0;
}

uint64_t static MediaCategorySupportedSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6C988 != -1)
  {
    OUTLINED_FUNCTION_0_62();
  }

  swift_beginAccess();
  qword_280D6C990 = a1;
  qword_280D6C998 = a2;
}

uint64_t (*static MediaCategorySupportedSignal.signalName.modify())()
{
  if (qword_280D6C988 != -1)
  {
    OUTLINED_FUNCTION_0_62();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23151F80C@<X0>(void *a1@<X8>)
{
  sub_23151F674();
  swift_beginAccess();
  v2 = qword_280D6C998;
  *a1 = qword_280D6C990;
  a1[1] = v2;
}

uint64_t sub_23151F860(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23151F674();
  swift_beginAccess();
  qword_280D6C990 = v2;
  qword_280D6C998 = v1;
}

uint64_t MediaCategorySupportedSignal.id.getter()
{
  v1 = *(v0 + 8);
  if (qword_280D6C988 != -1)
  {
    OUTLINED_FUNCTION_0_62();
  }

  OUTLINED_FUNCTION_8_1();
  v6 = qword_280D6C990;
  v2 = 0xE500000000000000;
  v3 = 0x636973754DLL;
  switch(v1)
  {
    case 1:
      v4 = 1701079382;
      goto LABEL_8;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x74736163646F50;
      break;
    case 3:
      v4 = 1768186194;
LABEL_8:
      v3 = v4 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v2 = 0xE90000000000006BLL;
      v3 = 0x6F6F626F69647541;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6C6172656E6547;
      break;
    default:
      break;
  }

  MEMORY[0x23192FF80](v3, v2);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  return v6;
}

uint64_t MediaCategorySupportedSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v2 = -1;
  v3 = 0;
  return a1(&v2);
}

unint64_t sub_23151FA98()
{
  result = qword_27DD5BAD8;
  if (!qword_27DD5BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BAD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCategorySupportedSignal.MediaCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23151FBD8()
{
  result = qword_280D6FE90;
  if (!qword_280D6FE90)
  {
    sub_231586654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FE90);
  }

  return result;
}

unint64_t sub_23151FC30()
{
  result = qword_280D6FEA8;
  if (!qword_280D6FEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B228, &qword_23158B8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FEA8);
  }

  return result;
}

uint64_t sub_23151FCC8(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x231930A00](a1);
  return sub_231586D44();
}

uint64_t sub_23151FD50(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_63();
  a2(a1);
  sub_231586274();

  return sub_231586D44();
}

uint64_t sub_23151FDF0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_0_63();
  a2(v5, a1);
  return sub_231586D44();
}

uint64_t sub_23151FE3C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x231930A00](a1);
  return sub_231586D44();
}

uint64_t sub_23151FE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = (a1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v3++;
      v6 = INMediaItemTypeGetName();
      if (v6)
      {
        v7 = v6;
        v8 = sub_2315861A4();
        v10 = v9;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = v4[2];
          sub_23149D588();
          v4 = v14;
        }

        v11 = v4[2];
        if (v11 >= v4[3] >> 1)
        {
          sub_23149D588();
          v4 = v15;
        }

        v4[2] = v11 + 1;
        v12 = &v4[2 * v11];
        v12[4] = v8;
        v12[5] = v10;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v16 = v4[2];
  if (v16)
  {
    sub_23152D598();
    v17 = v2;
    v18 = v4 + 5;
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;

      MEMORY[0x23192FF80](v19, v20);

      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_23152D598();
      }

      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = 0x707974616964656DLL;
      *(v22 + 40) = 0xEA00000000003D65;
      v18 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  sub_231520080(v17);
  v24 = v23;

  return v24;
}

void sub_231520080(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_21;
    }

    v9 = *(v6 - 1);
    v8 = *v6;
    v10 = HIBYTE(*v6) & 0xF;
    if ((*v6 & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v6 += 2;
    if (v10)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = v5[2];
        sub_23152D598();
      }

      v12 = v5[2];
      if (v12 >= v5[3] >> 1)
      {
        sub_23152D598();
      }

      v5[2] = v12 + 1;
      v13 = &v5[2 * v12];
      v13[4] = v9;
      v13[5] = v8;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v14 = v5[2];
  if (v14)
  {
    sub_23152D598();
    v15 = v4;
    v16 = v5 + 5;
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      MEMORY[0x23192FF80](v17, v18);
      MEMORY[0x23192FF80](34, 0xE100000000000000);

      v19 = *(v15 + 16);
      if (v19 >= *(v15 + 24) >> 1)
      {
        sub_23152D598();
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + 16 * v19;
      *(v20 + 32) = 34;
      *(v20 + 40) = 0xE100000000000000;
      v16 += 2;
      --v14;
    }

    while (v14);
  }

  MEMORY[0x23192FF80](32, 0xE100000000000000);
  sub_231586A54();
  MEMORY[0x23192FF80](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314AA8B4(&qword_280D6FBF8, &qword_27DD5B0E8, &unk_231589320);
  sub_231586154();
}

uint64_t sub_231520360(char a1)
{
  OUTLINED_FUNCTION_0_63();
  MEMORY[0x231930A00](a1 & 1);
  return sub_231586D44();
}

uint64_t sub_2315203D0()
{
  v0 = sub_231586B04();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23152041C(char a1)
{
  result = 0x636973754DLL;
  switch(a1)
  {
    case 1:
      result = 0x7374736163646F50;
      break;
    case 2:
      result = 0x736B6F6F42;
      break;
    case 3:
      result = 0x6F69646152;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2315204F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2315203D0();
  *a2 = result;
  return result;
}

unint64_t sub_231520524@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23152041C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaItemsBucketProvider.MediaBuckets(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2315206E4()
{
  result = qword_27DD5BAF0;
  if (!qword_27DD5BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BAF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaItemsBucketProvider.SiriRemembersQueryOperator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231520818()
{
  result = qword_27DD5BAF8;
  if (!qword_27DD5BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BAF8);
  }

  return result;
}

void sub_231520870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x277D84F90];
    sub_23152D598();
    v5 = sub_23152B4D0(v2);
    v6 = 0;
    v7 = v2 + 64;
    v25 = v2 + 72;
    v26 = v1;
    v27 = v2 + 64;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_24;
        }

        v28 = v4;
        v29 = v6;
        v30 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v31 = *v9;
        v32 = v9[1];

        v10 = sub_231586334();
        v12 = v11;
        v13 = v2;
        v14 = *(v33 + 16);
        if (v14 >= *(v33 + 24) >> 1)
        {
          sub_23152D598();
        }

        *(v33 + 16) = v14 + 1;
        v15 = v33 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        v16 = 1 << *(v13 + 32);
        if (v5 >= v16)
        {
          goto LABEL_25;
        }

        v7 = v27;
        v17 = *(v27 + 8 * v8);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        v2 = v13;
        if (*(v13 + 36) != v30)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v19 = v26;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v19 = v26;
          v22 = (v25 + 8 * v8);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_2314ABA68(v5, v30, v28 & 1);
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_18;
            }
          }

          sub_2314ABA68(v5, v30, v28 & 1);
        }

LABEL_18:
        v6 = v29 + 1;
        if (v29 + 1 == v19)
        {
          return;
        }

        v4 = 0;
        v3 = *(v2 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_231520AEC()
{
  result = sub_231586964();
  qword_280D6C978 = result;
  qword_280D6C980 = v1;
  return result;
}

uint64_t *sub_231520B20()
{
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  return &qword_280D6C978;
}

uint64_t static MediaSubscriptionStatusSignal.signalName.getter()
{
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  swift_beginAccess();
  v0 = qword_280D6C978;

  return v0;
}

uint64_t static MediaSubscriptionStatusSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  swift_beginAccess();
  qword_280D6C978 = a1;
  qword_280D6C980 = a2;
}

uint64_t (*static MediaSubscriptionStatusSignal.signalName.modify())()
{
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_231520CC8@<X0>(void *a1@<X8>)
{
  sub_231520B20();
  swift_beginAccess();
  v2 = qword_280D6C980;
  *a1 = qword_280D6C978;
  a1[1] = v2;
}

uint64_t sub_231520D1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231520B20();
  swift_beginAccess();
  qword_280D6C978 = v2;
  qword_280D6C980 = v1;
}

uint64_t MediaSubscriptionStatusSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MediaSubscriptionStatusSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v6 = &type metadata for SubscriptionStatusProvider;
  v7 = &off_28461D0D8;
  *(v0 + 56) = &type metadata for MediaSubscriptionStatusSignal;
  *(v0 + 64) = &protocol witness table for MediaSubscriptionStatusSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6C970 != -1)
  {
    OUTLINED_FUNCTION_0_64();
  }

  swift_beginAccess();
  v2 = qword_280D6C980;
  *(v1 + 16) = qword_280D6C978;
  *(v1 + 24) = v2;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = &unk_2846108D0;
  *(v1 + 40) = v3;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  sub_23149FD3C(&v5, v1 + 88);

  return v0;
}

uint64_t static MediaSubscriptionStatusSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231521500(v3, v1, v2);
}

uint64_t static MediaSubscriptionStatusSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_23152133C(v3);
}

double MediaSubscriptionStatusSignal.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t MediaSubscriptionStatusSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
  sub_2315216FC(v2, v7);
  v5 = swift_allocObject();
  memcpy(v5 + 2, v7, 0x70uLL);
  v5[16] = a1;
  v5[17] = a2;

  sub_2315773B4(sub_231521734, v5);
}

uint64_t sub_231521038(uint64_t a1, uint64_t a2, void (*a3)(void **))
{
  v3 = a1;
  v30 = *(*(a2 + 24) + 16);
  if (v30)
  {
  }

  else
  {
    sub_231520870(a1);
    v30 = *(v4 + 16);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  v7 = (v4 + 40);
  v28 = v4;
  v29 = v3;
  while (v30 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = sub_231586C84();
      __break(1u);
      return result;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(v3 + 16);

    if (v10 && (v11 = sub_23149C888(v8, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v3 + 56) + 8 * v11);
    }

    else
    {
      v13 = 0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v31 = v6;
    v14 = sub_23149C888(v8, v9);
    if (__OFADD__(v6[2], (v15 & 1) == 0))
    {
      goto LABEL_24;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v18 = sub_23149C888(v8, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_26;
      }

      v16 = v18;
    }

    v6 = v31;
    if (v17)
    {
      *(v31[7] + 8 * v16) = v13;
    }

    else
    {
      v31[(v16 >> 6) + 8] |= 1 << v16;
      v20 = (v6[6] + 16 * v16);
      *v20 = v8;
      v20[1] = v9;
      *(v6[7] + 8 * v16) = v13;
      v21 = v6[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_25;
      }

      v6[2] = v23;
    }

    v7 += 2;
    ++v5;
    v4 = v28;
    v3 = v29;
  }

  v31 = v6;
  v32 = 1;
  a3(&v31);
  v24 = v31;
  v25 = v32;

  return sub_2314A5EEC(v24, v25);
}

void MediaSubscriptionStatusSignal.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 48);
  v8 = *(v2 + 32);
  v9 = v5;
  v10 = *(v2 + 64);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

uint64_t sub_2315212E0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231521500(v3, v1, v2);
}

uint64_t sub_23152133C(uint64_t a1)
{
  v16[3] = &type metadata for SignalComputationContext;
  v16[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v16[0] = v2;
  v3 = *a1;
  v17 = *a1;
  v4 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v4;
  v2[3] = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v16, v15);
  v13 = &type metadata for SubscriptionStatusProvider;
  v14 = &off_28461D0D8;
  *(v5 + 56) = &type metadata for MediaSubscriptionStatusSignal;
  *(v5 + 64) = &protocol witness table for MediaSubscriptionStatusSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  sub_2314B5008(a1, v11);
  if (qword_280D6C970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6C980;
  *(v6 + 16) = qword_280D6C978;
  *(v6 + 24) = v7;
  *(v6 + 32) = &unk_2846125B0;
  v8 = __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  *(v6 + 40) = v3;
  *(v6 + 48) = *v8;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  sub_23149FD3C(&v12, v6 + 88);

  sub_2315075A0(&v17, v10);

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v5;
}

uint64_t sub_231521500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[3] = a2;
  v19[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v19);
  v12 = a2;
  (*(*(a2 - 8) + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v19, v16);
  v14 = &type metadata for SubscriptionStatusProvider;
  v15 = &off_28461D0D8;
  *(v5 + 56) = &type metadata for MediaSubscriptionStatusSignal;
  *(v5 + 64) = &protocol witness table for MediaSubscriptionStatusSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  if (qword_280D6C970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6C980;
  *(v6 + 16) = qword_280D6C978;
  *(v6 + 24) = v7;
  *(v6 + 32) = &unk_284610470;
  v8 = v17;
  v9 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v10 = *(a3 + 8);

  *(v6 + 40) = v10(v12, a3);
  *(v6 + 48) = v10(v8, v9);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  sub_23149FD3C(&v13, v6 + 88);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v5;
}

uint64_t sub_231521748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231521788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2315217F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  MEMORY[0x23192FF80](a1, a2);
  return v6;
}

uint64_t sub_231521848()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2315218C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = sub_231586174();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23152199C;
  v10[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v10);

  [v7 getMultiUserAudioAppSignalsForSharedUserID:v8 completion:v9];
  _Block_release(v9);
}

uint64_t sub_23152199C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_231585754();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_2314C215C(v4, v9);
}

uint64_t sub_231521A48(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_231521A6C, 0, 0);
}

uint64_t sub_231521A6C()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = *(v0[21] + 16);
  v4 = sub_231586174();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_231521BA8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB00, &qword_23158C4E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231521D6C;
  v0[13] = &block_descriptor_12;
  v0[14] = v5;
  [v3 getSharedUserInfoForSharedUserID:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_231521BA8()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_231521C88, 0, 0);
}

id sub_231521C88()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    goto LABEL_6;
  }

  result = [v1 companionDeviceInfo];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result idsIdentifier];

  if (!v4)
  {

LABEL_6:
    v5 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v5 = sub_2315861A4();
  v7 = v6;

LABEL_7:
  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_231521D6C(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;
  return sub_231521DB0(v3, a2);
}

uint64_t sub_231521DD0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper_4_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_231521E44(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_231586864();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_23152D5B8();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v18;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x231930660](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = type metadata accessor for NotesIntentContainsSignal();
        v16 = v6;
        v17 = &protocol witness table for NotesIntentContainsSignal;
        v15[0] = v5;
        v18 = v4;
        v7 = *(v4 + 16);
        if (v7 >= *(v4 + 24) >> 1)
        {
          sub_23152D5B8();
          v8 = v16;
          v9 = v17;
        }

        else
        {
          v8 = v6;
          v9 = &protocol witness table for NotesIntentContainsSignal;
        }

        ++v3;
        v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v8);
        v11 = *(*(v8 - 8) + 64);
        MEMORY[0x28223BE20](v10);
        v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v13);
        sub_231540938(v7, v13, &v18, v8, v9);
        __swift_destroy_boxed_opaque_existential_1(v15);
        v4 = v18;
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_23152204C(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    a2(0, v2, 0);
    v3 = v12;
    v5 = a1 + 32;
    do
    {
      sub_2314A2C74(v5, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB30, &qword_23158C660);
      swift_dynamicCast();
      v12 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        a2(v6 > 1, v7 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v7 + 1;
      sub_23149FD3C(&v11, v3 + 40 * v7 + 32);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *sub_231522198()
{
  v0 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v1 = [v0 Intent];
  swift_unknownObjectRelease();
  v2 = sub_23152221C(v1);

  return v2;
}

void *sub_23152221C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  sub_231585794();
  v10 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  v11 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_2314B87DC(v8, v6, 10, 0, 0);
  v13 = v12;
  v14 = [a1 publisherWithOptions_];
  v28 = sub_231522578;
  v29 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2315226A0;
  v27 = &block_descriptor_13;
  v15 = _Block_copy(&aBlock);

  v16 = [v14 filterWithIsIncluded_];
  _Block_release(v15);
  v17 = [v16 last];

  v28 = sub_23152386C;
  v29 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2314B901C;
  v27 = &block_descriptor_10_0;
  v18 = _Block_copy(&aBlock);

  v28 = sub_231523874;
  v29 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2314B8374;
  v27 = &block_descriptor_13_0;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 sinkWithCompletion:v18 receiveInput:v19];

  _Block_release(v19);
  _Block_release(v18);

  swift_beginAccess();
  v21 = *(v9 + 16);
  v22 = v21;

  return v21;
}

uint64_t sub_231522578(void *a1)
{
  v1 = [a1 eventBody];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intentClass];

    if (v3)
    {
      v4 = sub_2315861A4();
      v2 = v5;
    }

    else
    {
      v4 = 0;
      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  sub_2314A207C(0, &qword_280D6C658, 0x277CD3B30);
  v6 = [swift_getObjCClassFromMetadata() description];
  v7 = sub_2315861A4();
  v9 = v8;

  if (v2)
  {
    if (v4 == v7 && v2 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_231586C44();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2315226A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_2315226F8(uint64_t a1, uint64_t a2)
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v3 = sub_231585FF4();
  __swift_project_value_buffer(v3, qword_280D72248);

  oslog = sub_231585FE4();
  v4 = sub_2315865D4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_beginAccess();
    v7 = *(a2 + 16);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_231496000, oslog, v4, "BiomeStreams: Using intent extracted from Biome: %@", v5, 0xCu);
    sub_2314BEEA4(v6);
    MEMORY[0x231931280](v6, -1, -1);
    MEMORY[0x231931280](v5, -1, -1);
  }

  else
  {
  }
}

void sub_23152286C(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  sub_2315228C4(a1, (a2 + 16));
  objc_autoreleasePoolPop(v4);
}

void sub_2315228C4(void *a1, void **a2)
{
  v4 = [a1 eventBody];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 interaction];
  if (!v6)
  {

    return;
  }

  v7 = v6;
  v8 = sub_231585754();
  v10 = v9;

  v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_2314C2104(v8, v10);
  v12 = sub_231523590(v8, v10);
  if (!v2)
  {
    v20 = v12;
    sub_2314A207C(0, &qword_27DD5BB38, 0x277CD3D58);
    v21 = *MEMORY[0x277CCA308];
    sub_2315861A4();
    v22 = sub_231586714();

    if (v22)
    {
      v23 = v22;
      v24 = [v23 intent];

      sub_2314BEE4C(v8, v10);
      if (v24)
      {
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (!v25)
        {
        }

        goto LABEL_17;
      }
    }

    else
    {

      sub_2314BEE4C(v8, v10);
    }

    v25 = 0;
LABEL_17:
    swift_beginAccess();
    v26 = *a2;
    *a2 = v25;

    return;
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v13 = sub_231585FF4();
  __swift_project_value_buffer(v13, qword_280D72248);
  v14 = v5;
  v15 = sub_231585FE4();
  v16 = sub_2315865E4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v5;
    v19 = v14;
    _os_log_impl(&dword_231496000, v15, v16, "BiomeStreams: intent unarchive error from event=%@", v17, 0xCu);
    sub_2314BEEA4(v18);
    MEMORY[0x231931280](v18, -1, -1);
    MEMORY[0x231931280](v17, -1, -1);

    sub_2314BEE4C(v8, v10);
  }

  else
  {
    sub_2314BEE4C(v8, v10);
  }
}

uint64_t static NotesIntentContainsSignal.instances()()
{
  v0 = sub_231522198();
  if (v0)
  {
    v1 = v0;
    v2 = static NotesIntentContainsSignal.instances(intent:)(v0);
    sub_231521E44(v2);
    v4 = v3;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    sub_23152D5B8();
    v4 = v13;
    v6 = type metadata accessor for NotesIntentContainsSignal();
    v7 = 0;
    do
    {
      LOBYTE(v10) = byte_2846108A8[v7 + 32];
      swift_allocObject();
      v8 = sub_2315231F8(&v10, -1);
      v13 = v4;
      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_23152D5B8();
        v4 = v13;
      }

      ++v7;
      v11 = v6;
      v12 = &protocol witness table for NotesIntentContainsSignal;
      *&v10 = v8;
      *(v4 + 16) = v9 + 1;
      sub_23149FD3C(&v10, v4 + 40 * v9 + 32);
    }

    while (v7 != 3);
  }

  return v4;
}

uint64_t static NotesIntentContainsSignal.instances(intent:)(void *a1)
{
  v11 = MEMORY[0x277D84F90];
  sub_2315869F4();
  type metadata accessor for NotesIntentContainsSignal();
  v10 = 0;
  v2 = a1;
  sub_231522E50(&v10, v2);
  sub_2315869C4();
  v3 = *(v11 + 16);
  OUTLINED_FUNCTION_1_25();
  sub_231586A04();
  OUTLINED_FUNCTION_1_25();
  sub_231586A14();
  sub_2315869D4();
  v9 = 1;
  v4 = v2;
  sub_231522E50(&v9, v4);
  sub_2315869C4();
  v5 = *(v11 + 16);
  OUTLINED_FUNCTION_1_25();
  sub_231586A04();
  OUTLINED_FUNCTION_1_25();
  sub_231586A14();
  sub_2315869D4();
  v8 = 2;
  sub_231522E50(&v8, v4);
  sub_2315869C4();
  v6 = *(v11 + 16);
  sub_231586A04();
  sub_231586A14();
  sub_2315869D4();
  return v11;
}

void *sub_231522E50(_BYTE *a1, id a2)
{
  v3 = *a1;
  if (*a1)
  {
    if (v3 == 1)
    {
      v4 = [a2 content];
    }

    else
    {
      v4 = [a2 groupName];
    }
  }

  else
  {
    v4 = [a2 title];
  }

  v5 = v4;
  if (v5)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v9 = v3;
  type metadata accessor for NotesIntentContainsSignal();
  swift_allocObject();
  v7 = sub_2315231F8(&v9, v6);

  return v7;
}

uint64_t sub_231522F34()
{
  result = sub_231586964();
  qword_27DD5BB08 = result;
  qword_27DD5BB10 = v1;
  return result;
}

uint64_t *sub_231522F68()
{
  if (qword_27DD5AE28 != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  return &qword_27DD5BB08;
}

uint64_t static NotesIntentContainsSignal.signalName.getter()
{
  if (qword_27DD5AE28 != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  swift_beginAccess();
  v0 = qword_27DD5BB08;

  return v0;
}

uint64_t static NotesIntentContainsSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE28 != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  swift_beginAccess();
  qword_27DD5BB08 = a1;
  qword_27DD5BB10 = a2;
}

uint64_t (*static NotesIntentContainsSignal.signalName.modify())()
{
  if (qword_27DD5AE28 != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_231523110@<X0>(void *a1@<X8>)
{
  sub_231522F68();
  swift_beginAccess();
  v2 = qword_27DD5BB10;
  *a1 = qword_27DD5BB08;
  a1[1] = v2;
}

uint64_t sub_231523164(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231522F68();
  swift_beginAccess();
  qword_27DD5BB08 = v2;
  qword_27DD5BB10 = v1;
}

uint64_t NotesIntentContainsSignal.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *sub_2315231F8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (qword_27DD5AE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_27DD5BB08;
  v11 = qword_27DD5BB10;

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v5 = 0xE400000000000000;
  v6 = 2036625250;
  if (v4 != 1)
  {
    v6 = 0x70756F7267;
    v5 = 0xE500000000000000;
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x23192FF80](v7, v8);

  v2[2] = v10;
  v2[3] = v11;
  v2[4] = a2;
  return v2;
}

uint64_t NotesIntentContainsSignal.Field.rawValue.getter()
{
  v1 = 2036625250;
  if (*v0 != 1)
  {
    v1 = 0x70756F7267;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

Swift::Bool __swiftcall NotesIntentContainsSignal.Field.isSet(in:)(INCreateNoteIntent in)
{
  if (*v1)
  {
    if (*v1 == 1)
    {
      v2 = [(objc_class *)in.super.super.isa content];
    }

    else
    {
      v2 = [(objc_class *)in.super.super.isa groupName];
    }
  }

  else
  {
    v2 = [(objc_class *)in.super.super.isa title];
  }

  v3 = v2;
  if (v3)
  {

    LOBYTE(v3) = 1;
  }

  return v3;
}

uint64_t sub_2315233B8(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 32);
  v4 = 0;
  return a1(&v3);
}

SiriSignals::NotesIntentContainsSignal::Field_optional __swiftcall NotesIntentContainsSignal.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_231523488@<X0>(uint64_t *a1@<X8>)
{
  result = NotesIntentContainsSignal.Field.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NotesIntentContainsSignal.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t NotesIntentContainsSignal.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

id sub_231523590(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_231585744();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_2315856D4();

    swift_willThrow();
  }

  sub_2314BEE4C(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_231523698()
{
  result = qword_27DD5BB18;
  if (!qword_27DD5BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB18);
  }

  return result;
}

unint64_t sub_2315236F0()
{
  result = qword_27DD5BB20;
  if (!qword_27DD5BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5BB28, &qword_23158C590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotesIntentContainsSignal.Field(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2315238A0()
{
  result = sub_231586964();
  qword_27DD5BB40 = result;
  qword_27DD5BB48 = v1;
  return result;
}

uint64_t *sub_2315238D4()
{
  if (qword_27DD5AE30 != -1)
  {
    OUTLINED_FUNCTION_0_66();
  }

  return &qword_27DD5BB40;
}

uint64_t static NotificationsCountByContactSignal.signalName.getter()
{
  if (qword_27DD5AE30 != -1)
  {
    OUTLINED_FUNCTION_0_66();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_27DD5BB40;

  return v0;
}

uint64_t static NotificationsCountByContactSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE30 != -1)
  {
    OUTLINED_FUNCTION_0_66();
  }

  swift_beginAccess();
  qword_27DD5BB40 = a1;
  qword_27DD5BB48 = a2;
}

uint64_t (*static NotificationsCountByContactSignal.signalName.modify())()
{
  if (qword_27DD5AE30 != -1)
  {
    OUTLINED_FUNCTION_0_66();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_231523A6C@<X0>(void *a1@<X8>)
{
  sub_2315238D4();
  swift_beginAccess();
  v2 = qword_27DD5BB48;
  *a1 = qword_27DD5BB40;
  a1[1] = v2;
}

uint64_t sub_231523AC0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2315238D4();
  swift_beginAccess();
  qword_27DD5BB40 = v2;
  qword_27DD5BB48 = v1;
}

uint64_t NotificationsCountByContactSignal.id.getter()
{
  v1 = *(v0 + 8);
  if (qword_27DD5AE30 != -1)
  {
    OUTLINED_FUNCTION_0_66();
  }

  OUTLINED_FUNCTION_8_1();
  v3 = qword_27DD5BB40;
  v2 = qword_27DD5BB48;

  MEMORY[0x23192FF80](v3, v2);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return 0;
}

uint64_t static NotificationsCountByContactSignal.getAll(contactIdentifier:)(uint64_t a1, uint64_t a2)
{
  v16 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v4 = 0;
  v5 = v16;
  do
  {
    v6 = byte_28460FCD0[v4 + 32];
    v7 = [BiomeLibrary() Notification];
    swift_unknownObjectRelease();
    v8 = [v7 Usage];
    swift_unknownObjectRelease();
    v16 = v5;
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);

    if (v9 >= v10 >> 1)
    {
      sub_23152D5B8();
      v5 = v16;
    }

    ++v4;
    v14 = &type metadata for NotificationsCountByContactSignal;
    v15 = &protocol witness table for NotificationsCountByContactSignal;
    v11 = swift_allocObject();
    *&v13 = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v6;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v5 + 16) = v9 + 1;
    sub_23149FD3C(&v13, v5 + 40 * v9 + 32);
  }

  while (v4 != 8);
  return v5;
}

void NotificationsCountByContactSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  v16 = swift_allocObject();
  type metadata accessor for Aggregation();
  *(v16 + 16) = sub_2315860F4();
  sub_231585794();
  v17 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v17);
  v18 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_2314B87DC(v11, v9, 0, 0, 0);
  v29 = v19;
  v28 = [v12 publisherWithOptions_];
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v12;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  *(v20 + 48) = v14;
  *(v20 + 56) = a1;
  *(v20 + 64) = a2;
  v34 = sub_231524894;
  v35 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2314B901C;
  v33 = &block_descriptor_14;
  v21 = _Block_copy(&aBlock);

  v22 = v12;

  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v13;
  *(v23 + 32) = v15;
  *(v23 + 40) = v14;
  *(v23 + 48) = v16;
  v34 = sub_2315248A8;
  v35 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2314B8374;
  v33 = &block_descriptor_12;
  v24 = _Block_copy(&aBlock);

  v25 = v22;

  v26 = v28;
  v27 = [v28 sinkWithCompletion:v21 receiveInput:v24];
  _Block_release(v24);
  _Block_release(v21);
}

uint64_t sub_2315240A0(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  swift_beginAccess();
  v11 = *(a2 + 16);

  v12 = sub_2314D7854(a4, v11);

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v13 = sub_231585FF4();
  __swift_project_value_buffer(v13, qword_280D72248);
  v14 = a3;

  v15 = sub_231585FE4();
  v16 = sub_2315865D4();

  if (os_log_type_enabled(v15, v16))
  {
    v24 = a7;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315394;
    v25 = 0;
    v26 = 0xE000000000000000;
    v27 = v18;
    if (qword_27DD5AE30 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = qword_27DD5BB40;
    v19 = qword_27DD5BB48;

    MEMORY[0x23192FF80](v20, v19);

    MEMORY[0x23192FF80](46, 0xE100000000000000);
    sub_231586A54();
    v21 = sub_2314A22E8();

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    sub_2315860E4();
    v22 = sub_2314A22E8();

    *(v17 + 14) = v22;
    _os_log_impl(&dword_231496000, v15, v16, "%s value: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v18, -1, -1);
    MEMORY[0x231931280](v17, -1, -1);

    a7 = v24;
  }

  else
  {
  }

  v25 = v12;
  LOBYTE(v26) = 1;
  a7(&v25);
  return sub_2314A5EEC(v25, v26);
}

void sub_2315243A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = MEMORY[0x231930B10]();
  v9 = [a1 eventBody];
  swift_beginAccess();
  sub_231524464(v9, (a6 + 16));
  swift_endAccess();

  objc_autoreleasePoolPop(v8);
}

void sub_231524464(void *a1, uint64_t *a2)
{
  v5 = sub_231585884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  if (!a1)
  {
    return;
  }

  v14 = *(v2 + 16);
  v13 = *(v2 + 24);
  v39 = a1;
  v15 = sub_2314D752C(v39);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = [v39 absoluteTimestamp];
    if (v19)
    {
      v20 = v19;
      v37 = v17;
      v38 = a2;
      sub_231585834();

      (*(v6 + 32))(v12, v10, v5);
      v21 = [v39 contactIDs];
      v22 = sub_231586384();

      v40 = v14;
      v41 = v13;
      MEMORY[0x28223BE20](v23);
      *(&v37 - 2) = &v40;
      v24 = sub_2314E62A8(sub_2314BB954, (&v37 - 4), v22);

      if (v24)
      {
        goto LABEL_6;
      }

      v25 = [v39 contactIDs];
      v26 = sub_231586384();

      v40 = v14;
      v41 = v13;

      v27 = MEMORY[0x23192FF80](0x6F7372655042413ALL, 0xE90000000000006ELL);
      MEMORY[0x28223BE20](v27);
      *(&v37 - 2) = &v40;
      v28 = sub_2314E62A8(sub_2314BB974, (&v37 - 4), v26);

      if (v28)
      {
LABEL_6:
        v29 = v38;
        v30 = *v38;
        if (*(*v38 + 16) && (v31 = sub_23149C888(v37, v18), (v32 & 1) != 0))
        {
          v33 = *(*(v30 + 56) + 8 * v31);
        }

        else
        {
          sub_2314B676C();
          v35 = sub_2315860F4();
          type metadata accessor for Aggregation();
          swift_allocObject();
          sub_2314B53E8(v35);
        }

        sub_2314B56E8();

        v36 = *v29;
        swift_isUniquelyReferenced_nonNull_native();
        v40 = *v29;
        sub_2315760F4();

        *v29 = v40;
        (*(v6 + 8))(v12, v5);
      }

      else
      {
        (*(v6 + 8))(v12, v5);
      }

      return;
    }
  }

  v34 = v39;
}

uint64_t sub_2315248BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2315248FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static NowPlayingCountSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231525958(v3);
}

uint64_t sub_2315249B4()
{
  result = sub_231586964();
  qword_280D6F630 = result;
  *algn_280D6F638 = v1;
  return result;
}

uint64_t static NowPlayingCountSignal.signalName.getter()
{
  if (qword_280D6F628 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  v0 = qword_280D6F630;

  return v0;
}

uint64_t NowPlayingCountSignal.id.getter()
{
  if (sub_2314B5298(*(v0 + 16)) == 6712937 && v1 == 0xE300000000000000)
  {
  }

  else
  {
    v3 = OUTLINED_FUNCTION_3_23();

    if ((v3 & 1) == 0)
    {
      v5 = 0;
      if (qword_280D6F628 != -1)
      {
        OUTLINED_FUNCTION_0_67();
      }

      MEMORY[0x23192FF80](qword_280D6F630, *algn_280D6F638);
      sub_231586A54();
      return v5;
    }
  }

  if (qword_280D6F628 != -1)
  {
    OUTLINED_FUNCTION_0_67();
  }

  v5 = qword_280D6F630;

  MEMORY[0x23192FF80](0x6C61746F742ELL, 0xE600000000000000);
  return v5;
}

void *NowPlayingCountSignal.idSynonyms.getter()
{
  if (sub_2314B5298(*(v0 + 16)) == 6712937 && v1 == 0xE300000000000000)
  {

    return &unk_284612648;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_3_23();

    if (v3)
    {
      return &unk_284612648;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }
}

uint64_t NowPlayingCountSignal.cacheKey.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (v1)
  {
    v5 = *v0;
    v7 = v0[1];
    OUTLINED_FUNCTION_2_23();

    v4 = NowPlayingCountSignal.id.getter();
    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v2, v1);

    return v4;
  }

  else
  {
    v6 = *v0;
    OUTLINED_FUNCTION_2_23();
    return NowPlayingCountSignal.id.getter();
  }
}

uint64_t sub_231524C88()
{
  v1 = *(v0 + 16);
  switch(v1)
  {
    case 7:
      goto LABEL_8;
    default:
      v2 = sub_231586C44();

      if (v2)
      {
        return 1;
      }

      if (sub_2314B5298(v1) == 27954 && v3 == 0xE200000000000000)
      {
LABEL_8:

        return 1;
      }

      else
      {
        v5 = sub_231586C44();

        return v5 & 1;
      }
  }
}

uint64_t static NowPlayingCountSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231525764(v3, v1, v2);
}

uint64_t sub_231524DF8@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v11 = v10;
  a4[3] = &type metadata for NowPlayingCountSignal;
  a4[4] = &protocol witness table for NowPlayingCountSignal;
  v12 = swift_allocObject();
  *a4 = v12;
  *(v12 + 32) = v6;
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  v13 = *(a3 + 16);
  *(v12 + 40) = a3;
  *(v12 + 48) = v13;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 1;
}

uint64_t static NowPlayingCountSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612678);
  *a1 = result;
  return result;
}

double NowPlayingCountSignal.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t NowPlayingCountSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  memcpy(__dst, v1, 0x41uLL);
  v3 = __dst[2];
  if (sub_2314B5298(__dst[2]) == 6712937 && v4 == 0xE300000000000000)
  {

    goto LABEL_9;
  }

  v6 = OUTLINED_FUNCTION_3_23();

  if (v6)
  {
LABEL_9:
    v12 = sub_2314D13BC(__dst[0], __dst[1]);
    goto LABEL_10;
  }

  v7 = __dst[0];
  v8 = __dst[1];
  v9 = sub_2314B5298(v3);
  v11 = sub_2314D0694(v9, v10, v7, v8);

  v12 = sub_23156696C(v3, v11);

  if (!v12)
  {
    v20[0] = -1;
    LOBYTE(v20[1]) = 0;
    return a1(v20);
  }

LABEL_10:
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v14 = sub_231585FF4();
  __swift_project_value_buffer(v14, qword_280D72248);
  sub_231525A94(__dst, v20);

  v15 = sub_231585FE4();
  v16 = sub_2315865D4();
  sub_231525ACC(__dst);

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    swift_slowAlloc();
    *v17 = 136315394;
    memcpy(v20, __dst, 0x41uLL);
    NowPlayingCountSignal.id.getter();
    v18 = sub_2314A22E8();

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    sub_2315860E4();
    v19 = sub_2314A22E8();

    *(v17 + 14) = v19;
    _os_log_impl(&dword_231496000, v15, v16, "NowPlayingCountSignal: Computed %s=%s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v20[0] = v12;
  LOBYTE(v20[1]) = 1;
  a1(v20);
  return sub_2314A5EEC(v20[0], v20[1]);
}

void NowPlayingCountSignal.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 48);
  v8 = *(v2 + 32);
  v9 = v5;
  v10 = *(v2 + 64);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23152525C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  memcpy(__dst, v2, 0x41uLL);
  memcpy(v32, v2, 0x41uLL);
  if ((sub_231524C88() & 1) == 0)
  {
    goto LABEL_20;
  }

  v32[0] = v4;
  LOBYTE(v32[1]) = v5;
  swift_unknownObjectRetain();
  sub_2315074D0(v4, v5);
  sub_2314D6BA0(v32, v33);
  v6 = v33[0];
  if (!v33[0])
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    v19 = sub_231585FE4();
    v20 = sub_2315865E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_231496000, v19, v20, "NowPlayingCountSignal: Invalid input", v21, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_20;
  }

  v8 = v33[1];
  v7 = v33[2];
  v9 = v33[4];

  v10 = sub_23149CA24(v8, v7, v9);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = __dst[16];
  if (sub_2314B5298(__dst[16]) == 27954 && v15 == 0xE200000000000000)
  {

    goto LABEL_18;
  }

  v17 = sub_231586C44();

  if (v17)
  {
LABEL_18:
    if (v13 <= 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v8 = 0;
    v22 = -1;
    goto LABEL_21;
  }

LABEL_22:
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v32[0] = v9;
  sub_23157562C();
  v8 = v32[0];
  if (qword_280D70420 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_6_0();
  }

  v23 = sub_231585FF4();
  __swift_project_value_buffer(v23, qword_280D72248);

  sub_231525A94(__dst, v32);
  v24 = v6;
  v25 = sub_231585FE4();
  v26 = sub_2315865D4();
  sub_231525ACC(__dst);

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v27 = 136315650;
    sub_2314B5298(v14);
    v31 = v24;
    v28 = sub_2314A22E8();

    *(v27 + 4) = v28;
    *(v27 + 12) = 2080;

    sub_2315860E4();

    v29 = sub_2314A22E8();

    *(v27 + 14) = v29;
    *(v27 + 22) = 2080;

    sub_2315860E4();

    v30 = sub_2314A22E8();

    *(v27 + 24) = v30;
    _os_log_impl(&dword_231496000, v25, v26, "NowPlayingCountSignal: [%s] updated %s to %s", v27, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  v22 = 1;
LABEL_21:
  *a2 = v8;
  *(a2 + 8) = v22;
}

uint64_t sub_231525700(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231525764(v3, v1, v2);
}

uint64_t sub_231525764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = sub_231525BA8(v8, sub_23149A718, 0, a2, a3);
  (*(v5 + 8))(v8, a2);
  return v9;
}

uint64_t sub_231525868()
{
  v6[3] = &type metadata for NoParameters;
  v6[4] = &protocol witness table for NoParameters;
  __swift_project_boxed_opaque_existential_1(v6, &type metadata for NoParameters);
  off_28461B340[0]();
  v0 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  v5[2] = v6;
  v5[3] = OUTLINED_FUNCTION_5_19();
  v3 = sub_23150466C(sub_231525CFC, v5, &unk_2846102F8);

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_231525958(_OWORD *a1)
{
  v12[3] = &type metadata for SignalComputationContext;
  v12[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v12[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_project_boxed_opaque_existential_1(v12, &type metadata for SignalComputationContext);
  v4 = off_28461B138[0];
  sub_2314B5008(a1, v11);
  (v4)(&type metadata for SignalComputationContext, &protocol witness table for SignalComputationContext);
  v5 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v10[2] = v12;
  v10[3] = OUTLINED_FUNCTION_5_19();
  v8 = sub_23150466C(sub_231525CFC, v10, &unk_2846102F8);

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v8;
}

uint64_t sub_231525B04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231525B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231525BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = (*(v11 + 8))(v10, v11);
  v13 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();

  v19[2] = v20;
  v19[3] = sub_231528564(v12, a2, a3, v16);
  v17 = sub_23150466C(sub_231525CDC, v19, &unk_2846102F8);

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17;
}

uint64_t sub_231525D28()
{
  result = sub_231586964();
  qword_280D6F398 = result;
  unk_280D6F3A0 = v1;
  return result;
}

uint64_t static NowPlayingScoresSignal.signalName.getter()
{
  if (qword_280D6F390 != -1)
  {
    swift_once();
  }

  v0 = qword_280D6F398;

  return v0;
}

uint64_t NowPlayingScoresSignal.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static NowPlayingScoresSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  OUTLINED_FUNCTION_4_21();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = type metadata accessor for NowPlayingScoresSignal();
  OUTLINED_FUNCTION_4_21();
  v2 = swift_allocObject();
  v3 = sub_231527558(sub_23149A718, 0, v2);
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NowPlayingScoresSignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static NowPlayingScoresSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_2315273B0(v4, v1, v2, v3);
}

double sub_231525EF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B600, &qword_23158AAC0);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 32) = &type metadata for NowPlayingCountSignal;
  *(v0 + 40) = &protocol witness table for NowPlayingCountSignal;
  return result;
}

uint64_t static NowPlayingScoresSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  OUTLINED_FUNCTION_4_21();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  v3 = type metadata accessor for NowPlayingScoresSignal();
  OUTLINED_FUNCTION_4_21();
  v4 = swift_allocObject();
  sub_2314B5008(v8, &v7);
  v5 = sub_231527640(v8, sub_23149A718, 0, v4);
  *(v2 + 56) = v3;
  *(v2 + 64) = &protocol witness table for NowPlayingScoresSignal;
  *(v2 + 32) = v5;
  return v2;
}

uint64_t static NowPlayingScoresSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846126A0);
  *a1 = result;
  return result;
}

uint64_t sub_231526034(void (*a1)(uint64_t *))
{
  v2 = sub_2315260A4();
  v6 = sub_2314E40FC(v2);
  v7 = 3;
  a1(&v6);
  v3 = v6;
  v4 = v7;

  return sub_2314A5EEC(v3, v4);
}

uint64_t sub_2315260A4()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = qword_280D70420;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v3 = sub_231585FF4();
    __swift_project_value_buffer(v3, qword_280D72248);

    v4 = sub_231585FE4();
    v5 = sub_2315865D4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v6 = 136315138;
      type metadata accessor for Aggregation();
      sub_2315860E4();
      v7 = sub_2314A22E8();

      *(v6 + 4) = v7;
      _os_log_impl(&dword_231496000, v4, v5, "NowPlayingScoresSignal: cached  %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    return v1;
  }

  else
  {
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[6];

    v8 = sub_2314D0C64(v10, v11);

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v12 = sub_231585FF4();
    __swift_project_value_buffer(v12, qword_280D72248);

    v13 = sub_231585FE4();
    v14 = sub_2315865D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v15 = 136315138;
      type metadata accessor for Aggregation();
      sub_2315860E4();
      v16 = sub_2314A22E8();

      *(v15 + 4) = v16;
      _os_log_impl(&dword_231496000, v13, v14, "NowPlayingScoresSignal: queried %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  return v8;
}

void sub_231526368(uint64_t a1, uint64_t a2)
{
  v2 = &unk_280D70000;
  if (!*(a2 + 16))
  {
    if (qword_280D70420 != -1)
    {
      goto LABEL_104;
    }

    goto LABEL_93;
  }

  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B308, &qword_231589338);
  v160 = sub_2315860F4();
  v4 = 0;
  v163 = 0;
  *&v5 = 136315394;
  v159 = v5;
  v157 = v3;
  while (2)
  {
    v6 = byte_28460FCD0[v4++ + 32];
    switch(v6)
    {
      case 7:

        goto LABEL_57;
      default:
        v7 = sub_231586C44();

        if (v7)
        {
          goto LABEL_57;
        }

        v165 = 0;
        v166 = 0xE000000000000000;
        if (qword_280D6F628 != -1)
        {
          swift_once();
        }

        MEMORY[0x23192FF80](qword_280D6F630, *algn_280D6F638);
        LOBYTE(v164) = v6;
        sub_231586A54();
        if (!*(v3 + 16) || (v8 = OUTLINED_FUNCTION_7_20(), v10 = sub_23149C888(v8, v9), (v11 & 1) == 0))
        {
          if (v2[132] != -1)
          {
            OUTLINED_FUNCTION_3();
            swift_once();
          }

          v63 = sub_231585FF4();
          __swift_project_value_buffer(v63, qword_280D72248);

          v64 = sub_231585FE4();
          v65 = sub_2315865D4();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            *v66 = v159;
            OUTLINED_FUNCTION_7_20();
            v67 = sub_2314A22E8();

            *(v66 + 4) = v67;
            *(v66 + 12) = 2080;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB68, &unk_23158C810);
            sub_231586104();
            v68 = v4;
            v69 = sub_2314A22E8();

            *(v66 + 14) = v69;
            v4 = v68;
            _os_log_impl(&dword_231496000, v64, v65, "NowPlayingScoresSignal: No entry for %s in %s", v66, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_10();
LABEL_50:
            OUTLINED_FUNCTION_10();
LABEL_56:

            goto LABEL_57;
          }

LABEL_55:

          goto LABEL_56;
        }

        v12 = *(v3 + 56) + 16 * v10;
        v13 = *(v12 + 8);
        if (v13 == 255)
        {
          v2 = &unk_280D70000;
          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_3();
            swift_once();
          }

          v70 = sub_231585FF4();
          __swift_project_value_buffer(v70, qword_280D72248);

          v3 = v157;

          v64 = sub_231585FE4();
          v71 = sub_2315865D4();

          if (os_log_type_enabled(v64, v71))
          {
            v72 = v4;
            v73 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            *v73 = v159;
            OUTLINED_FUNCTION_7_20();
            v74 = sub_2314A22E8();

            *(v73 + 4) = v74;
            *(v73 + 12) = 2080;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB68, &unk_23158C810);
            sub_231586104();
            v75 = sub_2314A22E8();

            *(v73 + 14) = v75;
            _os_log_impl(&dword_231496000, v64, v71, "NowPlayingScoresSignal: Nil value for %s %s", v73, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_10();
            v4 = v72;
            goto LABEL_50;
          }

          goto LABEL_55;
        }

        v14 = *v12;
        if (v13 == 1)
        {
          v155 = v6;
          v156 = v4;
          sub_2314A5168(v14, 1u);

          v15 = 0;
          v16 = 1 << *(v14 + 32);
          if (v16 < 64)
          {
            v17 = ~(-1 << v16);
          }

          else
          {
            v17 = -1;
          }

          v18 = v17 & *(v14 + 64);
          v19 = (v16 + 63) >> 6;
          while (1)
          {
            v20 = v15;
            if (!v18)
            {
              while (1)
              {
                v15 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                if (v15 >= v19)
                {

                  v4 = v156;
                  v3 = v157;
                  v2 = &unk_280D70000;
                  goto LABEL_57;
                }

                v18 = *(v14 + 64 + 8 * v15);
                ++v20;
                if (v18)
                {
                  goto LABEL_20;
                }
              }

              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

LABEL_20:
            OUTLINED_FUNCTION_6_17();
            v23 = v22 | (v15 << 6);
            v24 = (*(v14 + 48) + 16 * v23);
            v26 = *v24;
            v25 = v24[1];
            v158 = *(*(v14 + 56) + 8 * v23);
            v27 = *(v161 + 56);
            if (!*(v27 + 16))
            {
              break;
            }

            v162 = &v153;
            v165 = v26;
            v166 = v25;
            MEMORY[0x28223BE20](v21);
            v152[2] = &v165;

            v28 = v26;
            v29 = v25;
            v30 = v163;
            v31 = sub_2314E62A8(sub_2314BB954, v152, v27);
            v163 = v30;

            if (v31)
            {
              v25 = v29;
              v26 = v28;
LABEL_25:
              v32 = v160;
              v33 = *(v160 + 16);
              v154 = v25;
              if (v33 && (v34 = sub_23149C888(v26, v25), (v35 & 1) != 0))
              {
                v36 = *(*(v32 + 56) + 8 * v34);
              }

              else
              {
                sub_2314B676C();
                v36 = sub_2315860F4();
              }

              LODWORD(v162) = swift_isUniquelyReferenced_nonNull_native();
              v165 = v36;
              v37 = sub_231574C34(v155);
              if (__OFADD__(*(v36 + 16), (v38 & 1) == 0))
              {
                __break(1u);
LABEL_106:
                __break(1u);
LABEL_107:
                __break(1u);
LABEL_108:
                __break(1u);
LABEL_109:
                sub_231586C84();
                __break(1u);
                return;
              }

              v39 = v37;
              v40 = v38;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B310, &unk_231589340);
              if (sub_231586A64())
              {
                v41 = sub_231574C34(v155);
                v43 = v154;
                if ((v40 & 1) != (v42 & 1))
                {
                  goto LABEL_109;
                }

                v39 = v41;
                v44 = v160;
              }

              else
              {
                v44 = v160;
                v43 = v154;
              }

              v162 = v165;
              if (v40)
              {
                *(v165[7] + 8 * v39) = v158;
              }

              else
              {
                OUTLINED_FUNCTION_1_26();
                *(v46 + v39) = v155;
                *(*(v45 + 56) + 8 * v39) = v158;
                v47 = *(v45 + 16);
                v48 = __OFADD__(v47, 1);
                v49 = v47 + 1;
                if (v48)
                {
                  goto LABEL_107;
                }

                *(v45 + 16) = v49;
              }

              LODWORD(v158) = swift_isUniquelyReferenced_nonNull_native();
              v165 = v44;
              v50 = sub_23149C888(v26, v43);
              v51 = *(v44 + 16);
              LODWORD(v160) = v52;
              if (__OFADD__(v51, (v52 & 1) == 0))
              {
                goto LABEL_106;
              }

              v53 = v50;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B318, &qword_23158C820);
              if (sub_231586A64())
              {
                v54 = sub_23149C888(v26, v43);
                if ((v160 & 1) != (v55 & 1))
                {
                  goto LABEL_109;
                }

                v53 = v54;
                if (v160)
                {
                  goto LABEL_45;
                }

LABEL_42:
                OUTLINED_FUNCTION_1_26();
                v58 = (v57 + 16 * v53);
                *v58 = v26;
                v58[1] = v43;
                *(*(v56 + 56) + 8 * v53) = v162;
                v59 = *(v56 + 16);
                v48 = __OFADD__(v59, 1);
                v60 = v59 + 1;
                if (v48)
                {
                  goto LABEL_108;
                }

                v160 = v56;
                *(v56 + 16) = v60;
              }

              else
              {
                if ((v160 & 1) == 0)
                {
                  goto LABEL_42;
                }

LABEL_45:

                v160 = v165;
                v61 = v165[7];
                v62 = *(v61 + 8 * v53);
                *(v61 + 8 * v53) = v162;
              }
            }

            else
            {
            }
          }

          goto LABEL_25;
        }

        v76 = OUTLINED_FUNCTION_5_20();
        sub_2314A5168(v76, v77);
        if (qword_280D70420 != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v78 = sub_231585FF4();
        __swift_project_value_buffer(v78, qword_280D72248);
        v79 = OUTLINED_FUNCTION_5_20();
        sub_2315074D0(v79, v80);

        v81 = sub_231585FE4();
        v82 = sub_2315865D4();

        v83 = OUTLINED_FUNCTION_5_20();
        sub_2314D70F4(v83, v84);
        if (os_log_type_enabled(v81, v82))
        {
          v85 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *v85 = v159;
          OUTLINED_FUNCTION_7_20();
          v86 = sub_2314A22E8();

          *(v85 + 4) = v86;
          *(v85 + 12) = 2080;
          v165 = v14;
          LOBYTE(v166) = v13;
          SignalValue.description.getter();
          sub_2314A5EEC(v165, v166);
          v87 = sub_2314A22E8();

          *(v85 + 14) = v87;
          _os_log_impl(&dword_231496000, v81, v82, "NowPlayingScoresSignal: invalid SignalValue for %s: %s", v85, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
        }

        else
        {

          v88 = OUTLINED_FUNCTION_5_20();
          sub_2314D70F4(v88, v89);
        }

        v3 = v157;
        v2 = &unk_280D70000;
LABEL_57:
        if (v4 != 8)
        {
          continue;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B320, &unk_231589350);
        v90 = v160;
        v91 = sub_231586AC4();
        v92 = 0;
        v94 = v90 + 64;
        v93 = *(v90 + 64);
        v95 = *(v90 + 32);
        OUTLINED_FUNCTION_3_0();
        v100 = v99 & v97;
        v101 = (v98 + 63) >> 6;
        v162 = (v96 + 64);
        if ((v99 & v97) == 0)
        {
LABEL_68:
          v103 = v92;
          while (1)
          {
            v92 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
              goto LABEL_99;
            }

            if (v92 >= v101)
            {
              v116 = *(v161 + 56);

              sub_23149FF38();
              v118 = v117;

              v120 = sub_23152A84C(v119, v118);

              v121 = 0;
              v122 = *(v120 + 56);
              v162 = v120;
              v123 = *(v120 + 32);
              OUTLINED_FUNCTION_3_0();
              v127 = v126 & v125;
              v129 = (v128 + 63) >> 6;
              v158 = v129;
              *&v159 = v124;
              if ((v126 & v125) != 0)
              {
                goto LABEL_81;
              }

LABEL_77:
              while (1)
              {
                v130 = v121 + 1;
                if (__OFADD__(v121, 1))
                {
                  goto LABEL_100;
                }

                if (v130 >= v129)
                {

                  v147 = *(v161 + 64);
                  *(v161 + 64) = v91;

                  return;
                }

                v127 = *(v124 + 8 * v130);
                ++v121;
                if (v127)
                {
                  v121 = v130;
LABEL_81:
                  while (1)
                  {
                    v131 = (v162[6] + ((v121 << 10) | (16 * __clz(__rbit64(v127)))));
                    v133 = *v131;
                    v132 = v131[1];
                    sub_2314B676C();

                    v134 = sub_2315860F4();
                    type metadata accessor for Aggregation();
                    swift_allocObject();
                    v135 = sub_2314B53E8(v134);
                    swift_isUniquelyReferenced_nonNull_native();
                    v165 = v91;
                    v136 = sub_23149C888(v133, v132);
                    if (__OFADD__(v91[2], (v137 & 1) == 0))
                    {
                      goto LABEL_102;
                    }

                    v138 = v136;
                    v139 = v137;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB60, &qword_23158C808);
                    if (sub_231586A64())
                    {
                      v140 = sub_23149C888(v133, v132);
                      if ((v139 & 1) != (v141 & 1))
                      {
                        goto LABEL_109;
                      }

                      v138 = v140;
                    }

                    v91 = v165;
                    if (v139)
                    {
                      v142 = v165[7];
                      v143 = *(v142 + 8 * v138);
                      *(v142 + 8 * v138) = v135;
                    }

                    else
                    {
                      v165[(v138 >> 6) + 8] |= 1 << v138;
                      v144 = (v91[6] + 16 * v138);
                      *v144 = v133;
                      v144[1] = v132;
                      *(v91[7] + 8 * v138) = v135;
                      v145 = v91[2];
                      v48 = __OFADD__(v145, 1);
                      v146 = v145 + 1;
                      if (v48)
                      {
                        goto LABEL_103;
                      }

                      v91[2] = v146;
                    }

                    v127 &= v127 - 1;
                    v129 = v158;
                    v124 = v159;
                    if (!v127)
                    {
                      goto LABEL_77;
                    }
                  }
                }
              }
            }

            v104 = *(v94 + 8 * v92);
            ++v103;
            if (v104)
            {
              v102 = __clz(__rbit64(v104));
              v100 = (v104 - 1) & v104;
              goto LABEL_73;
            }
          }
        }

        while (1)
        {
          OUTLINED_FUNCTION_6_17();
LABEL_73:
          v105 = v102 | (v92 << 6);
          v106 = *(v90 + 56);
          v107 = (*(v90 + 48) + 16 * v105);
          v109 = *v107;
          v108 = v107[1];
          v110 = *(v106 + 8 * v105);
          type metadata accessor for Aggregation();
          swift_allocObject();

          v112 = sub_2314B53E8(v111);
          *(v162 + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v105;
          v113 = (v91[6] + 16 * v105);
          *v113 = v109;
          v113[1] = v108;
          *(v91[7] + 8 * v105) = v112;
          v114 = v91[2];
          v48 = __OFADD__(v114, 1);
          v115 = v114 + 1;
          if (v48)
          {
            break;
          }

          v91[2] = v115;
          v90 = v160;
          if (!v100)
          {
            goto LABEL_68;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        OUTLINED_FUNCTION_3();
        swift_once();
LABEL_93:
        v148 = sub_231585FF4();
        __swift_project_value_buffer(v148, qword_280D72248);
        v163 = sub_231585FE4();
        v149 = sub_2315865D4();
        if (os_log_type_enabled(v163, v149))
        {
          v150 = swift_slowAlloc();
          *v150 = 0;
          _os_log_impl(&dword_231496000, v163, v149, "NowPlayingScoresSignal: Received no upstream cached values", v150, 2u);
          OUTLINED_FUNCTION_10();
        }

        v151 = v163;

        return;
    }
  }
}

void *NowPlayingScoresSignal.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return v0;
}

uint64_t NowPlayingScoresSignal.__deallocating_deinit()
{
  NowPlayingScoresSignal.deinit();
  OUTLINED_FUNCTION_4_21();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315272FC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_2315273B0(v4, v1, v2, v3);
}

uint64_t sub_2315273B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v6 + 16);
  v13(&v19 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_231588340;
  v15 = type metadata accessor for NowPlayingScoresSignal();
  v16 = swift_allocObject();
  (v13)(v10, v12, a3);
  v17 = sub_2315277D8(v10, sub_23149A718, 0, v16, a3, a4);
  *(v14 + 56) = v15;
  *(v14 + 64) = &protocol witness table for NowPlayingScoresSignal;
  *(v14 + 32) = v17;
  (*(v6 + 8))(v12, a3);
  return v14;
}

void *sub_231527558(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_280D6F390 != -1)
  {
    swift_once();
  }

  v6 = unk_280D6F3A0;
  a3[2] = qword_280D6F398;
  a3[3] = v6;
  a3[8] = 0;
  v7 = type metadata accessor for BiomeQueriesNowPlaying(0);
  a3[5] = 0;
  a3[6] = 0;
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();

  v11 = MEMORY[0x277D84F90];
  v12 = sub_231528564(MEMORY[0x277D84F90], a1, a2, v10);
  v13 = a3[6];
  a3[4] = v12;
  a3[5] = 0;
  a3[6] = 0;

  a3[7] = v11;
  return a3;
}

void *sub_231527640(_OWORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23[3] = &type metadata for SignalComputationContext;
  v23[4] = &protocol witness table for SignalComputationContext;
  v8 = swift_allocObject();
  v23[0] = v8;
  v9 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = a1[2];
  if (qword_280D6F390 != -1)
  {
    swift_once();
  }

  v10 = unk_280D6F3A0;
  a4[2] = qword_280D6F398;
  a4[3] = v10;
  a4[8] = 0;
  a4[5] = 0;
  a4[6] = 0;
  v11 = __swift_project_boxed_opaque_existential_1(v23, &type metadata for SignalComputationContext);
  v12 = *(v8 + 16);
  v13 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();

  v18 = sub_231528564(v17, a2, a3, v16);
  v20 = *(v8 + 40);
  v19 = *(v8 + 48);
  v21 = a4[6];
  a4[4] = v18;
  a4[5] = v20;
  a4[6] = v19;

  a4[7] = *v11;

  __swift_destroy_boxed_opaque_existential_1(v23);
  return a4;
}

void *sub_2315277D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a5 - 8) + 32))();
  if (qword_280D6F390 != -1)
  {
    swift_once();
  }

  v10 = unk_280D6F3A0;
  a4[2] = qword_280D6F398;
  a4[3] = v10;
  a4[8] = 0;
  a4[5] = 0;
  a4[6] = 0;
  v11 = v26;
  v23 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v12 = *(a6 + 8);

  v13 = v12(a5, a6);
  v14 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();

  a4[4] = sub_231528564(v13, a2, a3, v17);
  v18 = (*(a6 + 16))(a5, a6);
  v19 = a4[6];
  a4[5] = v18;
  a4[6] = v20;

  v21 = v12(v11, v23);

  a4[7] = v21;
  __swift_destroy_boxed_opaque_existential_1(v25);
  return a4;
}

uint64_t sub_2315279A4()
{
  result = sub_231586964();
  qword_280D6F920 = result;
  qword_280D6F928 = v1;
  return result;
}

uint64_t *sub_2315279D8()
{
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68();
  }

  return &qword_280D6F920;
}

uint64_t static NowPlayingSignal.signalName.getter()
{
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68();
  }

  swift_beginAccess();
  v0 = qword_280D6F920;

  return v0;
}

uint64_t static NowPlayingSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68();
  }

  swift_beginAccess();
  qword_280D6F920 = a1;
  qword_280D6F928 = a2;
}

uint64_t (*static NowPlayingSignal.signalName.modify())()
{
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_231527B80@<X0>(void *a1@<X8>)
{
  sub_2315279D8();
  swift_beginAccess();
  v2 = qword_280D6F928;
  *a1 = qword_280D6F920;
  a1[1] = v2;
}

uint64_t sub_231527BD4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2315279D8();
  swift_beginAccess();
  qword_280D6F920 = v2;
  qword_280D6F928 = v1;
}

uint64_t NowPlayingSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double NowPlayingSignal.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static NowPlayingSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for NowPlayingSignal;
  *(v0 + 64) = &protocol witness table for NowPlayingSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6F918 != -1)
  {
    OUTLINED_FUNCTION_0_68();
  }

  swift_beginAccess();
  v2 = qword_280D6F928;
  *(v1 + 16) = qword_280D6F920;
  *(v1 + 24) = v2;
  *(v1 + 32) = &unk_2846107E8;
  v3 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();

  v7 = MEMORY[0x277D84F90];
  *(v1 + 40) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v6);
  *(v1 + 48) = v7;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  return v0;
}

uint64_t static NowPlayingSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231528804(v3, v1, v2);
}

uint64_t static NowPlayingSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231528628(v3);
}

uint64_t static NowPlayingSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846126F8);
  *a1 = result;
  return result;
}

uint64_t NowPlayingSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v3 = *(v1 + 24);
  v4 = sub_2314CE1D0();
  if (v4)
  {
    v6 = v4;
    v7 = 1;
    a1(&v6);
    return sub_2314A5EEC(v6, v7);
  }

  else
  {
    v6 = -1;
    v7 = 0;
    return (a1)(&v6);
  }
}

void NowPlayingSignal.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 48);
  v8 = *(v2 + 32);
  v9 = v5;
  v10 = *(v2 + 64);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_231527F74(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v43 = *a1;
  v44 = v4;
  swift_unknownObjectRetain();
  sub_2315074D0(v43, v4);
  sub_2314D6BA0(&v43, v45);
  if (v45[0])
  {
    v39 = v45[0];
    v40 = a2;
    v5 = v45[4];
    v6 = sub_2315860F4();
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v41 = v5 + 64;
    v42 = v5;
    if (v10)
    {
      while (1)
      {
        v13 = v12;
LABEL_9:
        v14 = (*(v5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
        v16 = *v14;
        v15 = v14[1];

        swift_isUniquelyReferenced_nonNull_native();
        v43 = v6;
        v17 = sub_23149C888(v16, v15);
        if (__OFADD__(v6[2], (v18 & 1) == 0))
        {
          break;
        }

        v19 = v17;
        v2 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v20 = sub_23149C888(v16, v15);
          if ((v2 & 1) != (v21 & 1))
          {
            sub_231586C84();
            __break(1u);
            return;
          }

          v19 = v20;
        }

        v10 &= v10 - 1;
        v6 = v43;
        if (v2)
        {
          *(v43[7] + 8 * v19) = 0;
        }

        else
        {
          v43[(v19 >> 6) + 8] |= 1 << v19;
          v22 = (v6[6] + 16 * v19);
          *v22 = v16;
          v22[1] = v15;
          *(v6[7] + 8 * v19) = 0;
          v23 = v6[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_31;
          }

          v6[2] = v25;
        }

        v12 = v13;
        v7 = v41;
        v5 = v42;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      while (1)
      {
LABEL_6:
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        if (v13 >= v11)
        {
          break;
        }

        v10 = *(v7 + 8 * v13);
        ++v12;
        if (v10)
        {
          goto LABEL_9;
        }
      }

      v13 = v39;
      [v39 playbackState];
      swift_isUniquelyReferenced_nonNull_native();
      v43 = v6;
      sub_23157562C();
      v2 = v43;
      if (qword_280D70420 != -1)
      {
        goto LABEL_32;
      }
    }

    v26 = sub_231585FF4();
    __swift_project_value_buffer(v26, qword_280D72248);

    v27 = v13;

    v28 = sub_231585FE4();
    v29 = sub_2315865D4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43 = v31;
      *v30 = 136315394;

      sub_2315860E4();

      v32 = sub_2314A22E8();

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;

      sub_2315860E4();

      v33 = sub_2314A22E8();

      *(v30 + 14) = v33;
      _os_log_impl(&dword_231496000, v28, v29, "NowPlayingSignal: updated %s to %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v31, -1, -1);
      MEMORY[0x231931280](v30, -1, -1);
    }

    a2 = v40;
    v34 = 1;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v35 = sub_231585FF4();
    __swift_project_value_buffer(v35, qword_280D72248);
    v36 = sub_231585FE4();
    v37 = sub_2315865E4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_231496000, v36, v37, "NowPlayingSignal: Invalid input", v38, 2u);
      MEMORY[0x231931280](v38, -1, -1);
    }

    v2 = 0;
    v34 = -1;
  }

  *a2 = v2;
  *(a2 + 8) = v34;
}

uint64_t sub_2315284EC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231528804(v3, v1, v2);
}

void *sub_231528564(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = &type metadata for BiomeSQLQueryResultProvider;
  v13 = &protocol witness table for BiomeSQLQueryResultProvider;
  v8 = OBJC_IVAR____TtC11SiriSignals22BiomeQueriesNowPlaying_cacheCountAggregation;
  v9 = type metadata accessor for BiomeQueriesNowPlaying.CachedCountsAggregation(0);
  __swift_storeEnumTagSinglePayload(a4 + v8, 1, 1, v9);
  if (qword_280D6F260 != -1)
  {
    swift_once();
  }

  a4[2] = a1;
  sub_2314D62B4(&v11, (a4 + 3));
  a4[8] = a2;
  a4[9] = a3;
  return a4;
}

uint64_t sub_231528628(uint64_t a1)
{
  v17[3] = &type metadata for SignalComputationContext;
  v17[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v17[0] = v2;
  v3 = *a1;
  v4 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v4;
  v2[3] = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v17, v16);
  *(v5 + 56) = &type metadata for NowPlayingSignal;
  *(v5 + 64) = &protocol witness table for NowPlayingSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  sub_2314B5008(a1, &v15);
  if (qword_280D6F918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6F928;
  *(v6 + 16) = qword_280D6F920;
  *(v6 + 24) = v7;
  *(v6 + 32) = &unk_2846126C8;
  v8 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v9 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();

  *(v6 + 40) = sub_231528564(v13, sub_23149A718, 0, v12);
  *(v6 + 48) = *v8;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;

  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v5;
}

uint64_t sub_231528804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[3] = a2;
  v20[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a2 - 8) + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v20, v17);
  *(v5 + 56) = &type metadata for NowPlayingSignal;
  *(v5 + 64) = &protocol witness table for NowPlayingSignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  if (qword_280D6F918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6F928;
  *(v6 + 16) = qword_280D6F920;
  *(v6 + 24) = v7;
  *(v6 + 32) = &unk_284610170;
  v8 = v18;
  v16 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = *(a3 + 8);

  v10 = v9(a2, a3);
  v11 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v6 + 40) = sub_231528564(v10, sub_23149A718, 0, v14);
  *(v6 + 48) = v9(v8, v16);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v5;
}

uint64_t sub_231528A1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231528A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231528AD4()
{
  result = sub_231586964();
  qword_280D6F618 = result;
  qword_280D6F620 = v1;
  return result;
}

uint64_t *sub_231528B08()
{
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  return &qword_280D6F618;
}

uint64_t static NowPlayingStateSignal.signalName.getter()
{
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  swift_beginAccess();
  v0 = qword_280D6F618;

  return v0;
}

uint64_t static NowPlayingStateSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  swift_beginAccess();
  qword_280D6F618 = a1;
  qword_280D6F620 = a2;
}

uint64_t (*static NowPlayingStateSignal.signalName.modify())()
{
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_231528CB0@<X0>(void *a1@<X8>)
{
  sub_231528B08();
  swift_beginAccess();
  v2 = qword_280D6F620;
  *a1 = qword_280D6F618;
  a1[1] = v2;
}

uint64_t sub_231528D04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231528B08();
  swift_beginAccess();
  qword_280D6F618 = v2;
  qword_280D6F620 = v1;
}

uint64_t NowPlayingStateSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double NowPlayingStateSignal.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(1, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static NowPlayingStateSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for NowPlayingStateSignal;
  *(v0 + 64) = &protocol witness table for NowPlayingStateSignal;
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  swift_beginAccess();
  v1 = qword_280D6F620;
  *(v0 + 32) = qword_280D6F618;
  *(v0 + 40) = v1;
  v2 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();

  OUTLINED_FUNCTION_1_27();
  *(v0 + 48) = sub_231528564(v6, v7, v8, v5);
  return v0;
}

uint64_t static NowPlayingStateSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152913C(v3, v1, v2);
}

uint64_t static NowPlayingStateSignal.instances(context:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  *(v2 + 56) = &type metadata for NowPlayingStateSignal;
  *(v2 + 64) = &protocol witness table for NowPlayingStateSignal;
  if (qword_280D6F610 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  swift_beginAccess();
  v3 = qword_280D6F620;
  *(v2 + 32) = qword_280D6F618;
  *(v2 + 40) = v3;
  v4 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  OUTLINED_FUNCTION_1_27();
  *(v2 + 48) = sub_231528564(v8, v9, v10, v7);
  return v2;
}

uint64_t static NowPlayingStateSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612720);
  *a1 = result;
  return result;
}

uint64_t NowPlayingStateSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = sub_2314CE450();
  if (v4)
  {
    v6 = v4;
    v7 = 1;
    a1(&v6);
    return sub_2314A5EEC(v6, v7);
  }

  else
  {
    v6 = -1;
    v7 = 0;
    return (a1)(&v6);
  }
}

uint64_t sub_2315290DC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152913C(v3, v1, v2);
}

uint64_t sub_23152913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231588340;
  *(v9 + 56) = &type metadata for NowPlayingStateSignal;
  *(v9 + 64) = &protocol witness table for NowPlayingStateSignal;
  if (qword_280D6F610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_280D6F620;
  *(v9 + 32) = qword_280D6F618;
  *(v9 + 40) = v10;
  v11 = *(a3 + 8);

  v12 = v11(a2, a3);
  v13 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v9 + 48) = sub_231528564(v12, sub_23149A718, 0, v16);
  (*(v5 + 8))(v8, a2);
  return v9;
}

void sub_231529330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x277D84F90];
    sub_23152D598();
    v5 = sub_23152B4D4(v2);
    v6 = 0;
    v7 = v2 + 64;
    v25 = v2 + 72;
    v26 = v1;
    v27 = v2 + 64;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_24;
        }

        v28 = v4;
        v29 = v6;
        v30 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v31 = *v9;
        v32 = v9[1];

        v10 = sub_231586334();
        v12 = v11;
        v13 = v2;
        v14 = *(v33 + 16);
        if (v14 >= *(v33 + 24) >> 1)
        {
          sub_23152D598();
        }

        *(v33 + 16) = v14 + 1;
        v15 = v33 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        v16 = 1 << *(v13 + 32);
        if (v5 >= v16)
        {
          goto LABEL_25;
        }

        v7 = v27;
        v17 = *(v27 + 8 * v8);
        if ((v17 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        v2 = v13;
        if (*(v13 + 36) != v30)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v5 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v19 = v26;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v19 = v26;
          v22 = (v25 + 8 * v8);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_2314ABA68(v5, v30, v28 & 1);
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_18;
            }
          }

          sub_2314ABA68(v5, v30, v28 & 1);
        }

LABEL_18:
        v6 = v29 + 1;
        if (v29 + 1 == v19)
        {
          return;
        }

        v4 = 0;
        v3 = *(v2 + 36);
        v5 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_231529598(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_23152A248(a1);
    return a2;
  }

  else
  {

    return sub_23152A374(a1, a2);
  }
}

uint64_t sub_2315295EC()
{
  sub_23152A204();
  result = sub_231586724();
  qword_27DD600F0 = result;
  return result;
}

uint64_t sub_231529624()
{
  sub_23152A204();
  result = sub_231586724();
  qword_27DD600F8 = result;
  return result;
}

uint64_t sub_23152989C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23158C930;
  v3 = *(v0 + 16);
  v4 = *(v3 + 16);
  *(v2 + 32) = sub_231586564();
  v142 = v0;
  v5 = *(v0 + 24);
  v6 = *(v5 + 16);
  *(v2 + 40) = sub_231586564();
  v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v8 = OUTLINED_FUNCTION_15_6();
  v9 = sub_23152A118(v8, 65552);
  if (v9)
  {
    v141 = v9;
    v16 = 0;
    v133 = v3 + 32;
    v134 = *(v3 + 16);
    v132 = v5 + 40;
    *&v10 = 136315138;
    v139 = v10;
    *&v10 = 136315394;
    v136 = v10;
    v140 = v5;
    v138 = v1;
    v131 = v3;
LABEL_8:
    if (v16 == v134)
    {
      return v141;
    }

    if (v16 < *(v3 + 16))
    {
      v17 = (v133 + 16 * v16);
      v18 = v17[1];
      v143 = *v17;
      v137 = v16 + 1;
      v144 = *(v5 + 16);

      v19 = 0;
      for (i = v132; ; i += 2)
      {
        if (v144 == v19)
        {

          v16 = v137;
          v3 = v131;
          goto LABEL_8;
        }

        if (v19 >= *(v5 + 16))
        {
          break;
        }

        v21 = *(i - 1);
        v22 = *i;
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_23158C930;

        v24 = v16;
        *(v23 + 32) = sub_231586564();
        *(v23 + 40) = sub_231586564();
        v25 = *(v142 + 32);
        if (*(v25 + 16) && (v26 = sub_23149C888(v143, v18), (v27 & 1) != 0))
        {
          v28 = *(v25 + 56) + 16 * v26;
          v29 = *v28;
          switch(*(v28 + 8))
          {
            case 1:
              v68 = *(v29 + 16);
              v69 = *v28;

              if (v68)
              {
                v70 = sub_23149C888(v21, v22);
                if (v71)
                {
                  v25 = v70;

                  v72 = *(*(v29 + 56) + 8 * v25);
                  sub_231586564();
                  OUTLINED_FUNCTION_16_6();
                  sub_23152A204();
                  OUTLINED_FUNCTION_12_8();
                  v73 = OUTLINED_FUNCTION_19_6();
                  v80 = OUTLINED_FUNCTION_8_16(v73, sel_setObject_forKeyedSubscript_, v74, v75, v76, v77, v78, v79, v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139, *(&v139 + 1), v140, v141);
                  [v80 v81];
                  v66 = v29;
                  v67 = 1;
                  goto LABEL_32;
                }
              }

              if (qword_27DD5AE40 != -1)
              {
                OUTLINED_FUNCTION_2_24();
                swift_once();
              }

              sub_23152A204();
              v106 = OUTLINED_FUNCTION_12_8();

              v114 = OUTLINED_FUNCTION_8_16(v107, sel_setObject_forKeyedSubscript_, v108, v109, v110, v111, v112, v113, v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139, *(&v139 + 1), v140, v141);
              [v114 v115];

              if (qword_280D70420 != -1)
              {
                OUTLINED_FUNCTION_3();
                swift_once();
              }

              v116 = sub_231585FF4();
              __swift_project_value_buffer(v116, qword_280D72248);

              v117 = sub_231585FE4();
              v118 = sub_2315865E4();

              if (os_log_type_enabled(v117, v118))
              {
                v119 = swift_slowAlloc();
                v120 = swift_slowAlloc();
                OUTLINED_FUNCTION_9_13(v120, v121, v122, v123, v124, v125, v126, v127, v130, v131, v132, v133, v134, v135, v136);

                *(v119 + 14) = OUTLINED_FUNCTION_11_11();
                _os_log_impl(&dword_231496000, v117, v118, "OrderedFeatureMap: Couldn't find a signal value for candidate %s in %s; setting to missing candidate error", v119, 0x16u);
                OUTLINED_FUNCTION_18_7();
                OUTLINED_FUNCTION_10();
                OUTLINED_FUNCTION_10();

                v104 = v29;
                v105 = 1;
                goto LABEL_46;
              }

              v128 = v29;
              v129 = 1;
              goto LABEL_49;
            case 2:

              sub_2315864B4();
              goto LABEL_25;
            case 3:
              v52 = *(v29 + 16);
              v53 = *v28;

              if (v52 && (v54 = sub_23149C888(v21, v22), (v55 & 1) != 0))
              {
                v25 = v54;

                v56 = *(*(v29 + 56) + 8 * v25);
                sub_2315864B4();
                OUTLINED_FUNCTION_16_6();
                sub_23152A204();
                OUTLINED_FUNCTION_12_8();
                v57 = OUTLINED_FUNCTION_19_6();
                v64 = OUTLINED_FUNCTION_8_16(v57, sel_setObject_forKeyedSubscript_, v58, v59, v60, v61, v62, v63, v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139, *(&v139 + 1), v140, v141);
                [v64 v65];
                v66 = v29;
                v67 = 3;
LABEL_32:
                sub_2314A5EEC(v66, v67);
LABEL_33:
              }

              else
              {
                if (qword_27DD5AE40 != -1)
                {
                  OUTLINED_FUNCTION_2_24();
                  swift_once();
                }

                sub_23152A204();
                v82 = OUTLINED_FUNCTION_12_8();

                v90 = OUTLINED_FUNCTION_8_16(v83, sel_setObject_forKeyedSubscript_, v84, v85, v86, v87, v88, v89, v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139, *(&v139 + 1), v140, v141);
                [v90 v91];

                if (qword_280D70420 != -1)
                {
                  OUTLINED_FUNCTION_3();
                  swift_once();
                }

                v92 = sub_231585FF4();
                __swift_project_value_buffer(v92, qword_280D72248);

                v93 = sub_231585FE4();
                v94 = sub_2315865E4();

                if (os_log_type_enabled(v93, v94))
                {
                  v95 = swift_slowAlloc();
                  v96 = swift_slowAlloc();
                  OUTLINED_FUNCTION_9_13(v96, v97, v98, v99, v100, v101, v102, v103, v130, v131, v132, v133, v134, v135, v136);

                  *(v95 + 14) = OUTLINED_FUNCTION_11_11();
                  _os_log_impl(&dword_231496000, v93, v94, "OrderedFeatureMap: Couldn't find a signal value for candidate %s in %s; setting to missing candidate error", v95, 0x16u);
                  OUTLINED_FUNCTION_18_7();
                  OUTLINED_FUNCTION_10();
                  OUTLINED_FUNCTION_10();

                  v104 = v29;
                  v105 = 3;
LABEL_46:
                  sub_2314A5EEC(v104, v105);
                }

                else
                {

                  v128 = v29;
                  v129 = 3;
LABEL_49:
                  sub_2314A5EEC(v128, v129);
                }

                v5 = v140;
              }

              break;
            default:

              sub_231586564();
LABEL_25:
              OUTLINED_FUNCTION_16_6();
              sub_23152A204();
              OUTLINED_FUNCTION_12_8();
              v43 = OUTLINED_FUNCTION_19_6();
              v50 = OUTLINED_FUNCTION_8_16(v43, sel_setObject_forKeyedSubscript_, v44, v45, v46, v47, v48, v49, v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139, *(&v139 + 1), v140, v141);
              [v50 v51];
              goto LABEL_33;
          }
        }

        else
        {

          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_3();
            swift_once();
          }

          v30 = sub_231585FF4();
          __swift_project_value_buffer(v30, qword_280D72248);

          v31 = sub_231585FE4();
          v32 = sub_2315865E4();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            *v33 = v139;
            *(v33 + 4) = sub_2314A22E8();
            _os_log_impl(&dword_231496000, v31, v32, "OrderedFeatureMap: Couldn't find a signal value for %s; setting to missing feature error", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v145);
            OUTLINED_FUNCTION_10();
            v5 = v140;
            OUTLINED_FUNCTION_10();
          }

          if (qword_27DD5AE38 != -1)
          {
            swift_once();
          }

          sub_23152A204();
          OUTLINED_FUNCTION_12_8();
          v34 = OUTLINED_FUNCTION_19_6();
          v41 = OUTLINED_FUNCTION_8_16(v34, sel_setObject_forKeyedSubscript_, v35, v36, v37, v38, v39, v40, v130, v131, v132, v133, v134, v135, v136, *(&v136 + 1), v137, v138, v139, *(&v139 + 1), v140, v141);
          [v41 v42];
        }

        ++v19;
        v16 = v24;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_56;
  }

  if (qword_280D70420 != -1)
  {
LABEL_56:
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v11 = sub_231585FF4();
  __swift_project_value_buffer(v11, qword_280D72248);
  v12 = sub_231585FE4();
  v13 = sub_2315865E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_231496000, v12, v13, "OrderedFeatureMap: Failed to create MLMultiArray", v14, 2u);
    OUTLINED_FUNCTION_10();
  }

  return 0;
}

id sub_23152A118(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_23152A204();
  v4 = sub_231586374();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_2315856D4();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_23152A204()
{
  result = qword_280D6FE68;
  if (!qword_280D6FE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6FE68);
  }

  return result;
}

uint64_t sub_23152A248(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_23152ACF4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_23152A374(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v60 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v51 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v53 = v12;
    v54 = v7;
    v55 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_231586D14();

        sub_231586274();
        v21 = sub_231586D44();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_231586C44() & 1) != 0)
          {
            v57 = v51;
            v58 = v16;
            v59 = v11;
            v3 = v54;
            v12 = v55;
            v56[0] = v55;
            v56[1] = v54;

            v26 = *(v5 + 32);
            v48 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v48;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v49 = &v47;
              MEMORY[0x28223BE20](v25);
              v7 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v52 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v53;
              while (1)
              {
                v50 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_231586D14();

                sub_231586274();
                v36 = sub_231586D44();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v54;
                    v12 = v55;
                    v30 = v53;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_231586C44();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v52[v7];
                v52[v7] = v41 & ~v8;
                v3 = v54;
                v12 = v55;
                v30 = v53;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v50 - 1;
                if (__OFSUB__(v50, 1))
                {
                  __break(1u);
                }

                if (v50 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  sub_23152B004(v52, v48, v50, v5);
                  v5 = v42;
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v45 = swift_slowAlloc();
            v46 = sub_2314B0CE8(v45, v48, (v5 + 56), v48, v5, v7, v56);

            MEMORY[0x231931280](v45, -1, -1);
            v51 = v57;
            v5 = v46;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v54;
        v14 = v55;
        v12 = v53;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_2314A4B70();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v43 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_23152A84C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v64 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v55 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v57 = v12;
    v58 = v7;
    v59 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      OUTLINED_FUNCTION_16();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      v23 = *(v5 + 40);
      sub_231586D14();

      sub_231586274();
      v24 = sub_231586D44();
      v25 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v24 & v25;
        v4 = (v24 & v25) >> 6;
        v8 = 1 << (v24 & v25);
        if ((v8 & *(v13 + 8 * v4)) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v26 = (*(v5 + 48) + 16 * v7);
        v27 = *v26 == v22 && v26[1] == v21;
        if (v27 || (sub_231586C44() & 1) != 0)
        {
          break;
        }

        v24 = v7 + 1;
      }

      v61 = v55;
      v62 = v16;
      v63 = v11;
      v3 = v58;
      v12 = v59;
      v60[0] = v59;
      v60[1] = v58;

      v29 = *(v5 + 32);
      v52 = ((1 << v29) + 63) >> 6;
      v2 = 8 * v52;
      if ((v29 & 0x3Fu) > 0xD)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v53 = &v51;
        MEMORY[0x28223BE20](v28);
        v7 = &v51 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v7, (v5 + 56), v2);
        v30 = *(v7 + 8 * v4) & ~v8;
        v31 = *(v5 + 16);
        v56 = v7;
        *(v7 + 8 * v4) = v30;
        v32 = v31 - 1;
        v33 = v57;
        while (1)
        {
          v54 = v32;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          OUTLINED_FUNCTION_16();
          v36 = (*(v12 + 48) + ((v16 << 10) | (16 * v35)));
          v2 = *v36;
          v37 = v36[1];
          v38 = *(v5 + 40);
          sub_231586D14();

          sub_231586274();
          sub_231586D44();
          v39 = *(v5 + 32);
          OUTLINED_FUNCTION_17_7();
          v42 = ~v41;
          do
          {
            v4 = v40 & v42;
            v7 = (v40 & v42) >> 6;
            v8 = 1 << (v40 & v42);
            if ((v8 & *(v13 + 8 * v7)) == 0)
            {

              v3 = v58;
              v12 = v59;
              v33 = v57;
              goto LABEL_23;
            }

            v43 = (*(v5 + 48) + 16 * v4);
            if (*v43 == v2 && v43[1] == v37)
            {
              break;
            }

            v45 = sub_231586C44();
            v40 = v4 + 1;
          }

          while ((v45 & 1) == 0);

          v46 = v56[v7];
          v56[v7] = v46 & ~v8;
          v3 = v58;
          v12 = v59;
          v33 = v57;
          if ((v46 & v8) == 0)
          {
            goto LABEL_23;
          }

          v32 = v54 - 1;
          if (__OFSUB__(v54, 1))
          {
            __break(1u);
          }

          if (v54 == 1)
          {

            v5 = MEMORY[0x277D84FA0];
            goto LABEL_43;
          }
        }

        while (1)
        {
          v34 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v34 >= v33)
          {
            sub_23152B004(v56, v52, v54, v5);
            v5 = v47;
            goto LABEL_43;
          }

          v11 = *(v3 + 8 * v34);
          ++v16;
          if (v11)
          {
            v16 = v34;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v50 = swift_slowAlloc();
      sub_2314B0CE8(v50, v52, (v5 + 56), v52, v5, v7, v60);
      OUTLINED_FUNCTION_15_6();

      OUTLINED_FUNCTION_10();
      v55 = v61;
      v5 = v7;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_46;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_43:
    sub_2314A4B70();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v48 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_23152ACF4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_231586D14();
  sub_231586274();
  v7 = sub_231586D44();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_231586C44() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_231542F1C();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_23152B318(v9);
  *v2 = v19;
  return v16;
}

void sub_23152AE1C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v29 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_231586D14();

    sub_231586274();
    sub_231586D44();
    v17 = *(a3 + 32);
    OUTLINED_FUNCTION_17_7();
    v20 = ~v19;
    do
    {
      v21 = v18 & v20;
      v22 = (v18 & v20) >> 6;
      v23 = 1 << (v18 & v20);
      if ((v23 & *(v9 + 8 * v22)) == 0)
      {

        goto LABEL_3;
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 == v15 && v24[1] == v14)
      {
        break;
      }

      v26 = sub_231586C44();
      v18 = v21 + 1;
    }

    while ((v26 & 1) == 0);

    v27 = a1[v22];
    a1[v22] = v27 & ~v23;
    if ((v27 & v23) == 0)
    {
      goto LABEL_3;
    }

    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_23;
    }

    if (v29 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_23152B004(a1, a2, v29, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_23152B004(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
      v7 = sub_231586924();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v31 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v8 + 40);
        sub_231586D14();

        sub_231586274();
        v20 = sub_231586D44();
        OUTLINED_FUNCTION_1_28(v20);
        if (((v23 << v22) & ~*(v11 + 8 * v21)) == 0)
        {
          OUTLINED_FUNCTION_2_18();
          while (++v25 != v27 || (v26 & 1) == 0)
          {
            v28 = v25 == v27;
            if (v25 == v27)
            {
              v25 = 0;
            }

            v26 |= v28;
            if (*(v11 + 8 * v25) != -1)
            {
              OUTLINED_FUNCTION_11();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_3_15();
LABEL_25:
        *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v8 + 48) + 16 * v24);
        *v29 = v17;
        v29[1] = v18;
        OUTLINED_FUNCTION_3_24();
        if (v30)
        {
          goto LABEL_29;
        }

        v4 = v31;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_9_0();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_23152B1D8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_231586864();
  v6 = swift_unknownObjectRetain();
  v7 = sub_231542614(v6, v5);
  v14 = v7;
  v8 = *(v7 + 40);
  sub_231586D14();

  sub_2314AAAAC();
  v9 = sub_231586D44();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      break;
    }

    _s4NodeCMa();
    if (sub_2314AB36C(*(*(v7 + 48) + 8 * v11), a2))
    {

      v12 = *(*(v7 + 48) + 8 * v11);
      sub_2314AB684(v11);
      if (sub_2314AB36C(a2, v12))
      {
        *v2 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v9 = v11 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_23152B318(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2315867E4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_231586D14();

        sub_231586274();
        v15 = sub_231586D44();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23152B4D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_17_7();
  result = sub_2315867D4();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_23152B510()
{
  result = qword_27DD5BB80;
  if (!qword_27DD5BB80)
  {
    _s4NodeCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB80);
  }

  return result;
}

uint64_t sub_23152B568(uint64_t a1, uint64_t a2)
{
  v3 = sub_231586024();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v34 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v33 = sub_231586064();
  v11 = OUTLINED_FUNCTION_4_1(v33);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_231586034();
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  sub_2314A207C(0, &qword_280D6FE88, 0x277D85C78);
  (*(v22 + 104))(v27, *MEMORY[0x277D851D0], v19);
  v28 = sub_2315866B4();
  (*(v22 + 8))(v27, v19);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  aBlock[4] = sub_23152B9F4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23149B484;
  aBlock[3] = &block_descriptor_15;
  v30 = _Block_copy(aBlock);

  sub_231586054();
  sub_2314BCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314BCC5C();
  sub_2315867C4();
  MEMORY[0x231930370](0, v18, v10, v30);
  _Block_release(v30);

  (*(v34 + 8))(v10, v3);
  (*(v13 + 8))(v18, v33);
}

void sub_23152B888(void (*a1)(void))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v2 = sub_231585FF4();
  __swift_project_value_buffer(v2, qword_280D72248);

  oslog = sub_231585FE4();
  v3 = sub_2315865D4();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v4 = 136315138;
    a1();
    v5 = sub_2314A22E8();

    *(v4 + 4) = v5;
    _os_log_impl(&dword_231496000, oslog, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x231931280](v7, -1, -1);
    MEMORY[0x231931280](v4, -1, -1);
  }
}

uint64_t sub_23152B9FC(__int16 a1, uint64_t a2, char a3)
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000029, 0x8000000231592270);
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x23192FF80](v5, v6);

  MEMORY[0x23192FF80](0x65726F6E6769202CLL, 0xEE003D6568636143);
  if ((a1 & 0x100) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x23192FF80](v7, v8);

  MEMORY[0x23192FF80](0xD000000000000017, 0x80000002315922A0);
  if (a3)
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v10 = sub_2315864C4();
    v9 = v11;
  }

  MEMORY[0x23192FF80](v10, v9);

  MEMORY[0x23192FF80](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_23152BB78()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_23152B9FC(v1 | *v0, *(v0 + 1), v0[16]);
}

uint64_t sub_23152BBA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B218, &unk_23158A010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23152BC1C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23152BC68(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t PredictionError.description.getter()
{
  v1 = 0xD000000000000018;
  v2 = v0[1];
  if (!v2)
  {
    return 0xD000000000000044;
  }

  if (v2 != 1)
  {
    v3 = *v0;
    sub_231586954();
    MEMORY[0x23192FF80](0xD00000000000002BLL, 0x80000002315923A0);
    MEMORY[0x23192FF80](v3, v2);
    MEMORY[0x23192FF80](0xD000000000000082, 0x80000002315923D0);
    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_11SiriSignals15PredictionErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23152BDCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23152BE20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_23152BE7C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t PrewarmDeviceTypeRestriction.description.getter()
{
  v1 = 0x656E6F685069;
  if (*v0 < 0)
  {
    v4 = 0x286564756C637865;
    v2 = 0xE600000000000000;
    switch(*v0 & 0x7F)
    {
      case 1:
LABEL_4:
        v2 = 0xE400000000000000;
        v1 = 1684099177;
        break;
      case 2:
LABEL_6:
        v2 = 0xE700000000000000;
        v1 = OUTLINED_FUNCTION_0_70();
        break;
      case 3:
LABEL_7:
        v1 = OUTLINED_FUNCTION_2_25();
        break;
      case 4:
LABEL_5:
        v2 = 0xE300000000000000;
        v1 = 6513005;
        break;
      case 5:
LABEL_8:
        v1 = OUTLINED_FUNCTION_5_21();
        break;
      case 6:
LABEL_9:
        v2 = 0xE700000000000000;
        v1 = OUTLINED_FUNCTION_1_29();
        break;
      default:
        break;
    }
  }

  else
  {
    v4 = 0x286564756C636E69;
    v2 = 0xE600000000000000;
    switch(*v0)
    {
      case 1:
        goto LABEL_4;
      case 2:
        goto LABEL_6;
      case 3:
        goto LABEL_7;
      case 4:
        goto LABEL_5;
      case 5:
        goto LABEL_8;
      case 6:
        goto LABEL_9;
      default:
        break;
    }
  }

  MEMORY[0x23192FF80](v1, v2);

  MEMORY[0x23192FF80](41, 0xE100000000000000);
  return v4;
}

uint64_t PrewarmDeviceTypeRestriction.DeviceType.rawValue.getter()
{
  result = 0x656E6F685069;
  switch(*v0)
  {
    case 1:
      result = 1684099177;
      break;
    case 2:
      result = OUTLINED_FUNCTION_0_70();
      break;
    case 3:
      result = 0x5654656C707061;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x6863746177;
      break;
    case 6:
      result = OUTLINED_FUNCTION_1_29();
      break;
    default:
      return result;
  }

  return result;
}

SiriSignals::PrewarmDeviceTypeRestriction::DeviceType_optional __swiftcall PrewarmDeviceTypeRestriction.DeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23152C0F4()
{
  result = qword_27DD5BB88;
  if (!qword_27DD5BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB88);
  }

  return result;
}

uint64_t sub_23152C16C@<X0>(uint64_t *a1@<X8>)
{
  result = PrewarmDeviceTypeRestriction.DeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23152C198()
{
  result = qword_27DD5BB90;
  if (!qword_27DD5BB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5BB98, &qword_23158CBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BB90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrewarmDeviceTypeRestriction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1F)
  {
    if (a2 + 225 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 225) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 226;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v5 >= 0x1E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for PrewarmDeviceTypeRestriction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1E)
  {
    v6 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrewarmDeviceTypeRestriction.DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23152C49C(uint64_t a1)
{
  v3 = *v1;
  if (v3 == 7 || (sub_23151280C(*v1, 6) & 1) == 0)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = (a1 + 32);
      while (1)
      {
        v6 = *v5++;
        v7 = v6;
        v8 = v6 < 0;
        if (v6 < 0)
        {
          if ((v7 & 0x7F) == 7)
          {
            if (v3 == 7)
            {
              return 0;
            }
          }

          else
          {
            v11 = 0xE600000000000000;
            v12 = 0x656E6F685069;
            switch(v7 & 0x7F)
            {
              case 1:
                v11 = 0xE400000000000000;
                v12 = 1684099177;
                break;
              case 2:
                v11 = 0xE700000000000000;
                v12 = OUTLINED_FUNCTION_0_70();
                break;
              case 3:
                v11 = 0xE700000000000000;
                v12 = 0x5654656C707061;
                break;
              case 4:
                v11 = 0xE300000000000000;
                v12 = 6513005;
                break;
              case 5:
                v11 = 0xE500000000000000;
                v12 = 0x6863746177;
                break;
              case 6:
                v11 = 0xE700000000000000;
                v12 = OUTLINED_FUNCTION_1_29();
                break;
              default:
                break;
            }

            v17 = 0xE600000000000000;
            v18 = 0x656E6F685069;
            switch(v3)
            {
              case 0:
                break;
              case 1:
                v17 = 0xE400000000000000;
                v18 = 1684099177;
                break;
              case 2:
                OUTLINED_FUNCTION_4_22();
                break;
              case 3:
                v17 = 0xE700000000000000;
                v18 = 0x5654656C707061;
                break;
              case 4:
                v17 = 0xE300000000000000;
                v18 = 6513005;
                break;
              case 5:
                v17 = 0xE500000000000000;
                v18 = 0x6863746177;
                break;
              case 6:
                OUTLINED_FUNCTION_3_25();
                break;
              default:
                goto LABEL_51;
            }

            if (v12 == v18 && v11 == v17)
            {
LABEL_56:
              v8 = (v7 & 0x80u) == 0;

              return v8;
            }

            v20 = sub_231586C44();

            if (v20)
            {
              return 0;
            }
          }
        }

        else if (v7 == 7)
        {
          if (v3 == 7)
          {
            return 1;
          }
        }

        else
        {
          v9 = 0xE600000000000000;
          v10 = 0x656E6F685069;
          switch(v7)
          {
            case 1:
              v9 = 0xE400000000000000;
              v10 = 1684099177;
              break;
            case 2:
              v9 = 0xE700000000000000;
              v10 = OUTLINED_FUNCTION_0_70();
              break;
            case 3:
              v9 = 0xE700000000000000;
              v10 = 0x5654656C707061;
              break;
            case 4:
              v9 = 0xE300000000000000;
              v10 = 6513005;
              break;
            case 5:
              v9 = 0xE500000000000000;
              v10 = 0x6863746177;
              break;
            case 6:
              v9 = 0xE700000000000000;
              v10 = OUTLINED_FUNCTION_1_29();
              break;
            default:
              break;
          }

          v13 = 0xE600000000000000;
          v14 = 0x656E6F685069;
          switch(v3)
          {
            case 0:
              break;
            case 1:
              v13 = 0xE400000000000000;
              v14 = 1684099177;
              break;
            case 2:
              OUTLINED_FUNCTION_4_22();
              break;
            case 3:
              v13 = 0xE700000000000000;
              v14 = 0x5654656C707061;
              break;
            case 4:
              v13 = 0xE300000000000000;
              v14 = 6513005;
              break;
            case 5:
              v13 = 0xE500000000000000;
              v14 = 0x6863746177;
              break;
            case 6:
              OUTLINED_FUNCTION_3_25();
              break;
            default:
              goto LABEL_51;
          }

          if (v10 == v14 && v9 == v13)
          {
            goto LABEL_56;
          }

          v16 = sub_231586C44();

          if (v16)
          {
            return 1;
          }
        }

LABEL_51:
        if (!--v4)
        {
          return v8;
        }
      }
    }
  }

  return 1;
}

SiriSignals::IntervalFrequency __swiftcall IntervalFrequency.init(interval:count:)(Swift::Double interval, Swift::Int count)
{
  *v2 = interval;
  *(v2 + 8) = count;
  result.interval = interval;
  result.count = count;
  return result;
}

void sub_23152C7FC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_3_26(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23153A090(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_26();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_23152C8C0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_23153A0E8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_23152C978(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23153A100(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_26();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 16 * v6 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

double static PriorDistributionUtils.computeDirichlet(frequencies:bandwidth:)(void *a1, double a2)
{
  v4 = a1[2];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v40 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_1_30();
    sub_23152D698(v6, v7, v8);
    v5 = v40;
    v9 = a1 + 4;
    v10 = *(v40 + 16);
    v11 = v4;
    do
    {
      v12 = *v9;
      v41 = v5;
      v13 = *(v5 + 24);
      if (v10 >= v13 >> 1)
      {
        v14 = OUTLINED_FUNCTION_0_71(v13);
        sub_23152D698(v14, v10 + 1, 1);
        v5 = v41;
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + 8 * v10 + 32) = v12;
      v9 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }

  sub_23152C8C0(v5);
  v15 = MEMORY[0x277D84F90];
  if (v4)
  {
    v42 = MEMORY[0x277D84F90];
    v16 = OUTLINED_FUNCTION_1_30();
    sub_23152D698(v16, v17, v18);
    v15 = v42;
    v19 = a1 + 4;
    v20 = *(v42 + 16);
    v21 = v4;
    do
    {
      v22 = *v19;
      v23 = *(v42 + 24);
      if (v20 >= v23 >> 1)
      {
        v24 = OUTLINED_FUNCTION_0_71(v23);
        sub_23152D698(v24, v20 + 1, 1);
      }

      *(v42 + 16) = v20 + 1;
      *(v42 + 8 * v20 + 32) = v22;
      v19 += 2;
      ++v20;
      --v21;
    }

    while (v21);
  }

  v25 = sub_23152CE94(&unk_284610928, v15);

  v26 = MEMORY[0x277D84F90];
  if (v4)
  {
    v43 = MEMORY[0x277D84F90];
    v27 = OUTLINED_FUNCTION_1_30();
    sub_23152D5F8(v27, v28, v29);
    v26 = v43;
    v30 = *(v43 + 16);
    v31 = a1 + 5;
    do
    {
      v33 = *v31;
      v31 += 2;
      v32 = v33;
      v34 = *(v43 + 24);
      if (v30 >= v34 >> 1)
      {
        v35 = OUTLINED_FUNCTION_0_71(v34);
        sub_23152D5F8(v35, v30 + 1, 1);
      }

      *(v43 + 16) = v30 + 1;
      *(v43 + 8 * v30++ + 32) = v32;
      --v4;
    }

    while (v4);
  }

  sub_23152D080(v25, v26, a2);
  v37 = v36;

  v38 = sub_23152D298(v37);

  return v38;
}

uint64_t static PriorDistributionUtils.normalize(scores:)(uint64_t a1)
{
  v1 = sub_23152D31C(a1);
  v2 = sub_23152D298(v1);
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v20 = MEMORY[0x277D84F90];
    sub_23152D698(0, v3, 0);
    v6 = v20;
    v7 = *(v20 + 16);
    v8 = 32;
    do
    {
      v9 = *(v1 + v8);
      v10 = *(v20 + 24);
      if (v7 >= v10 >> 1)
      {
        v11 = OUTLINED_FUNCTION_0_71(v10);
        sub_23152D698(v11, v7 + 1, 1);
      }

      *(v20 + 16) = v7 + 1;
      *(v20 + 8 * v7 + 32) = v9 - v5;
      v8 += 8;
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v12 = *(v6 + 16);
  if (v12)
  {
    sub_23152D698(0, v12, 0);
    v13 = v4;
    v14 = *(v4 + 16);
    v15 = 32;
    do
    {
      v16 = exp(*(v6 + v15));
      v17 = *(v13 + 24);
      if (v14 >= v17 >> 1)
      {
        v18 = OUTLINED_FUNCTION_0_71(v17);
        sub_23152D698(v18, v14 + 1, 1);
      }

      *(v13 + 16) = v14 + 1;
      *(v13 + 8 * v14 + 32) = v16;
      v15 += 8;
      ++v14;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_23152CE94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v26 = MEMORY[0x277D84F90];
  sub_23152D698(0, v6, 0);
  result = v26;
  v24 = a2;
  v25 = v4;
  v23 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v27 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v22 = v12;
      sub_23152D698(v15 > 1, v16 + 1, 1);
      v12 = v22;
      result = v27;
    }

    --v11;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = (v13 + v14) * 0.5;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v25 != v6)
      {
        if (v6 >= v25)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v17 = *(v23 + 32 + 8 * v6);
        v18 = *(v24 + 32 + 8 * v6);
        v28 = result;
        v20 = *(result + 16);
        v19 = *(result + 24);
        if (v20 >= v19 >> 1)
        {
          v21 = v12;
          sub_23152D698(v19 > 1, v20 + 1, 1);
          v12 = v21;
          result = v28;
        }

        *(result + 16) = v20 + 1;
        *(result + 8 * v20 + 32) = (v17 + v18) * 0.5;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_23152D080(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_23152D698(0, v8, 0);
  v22 = v7;
  v23 = v6;
  v20 = a1;
  v21 = a2;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v8;
  while (v6)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v12 = *v9;
    v13 = log(*v10);
    v15 = *(v24 + 16);
    v14 = *(v24 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_23152D698(v14 > 1, v15 + 1, 1);
    }

    --v7;
    *(v24 + 16) = v15 + 1;
    *(v24 + 8 * v15 + 32) = v13 + (0.0 - v12) / a3 * ((0.0 - v12) / a3) * -0.5;
    --v6;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_11:
      while (v23 != v8)
      {
        if (v8 >= v23)
        {
          goto LABEL_22;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        if (v22 == v8)
        {
          return;
        }

        if (v8 >= v22)
        {
          goto LABEL_24;
        }

        v16 = *(v20 + 32 + 8 * v8);
        v17 = log(*(v21 + 32 + 8 * v8));
        v19 = *(v24 + 16);
        v18 = *(v24 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_23152D698(v18 > 1, v19 + 1, 1);
        }

        *(v24 + 16) = v19 + 1;
        *(v24 + 8 * v19 + 32) = v17 + (0.0 - v16) / a3 * ((0.0 - v16) / a3) * -0.5;
        ++v8;
      }

      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

double sub_23152D298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return -INFINITY;
  }

  v2 = (a1 + 32);
  v3 = -INFINITY;
  do
  {
    if (*v2 >= v3)
    {
      v4 = *v2;
    }

    else
    {
      v4 = v3;
    }

    if (*v2 < v3)
    {
      v3 = *v2;
    }

    if (v3 != -INFINITY)
    {
      v5 = exp(v3 - v4);
      v4 = v4 + log1p(v5);
    }

    ++v2;
    v3 = v4;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t sub_23152D31C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_23152D698(0, v1, 0);
    v4 = v28;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B650, &qword_23158AB20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_231588FE0;
      *(inited + 32) = v6;
      *(inited + 40) = 0;

      if (v6 > 0.0)
      {
        break;
      }

      v8 = 0.0;
      if (v6 != -INFINITY)
      {
        goto LABEL_6;
      }

LABEL_7:
      v11 = *(v28 + 16);
      v10 = *(v28 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_23152D698(v10 > 1, v11 + 1, 1);
      }

      *(v28 + 16) = v12;
      *(v28 + 8 * v11 + 32) = v8;
      ++v5;
      if (!--v1)
      {
        goto LABEL_13;
      }
    }

    v8 = v6;
    v6 = 0.0;
LABEL_6:
    v9 = exp(v6 - v8);
    v8 = v8 + log1p(v9);
    goto LABEL_7;
  }

  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = 0;
    v14 = -INFINITY;
    do
    {
      v15 = v4 + 8 * v13;
      v16 = *(v15 + 32);
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(v15 + 32);
      }

      if (v16 >= v14)
      {
        v14 = *(v15 + 32);
      }

      if (v17 != -INFINITY)
      {
        v18 = exp(v17 - v14);
        v14 = v14 + log1p(v18);
      }

      ++v13;
    }

    while (v12 != v13);
    sub_23152D698(0, v12, 0);
    v19 = v2;
    v20 = exp(v14) + 1.0;
    v21 = *(v2 + 16);
    v22 = 32;
    do
    {
      v23 = exp(*(v4 + v22) - v14);
      v24 = sqrt(v23 * (1.0 - v23) / v20);
      v25 = log(v23 - v24);
      v26 = *(v2 + 24);
      if (v21 >= v26 >> 1)
      {
        sub_23152D698(v26 > 1, v21 + 1, 1);
      }

      *(v2 + 16) = v21 + 1;
      *(v2 + 8 * v21 + 32) = v25;
      v22 += 8;
      ++v21;
      --v12;
    }

    while (v12);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  return v19;
}

void sub_23152D598()
{
  v1 = *v0;
  sub_2315606DC();
  *v0 = v2;
}

void sub_23152D5B8()
{
  v1 = *v0;
  sub_2315609C4();
  *v0 = v2;
}

void sub_23152D5D8()
{
  v1 = *v0;
  sub_231560A8C();
  *v0 = v2;
}

void sub_23152D638()
{
  v1 = *v0;
  sub_231560AF0();
  *v0 = v2;
}

void sub_23152D658()
{
  v1 = *v0;
  sub_231560BD0();
  *v0 = v2;
}

void sub_23152D678()
{
  v1 = *v0;
  sub_231560C98();
  *v0 = v2;
}

_BYTE *storeEnumTagSinglePayload for PriorDistributionUtils(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_23152D774()
{
  v1 = *v0;
  sub_231561024();
  *v0 = v2;
}

void sub_23152D794()
{
  v1 = *v0;
  sub_2315610EC();
  *v0 = v2;
}

void sub_23152D7D4()
{
  v1 = *v0;
  sub_2315612B8();
  *v0 = v2;
}

void sub_23152D7F4()
{
  v1 = *v0;
  sub_231561370();
  *v0 = v2;
}

void sub_23152D814()
{
  v1 = *v0;
  sub_231561428();
  *v0 = v2;
}

void sub_23152D834()
{
  v1 = *v0;
  sub_2315614E0();
  *v0 = v2;
}

void sub_23152D874()
{
  v1 = *v0;
  sub_2315615D0();
  *v0 = v2;
}

void sub_23152D894()
{
  v1 = *v0;
  sub_231561698();
  *v0 = v2;
}

uint64_t static SelectedActionDisambiguationFrequencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BBA0 = a1;
  *(&xmmword_27DD5BBA0 + 1) = a2;
  byte_27DD5BBB0 = a3;
  return result;
}

double sub_23152D990@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BBB0;
  result = *&xmmword_27DD5BBA0;
  *a1 = xmmword_27DD5BBA0;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_23152D9E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BBA0 = v1;
  *(&xmmword_27DD5BBA0 + 1) = v2;
  byte_27DD5BBB0 = v3;
  return result;
}

uint64_t sub_23152DA3C()
{
  OUTLINED_FUNCTION_8_1();
  result = sub_231586964();
  qword_280D6EB08 = result;
  qword_280D6EB10 = v1;
  return result;
}

uint64_t *sub_23152DA84()
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72();
  }

  return &qword_280D6EB08;
}

uint64_t static SelectedActionDisambiguationFrequencySignal.signalName.getter()
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_280D6EB08;

  return v0;
}

uint64_t static SelectedActionDisambiguationFrequencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72();
  }

  swift_beginAccess();
  qword_280D6EB08 = a1;
  qword_280D6EB10 = a2;
}

uint64_t (*static SelectedActionDisambiguationFrequencySignal.signalName.modify())()
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72();
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

uint64_t sub_23152DC0C@<X0>(void *a1@<X8>)
{
  sub_23152DA84();
  swift_beginAccess();
  v2 = qword_280D6EB10;
  *a1 = qword_280D6EB08;
  a1[1] = v2;
}

uint64_t sub_23152DC60(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23152DA84();
  swift_beginAccess();
  qword_280D6EB08 = v2;
  qword_280D6EB10 = v1;
}

uint64_t SelectedActionDisambiguationFrequencySignal.id.getter()
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72();
  }

  swift_beginAccess();
  v1 = qword_280D6EB08;
  v2 = qword_280D6EB10;

  MEMORY[0x23192FF80](v1, v2);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v4 = *(v0 + *(type metadata accessor for SelectedActionDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  return 0;
}