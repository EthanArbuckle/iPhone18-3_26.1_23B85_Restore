uint64_t sub_266C31568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_266DA746C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  if ((a5 & 1) == 0)
  {
    sub_266DA741C();
    sub_266DA742C();
    v16 = v15;
    (*(v11 + 8))(v14, v10);
    a4 = v16;
  }

  v20 = a5 & 1;
  *&v21 = a4;
  BYTE8(v21) = a5 & 1;
  *(&v21 + 9) = *v19;
  HIDWORD(v21) = *&v19[3];
  v22 = a1;
  v23 = a2;
  v24 = a3;

  sub_266C32674(&v21);
}

uint64_t *CachingSyncDeviceProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v1 = v0[9];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  return v0;
}

uint64_t CachingSyncDeviceProvider.__deallocating_deinit()
{
  CachingSyncDeviceProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t SyncDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  sub_266DAADFC();
  OUTLINED_FUNCTION_6_4();
  MEMORY[0x26D5F1170](v1, v2);
  OUTLINED_FUNCTION_6_4();
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x26D5F1170](v7, v8);

  OUTLINED_FUNCTION_6_4();
  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x26D5F1170](v9, v10);

  MEMORY[0x26D5F1170](62, 0xE100000000000000);
  return 0;
}

void sub_266C31864(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  v13 = a1[4];

  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = SyncDevice.description.getter();
    v12 = sub_266C22A3C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_266C08000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  else
  {
  }
}

void sub_266C319DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA746C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 8))
  {
    if (qword_28156F8A0 != -1)
    {
      swift_once();
    }

    v9 = sub_266DA94AC();
    __swift_project_value_buffer(v9, qword_28156F8A8);
    v10 = sub_266DA948C();
    v11 = sub_266DAAB0C();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Cache entry does not have an eviction time, so skipping eviction logic.";
    v14 = v11;
    v15 = v10;
    v16 = v12;
    v17 = 2;
LABEL_13:
    _os_log_impl(&dword_266C08000, v15, v14, v13, v16, v17);
    MEMORY[0x26D5F2480](v12, -1, -1);
LABEL_14:

    *a2 = *(a1 + 16);
    *(a2 + 8) = *(a1 + 24);
    sub_266C33E5C(a1, v31, &qword_2800C9D90, &unk_266DAF810);
    return;
  }

  v18 = *a1;
  sub_266DA745C();
  sub_266DA742C();
  v20 = v19;
  (*(v5 + 8))(v8, v4);
  if (v20 < v18)
  {
    if (qword_28156F8A0 != -1)
    {
      swift_once();
    }

    v21 = sub_266DA94AC();
    __swift_project_value_buffer(v21, qword_28156F8A8);
    v22 = sub_266DA948C();
    v23 = sub_266DAAB0C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266C08000, v22, v23, "Cached is still within cache TTL.", v24, 2u);
      MEMORY[0x26D5F2480](v24, -1, -1);
    }

    v10 = sub_266DA948C();
    v25 = sub_266DAAADC();
    if (!os_log_type_enabled(v10, v25))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v18 - v20;
    v13 = "Cache will expire in %f seconds.";
    v14 = v25;
    v15 = v10;
    v16 = v12;
    v17 = 12;
    goto LABEL_13;
  }

  if (qword_28156F8A0 != -1)
  {
    swift_once();
  }

  v26 = sub_266DA94AC();
  __swift_project_value_buffer(v26, qword_28156F8A8);
  v27 = sub_266DA948C();
  v28 = sub_266DAAB0C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_266C08000, v27, v28, "Cached value is older than it's TTL, evicting it.", v29, 2u);
    MEMORY[0x26D5F2480](v29, -1, -1);
  }

  sub_266C32A6C();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_266C31DA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_266DA737C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0xD00000000000001DLL;
  *(v2 + 24) = 0x8000000266DC1980;
  *(v2 + qword_28156FB58) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA7E0, &unk_266DB1E20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_266DAE4A0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_266C33C74();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  sub_266DAA71C();
  sub_266C31F1C();

  (*(v6 + 32))(v2 + qword_28156FB50, v9, v5);
  return v2;
}

uint64_t sub_266C31F1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_266DA737C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:13 inDomains:1];

  v11 = sub_266DAA93C();
  sub_266CB7A00(v11);

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_266C2A858(v3);
    result = sub_266DAAF1C();
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_266DA733C();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

double sub_266C3215C@<D0>(uint64_t a1@<X8>)
{
  if ((*(v1 + qword_28156FB58) & 1) != 0 || (v3 = [objc_opt_self() defaultManager], sub_266DA735C(), v4 = sub_266DAA6FC(), , v5 = objc_msgSend(v3, sel_fileExistsAtPath_, v4), v3, v4, (v5 & 1) == 0))
  {
    if (qword_28156F8A0 != -1)
    {
      swift_once();
    }

    v6 = sub_266DA94AC();
    __swift_project_value_buffer(v6, qword_28156F8A8);

    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = sub_266DA735C();
      v13 = sub_266C22A3C(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_266C08000, v7, v8, "Cache file %s does not exist", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v14 = sub_266DA738C();
    v16 = v15;
    v17 = sub_266DA6FEC();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_266DA6FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D90, &unk_266DAF810);
    sub_266C230E8(&qword_28156F7E0, &qword_2800C9D90, &unk_266DAF810);
    sub_266DA6FCC();
    sub_266C2BB04(v14, v16);

    v20 = v24;
    v21 = v25;
    *a1 = v23;
    *(a1 + 8) = v20 & 1;
    *(a1 + 16) = v21;
    result = *&v26;
    *(a1 + 24) = v26;
  }

  return result;
}

uint64_t sub_266C32674(__int128 *a1)
{
  v2 = a1[1];
  v19 = *a1;
  v20 = v2;
  v21 = *(a1 + 4);
  v3 = sub_266DA701C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_266DA700C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D90, &unk_266DAF810);
  sub_266C230E8(qword_28156FB60, &qword_2800C9D90, &unk_266DAF810);
  v6 = sub_266DA6FFC();
  v8 = v7;
  sub_266DA73DC();
  *(v1 + qword_28156FB58) = 0;
  if (qword_28156F8A0 != -1)
  {
    swift_once();
  }

  v9 = sub_266DA94AC();
  __swift_project_value_buffer(v9, qword_28156F8A8);

  v10 = sub_266DA948C();
  v11 = sub_266DAAB0C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_266DA735C();
    v16 = sub_266C22A3C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_266C08000, v10, v11, "Wrote cache to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D5F2480](v13, -1, -1);
    MEMORY[0x26D5F2480](v12, -1, -1);
  }

  sub_266C2BB04(v6, v8);
}

void sub_266C32A6C()
{
  v1 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  sub_266DA735C();
  v4 = sub_266DAA6FC();

  v5 = [v3 fileExistsAtPath_];

  if (!v5)
  {
LABEL_11:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  *(v1 + qword_28156FB58) = 1;
  v6 = [v2 defaultManager];
  v7 = sub_266DA732C();
  v27[0] = 0;
  v8 = [v6 removeItemAtURL:v7 error:v27];

  v9 = v27[0];
  if (!v8)
  {
    v12 = v27[0];
    v13 = sub_266DA72FC();

    swift_willThrow();
    if (qword_28156F8A0 != -1)
    {
      swift_once();
    }

    v14 = sub_266DA94AC();
    __swift_project_value_buffer(v14, qword_28156F8A8);

    v15 = v13;
    v16 = sub_266DA948C();
    v17 = sub_266DAAAFC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v18 = 136315394;
      v20 = sub_266DA735C();
      v22 = sub_266C22A3C(v20, v21, v27);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      swift_getErrorValue();
      v23 = sub_266DAB23C();
      v25 = sub_266C22A3C(v23, v24, v27);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_266C08000, v16, v17, "Could not delete the cache file at %s due to %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5F2480](v19, -1, -1);
      MEMORY[0x26D5F2480](v18, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v10 = *MEMORY[0x277D85DE8];

  v11 = v9;
}

uint64_t sub_266C32DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *)@<X3>, void *a5@<X8>)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  a4(&v9);
  v6 = v10;
  v7 = v11;
  *a5 = v9;
  a5[1] = v6;
  a5[2] = v7;
}

uint64_t sub_266C32E10(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = a1;
  a2(&v3);
}

uint64_t sub_266C32E60@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v8 = a1;
  v9 = a2 & 1;
  a3(&v8);
  v5 = v8;
  v6 = v9;
  *a4 = v8;
  *(a4 + 8) = v6;

  return sub_266C33EE0(v5, v6);
}

uint64_t sub_266C32EC4(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = a1;
  a2(&v4);
  return a1;
}

uint64_t sub_266C32F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, void (*a5)(uint64_t *)@<X5>, void *a6@<X8>)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (a4(&v11))
  {
    a5(&v11);
  }

  v8 = v12;
  v9 = v13;
  *a6 = v11;
  a6[1] = v8;
  a6[2] = v9;
}

uint64_t sub_266C32F90(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = a1;
  if (a2(&v6))
  {
    a4(&v6);
  }
}

uint64_t sub_266C33068@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t *a5@<X8>)
{
  result = sub_266C32F90(*a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_266C33094@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_266C32E10(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C330D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v14);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CachingSyncDeviceProvider();
  v22 = swift_allocObject();
  (*(v18 + 16))(v21, a1, a4);
  (*(v12 + 16))(v16, a2, a5);
  v23 = sub_266C333A8(v21, v16, v22, a4, a5, a6, v26);
  (*(v12 + 8))(a2, a5);
  (*(v18 + 8))(a1, a4);
  return v23;
}

uint64_t sub_266C332B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = type metadata accessor for FMIPSyncDeviceProvider();
  v15 = &protocol witness table for FMIPSyncDeviceProvider;
  *&v13 = a1;
  v11 = sub_266DAA2EC();
  v12 = &protocol witness table for FMIPSiriController;
  *&v10 = a2;
  *(a3 + 16) = 0x4122750000000000;
  *(a3 + 24) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D98, &qword_266DAF820);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(a3 + 72) = sub_266C31DA4(0x69766564636E7973, 0xEE00617461646563);
  *(a3 + 104) = &type metadata for SFMUserDefaultsSettingProvider;
  *(a3 + 112) = &protocol witness table for SFMUserDefaultsSettingProvider;
  sub_266C0B0D8(&v13, a3 + 32);
  sub_266C0B0D8(&v10, a3 + 120);
  return a3;
}

uint64_t sub_266C333A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a4;
  v24 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v20 = a5;
  v21 = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  *(a3 + 16) = 0x4122750000000000;
  *(a3 + 24) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9D98, &qword_266DAF820);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(a3 + 72) = sub_266C31DA4(0x69766564636E7973, 0xEE00617461646563);
  *(a3 + 104) = &type metadata for SFMUserDefaultsSettingProvider;
  *(a3 + 112) = &protocol witness table for SFMUserDefaultsSettingProvider;
  sub_266C0B0D8(&v22, a3 + 32);
  sub_266C0B0D8(&v19, a3 + 120);
  return a3;
}

void sub_266C33540(void *a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_266C30C14(a1, a2, a3 & 1, *(v3 + 16));
}

unint64_t sub_266C33554()
{
  result = qword_28156F7D8;
  if (!qword_28156F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7D8);
  }

  return result;
}

uint64_t sub_266C335A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_266C335E8(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SyncDevice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SFMSyncDeviceData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C338F0()
{
  result = qword_2800C9D80;
  if (!qword_2800C9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D80);
  }

  return result;
}

unint64_t sub_266C33948()
{
  result = qword_2800C9D88;
  if (!qword_2800C9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9D88);
  }

  return result;
}

unint64_t sub_266C339A0()
{
  result = qword_28156FAB8;
  if (!qword_28156FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAB8);
  }

  return result;
}

unint64_t sub_266C339F8()
{
  result = qword_28156FAC0;
  if (!qword_28156FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAC0);
  }

  return result;
}

unint64_t sub_266C33A50()
{
  result = qword_28156FA98;
  if (!qword_28156FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FA98);
  }

  return result;
}

unint64_t sub_266C33AA8()
{
  result = qword_28156FAA0;
  if (!qword_28156FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156FAA0);
  }

  return result;
}

void sub_266C33B08(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_266C33B58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_266C33BB8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  v4 = *a2;
  sub_266C319DC(v5, a3);
}

uint64_t sub_266C33C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void sub_266C33C64(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_266C33C74()
{
  result = qword_28156F800;
  if (!qword_28156F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F800);
  }

  return result;
}

uint64_t sub_266C33CEC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266C33D4C()
{
  result = qword_28156F7F0;
  if (!qword_28156F7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156F7F0);
  }

  return result;
}

unint64_t sub_266C33D90()
{
  result = qword_28156F7E8;
  if (!qword_28156F7E8)
  {
    sub_266C33D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7E8);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266C33E40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  return sub_266C33028(a1, *(v2 + 16), *(v2 + 32), a2);
}

uint64_t sub_266C33E5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_4_4();
  v7(v6);
  return a2;
}

uint64_t sub_266C33EE0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_4()
{

  JUMPOUT(0x26D5F1170);
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return sub_266DAB34C();
}

uint64_t type metadata accessor for FindFriendSessionManager()
{
  result = qword_2800C9DF0;
  if (!qword_2800C9DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266C34080()
{
  result = sub_266C3412C();
  if (v1 <= 0x3F)
  {
    result = sub_266C22FD4();
    if (v2 <= 0x3F)
    {
      result = sub_266DAAB4C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_266C3412C()
{
  result = qword_2800C9E00;
  if (!qword_2800C9E00)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2800C9E00);
  }

  return result;
}

void sub_266C34174()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v30 = v3;
  v4 = sub_266DA947C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9EE0, &qword_266DAF918);
  OUTLINED_FUNCTION_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_4_6();
  v15(v14);
  OUTLINED_FUNCTION_13_1();
  v17 = *(v16 + 16);
  v18 = OUTLINED_FUNCTION_7_2();
  v19(v18);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v20 = OUTLINED_FUNCTION_5_5();
  v21(v20);
  if (qword_2800C9130 != -1)
  {
    OUTLINED_FUNCTION_1_9();
  }

  v22 = qword_2800C9818;
  sub_266DA946C();
  OUTLINED_FUNCTION_17_2();
  v23 = OUTLINED_FUNCTION_11_1();
  v24(v23);
  OUTLINED_FUNCTION_10_1("Resolve Friend From Suggestions");
  *(v0 + 8) = &dword_266C08000;
  *(v0 + 16) = v22;
  v25 = v22;
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(&v32);
  OUTLINED_FUNCTION_26_0();
  v26 = swift_allocObject();
  *(v26 + 16) = v30;
  *(v26 + 24) = v2;
  OUTLINED_FUNCTION_15_2();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_12_2(v27);
  OUTLINED_FUNCTION_18_1();
  v28 = swift_allocObject();
  v28[2] = v7;
  v28[3] = sub_266C362E8;
  v28[4] = v26;
  OUTLINED_FUNCTION_0_13();
  sub_266C230E8(v29, &qword_2800C9EE0, &qword_266DAF918);
  OUTLINED_FUNCTION_20_1();

  sub_266DA986C();

  sub_266C1825C(v0, &qword_2800C9EE0, &qword_266DAF918);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_18_2();

  OUTLINED_FUNCTION_5();
}

void sub_266C3441C()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_266DA947C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9ED0, &qword_266DAF910);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_6();
  v13(v12);
  OUTLINED_FUNCTION_13_1();
  v15 = *(v14 + 48);
  v16 = OUTLINED_FUNCTION_7_2();
  v17(v16);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v18 = OUTLINED_FUNCTION_5_5();
  v19(v18);
  sub_266CEF7D8();

  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(&v30);
  if (qword_2800C9130 != -1)
  {
    OUTLINED_FUNCTION_1_9();
  }

  v20 = qword_2800C9818;
  sub_266DA946C();
  OUTLINED_FUNCTION_17_2();
  v21 = OUTLINED_FUNCTION_11_1();
  v22(v21);
  OUTLINED_FUNCTION_10_1("Set Geo Fence");
  *(v0 + 8) = &dword_266C08000;
  *(v0 + 16) = v20;
  OUTLINED_FUNCTION_26_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_16_1(v23);
  OUTLINED_FUNCTION_15_2();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_12_2(v24);
  OUTLINED_FUNCTION_18_1();
  v25 = swift_allocObject();
  v25[2] = v5;
  v25[3] = sub_266C362CC;
  v25[4] = v1;
  OUTLINED_FUNCTION_0_13();
  sub_266C230E8(v26, v27, &qword_266DAF910);
  OUTLINED_FUNCTION_20_1();
  v28 = v20;

  OUTLINED_FUNCTION_19_1();

  sub_266C1825C(v0, &qword_2800C9ED0, &qword_266DAF910);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_18_2();

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C346B4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9DD8);
  v1 = __swift_project_value_buffer(v0, qword_2800C9DD8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C3477C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v25 = a1;
  v24 = sub_266DAAB7C();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266DAAB6C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_266DA9FDC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_266C22FD4();
  v22 = "FindFriendSession";
  v23 = v17;
  sub_266DA9FBC();
  v26 = MEMORY[0x277D84F90];
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C230E8(&qword_28156EFE8, &qword_2800CC440, &qword_266DAF890);
  sub_266DAAD0C();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v24);
  *(a2 + 24) = sub_266D689A4(0xD000000000000024, v22 | 0x8000000000000000, v16, v12, v8, 0);
  v18 = a2 + *(type metadata accessor for FindFriendSessionManager() + 28);
  sub_266DAAB3C();
  *a2 = a3;
  result = swift_allocObject();
  v20 = v25;
  *(result + 16) = sub_266C36074;
  *(result + 24) = v20;
  *(a2 + 8) = sub_266C360A0;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_266C34A40@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 24) = type metadata accessor for FMFCoreFindFriendSession();
  *(a2 + 32) = &off_287865E30;
  return a1(a3);
}

void sub_266C34AA8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v81 = v2;
  v82 = v3;
  v5 = v4;
  v7 = v6;
  v68 = v8;
  v9 = sub_266DA947C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v79 = v11;
  v80 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v78 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E20, &qword_266DAF898);
  OUTLINED_FUNCTION_0_2(v73);
  v75 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v70 = &v67 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E28, &qword_266DAF8A0);
  OUTLINED_FUNCTION_0_2(v74);
  v76 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  v71 = &v67 - v24;
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();
  v26 = *(FriendSessionManager - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](FriendSessionManager - 8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E30, &qword_266DAF8A8);
  OUTLINED_FUNCTION_0_2(v69);
  v72 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  v67 = &v67 - v32;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E38, &unk_266DAF8B0);
  OUTLINED_FUNCTION_0(v77);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_6_0();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v67 - v37;
  v39 = *(v0 + 8);
  v40 = *(v0 + 16);
  v39(v87, v36, *v1);
  v41 = v88;
  v42 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  (*(v42 + 24))(v84, v41, v42);
  v43 = v85;
  v44 = v86;
  __swift_project_boxed_opaque_existential_1(v84, v85);
  v68 = (*(v44 + 8))(v68, v7, v5, v43, v44);
  v83 = v68;
  sub_266C36270(v1, &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FindFriendSessionManager);
  v45 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v46 = swift_allocObject();
  sub_266C360E0(&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45, type metadata accessor for FindFriendSessionManager);
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC330, &unk_266DB5FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E40, &unk_266DAF8C0);
  sub_266C230E8(&qword_2800C9E48, &unk_2800CC330, &unk_266DB5FD0);
  sub_266C230E8(&qword_2800C9E50, &qword_2800C9E40, &unk_266DAF8C0);
  v47 = v67;
  sub_266DA98CC();

  __swift_destroy_boxed_opaque_existential_0(v84);
  __swift_destroy_boxed_opaque_existential_0(v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF8, &qword_266DAE460);
  sub_266C230E8(&qword_2800C9E58, &qword_2800C9E30, &qword_266DAF8A8);
  v48 = v70;
  v49 = v69;
  sub_266DA984C();
  v50 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
  sub_266C230E8(&qword_2800C9E68, &qword_2800C9E20, &qword_266DAF898);
  sub_266C230E8(&qword_2800C9E70, &qword_2800C9E60, &qword_266DAF8D0);
  v52 = v71;
  v53 = v73;
  sub_266DA987C();
  (*(v75 + 8))(v48, v53);
  sub_266C230E8(&qword_2800C9E78, &qword_2800C9E28, &qword_266DAF8A0);
  v54 = v74;
  v55 = sub_266DA97EC();
  (*(v76 + 8))(v52, v54);
  (*(v72 + 8))(v47, v49);
  if (qword_2800C9130 != -1)
  {
    OUTLINED_FUNCTION_1_9();
  }

  v56 = qword_2800C9818;
  v57 = v78;
  sub_266DA946C();
  *v38 = v55;
  v58 = &v38[*(v77 + 48)];
  sub_266DA946C();
  (*(v79 + 8))(v57, v80);
  *(v38 + 3) = "Resolve Friend's Location";
  *(v38 + 4) = 25;
  v38[40] = 2;
  *(v38 + 1) = &dword_266C08000;
  *(v38 + 2) = v56;
  OUTLINED_FUNCTION_15_2();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  OUTLINED_FUNCTION_18_1();
  v60 = swift_allocObject();
  v61 = v81;
  v62 = v82;
  v60[2] = v59;
  v60[3] = v61;
  v60[4] = v62;
  OUTLINED_FUNCTION_0_13();
  sub_266C230E8(v63, &qword_2800C9E38, &unk_266DAF8B0);
  swift_retain_n();
  v64 = v56;

  v65 = sub_266DA986C();

  sub_266C1825C(v38, &qword_2800C9E38, &unk_266DAF8B0);
  swift_beginAccess();
  v66 = *(v59 + 16);
  *(v59 + 16) = v65;

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C352E8(uint64_t a1)
{
  v2 = type metadata accessor for FriendLocation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_266C354B0();
  sub_266C36270(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendLocation);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_266C360E0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for FriendLocation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E88, &qword_266DAF8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF0, &unk_266DAF8E0);
  sub_266C230E8(&qword_2800C9E90, &qword_2800C9E88, &qword_266DAF8D8);
  sub_266DA984C();
}

uint64_t sub_266C354B0()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E98, &qword_266DAF8F0);
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - v3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9EA0, &qword_266DAF8F8);
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v21);
  v9 = &v19 - v8;
  v10 = *(v0 + 16);
  (*(v0 + 8))(v26, v7, *v0);
  v12 = v27;
  v11 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v11 + 32))(v23, v12, v11);
  v13 = v24;
  v14 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v22 = (*(v14 + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC2D0, &qword_266DAF900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  sub_266C230E8(&qword_2800C9EA8, &unk_2800CC2D0, &qword_266DAF900);
  sub_266DA984C();

  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E88, &qword_266DAF8D8);
  sub_266C230E8(&qword_2800C9EB0, &qword_2800C9E98, &qword_266DAF8F0);
  sub_266C230E8(&qword_2800C9E90, &qword_2800C9E88, &qword_266DAF8D8);
  v15 = v20;
  sub_266DA987C();
  (*(v1 + 8))(v4, v15);
  sub_266C230E8(&qword_2800C9EB8, &qword_2800C9EA0, &qword_266DAF8F8);
  v16 = v21;
  v17 = sub_266DA97EC();
  (*(v5 + 8))(v9, v16);
  return v17;
}

uint64_t sub_266C35844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AF0, &unk_266DAF8E0) + 48);
  sub_266C36270(a2, a3, type metadata accessor for FriendLocation);

  return sub_266C36200(a1, a3 + v6);
}

void sub_266C358C4()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_266DA947C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E08, &qword_266DAF880);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_6();
  v13(v12);
  OUTLINED_FUNCTION_13_1();
  v15 = *(v14 + 40);
  v16 = OUTLINED_FUNCTION_7_2();
  v17(v16);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v18 = OUTLINED_FUNCTION_5_5();
  v19(v18);
  sub_266CEF9F0();

  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(&v30);
  if (qword_2800C9130 != -1)
  {
    OUTLINED_FUNCTION_1_9();
  }

  v20 = qword_2800C9818;
  sub_266DA946C();
  OUTLINED_FUNCTION_17_2();
  v21 = OUTLINED_FUNCTION_11_1();
  v22(v21);
  OUTLINED_FUNCTION_10_1("Set Visibility");
  *(v0 + 8) = &dword_266C08000;
  *(v0 + 16) = v20;
  OUTLINED_FUNCTION_26_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_16_1(v23);
  OUTLINED_FUNCTION_15_2();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_12_2(v24);
  OUTLINED_FUNCTION_18_1();
  v25 = swift_allocObject();
  v25[2] = v5;
  v25[3] = sub_266C36364;
  v25[4] = v1;
  OUTLINED_FUNCTION_0_13();
  sub_266C230E8(v26, v27, &qword_266DAF880);
  OUTLINED_FUNCTION_20_1();
  v28 = v20;

  OUTLINED_FUNCTION_19_1();

  sub_266C1825C(v0, &qword_2800C9E08, &qword_266DAF880);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_18_2();

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C35B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266C36270(a1, a2, type metadata accessor for Location);
  v3 = type metadata accessor for Location();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t sub_266C35BFC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9EC0, &qword_266DAF908);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = *a1;
  if (qword_2800C9170 != -1)
  {
    swift_once();
  }

  v14 = sub_266DA94AC();
  __swift_project_value_buffer(v14, qword_2800C9DD8);
  v15 = sub_266DA948C();
  v16 = sub_266DAAAEC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v4;
    v20 = v19;
    v31 = v19;
    *v18 = 136315138;
    v30 = v13;
    v21 = sub_266DAA72C();
    v23 = sub_266C22A3C(v21, v22, &v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_266C08000, v15, v16, "Could not calculate distance because fetching user location failed with %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D5F2480](v20, -1, -1);
    v24 = v18;
    a2 = v29;
    MEMORY[0x26D5F2480](v24, -1, -1);
  }

  v25 = type metadata accessor for Location();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v25);
  sub_266DA977C();
  sub_266C230E8(&qword_2800C9EC8, &qword_2800C9EC0, &qword_266DAF908);
  v26 = sub_266DA97EC();
  result = (*(v9 + 8))(v12, v8);
  *a2 = v26;
  return result;
}

uint64_t sub_266C35ED4()
{
  FriendSessionManager = type metadata accessor for FindFriendSessionManager();
  __swift_allocate_value_buffer(FriendSessionManager, qword_2800E61C0);
  v1 = OUTLINED_FUNCTION_4_4();
  v3 = __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9E18, &qword_266DAF888);
  swift_allocObject();
  v4 = sub_266CF0128(sub_266C35F74, 0, "FindFriendSession", 17, 2);
  return sub_266C3477C(v4, v3, 15.0);
}

uint64_t sub_266C35F74@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FMFCoreFindFriendSession();
  result = sub_266D3FB68();
  *a1 = result;
  return result;
}

unint64_t sub_266C3601C()
{
  result = qword_28156EFC8;
  if (!qword_28156EFC8)
  {
    sub_266DAAB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156EFC8);
  }

  return result;
}

uint64_t sub_266C36074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C34A1C();
  *a1 = result;
  return result;
}

uint64_t sub_266C360E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_4_4();
  v8(v7);
  return a2;
}

uint64_t sub_266C36168(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_266C36200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C36270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_4();
  v8(v7);
  return a2;
}

uint64_t sub_266C362E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return swift_once();
}

double OUTLINED_FUNCTION_4_6()
{
  v1 = *(v0 + 8);
  result = *v0;
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_10_1(uint64_t a1@<X8>)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = 2;
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t result)
{
  v2 = *(v1 - 168);
  *(result + 16) = *(v1 - 176);
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_2()
{
  *v1 = v0;
  v4 = v1 + *(v2 + 48);

  return sub_266DA946C();
}

uint64_t OUTLINED_FUNCTION_18_2()
{
  v3 = *v1;
  *v1 = v0;
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_266DA986C();
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_21_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_266C36550()
{
  v1 = v0;
  v2 = sub_266DA72DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DA72CC();
  v7 = [v0 givenName];
  sub_266DAA70C();

  sub_266DA722C();
  v8 = [v1 familyName];
  sub_266DAA70C();

  sub_266DA724C();
  v9 = [v1 nickname];
  sub_266DAA70C();

  sub_266DA72BC();
  v10 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  v11 = sub_266DA74EC();
  [v10 setLocale_];

  v12 = objc_opt_self();
  v13 = sub_266DA728C();
  v14 = [v12 localizedStringFromPersonNameComponents:v13 style:0 options:0];

  v15 = sub_266DAA70C();
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t sub_266C36780(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_266DAAD5C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_266C367A4()
{
  OUTLINED_FUNCTION_6();
  v27 = v0;
  v28 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F80, &unk_266DB1ED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_266DA72DC();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  v17 = v3[1];
  v30[0] = *v3;
  v30[1] = v17;
  v18 = v3[3];
  v30[2] = v3[2];
  v31 = v18;
  v19 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v26 = OUTLINED_FUNCTION_7_3();
  if (*(&v31 + 1))
  {
    sub_266C24A98(v30, &v29);

    sub_266DA72CC();
    OUTLINED_FUNCTION_14_2();
    sub_266DA722C();
    sub_266DA724C();
    sub_266DA72BC();
    sub_266C3A088(v30, &qword_2800C9B18, &qword_266DBFC40);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v11 + 32))(v16, v7, v8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_266DA72CC();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_266C3A088(v7, &qword_2800C9F80, &unk_266DB1ED0);
    }
  }

  v20 = sub_266DA728C();
  (*(v11 + 8))(v16, v8);
  if (*(&v31 + 1))
  {

    sub_266C3A088(v30, &qword_2800C9B18, &qword_266DBFC40);
  }

  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_266DAA6FC();

  v23 = v26;
  v24 = [v21 initWithPersonHandle:v26 nameComponents:v20 displayName:0 image:0 contactIdentifier:v22 customIdentifier:0];

  [v24 setIsMe_];
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C36A94()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9EF0);
  v1 = __swift_project_value_buffer(v0, qword_2800C9EF0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266C36B5C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v65 = v2;
  v66 = v3;
  v5 = v4;
  v64[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F80, &unk_266DB1ED0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v67 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v64 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v64 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v64 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v64 - v22;
  v24 = sub_266DA7C9C();
  v25 = OUTLINED_FUNCTION_0_2(v24);
  v70 = v26;
  v71 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_6();
  v72 = v30 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = MEMORY[0x277D84F90];
  v68 = v31 + 16;
  if (!v5)
  {
    sub_266C39CC0(v1, &selRef_contactIdentifier);
  }

  sub_266DA7C8C();
  v32 = [v1 nameComponents];
  v33 = v1;
  if (v32)
  {
    v34 = v32;
    sub_266DA729C();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = sub_266DA72DC();
  __swift_storeEnumTagSinglePayload(v21, v35, 1, v36);
  sub_266C3A020(v21, v23, &qword_2800C9F80, &unk_266DB1ED0);
  v37 = 0;
  v38 = 0;
  if (!__swift_getEnumTagSinglePayload(v23, 1, v36))
  {
    v37 = sub_266DA721C();
    v38 = v39;
  }

  sub_266C3A088(v23, &qword_2800C9F80, &unk_266DB1ED0);
  sub_266C37134(v37, v38, 0x69466E6F73726570, 0xEF656D614E747372, v31);

  sub_266C37134(v65, v66, 0x69466E6F73726570, 0xEF656D614E747372, v31);
  v40 = [v33 nameComponents];
  if (v40)
  {
    v41 = v40;
    sub_266DA729C();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = v67;
  __swift_storeEnumTagSinglePayload(v15, v42, 1, v36);
  sub_266C3A020(v15, v18, &qword_2800C9F80, &unk_266DB1ED0);
  if (!__swift_getEnumTagSinglePayload(v18, 1, v36))
  {
    sub_266DA723C();
  }

  sub_266C3A088(v18, &qword_2800C9F80, &unk_266DB1ED0);
  OUTLINED_FUNCTION_10_2();
  v44 = OUTLINED_FUNCTION_14_2();
  sub_266C37134(v44, v45, v46, v47, v31);

  v48 = [v33 nameComponents];
  if (v48)
  {
    v49 = v48;
    sub_266DA729C();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v69;
  __swift_storeEnumTagSinglePayload(v43, v50, 1, v36);
  sub_266C3A020(v43, v51, &qword_2800C9F80, &unk_266DB1ED0);
  if (__swift_getEnumTagSinglePayload(v51, 1, v36))
  {
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v52 = sub_266DA72AC();
    v53 = v54;
  }

  sub_266C3A088(v51, &qword_2800C9F80, &unk_266DB1ED0);
  OUTLINED_FUNCTION_10_2();
  sub_266C37134(v52, v53, v55 & 0xFFFFFFFFFFFFLL | 0x694E000000000000, 0xEE00656D614E6B63, v31);

  v56 = [v33 displayName];
  v57 = sub_266DAA70C();
  v59 = v58;

  OUTLINED_FUNCTION_10_2();
  sub_266C37134(v57, v59, v60 & 0xFFFFFFFFFFFFLL | 0x7546000000000000, 0xEE00656D614E6C6CLL, v31);

  v61 = swift_beginAccess();
  v62 = *(v31 + 16);
  MEMORY[0x28223BE20](v61);
  v63 = v72;
  v64[-2] = v72;

  sub_266D69690(sub_266C3A000, &v64[-4], v62);

  (*(v70 + 8))(v63, v71);

  OUTLINED_FUNCTION_5();
}

uint64_t sub_266C37134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_266DA7C9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v14 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      sub_266DA7C8C();
      swift_beginAccess();
      sub_266C386C8(sub_266CF9BBC);
      v15 = *(*(a5 + 16) + 16);
      sub_266C38754(v15, sub_266CF9BBC);
      v16 = *(a5 + 16);
      *(v16 + 16) = v15 + 1;
      (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v13, v8);
      *(a5 + 16) = v16;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_266C372D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266DA7C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB8, &qword_266DBB450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v15 - v11;
  v13 = *(v5 + 16);
  v13(v15 - v11, a2, v4);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
  v13(v8, a1, v4);
  return sub_266DA7C1C();
}

void sub_266C37440()
{
  OUTLINED_FUNCTION_6();
  v40 = v0;
  v2 = v1;
  v3 = sub_266DA737C();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = sub_266DA72DC();
  v20 = OUTLINED_FUNCTION_0_2(v19);
  v38 = v21;
  v39 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_6();
  v26 = v25 - v24;
  sub_266DA72CC();
  sub_266C39CC0(v2, &selRef_firstName);
  sub_266DA722C();
  sub_266C39CC0(v2, &selRef_nickName);
  sub_266DA72BC();
  sub_266C39CC0(v2, &selRef_lastName);
  sub_266DA724C();
  v27 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v28 = OUTLINED_FUNCTION_7_3();
  v29 = sub_266DA728C();
  v30 = [v2 identifier];
  if (v30)
  {
    v31 = v30;
    sub_266DA734C();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v32, 1, v3);
  sub_266C3A020(v16, v18, &qword_2800C9C48, &unk_266DAEBA0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v3))
  {
    sub_266C3A088(v18, &qword_2800C9C48, &unk_266DAEBA0);
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    (*(v6 + 16))(v11, v18, v3);
    sub_266C3A088(v18, &qword_2800C9C48, &unk_266DAEBA0);
    v33 = sub_266DA730C();
    v34 = v35;
    (*(v6 + 8))(v11, v3);
  }

  v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_266C39D20(v28, v29, 0, 0, v33, v34, 0, v36);

  (*(v38 + 8))(v26, v39);
  OUTLINED_FUNCTION_5();
}

void sub_266C37774()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F70, &qword_266DAF970);
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v11 - v8;
  sub_266DA8E0C();
  v10 = sub_266DA8E2C();
  v13 = v1;
  v10(&v12, &v13);

  sub_266C379E8();

  (*(v5 + 8))(v9, v2);
  OUTLINED_FUNCTION_5();
}

void sub_266C379E8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = sub_266DA72DC();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = [v1 personHandle];
  if (!v11)
  {
    v12 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    v11 = OUTLINED_FUNCTION_7_3();
  }

  v13 = [v1 nameComponents];
  if (v13)
  {
    sub_266DA729C();

    v13 = sub_266DA728C();
    (*(v5 + 8))(v10, v2);
  }

  v14 = [v1 displayName];
  if (!v14)
  {
    sub_266DAA70C();
    v14 = sub_266DAA6FC();
  }

  v15 = [v1 image];
  sub_266C39CC0(v1, &selRef_contactIdentifier);
  if (v16)
  {
    v17 = sub_266DAA6FC();
  }

  else
  {
    v17 = 0;
  }

  sub_266C67B18(v1);
  if (v18)
  {
    v19 = sub_266DAA6FC();
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = [v1 relationship];
  [v20 initWithPersonHandle:v11 nameComponents:v13 displayName:v14 image:v15 contactIdentifier:v17 customIdentifier:v19 relationship:v21];

  OUTLINED_FUNCTION_5();
}

void Array<A>.getDisplayHints(idNode:referenceNode:)()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v36 = sub_266DA7C9C();
  v2 = OUTLINED_FUNCTION_0_2(v36);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_6();
  v35 = v8 - v7;
  v9 = sub_266DA812C();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v32 = v11;
  v33 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v34 = v15 - v14;
  v18 = sub_266C3A14C(v1, v16, v17);
  v19 = 0;
  v20 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v18 == v19)
    {

      sub_266DA810C();
      v25 = sub_266C36780(v1);
      if (v25)
      {
        v26 = v25;
        v37 = MEMORY[0x277D84F90];
        sub_266C38978();
        if (v26 < 0)
        {
          goto LABEL_21;
        }

        for (i = 0; i != v26; ++i)
        {
          if (v20)
          {
            v28 = MEMORY[0x26D5F1780](i, v1);
          }

          else
          {
            v28 = *(v1 + 8 * i + 32);
          }

          v29 = v28;
          sub_266C39CC0(v28, &selRef_contactIdentifier);

          sub_266DA7C8C();

          v30 = *(v37 + 16);
          if (v30 >= *(v37 + 24) >> 1)
          {
            sub_266C38978();
          }

          *(v37 + 16) = v30 + 1;
          (*(v4 + 32))(v37 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v35, v36);
        }
      }

      v31 = sub_266DA811C();

      (*(v32 + 8))(v34, v33);
      sub_266C3815C(v31);
      OUTLINED_FUNCTION_5();
      return;
    }

    if (v20)
    {
      v21 = MEMORY[0x26D5F1780](v19, v1);
    }

    else
    {
      if (v19 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v21 = *(v1 + 8 * v19 + 32);
    }

    v22 = v21;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    sub_266C36B5C();
    v24 = v23;

    sub_266C3815C(v24);
    ++v19;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_266C37F90(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D47544(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  OUTLINED_FUNCTION_17_3();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_266C38034(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D4755C(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_266C380C8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D47574(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_266C3815C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D4758C(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  v8 = *(sub_266DA7C2C() - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_266C38244(uint64_t a1)
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

  result = sub_266D475A4(result, 1);
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

void sub_266C382FC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D475BC(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_266C38390(unint64_t a1)
{
  v3 = sub_266C36780(a1);
  v4 = sub_266C36780(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_266D475D4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_266C39DBC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_266C3843C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D47674(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F18, &qword_266DB24C0);
  OUTLINED_FUNCTION_17_3();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_266C384E4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D4768C(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_266C38574(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D476A4(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_266C38604(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_14(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266D476BC(v4, 1);
  OUTLINED_FUNCTION_6_6();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_7();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_5_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_266C386C8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_266C38754(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_266C3879C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C38C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266C387BC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C38D08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266C387DC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C38E18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266C387FC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C38F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266C3881C()
{
  v1 = *v0;
  sub_266C39AC0();
  *v0 = v2;
}

void sub_266C38868()
{
  v1 = *v0;
  sub_266C39114();
  *v0 = v2;
}

uint64_t sub_266C388B4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C39028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266C388D4()
{
  v1 = *v0;
  sub_266C39114();
  *v0 = v2;
}

void sub_266C38920()
{
  v1 = *v0;
  sub_266C39918();
  *v0 = v2;
}

void sub_266C38978()
{
  v1 = *v0;
  sub_266C39918();
  *v0 = v2;
}

void sub_266C389D0()
{
  v1 = *v0;
  sub_266C39918();
  *v0 = v2;
}

size_t sub_266C38A28(size_t a1, int64_t a2, char a3)
{
  result = sub_266C391F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266C38A48(void *a1, int64_t a2, char a3)
{
  result = sub_266C393C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266C38A68(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C394DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266C38A88(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C395F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266C38AA8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C396F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266C38AC8()
{
  v1 = *v0;
  sub_266C39918();
  *v0 = v2;
}

uint64_t sub_266C38B20(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C39800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266C38B40()
{
  v1 = *v0;
  sub_266C39918();
  *v0 = v2;
}

void sub_266C38B98()
{
  v1 = *v0;
  sub_266C39AC0();
  *v0 = v2;
}

uint64_t sub_266C38BE4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266C39B9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266C38C04(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F08, &qword_266DAF928);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_266D470E4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C38D08(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FA0, &qword_266DAF988);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_266D47104((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C38E18(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_266D47104((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C38F18(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B10, &unk_266DB6F00);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_266D47124((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C39028(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F30, &qword_266DAF940);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_266D4716C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_266C39114()
{
  OUTLINED_FUNCTION_15_3();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 48);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_16_2();
    goto LABEL_15;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_266C391F8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F40, &qword_266DAF950);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F48, &unk_266DBDCA0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F48, &unk_266DBDCA0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_266D471F4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_266C393C4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F50, &qword_266DAF958);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_266D47940(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F58, &unk_266DB1EB0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C394DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F90, &qword_266DAF978);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_266D47230((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F98, &qword_266DAF980);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C395F4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE0, &unk_266DB6F10);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 192);
      if (v5)
      {
LABEL_13:
        sub_266D47298((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C396F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD8, &unk_266DB24B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_266D472BC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C39800(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F10, &unk_266DB6C70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_266D473FC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F18, &qword_266DB24C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_266C39918()
{
  OUTLINED_FUNCTION_6();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_12_3();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_11_2();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(v6(0) - 8);
  if (v10)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v4(v8 + v24, v15, v20 + v24);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_5();
}

void sub_266C39AC0()
{
  OUTLINED_FUNCTION_15_3();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_3();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 64);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_16_2();
    goto LABEL_15;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_11_2();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_266C39B9C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FC8, &qword_266DAF998);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_266D47520((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FD0, &qword_266DAF9A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266C39CC0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_266DAA70C();

  return v4;
}

id sub_266C39D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_266DAA6FC();

  v15 = [a8 initWithPersonHandle:a1 nameComponents:a2 displayName:a3 image:a4 contactIdentifier:v14 customIdentifier:a7];

  return v15;
}

uint64_t sub_266C39DBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_266DAAD5C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_266C36780(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_266DA782C();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_266C3A0E8();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FE8, &qword_266DAF9A8);
          v9 = sub_266C39F90(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_266C39F20(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v7 = OUTLINED_FUNCTION_13_2(a1, a2, a3);
  sub_266CB9F54(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_14_2();
    v10 = MEMORY[0x26D5F1780](v12);
  }

  *v3 = v10;
  return sub_266C39F88;
}

uint64_t (*sub_266C39F90(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v7 = OUTLINED_FUNCTION_13_2(a1, a2, a3);
  sub_266CB9F54(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_14_2();
    v11 = MEMORY[0x26D5F1780](v13);
  }

  *v3 = v11;
  return sub_266C39FF8;
}

uint64_t sub_266C3A020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_266C3A088(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_266C3A0E8()
{
  result = qword_2800C9FF0;
  if (!qword_2800C9FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800C9FE8, &qword_266DAF9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9FF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_arrayInitWithCopy();
}

id OUTLINED_FUNCTION_7_3()
{

  return sub_266D6B4E8(0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_266C3A294()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800C9FF8);
  v1 = __swift_project_value_buffer(v0, qword_2800C9FF8);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C3A35C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 alternatives];
  v7 = sub_266DAA93C();

  v8 = sub_266C3A9B4(v7);

  if (!v8)
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = (*(*(a3 + 8) + 8))(a2);
  if (v9)
  {
    v10 = v9;
    v11 = (*(a3 + 24))([a1 unsupportedReason], v9, v8, a2, a3);
  }

  else
  {

    if (qword_2800C9188 != -1)
    {
      OUTLINED_FUNCTION_0_15();
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800C9FF8);
    v13 = sub_266DA948C();
    v14 = sub_266DAAAEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266C08000, v13, v14, "FindFriendIntent always expected to have at-least a skeleton person, reforming to punch out to friends list", v15, 2u);
      MEMORY[0x26D5F2480](v15, -1, -1);
    }

    return 0;
  }

  return v11;
}

void *sub_266C3A520(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0;
  switch(a1)
  {
    case 1:
      v6 = a2;
      v5 = a2;
      break;
    case 2:
      v8 = a2;

      v5 = a2;
      break;
    case 3:
      v5 = 0;
      break;
    case 4:
      return v5;
    case 5:
      if (!sub_266C3A14C(a3, 0, 0))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_2_7();
      v5 = *(a3 + 32);
      v7 = v5;
      break;
    default:
      if (qword_2800C9188 != -1)
      {
        OUTLINED_FUNCTION_0_15();
      }

      v10 = sub_266DA94AC();
      __swift_project_value_buffer(v10, qword_2800C9FF8);
      v11 = sub_266DA948C();
      v12 = sub_266DAAAFC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = a1;
        OUTLINED_FUNCTION_1_10(&dword_266C08000, v14, v15, "FindFriendIntent returned an unexpected unsupported reason of %ld");
        MEMORY[0x26D5F2480](v13, -1, -1);
      }

LABEL_12:
      v5 = 0;
      break;
  }

  return v5;
}

void *sub_266C3A6CC(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = 0;
  switch(a1)
  {
    case 1:
      v6 = a2;
      v5 = a2;
      break;
    case 2:
      v7 = a2;

      v5 = a2;
      break;
    case 3:
      return v5;
    case 4:
      if (a3 >> 62)
      {
        if (!sub_266DAAD5C())
        {
          goto LABEL_12;
        }
      }

      else if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_2_7();
      v5 = *(a3 + 32);
      v8 = v5;
      break;
    default:
      if (qword_2800C9188 != -1)
      {
        OUTLINED_FUNCTION_0_15();
      }

      v10 = sub_266DA94AC();
      __swift_project_value_buffer(v10, qword_2800C9FF8);
      v11 = sub_266DA948C();
      v12 = sub_266DAAAFC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = a1;
        OUTLINED_FUNCTION_1_10(&dword_266C08000, v14, v15, "FindFriendIntent returned an unexpected unsupported reason of %ld");
        MEMORY[0x26D5F2480](v13, -1, -1);
      }

LABEL_12:
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return sub_266CB9F54(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_266C3A8EC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA010);
  v1 = __swift_project_value_buffer(v0, qword_2800CA010);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C3A9FC(uint64_t a1, void (*a2)(void))
{
  v9 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  sub_266DAAE8C();
  v5 = a1 + 32;
  if (!v4)
  {
    return v9;
  }

  while (1)
  {
    sub_266C23550(v5, v8);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_266DAAE6C();
    v6 = *(v9 + 16);
    sub_266DAAE9C();
    sub_266DAAEAC();
    sub_266DAAE7C();
    v5 += 32;
    if (!--v4)
    {
      return v9;
    }
  }

  return 0;
}

uint64_t sub_266C3AAFC()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
  sub_266DA816C();
  sub_266D6F5AC(v5);
  v7 = v6;
  (*(v2 + 8))(v5, v1);
  if (!v7)
  {
    return sub_266DA7CAC();
  }

  if (v7 == 1)
  {
    return sub_266DA7CCC();
  }

  sub_266DA7CBC();
  v9 = OUTLINED_FUNCTION_58();
  return sub_266C488A0(v9, v10);
}

uint64_t sub_266C3AC28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_8(sub_266C3AC44);
}

uint64_t sub_266C3AC44()
{
  v25 = v0;
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0B8, &qword_266DAFCC0);
  v2 = sub_266DA80DC();
  v3 = [v2 disambiguationItems];

  v4 = sub_266DAA93C();
  v5 = sub_266C3A9FC(v4, type metadata accessor for DeviceDetail);
  v0[5] = v5;

  if (v5)
  {
    if (qword_2800C93D8 != -1)
    {
      OUTLINED_FUNCTION_1_11();
    }

    v6 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v6, qword_2800E6498);
    v7 = sub_266DA948C();
    v8 = sub_266DAAB0C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_14_0();
      v10 = OUTLINED_FUNCTION_13_0();
      v24 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_266C22A3C(0x6769626D61736944, 0xEE00676E69746175, &v24);
      _os_log_impl(&dword_266C08000, v7, v8, "**** %{public}s ****", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    v11 = v0[4];
    v12 = v0[2];
    v13 = swift_task_alloc();
    *(v13 + 16) = v4;
    sub_266CB9F3C(sub_266C48BC0, v13, v5);

    sub_266C233D0(v11 + 56, (v12 + 2));

    v15 = sub_266C287D8(v14);
    *v12 = v15;
    v12[1] = v5;
    if (*(v15 + 16) >= 2uLL)
    {
      v16 = v0[3];
      v0[6] = sub_266DA80CC();
      v17 = swift_task_alloc();
      v0[7] = v17;
      *v17 = v0;
      v17[1] = sub_266C3AF70;
      v18 = v0[4];
      OUTLINED_FUNCTION_42();

      return sub_266C413A8();
    }

    v21 = v0[2];
    sub_266C47810();
    OUTLINED_FUNCTION_87();
    *v22 = v5;
    swift_willThrow();
    sub_266C48950(v21);
  }

  else
  {
    sub_266C488FC();
    OUTLINED_FUNCTION_87();
    *v20 = 3;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_28();

  return v23();
}

uint64_t sub_266C3AF70()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v9 = v8;
  *(v10 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_28();

    return v14();
  }
}

uint64_t sub_266C3B0C8()
{
  OUTLINED_FUNCTION_22_0();
  sub_266C48950(*(v0 + 16));
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_28();

  return v2();
}

uint64_t sub_266C3B124()
{
  OUTLINED_FUNCTION_22_0();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0C0, &qword_266DAFCC8);
  v1[18] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[19] = v7;
  v9 = *(v8 + 64);
  v1[20] = OUTLINED_FUNCTION_62();
  v10 = sub_266DA81AC();
  v1[21] = v10;
  OUTLINED_FUNCTION_11_3(v10);
  v1[22] = v11;
  v13 = *(v12 + 64);
  v1[23] = OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266C3BD18()
{
  OUTLINED_FUNCTION_22_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippets();
  v1[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_64();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[30] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_62();
  v11 = sub_266DA7C0C();
  v1[33] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[34] = v12;
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v15);
  v17 = *(v16 + 64);
  v1[37] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[38] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[39] = v22;
  v1[40] = *(v23 + 64);
  v1[41] = OUTLINED_FUNCTION_64();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v24 = swift_task_alloc();
  v1[47] = OUTLINED_FUNCTION_119(v24);
  v1[48] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_266C3BF60()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v1 = *(v0 + 384);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  *(v0 + 392) = *(*(v0 + 192) + 144);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = sub_266D14B44(v3);
  v11 = v8;
  if (v8)
  {
    if (sub_266C3A14C(v8, v9, v10))
    {
      sub_266CB9F54(0, (v11 & 0xC000000000000001) == 0, v11);
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D5F1780](0, v11);
      }

      else
      {
        v12 = *(v11 + 32);
      }

      v13 = v12;

      v14 = sub_266C1CEB4(v13);
      v16 = v15;
      LOBYTE(v11) = sub_266CC7C44();

      goto LABEL_8;
    }

    LOBYTE(v11) = 0;
  }

  v14 = 0;
  v16 = 0;
LABEL_8:
  v17 = *(v0 + 376);
  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v20 = *(v0 + 184);
  *v17 = 4;
  *(v17 + 8) = v14;
  *(v17 + 16) = v16;
  *(v17 + 24) = v11 & 1;
  OUTLINED_FUNCTION_83();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v18);
  *(v0 + 480) = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 400) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v27 = OUTLINED_FUNCTION_101();
  *(v0 + 408) = v27;
  *(v27 + 16) = xmmword_266DAE3B0;
  v28 = *(v19 + 136);
  *(v0 + 481) = 1;
  sub_266CAA15C();
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 416) = v29;
  *v29 = v30;
  v29[1] = sub_266C3C158;
  OUTLINED_FUNCTION_100();

  return sub_266D945C8(v31, v32);
}

uint64_t sub_266C3C158()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 416);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v5[53] = v0;

  if (v0)
  {
    v11 = v5[48];
    sub_266C47654(v5[47], &qword_2800CA050, &qword_266DB0080);
    v12 = OUTLINED_FUNCTION_32();
    sub_266C47654(v12, v13, &qword_266DB0080);
  }

  else
  {
    v5[54] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266C3C830()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 408);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3C938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110();
  v26 = *(v22 + 224);
  v25 = *(v22 + 232);

  sub_266C477B4(v26);
  sub_266C477B4(v25);
  v27 = OUTLINED_FUNCTION_6_7();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  v31 = OUTLINED_FUNCTION_35();
  sub_266C47654(v31, v32, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C3CAAC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 408);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110();
  v25 = *(v22 + 216);

  sub_266C477B4(v25);
  v26 = OUTLINED_FUNCTION_6_7();
  v27(v26);
  v28 = OUTLINED_FUNCTION_18_3();
  v29(v28);
  v30 = OUTLINED_FUNCTION_35();
  sub_266C47654(v30, v31, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C3CD18()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *(v4 + 408);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110();
  v25 = *(v22 + 208);

  sub_266C477B4(v25);
  v26 = OUTLINED_FUNCTION_6_7();
  v27(v26);
  v28 = OUTLINED_FUNCTION_18_3();
  v29(v28);
  v30 = OUTLINED_FUNCTION_35();
  sub_266C47654(v30, v31, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C3CF84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 472);
  v3 = *(v1 + 408);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C3D084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_110();

  v24 = OUTLINED_FUNCTION_6_7();
  v25(v24);
  v26 = OUTLINED_FUNCTION_18_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_35();
  sub_266C47654(v28, v29, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v23, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C3D1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[50];
  v22 = v20[51];
  v24 = v20[47];
  v23 = v20[48];
  v25 = v20[45];
  v26 = v20[46];
  v28 = v20[43];
  v27 = v20[44];
  v30 = v20[41];
  v29 = v20[42];
  v41 = v20[38];
  v42 = v20[37];
  v43 = v20[36];
  v44 = v20[35];
  v45 = v20[32];
  v46 = v20[29];
  v47 = v20[28];
  v48 = v20[27];
  v49 = v20[26];

  *(v22 + 16) = 0;

  OUTLINED_FUNCTION_28();
  v31 = v20[53];
  OUTLINED_FUNCTION_39();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, a18, a19, a20);
}

uint64_t sub_266C3D314()
{
  OUTLINED_FUNCTION_22_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_266DA7E5C();
  v1[6] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_62();
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3D3BC()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0B8, &qword_266DAFCC0);
  v0[9] = sub_266DA80CC();
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA090, &qword_266DAFC68);
  v4 = sub_266DA7FFC();
  v0[11] = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[12] = v5;
  *v5 = v6;
  v5[1] = sub_266C3D4A4;
  v7 = v0[8];

  return sub_266CC17E8(v7, v4, v2 + 56);
}

uint64_t sub_266C3D4A4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266C3D5A4()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[10];
  v2 = v0[3];
  v3 = sub_266DA7FFC();
  if (*(v3 + 16))
  {
    v5 = *(v3 + 48);
    v4 = *(v3 + 56);
    v6 = *(v3 + 64);
    v7 = OUTLINED_FUNCTION_32();
    sub_266C292B4(v7, v8, v6);

    v9 = OUTLINED_FUNCTION_32();
    if (v6 == 2)
    {
      sub_266C479B0(v9, v10, 2u);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[14] = v11;
      *v11 = v12;
      v11[1] = sub_266C3D710;
      v13 = v0[9];
      v14 = v0[5];
      v15 = v0[2];
      v16 = v0[3];

      return sub_266C3DB00();
    }

    sub_266C479B0(v9, v10, v6);
  }

  else
  {
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[16] = v18;
  *v18 = v19;
  v18[1] = sub_266C3D88C;
  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[5];
  v23 = v0[2];
  v24 = v0[3];

  return sub_266C3F808();
}

uint64_t sub_266C3D710()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3D80C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_32();
  v6(v5);

  OUTLINED_FUNCTION_15_4();

  return v7();
}

uint64_t sub_266C3D88C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3D988()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  v3 = *(v0 + 64);

  OUTLINED_FUNCTION_28();

  return v4();
}

uint64_t sub_266C3D9F8()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_32();
  v6(v5);
  v7 = *(v0 + 120);
  v8 = *(v0 + 64);

  OUTLINED_FUNCTION_28();

  return v9();
}

uint64_t sub_266C3DA7C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_32();
  v6(v5);
  v7 = *(v0 + 136);
  v8 = *(v0 + 64);

  OUTLINED_FUNCTION_28();

  return v9();
}

uint64_t sub_266C3DB00()
{
  OUTLINED_FUNCTION_22_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = type metadata accessor for Snippets();
  v1[26] = v5;
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_64();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v8 = sub_266DA80AC();
  v1[31] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[32] = v9;
  v11 = *(v10 + 64);
  v1[33] = OUTLINED_FUNCTION_62();
  v12 = sub_266DA7C0C();
  v1[34] = v12;
  OUTLINED_FUNCTION_11_3(v12);
  v1[35] = v13;
  v15 = *(v14 + 64);
  v1[36] = OUTLINED_FUNCTION_64();
  v1[37] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v16);
  v18 = *(v17 + 64);
  v1[38] = OUTLINED_FUNCTION_62();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v19);
  v21 = *(v20 + 64);
  v1[39] = OUTLINED_FUNCTION_62();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v22);
  v1[40] = v23;
  v1[41] = *(v24 + 64);
  v1[42] = OUTLINED_FUNCTION_64();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v25 = swift_task_alloc();
  v1[47] = OUTLINED_FUNCTION_119(v25);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v26 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v26);
  v28 = *(v27 + 64);
  v1[50] = OUTLINED_FUNCTION_62();
  v29 = sub_266DA7E5C();
  v1[51] = v29;
  OUTLINED_FUNCTION_11_3(v29);
  v1[52] = v30;
  v32 = *(v31 + 64);
  v1[53] = OUTLINED_FUNCTION_62();
  v33 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_266C3DDB4()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[24];
  v1 = v0[25];
  v0[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA090, &qword_266DAFC68);
  v3 = sub_266DA7FFC();
  v0[55] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[56] = v4;
  *v4 = v5;
  v4[1] = sub_266C3DE70;
  v6 = v0[53];

  return sub_266CC17E8(v6, v3, v1 + 56);
}

uint64_t sub_266C3DE70()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v3 + 456) = v0;

  if (!v0)
  {
    v9 = *(v3 + 440);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_266C3DF70()
{
  OUTLINED_FUNCTION_114();
  v1 = v0[54];
  v2 = v0[24];
  v3 = sub_266DA7FFC();
  v4 = 0;
  v62 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  v60 = v3;
  v64 = v0;
LABEL_2:
  v65 = v5;
  v0[58] = v5;
  v6 = 48 * v4;
  while (v62 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v7 = *(v3 + v6 + 32);
    v8 = *(v3 + v6 + 40);
    v10 = *(v3 + v6 + 48);
    v9 = *(v3 + v6 + 56);
    v11 = *(v3 + v6 + 64);
    v12 = *(v3 + v6 + 72);
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v19 = *(v3 + v6 + 72);
      }

      if (!sub_266DAAD5C())
      {
LABEL_14:

        v20 = OUTLINED_FUNCTION_40();
        sub_266C292B4(v20, v21, v22);

        v18 = 0;
        goto LABEL_15;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {

      v27 = OUTLINED_FUNCTION_40();
      sub_266C292B4(v27, v28, v29);

      v17 = MEMORY[0x26D5F1780](0, v12);
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v13 = *(v12 + 32);

      v14 = OUTLINED_FUNCTION_40();
      sub_266C292B4(v14, v15, v16);

      v17 = v13;
    }

    v18 = v17;
LABEL_15:
    v23 = [v18 deviceOwner];

    if (v23)
    {
      v30 = OUTLINED_FUNCTION_40();
      sub_266C479B0(v30, v31, v32);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v33 = v65;
      }

      else
      {
        v36 = *(v65 + 16);
        sub_266CF9E14();
      }

      v34 = *(v33 + 16);
      if (v34 >= *(v33 + 24) >> 1)
      {
        sub_266CF9E14();
      }

      ++v4;
      *(v33 + 16) = v34 + 1;
      v35 = (v33 + 24 * v34);
      v35[4] = v7;
      v35[5] = v8;
      v35[6] = v23;
      v5 = v33;
      v0 = v64;
      v3 = v60;
      goto LABEL_2;
    }

    v24 = OUTLINED_FUNCTION_40();
    sub_266C479B0(v24, v25, v26);

    v6 += 48;
    ++v4;
    v3 = v60;
  }

  v37 = v64;
  v61 = v64[25];

  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  v63 = *(v65 + 16);
  v40 = v65 + 48;
LABEL_25:
  v37[59] = v39;
  v41 = (v40 + 24 * v38);
  while (v63 != v38)
  {
    if (v38 >= *(v65 + 16))
    {
      goto LABEL_39;
    }

    v42 = v41 + 3;
    ++v38;
    v43 = v64[50];
    v44 = v64[25];
    v46 = *(v41 - 1);
    v45 = *v41;
    sub_266DA900C();
    v47 = *(v61 + 88);
    __swift_project_boxed_opaque_existential_1((v44 + 56), *(v61 + 80));
    v48 = v45;

    sub_266DA7AFC();
    v49 = sub_266DA8FBC();

    v41 = v42;
    if (v49)
    {
      MEMORY[0x26D5F1270]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      OUTLINED_FUNCTION_35();
      sub_266DAA96C();
      v39 = v66;
      v37 = v64;
      v40 = v65 + 48;
      goto LABEL_25;
    }
  }

  v50 = [v64[23] deviceQuery];
  if (v50)
  {
    v51 = v50;
    v52 = sub_266CAACE4(0, (v64[25] + 56));
  }

  else
  {
    v52 = 0;
  }

  v64[60] = v52;
  v53 = v64[23];
  v54 = *(v64[25] + 136);
  sub_266CAA15C();
  v55 = swift_task_alloc();
  v64[61] = v55;
  *v55 = v64;
  v55[1] = sub_266C3E3A8;
  OUTLINED_FUNCTION_60();

  sub_266D43690(v56, v57, v58);
}

uint64_t sub_266C3E3A8()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = *(v5 + 488);
  v7 = *(v5 + 472);
  v8 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v9 = v8;
  v3[62] = v10;
  v3[63] = v0;

  if (v0)
  {
    v11 = v3[58];
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266C3EB24()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v27 = v26[65];
  v28 = v26[48];
  v60 = v26[49];
  v29 = v26[37];
  v30 = v26[34];
  v31 = v26[35];
  v32 = v26[32];
  v33 = v26[33];
  v35 = v26[30];
  v34 = v26[31];
  v36 = v26[29];

  sub_266C477B4(v36);
  sub_266C477B4(v35);
  v37 = *(v32 + 8);
  v38 = OUTLINED_FUNCTION_83();
  v39(v38);
  v40 = *(v31 + 8);
  v41 = OUTLINED_FUNCTION_38();
  v42(v41);
  v43 = OUTLINED_FUNCTION_42();
  sub_266C47654(v43, v44, &qword_266DB0080);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v45, v46, v47);
  OUTLINED_FUNCTION_4_8();
  sub_266C47654(v36, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v31 + 8, &qword_2800CA048, &unk_266DAFC00);

  v48 = *(v35 + 8);
  v49 = OUTLINED_FUNCTION_42();
  v50(v49);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v60, a24, a25, a26);
}

uint64_t sub_266C3EDF4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_71();
  v30 = *(v26 + 224);

  sub_266C477B4(v30);
  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_83();
  v33(v32);
  v34 = *(v28 + 8);
  v35 = OUTLINED_FUNCTION_38();
  v36(v35);
  v37 = OUTLINED_FUNCTION_42();
  sub_266C47654(v37, v38, &qword_266DB0080);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v39, v40, v41);
  OUTLINED_FUNCTION_4_8();
  sub_266C47654(v28 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v29 + 8, &qword_2800CA048, &unk_266DAFC00);

  v42 = *(v30 + 8);
  v43 = OUTLINED_FUNCTION_42();
  v44(v43);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266C3F09C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C3F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_71();
  v30 = *(v26 + 216);

  sub_266C477B4(v30);
  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_83();
  v33(v32);
  v34 = *(v28 + 8);
  v35 = OUTLINED_FUNCTION_38();
  v36(v35);
  v37 = OUTLINED_FUNCTION_42();
  sub_266C47654(v37, v38, &qword_266DB0080);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v39, v40, v41);
  OUTLINED_FUNCTION_4_8();
  sub_266C47654(v28 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v29 + 8, &qword_2800CA048, &unk_266DAFC00);

  v42 = *(v30 + 8);
  v43 = OUTLINED_FUNCTION_42();
  v44(v43);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266C3F344()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 552);
  v3 = *(v1 + 512);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C3F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v28 = v26[65];
  v29 = v26[48];
  v30 = v26[49];
  v31 = v26[37];
  v32 = v26[34];
  v33 = v26[35];
  v35 = v26[32];
  v34 = v26[33];
  v36 = v26[31];

  v37 = *(v35 + 8);
  v38 = OUTLINED_FUNCTION_83();
  v39(v38);
  v40 = *(v33 + 8);
  v41 = OUTLINED_FUNCTION_38();
  v42(v41);
  v43 = OUTLINED_FUNCTION_42();
  sub_266C47654(v43, v44, &qword_266DB0080);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v45, v46, v47);
  OUTLINED_FUNCTION_4_8();
  sub_266C47654(v35 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v27, &qword_2800CA048, &unk_266DAFC00);

  v48 = *(v33 + 16);
  v49 = OUTLINED_FUNCTION_42();
  v50(v49);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266C3F5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = *(v22 + 440);

  v24 = *(v22 + 456);
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C3F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[60];
  v25 = v22[52];
  v24 = v22[53];
  v26 = v22[51];

  v27 = *(v25 + 8);
  v28 = OUTLINED_FUNCTION_32();
  v29(v28);
  v30 = v22[63];
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C3F808()
{
  OUTLINED_FUNCTION_22_0();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  v1[38] = v5;
  v6 = type metadata accessor for Snippets();
  v1[43] = v6;
  OUTLINED_FUNCTION_4_3(v6);
  v8 = *(v7 + 64);
  v1[44] = OUTLINED_FUNCTION_64();
  v1[45] = swift_task_alloc();
  v9 = swift_task_alloc();
  v1[47] = OUTLINED_FUNCTION_119(v9);
  v10 = sub_266DA80AC();
  v1[48] = v10;
  OUTLINED_FUNCTION_11_3(v10);
  v1[49] = v11;
  v13 = *(v12 + 64);
  v1[50] = OUTLINED_FUNCTION_62();
  v14 = sub_266DA7C0C();
  v1[51] = v14;
  OUTLINED_FUNCTION_11_3(v14);
  v1[52] = v15;
  v17 = *(v16 + 64);
  v1[53] = OUTLINED_FUNCTION_64();
  v1[54] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[55] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v21);
  v23 = *(v22 + 64);
  v1[56] = OUTLINED_FUNCTION_62();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v24);
  v1[57] = v25;
  v1[58] = *(v26 + 64);
  v1[59] = OUTLINED_FUNCTION_64();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

void sub_266C3FA54()
{
  OUTLINED_FUNCTION_114();
  v1 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA090, &qword_266DAFC68);
  v2 = sub_266DA7FFC();
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 48 * v3;
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v7 = v6 + 48;
    ++v3;
    v8 = *(v2 + v6 + 65);
    v6 += 48;
    if (v8)
    {
      v9 = *(v2 + v7 - 8);
      v46 = *(v2 + v7 - 16);
      v10 = *(v2 + v7);
      v11 = *(v2 + v7 + 8);
      v12 = *(v2 + v7 + 16);
      v13 = *(v2 + v7 + 24);

      sub_266C292B4(v10, v11, v12);

      v47 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v5 + 16);
        sub_266C38868();
      }

      v15 = *(v5 + 16);
      if (v15 >= *(v5 + 24) >> 1)
      {
        sub_266C38868();
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 48 * v15;
      *(v16 + 32) = v46;
      *(v16 + 40) = v47;
      *(v16 + 48) = v10;
      *(v16 + 56) = v11;
      *(v16 + 64) = v12;
      *(v16 + 65) = 1;
      *(v16 + 72) = v13;
      goto LABEL_2;
    }
  }

  swift_getKeyPath();
  v17 = 0;
  v49 = MEMORY[0x277D84F90];
  v18 = *(v5 + 16);
LABEL_12:
  v19 = 48 * v17;
  while (v18 != v17)
  {
    if (v17 >= *(v5 + 16))
    {
      goto LABEL_27;
    }

    v20 = v5 + v19;
    v21 = *(v5 + v19 + 72);
    v19 += 48;
    ++v17;
    v22 = *(v20 + 65);
    v24 = *(v20 + 48);
    v23 = *(v20 + 56);
    v25 = *(v20 + 40);
    v26 = *(v20 + 64);
    *(v0 + 88) = *(v20 + 32);
    *(v0 + 96) = v25;
    *(v0 + 104) = v24;
    *(v0 + 112) = v23;
    *(v0 + 120) = v26;
    *(v0 + 121) = v22;
    *(v0 + 128) = v21;

    v27 = OUTLINED_FUNCTION_75();
    sub_266C292B4(v27, v28, v26);
    swift_getAtKeyPath();

    v29 = OUTLINED_FUNCTION_75();
    sub_266C479B0(v29, v30, v26);

    if (*(v0 + 296))
    {
      MEMORY[0x26D5F1270](v31);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_266DAA95C();
      }

      OUTLINED_FUNCTION_75();
      sub_266DAA96C();
      v48 = v49;
      goto LABEL_12;
    }
  }

  v32 = *(v0 + 320);

  v33 = sub_266DA7FFC();
  sub_266C28F78(v33);
  v35 = v34;

  v36 = 0;
  switch(v35)
  {
    case 1:
    case 2:
      v36 = sub_266DAB17C();
      goto LABEL_22;
    case 3:
      break;
    default:
      v36 = 1;
LABEL_22:

      break;
  }

  *(v0 + 640) = v36 & 1;
  v37 = *(v0 + 320);
  v38 = Array<A>.uniqueCategories.getter(v48);
  *(v0 + 536) = sub_266C3A14C(v38, v39, v40);

  Array<A>.hasItems.getter(v48);
  *(v0 + 641) = v41 & 1;

  *(v0 + 544) = sub_266DA7FFC();
  v42 = swift_task_alloc();
  *(v0 + 552) = v42;
  *v42 = v0;
  v42[1] = sub_266C3FE74;
  v43 = *(v0 + 336);
  OUTLINED_FUNCTION_60();

  sub_266C42D40(v44);
}

uint64_t sub_266C3FE74()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v2 = v1;
  v4 = *(v3 + 552);
  v5 = *(v3 + 544);
  v6 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v9 + 560) = v8;
  *(v9 + 568) = v10;

  v11 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266C3FF7C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 536);
  v2 = *(v0 + 312);
  v3 = *(*(v0 + 336) + 136);
  sub_266CAA15C();
  v4 = swift_task_alloc();
  *(v0 + 576) = v4;
  *v4 = v0;
  v4[1] = sub_266C40040;
  v5 = *(v0 + 641);
  v6 = *(v0 + 640);
  v7 = OUTLINED_FUNCTION_111(*(v0 + 560));

  return sub_266D434B8(v7, v8, v9, v10, v11);
}

uint64_t sub_266C40040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_23_0();
  v23 = v22;
  OUTLINED_FUNCTION_10_3();
  *v24 = v23;
  v26 = *(v25 + 576);
  v27 = *(v25 + 560);
  v28 = *v21;
  OUTLINED_FUNCTION_9_2();
  *v29 = v28;
  v23[73] = v30;

  if (v20)
  {
    v31 = v23[71];
    v32 = v23[66];
    v33 = v23[65];
    v35 = v23[63];
    v34 = v23[64];
    v37 = v23[61];
    v36 = v23[62];
    v64 = v20;
    v38 = v23[59];
    v39 = v23[60];
    v56 = v23[56];
    v57 = v23[55];
    v58 = v23[54];
    v59 = v23[53];
    v40 = v23[46];
    v60 = v23[50];
    v61 = v23[47];
    v42 = v23 + 44;
    v41 = v23[44];
    v62 = v40;
    v63 = v42[1];

    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_39();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, v56, v57, v58, v59, v60, v61, v62, v63, v64, a18, a19, a20);
  }

  else
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_39();

    return MEMORY[0x2822009F8](v52, v53, v54);
  }
}

void sub_266C40250()
{
  v1 = v0[73];
  v2 = v0[65];
  v4 = v0[55];
  v3 = v0[56];
  v119 = v0[54];
  v5 = v0[42];
  v6 = v0[43];
  v7 = v0[41];
  v122 = v5[18];
  *v0[66] = v0[71];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v14 = OUTLINED_FUNCTION_101();
  v0[74] = v14;
  *(v14 + 16) = xmmword_266DAE3B0;
  *(v14 + 32) = v1;
  v15 = sub_266DA7E5C();
  OUTLINED_FUNCTION_0(v15);
  (*(v16 + 16))(v3, v7, v15);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287868050;
  *(inited + 64) = sub_266C47AA8();
  v21 = swift_allocObject();
  *(inited + 32) = v21;
  *(v21 + 16) = "ResponseFramework";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  *(v21 + 40) = "SMART";
  *(v21 + 48) = 5;
  *(v21 + 56) = 2;
  v22 = v1;
  LOBYTE(v7) = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F0B4();
  v121 = (v7 & 1) == 0;
  v23 = *MEMORY[0x277D5BC50];
  v24 = sub_266DA7C7C();
  OUTLINED_FUNCTION_0(v24);
  (*(v25 + 104))(v4, v23, v24);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
  sub_266DA7BCC();
  if (sub_266C3A14C(v14, v29, v30))
  {
    sub_266CB9F54(0, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x26D5F1780](0, v14);
    }

    else
    {
      v31 = *(v14 + 32);
    }

    v32 = v31;
    v33 = [v31 catId];

    v116 = sub_266DAA70C();
    v120 = v34;
  }

  else
  {
    v116 = 0;
    v120 = 0;
  }

  v35 = v0[66];
  v37 = v0[63];
  v36 = v0[64];
  v38 = v0[57];
  v39 = v0[58];
  v113 = v0[56];
  v114 = v0[55];
  v40 = v0[53];
  v112 = v0[54];
  v42 = v0[51];
  v41 = v0[52];
  v115 = v35;
  v117 = v0[43];
  v118 = v0[62];
  sub_266C4756C(v0[65], v36);
  sub_266C4756C(v35, v37);
  v43 = *(v38 + 80);
  v44 = (v43 + 24) & ~v43;
  v45 = (v39 + v43 + v44) & ~v43;
  v46 = swift_allocObject();
  v0[75] = v46;
  *(v46 + 16) = v122;
  sub_266C475DC(v36, v46 + v44);
  sub_266C475DC(v37, v46 + v45);
  v47 = OUTLINED_FUNCTION_107();
  v48(v47, v112, v42);
  v49 = swift_task_alloc();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 40) = v116;
  *(v49 + 48) = v120;
  *(v49 + 56) = v113;
  *(v49 + 64) = 1;
  *(v49 + 65) = v121;
  *(v49 + 72) = sub_266C48BBC;
  *(v49 + 80) = v46;
  *(v49 + 88) = v114;

  sub_266DA800C();

  sub_266C4756C(v115, v118);
  v50 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v50, v51, v117);
  if (v58)
  {
    v52 = v0 + 62;
  }

  else
  {
    v53 = v0[65];
    v54 = v0[61];
    v55 = v0[43];
    sub_266C476A8(v0[62], v0[47]);
    v56 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v56, v57);
    OUTLINED_FUNCTION_19_2();
    if (!v58)
    {
      v87 = v0[47];
      v88 = v0[43];
      sub_266C476A8(v0[61], v0[46]);
      v0[30] = v88;
      OUTLINED_FUNCTION_0_16();
      v91 = sub_266C4770C(v89, 255, v90);
      v0[31] = v91;
      __swift_allocate_boxed_opaque_existential_1(v0 + 27);
      v92 = OUTLINED_FUNCTION_41();
      sub_266C47750(v92, v93);
      v0[35] = v88;
      v0[36] = v91;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
      OUTLINED_FUNCTION_86(boxed_opaque_existential_1);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD30]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[76] = v95;
      *v95 = v96;
      v95[1] = sub_266C40A04;
      v97 = v0[50];
      v98 = v0[38];
      OUTLINED_FUNCTION_112();

      __asm { BR              X5 }
    }

    v52 = v0 + 61;
    sub_266C477B4(v0[47]);
  }

  v59 = *v52;
  v60 = v0[66];
  v61 = v0[60];
  v62 = v0[43];
  sub_266C47654(v59, &qword_2800CA050, &qword_266DB0080);
  v63 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v63, v64);
  OUTLINED_FUNCTION_29();
  v65 = v0[60];
  v66 = v0[43];
  if (v67 == 1)
  {
    v68 = v0[65];
    v69 = v0[59];
    sub_266C47654(v65, &qword_2800CA050, &qword_266DB0080);
    v70 = OUTLINED_FUNCTION_42();
    sub_266C4756C(v70, v71);
    v72 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_61(v72, v73, v66);
    if (v58)
    {
      sub_266C47654(v0[59], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD50]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[79] = v74;
      *v74 = v75;
      v74[1] = sub_266C4114C;
      v76 = v0[50];
      v77 = v0[38];
      OUTLINED_FUNCTION_112();

      __asm { BR              X3 }
    }

    v101 = v0[43];
    sub_266C476A8(v0[59], v0[44]);
    v0[20] = v101;
    OUTLINED_FUNCTION_0_16();
    v0[21] = sub_266C4770C(v102, 255, v103);
    __swift_allocate_boxed_opaque_existential_1(v0 + 17);
    v104 = OUTLINED_FUNCTION_41();
    sub_266C47750(v104, v105);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[78] = v106;
    *v106 = v107;
    v106[1] = sub_266C40EE4;
    v108 = v0[50];
    v109 = v0[38];
  }

  else
  {
    sub_266C476A8(v65, v0[45]);
    v0[25] = v66;
    OUTLINED_FUNCTION_0_16();
    v0[26] = sub_266C4770C(v80, 255, v81);
    v82 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_86(v82);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD38]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[77] = v83;
    *v83 = v84;
    v83[1] = sub_266C40C7C;
    v85 = v0[50];
    v86 = v0[38];
  }

  OUTLINED_FUNCTION_112();

  __asm { BR              X4 }
}

uint64_t sub_266C40A04()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 608);
  v6 = *(v4 + 592);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C40B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[75];
  v26 = v22[46];
  v27 = v22[47];

  sub_266C477B4(v26);
  sub_266C477B4(v27);
  v28 = OUTLINED_FUNCTION_3_6();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  v32 = OUTLINED_FUNCTION_35();
  sub_266C47654(v32, v33, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C40C7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 616);
  v6 = *(v4 + 592);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C40D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 600);
  v26 = *(v22 + 360);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_3_6();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  v31 = OUTLINED_FUNCTION_35();
  sub_266C47654(v31, v32, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C40EE4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 624);
  v6 = *(v4 + 592);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C40FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 600);
  v26 = *(v22 + 352);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_3_6();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  v31 = OUTLINED_FUNCTION_35();
  sub_266C47654(v31, v32, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C4114C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 632);
  v3 = *(v1 + 592);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C4124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v26 = *(v23 + 600);

  v27 = OUTLINED_FUNCTION_3_6();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  v31 = OUTLINED_FUNCTION_35();
  sub_266C47654(v31, v32, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C413A8()
{
  OUTLINED_FUNCTION_22_0();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = type metadata accessor for Snippets();
  v1[30] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[31] = OUTLINED_FUNCTION_64();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v7 = sub_266DA80AC();
  v1[35] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[36] = v8;
  v10 = *(v9 + 64);
  v1[37] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v11);
  v13 = *(v12 + 64);
  v1[38] = OUTLINED_FUNCTION_62();
  v14 = sub_266DA7C0C();
  v1[39] = v14;
  OUTLINED_FUNCTION_11_3(v14);
  v1[40] = v15;
  v17 = *(v16 + 64);
  v1[41] = OUTLINED_FUNCTION_64();
  v1[42] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v18);
  v20 = *(v19 + 64);
  v1[43] = OUTLINED_FUNCTION_62();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v21);
  v1[44] = v22;
  v1[45] = *(v23 + 64);
  v24 = OUTLINED_FUNCTION_64();
  v1[47] = OUTLINED_FUNCTION_119(v24);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v25);
  v27 = *(v26 + 64);
  v1[54] = OUTLINED_FUNCTION_62();
  v28 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_266C4161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v24 = v21[29];
  if (*(v24 + 232))
  {
    if (qword_2800C93D8 != -1)
    {
      OUTLINED_FUNCTION_1_11();
    }

    v25 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v25, qword_2800E6498);
    v26 = sub_266DA948C();
    v27 = sub_266DAAB0C();
    if (!OUTLINED_FUNCTION_95(v27))
    {
      goto LABEL_13;
    }

    v28 = OUTLINED_FUNCTION_11();
    *v28 = 0;
    v29 = "Search result summary already sent, not sending again.";
LABEL_12:
    _os_log_impl(&dword_266C08000, v26, v20, v29, v28, 2u);
    OUTLINED_FUNCTION_6_1();
LABEL_13:

    v35 = v21[53];
    v34 = v21[54];
    v37 = v21[51];
    v36 = v21[52];
    v39 = v21[49];
    v38 = v21[50];
    v40 = v21[47];
    v41 = v21[48];
    v42 = v21[46];
    v43 = v21[42];
    v44 = v21[43];
    OUTLINED_FUNCTION_27_0();

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_39();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v30 = sub_266C3A14C(v21[27], v22, v23);
  if (v30 < 2 || (v20 = v30, Array<A>.hasNonNearbyDevices.getter(v21[27]), (v31 & 1) != 0))
  {
    if (qword_2800C93D8 != -1)
    {
      OUTLINED_FUNCTION_1_11();
    }

    v32 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v32, qword_2800E6498);
    v26 = sub_266DA948C();
    v33 = sub_266DAAB0C();
    if (!OUTLINED_FUNCTION_95(v33))
    {
      goto LABEL_13;
    }

    v28 = OUTLINED_FUNCTION_11();
    *v28 = 0;
    v29 = "Not all devices are nearby, not sending nearby search summary.";
    goto LABEL_12;
  }

  v54 = v21[54];
  v55 = v21[28];
  v56 = v21[29];
  v57 = v21[27];
  *(v24 + 232) = 1;
  v58 = *(v56 + 136);
  sub_266CAA1A8(v54);
  v73 = MEMORY[0x277D84F90];
  sub_266DAAE8C();
  v59 = 0;
  do
  {
    if ((v57 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x26D5F1780](v59, v21[27]);
    }

    else
    {
      v60 = *(v57 + 32 + 8 * v59);
    }

    v61 = v60;
    ++v59;
    sub_266CC7CC0((v56 + 56));

    sub_266DAAE6C();
    v62 = *(v73 + 16);
    sub_266DAAE9C();
    sub_266DAAEAC();
    sub_266DAAE7C();
  }

  while (v20 != v59);
  v64 = v21[27];
  v63 = v21[28];
  v21[55] = v73;
  Array<A>.hasSameDeviceName.getter();
  v65 = Array<A>.uniqueModels.getter(v64);
  sub_266C3A14C(v65, v66, v67);

  v68 = Array<A>.uniqueOwners.getter(v64);
  sub_266C3A14C(v68, v69, v70);

  sub_266CAA15C();
  v71 = swift_task_alloc();
  v21[56] = v71;
  *v71 = v21;
  v71[1] = sub_266C419CC;
  OUTLINED_FUNCTION_111(v21[54]);
  OUTLINED_FUNCTION_39();

  return sub_266D43B6C();
}

uint64_t sub_266C419CC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = v4[56];
  v6 = v4[55];
  v7 = v4[54];
  v8 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v9 = v8;
  *(v11 + 456) = v10;
  *(v11 + 464) = v0;

  sub_266C47654(v7, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266C420F4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *(v4 + 472);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C421FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v13 = v11[60];
  v14 = v11[33];
  v15 = v11[34];

  sub_266C477B4(v14);
  sub_266C477B4(v15);
  v16 = OUTLINED_FUNCTION_16_3();
  v17(v16);
  v18 = OUTLINED_FUNCTION_51();
  v19(v18);
  v20 = OUTLINED_FUNCTION_35();
  sub_266C47654(v20, v21, &qword_266DB0080);
  OUTLINED_FUNCTION_73();
  sub_266C47654(v12, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v10, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_47();
  v22 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v11[62] = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_7_4(v23);
  OUTLINED_FUNCTION_100();

  return MEMORY[0x2821BB5D0](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_266C42304()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v8 + 504) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C42400()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *(v4 + 472);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C42500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v13 = v11[60];
  v14 = v11[32];

  sub_266C477B4(v14);
  v15 = OUTLINED_FUNCTION_16_3();
  v16(v15);
  v17 = OUTLINED_FUNCTION_51();
  v18(v17);
  v19 = OUTLINED_FUNCTION_35();
  sub_266C47654(v19, v20, &qword_266DB0080);
  OUTLINED_FUNCTION_73();
  sub_266C47654(v12, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v10, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_47();
  v21 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v11[62] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_7_4(v22);
  OUTLINED_FUNCTION_100();

  return MEMORY[0x2821BB5D0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_266C42600()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 520);
  v6 = *(v4 + 472);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C42700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v13 = v11[60];
  v14 = v11[31];

  sub_266C477B4(v14);
  v15 = OUTLINED_FUNCTION_16_3();
  v16(v15);
  v17 = OUTLINED_FUNCTION_51();
  v18(v17);
  v19 = OUTLINED_FUNCTION_35();
  sub_266C47654(v19, v20, &qword_266DB0080);
  OUTLINED_FUNCTION_73();
  sub_266C47654(v12, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v10, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_47();
  v21 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v11[62] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_7_4(v22);
  OUTLINED_FUNCTION_100();

  return MEMORY[0x2821BB5D0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_266C42800()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 528);
  v3 = *(v1 + 472);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C42900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v13 = *(v11 + 480);

  v14 = OUTLINED_FUNCTION_16_3();
  v15(v14);
  v16 = OUTLINED_FUNCTION_51();
  v17(v16);
  v18 = OUTLINED_FUNCTION_35();
  sub_266C47654(v18, v19, &qword_266DB0080);
  OUTLINED_FUNCTION_73();
  sub_266C47654(v12, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v10, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_47();
  v20 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v11 + 496) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_7_4(v21);
  OUTLINED_FUNCTION_100();

  return MEMORY[0x2821BB5D0](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_266C429F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();

  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  v22 = *(v20 + 424);
  v21 = *(v20 + 432);
  v24 = *(v20 + 408);
  v23 = *(v20 + 416);
  v26 = *(v20 + 392);
  v25 = *(v20 + 400);
  v27 = *(v20 + 376);
  v28 = *(v20 + 384);
  v29 = *(v20 + 368);
  v30 = *(v20 + 344);
  v40 = *(v20 + 336);
  v41 = *(v20 + 328);
  v42 = *(v20 + 304);
  v43 = *(v20 + 296);
  v44 = *(v20 + 272);
  v45 = *(v20 + 264);
  v46 = *(v20 + 256);
  v47 = *(v20 + 248);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_39();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, v46, v47, a18, a19, a20);
}

uint64_t sub_266C42B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v41 = v20[58];
  v22 = v20[53];
  v21 = v20[54];
  v24 = v20[51];
  v23 = v20[52];
  v25 = v20[49];
  v26 = v20[50];
  v28 = v20[47];
  v27 = v20[48];
  v29 = v20[46];
  v30 = v20[42];
  v31 = v20[43];
  OUTLINED_FUNCTION_27_0();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, v41, a18, a19, a20);
}

uint64_t sub_266C42C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();

  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  v41 = *(v20 + 504);
  v22 = *(v20 + 424);
  v21 = *(v20 + 432);
  v24 = *(v20 + 408);
  v23 = *(v20 + 416);
  v25 = *(v20 + 392);
  v26 = *(v20 + 400);
  v28 = *(v20 + 376);
  v27 = *(v20 + 384);
  v29 = *(v20 + 368);
  v30 = *(v20 + 336);
  v31 = *(v20 + 344);
  OUTLINED_FUNCTION_27_0();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, v41, a18, a19, a20);
}

uint64_t sub_266C42D40(uint64_t a1)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return OUTLINED_FUNCTION_2_8(sub_266C42D58);
}

uint64_t sub_266C42D58()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 320);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 296) = MEMORY[0x277D84F90];
  sub_266C28F78(v1);
  *(v0 + 424) = v3;
  v4 = *(v1 + 16);
  *(v0 + 344) = v2;
  *(v0 + 352) = v2;
  *(v0 + 336) = v4;
  v5 = -v4;
  v6 = 1;
  v7 = 72;
  while (v5 + v6 != 1)
  {
    v8 = (*(v0 + 320) + v7);
    v10 = *(v8 - 5);
    v9 = *(v8 - 4);
    *(v0 + 360) = v9;
    v11 = *(v8 - 3);
    *(v0 + 368) = v11;
    v12 = *(v8 - 2);
    *(v0 + 376) = v12;
    v13 = *(v8 - 8);
    *(v0 + 425) = v13;
    v14 = *(v8 - 7);
    v15 = *v8;
    *(v0 + 224) = v10;
    *(v0 + 232) = v9;
    *(v0 + 240) = v11;
    *(v0 + 248) = v12;
    *(v0 + 256) = v13;
    *(v0 + 257) = v14;
    *(v0 + 264) = v15;
    *(v0 + 384) = v15;
    *(v0 + 392) = v6++;
    v7 += 48;
    if (v14 == 1)
    {

      v16 = OUTLINED_FUNCTION_42();
      sub_266C292B4(v16, v17, v13);

      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v0 + 400) = v18;
      *v18 = v19;
      OUTLINED_FUNCTION_17_4(v18);
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_102();

      return sub_266C43634();
    }
  }

  v22 = *(v0 + 8);
  OUTLINED_FUNCTION_102();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_266C42EC8()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 400);
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  *(v5 + 408) = v0;

  if (!v0)
  {
    *(v5 + 416) = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266C42FD4()
{
  v1 = *(v0 + 416);
  memcpy((v0 + 120), (v0 + 16), 0x68uLL);

  MEMORY[0x26D5F1270](v2);
  if (*((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_19:
    sub_266DAA95C();
  }

  v3 = *(v0 + 416);
  v4 = *(v0 + 344);
  sub_266DAA96C();
  v5 = *(v0 + 296);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 344);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = *(v7 + 16);
    v32 = *(v0 + 344);
    sub_266CF9ED4();
    v7 = v33;
  }

  v8 = *(v7 + 16);
  if (v8 >= *(v7 + 24) >> 1)
  {
    sub_266CF9ED4();
    v7 = v34;
  }

  v9 = *(v0 + 416);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  v14 = *(v0 + 425);

  sub_266C479B0(v13, v11, v14);

  *(v7 + 16) = v8 + 1;
  memcpy((v7 + 104 * v8 + 32), (v0 + 120), 0x68uLL);
  v15 = *(v0 + 392);
  *(v0 + 344) = v7;
  *(v0 + 352) = v5;
  v16 = *(v0 + 336);
  while (v16 != v15)
  {
    if (v15 >= v16)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v17 = OUTLINED_FUNCTION_104();
    v19 = *(v18 - 3);
    *(v0 + 368) = v19;
    v20 = *(v18 - 2);
    *(v0 + 376) = v20;
    v21 = *(v18 - 8);
    *(v0 + 425) = v21;
    v22 = *(v18 - 7);
    v23 = *v18;
    *(v0 + 384) = *v18;
    *(v0 + 224) = v24;
    *(v0 + 232) = v17;
    *(v0 + 240) = v19;
    *(v0 + 248) = v20;
    *(v0 + 256) = v21;
    *(v0 + 257) = v22;
    *(v0 + 264) = v23;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_18;
    }

    *(v0 + 392) = ++v15;
    if (v22)
    {

      sub_266C292B4(v19, v20, v21);

      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v0 + 400) = v25;
      *v25 = v26;
      OUTLINED_FUNCTION_17_4();
      OUTLINED_FUNCTION_50();

      return sub_266C43634();
    }
  }

  v28 = *(v0 + 8);
  v29 = OUTLINED_FUNCTION_32();

  return v30(v29);
}

uint64_t sub_266C43270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_113();
  if (qword_2800C9110 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_53();
  }

  v15 = *(v14 + 408);
  v17 = *(v14 + 376);
  v16 = *(v14 + 384);
  v19 = *(v14 + 360);
  v18 = *(v14 + 368);
  v20 = *(v14 + 425);
  v21 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v21, &unk_2800E61A8);

  sub_266C292B4(v18, v17, v20);

  v22 = v15;
  v23 = sub_266DA948C();
  v24 = sub_266DAAAEC();

  sub_266C479B0(v18, v17, v20);

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v14 + 384);
    v26 = swift_slowAlloc();
    *(v14 + 304) = swift_slowAlloc();
    *v26 = 136315394;
    if (sub_266C3A14C(v25, v27, v28) && ((v29 = *(v14 + 384), v30 = v29 & 0xC000000000000001, sub_266CB9F54(0, (v29 & 0xC000000000000001) == 0, v29), v31 = *(v14 + 384), v30) ? (v32 = MEMORY[0x26D5F1780](0, v31)) : (v32 = *(v31 + 32)), v33 = sub_266C479D8(v32), v34))
    {
      v35 = v34;
    }

    else
    {

      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v42 = *(v14 + 408);
    a10 = *(v14 + 376);
    a11 = *(v14 + 384);
    v43 = *(v14 + 360);
    a9 = *(v14 + 368);
    v44 = *(v14 + 425);
    v45 = sub_266C22A3C(v33, v35, (v14 + 304));

    *(v26 + 4) = v45;
    *(v26 + 12) = 2082;
    swift_getErrorValue();
    v47 = *(v14 + 272);
    v46 = *(v14 + 280);
    v48 = *(v14 + 288);
    v49 = sub_266DAB23C();
    v51 = sub_266C22A3C(v49, v50, (v14 + 304));

    *(v26 + 14) = v51;
    _os_log_impl(&dword_266C08000, v23, v24, "Failed making dialog device for device named [%s]. Got error: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    sub_266C479B0(a9, a10, v44);
  }

  else
  {
    v36 = *(v14 + 408);
    v38 = *(v14 + 376);
    v37 = *(v14 + 384);
    v40 = *(v14 + 360);
    v39 = *(v14 + 368);
    v41 = *(v14 + 425);

    sub_266C479B0(v39, v38, v41);
  }

  v52 = *(v14 + 392);
  v53 = *(v14 + 336);
  while (v53 != v52)
  {
    if (v52 >= v53)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v54 = OUTLINED_FUNCTION_104();
    v56 = *(v55 - 3);
    *(v14 + 368) = v56;
    v57 = *(v55 - 2);
    *(v14 + 376) = v57;
    v58 = *(v55 - 8);
    *(v14 + 425) = v58;
    v59 = *(v55 - 7);
    v60 = *v55;
    *(v14 + 384) = *v55;
    *(v14 + 224) = v61;
    *(v14 + 232) = v54;
    *(v14 + 240) = v56;
    *(v14 + 248) = v57;
    *(v14 + 256) = v58;
    *(v14 + 257) = v59;
    *(v14 + 264) = v60;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_23;
    }

    *(v14 + 392) = ++v52;
    if (v59)
    {

      v62 = OUTLINED_FUNCTION_42();
      sub_266C292B4(v62, v63, v58);

      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      *(v14 + 400) = v64;
      *v64 = v65;
      OUTLINED_FUNCTION_17_4();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_68();

      return sub_266C43634();
    }
  }

  v68 = *(v14 + 8);
  v70 = *(v14 + 344);
  v69 = *(v14 + 352);
  OUTLINED_FUNCTION_68();

  return v74(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266C43634()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 1608) = v0;
  *(v1 + 1560) = v2;
  *(v1 + 1704) = v3;
  *(v1 + 1512) = v4;
  *(v1 + 1464) = v5;
  v6 = sub_266DA74AC();
  *(v1 + 1616) = v6;
  OUTLINED_FUNCTION_11_3(v6);
  *(v1 + 1624) = v7;
  v9 = *(v8 + 64);
  *(v1 + 1632) = OUTLINED_FUNCTION_62();
  v10 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v10);
  v12 = *(v11 + 64);
  *(v1 + 1640) = OUTLINED_FUNCTION_62();
  v13 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266C43708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_113();
  v15 = *(*(v14 + 1512) + 40);
  if (sub_266C3A14C(v15, v16, v17))
  {
    sub_266CB9F54(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26D5F1780](0, v15);
    }

    else
    {
      v18 = *(v15 + 32);
    }

    *(v14 + 1648) = v18;
    v19 = v18;
    v20 = sub_266C22F3C(v19);
    if (v21)
    {
      v22 = v20;
      v23 = v21;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        v25 = *(v14 + 1640);
        v26 = *(v14 + 1608);
        HIDWORD(a10) = *(v14 + 1704);
        *(v14 + 1368) = *(v14 + 1560);
        v27 = sub_266DAB13C();
        v29 = v28;
        *(v14 + 1656) = v27;
        *(v14 + 1664) = v28;
        v57 = type metadata accessor for FindmyDevice(0);
        v30 = v26[11];
        __swift_project_boxed_opaque_existential_1(v26 + 7, v26[10]);
        v31 = v19;
        sub_266DA7AFC();

        v32 = sub_266D9AF54(v31, v25, 0, 0xF000000000000000, 0, 0, v27, v29);
        *(v14 + 1672) = v32;
        v33 = swift_allocObject();
        *(v14 + 1680) = v33;
        *(v33 + 16) = v26;
        *(v33 + 24) = v32;
        *(v33 + 32) = BYTE4(a10);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA080, &qword_266DAFC48);
        swift_asyncLet_begin();
        OUTLINED_FUNCTION_26_0();
        v34 = swift_allocObject();
        *(v14 + 1688) = v34;
        *(v34 + 16) = v26;
        *(v34 + 24) = v31;
        v35 = v31;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA088, &qword_266DAFC60);
        swift_asyncLet_begin();
        OUTLINED_FUNCTION_68();

        return MEMORY[0x282200930](v36, v37, v38, v39, v40, v41, v42, v43, v57, a10, a11, a12, a13, a14);
      }
    }

    sub_266C47810();
    OUTLINED_FUNCTION_87();
    *v44 = 0;
    swift_willThrow();
  }

  else
  {
    sub_266C47810();
    OUTLINED_FUNCTION_87();
    *v45 = 1;
    swift_willThrow();
  }

  v46 = *(v14 + 1640);
  v47 = *(v14 + 1632);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_68();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266C43A20()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 1696) = v0;
  if (v0)
  {
    v2 = *(v1 + 1664);

    v3 = OUTLINED_FUNCTION_76();

    return MEMORY[0x282200920](v3, v4, v5, v1 + 1376);
  }

  else
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_266C43AC8()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[177];

  v0[169] = sub_266DA91EC();
  v0[170] = v2;

  v3 = OUTLINED_FUNCTION_76();

  return MEMORY[0x282200928](v3);
}

uint64_t sub_266C43B54()
{
  OUTLINED_FUNCTION_113();
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1648);
  v4 = OUTLINED_FUNCTION_42();
  sub_266C2BA84(v4, v5);
  v6 = sub_266C22F3C(v3);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_266CC7C44();

  sub_266C2BAF0(0, 0xF000000000000000);
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v12 = *(v0 + 1648);
  if (v11)
  {

    v13 = v8;
    v14 = v9;
  }

  else
  {
    v15 = *(v0 + 1632);
    v33[0] = v10;
    v16 = *(v0 + 1624);
    v32 = *(v0 + 1616);

    sub_266DA749C();
    v13 = sub_266DA747C();
    v14 = v17;

    (*(v16 + 8))(v15, v32);
    v10 = v33[0];
  }

  v18 = *(v0 + 1352);
  v19 = *(v0 + 1360);
  v20 = *(v0 + 1664);
  v21 = *(v0 + 1656);
  v22 = *(v0 + 1512);
  v23 = *(v0 + 1464);
  v25 = *v22;
  v24 = v22[1];
  *(v23 + 16) = v8;
  *(v23 + 24) = v9;
  *(v23 + 32) = v18;
  *(v23 + 40) = v19;
  *(v23 + 48) = v10 & 1;
  *(v23 + 56) = v1;
  *(v23 + 64) = v2;
  *(v23 + 72) = v13;
  *(v23 + 80) = v14;
  *(v23 + 88) = v21;
  *(v23 + 96) = v20;
  *v23 = v25;
  *(v23 + 8) = v24;

  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_68();

  return MEMORY[0x282200920](v26, v27, v28, v29);
}

uint64_t sub_266C43D0C()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1680);
  v3 = *(v0 + 1640);
  v4 = *(v0 + 1632);

  v5 = *(v0 + 8);
  v6 = *(v0 + 1672);

  return v5(v6);
}

uint64_t sub_266C43DF0()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1680);
  v3 = *(v0 + 1672);

  v4 = *(v0 + 1696);
  v5 = *(v0 + 1640);
  v6 = *(v0 + 1632);

  OUTLINED_FUNCTION_28();

  return v7();
}

uint64_t sub_266C43E8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266C43F30, 0, 0);
}

uint64_t sub_266C43F30()
{
  OUTLINED_FUNCTION_34();
  v1 = *(*(v0 + 24) + 136);
  v2 = 1;
  switch(*(v0 + 72))
  {
    case 3:
      break;
    default:
      v3 = *(v0 + 40);
      sub_266DAA77C();

      v2 = 0;
      break;
  }

  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v4, v2, 1, v6);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_266C44074;
  v8 = *(v0 + 40);

  return sub_266D438F4();
}

uint64_t sub_266C44074()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  v7 = *(v4 + 48);
  *v6 = *v1;
  *(v5 + 56) = v0;

  v8 = *(v4 + 40);
  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  sub_266C47654(v8, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_102();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C441C4()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 40);
  **(v0 + 16) = *(v0 + 64);

  OUTLINED_FUNCTION_15_4();

  return v2();
}

uint64_t sub_266C44228()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_28();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_266C44284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_266C442A8, 0, 0);
}

uint64_t sub_266C442A8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[22];
  v4 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_266C443DC;

  return v9(v2, v3, v4);
}

uint64_t sub_266C443DC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266C444C8()
{
  **(v0 + 16) = *(v0 + 48);
  OUTLINED_FUNCTION_15_4();
  return v1();
}

uint64_t sub_266C444F4()
{
  OUTLINED_FUNCTION_22_0();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v5 = type metadata accessor for Snippets();
  v1[33] = v5;
  OUTLINED_FUNCTION_4_3(v5);
  v7 = *(v6 + 64);
  v1[34] = OUTLINED_FUNCTION_64();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v8 = sub_266DA80AC();
  v1[38] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[39] = v9;
  v11 = *(v10 + 64);
  v1[40] = OUTLINED_FUNCTION_62();
  v12 = sub_266DA7C0C();
  v1[41] = v12;
  OUTLINED_FUNCTION_11_3(v12);
  v1[42] = v13;
  v15 = *(v14 + 64);
  v1[43] = OUTLINED_FUNCTION_64();
  v1[44] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v16);
  v18 = *(v17 + 64);
  v1[45] = OUTLINED_FUNCTION_62();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v19);
  v21 = *(v20 + 64);
  v1[46] = OUTLINED_FUNCTION_62();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v22);
  v1[47] = v23;
  v1[48] = *(v24 + 64);
  v1[49] = OUTLINED_FUNCTION_64();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_266C44744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_30();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_36();
  a28 = v30;
  if (qword_2800C9110 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_53();
  }

  v33 = *(v30 + 240);
  v34 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v34, &unk_2800E61A8);
  v35 = v33;
  v36 = sub_266DA948C();
  v37 = sub_266DAAB0C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v30 + 240);
    v39 = swift_slowAlloc();
    a18 = swift_slowAlloc();
    *v39 = 136315394;
    *(v30 + 216) = v38;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
    v41 = sub_266DAA72C();
    v43 = sub_266C22A3C(v41, v42, &a18);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    swift_getErrorValue();
    v45 = *(v30 + 176);
    v44 = *(v30 + 184);
    v46 = *(v30 + 192);
    v47 = sub_266DAB23C();
    v49 = sub_266C22A3C(v47, v48, &a18);

    *(v39 + 14) = v49;
    _os_log_impl(&dword_266C08000, v36, v37, "[FindDevice DisambiguationStrategy] Making error response for %s - %s)", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v50 = *(v30 + 240);
  *(v30 + 200) = v50;
  v51 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v54 = *(v30 + 208);
  *(v30 + 456) = v54;
  if (v54 < 2)
  {
    sub_266C4755C(v54);
LABEL_7:
    v55 = *(v30 + 240);
    swift_willThrow();
    v56 = v55;
    v57 = *(v30 + 240);
    OUTLINED_FUNCTION_45();

    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_25_0();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v67 = sub_266C3A14C(v54, v52, v53);
  v68 = 0;
  v69 = 6;
  while (v67 != v68)
  {
    if ((v54 & 0xC000000000000001) != 0)
    {
      v70 = MEMORY[0x26D5F1780](v68, v54);
    }

    else
    {
      if (v68 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v70 = *(v54 + 8 * v68 + 32);
    }

    if (__OFADD__(v68, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v71 = v70;
    v72 = sub_266CC7C44();

    ++v68;
    if ((v72 & 1) == 0)
    {
      v69 = 3;
      break;
    }
  }

  v74 = *(v30 + 440);
  v73 = *(v30 + 448);
  v75 = *(v30 + 264);
  v76 = *(v30 + 248);
  *(v30 + 464) = *(*(v30 + 256) + 144);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v75);
  *v74 = 4;
  *(v74 + 8) = 0;
  *(v74 + 16) = v69;
  *(v74 + 24) = 0;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v75);
  *(v30 + 560) = 1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *(v30 + 472) = sub_266DA93CC();
  *(v30 + 480) = [v76 deviceQuery];
  v86 = swift_task_alloc();
  *(v30 + 488) = v86;
  *v86 = v30;
  v86[1] = sub_266C44BA8;
  v87 = *(v30 + 256);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_25_0();

  return sub_266C45DD0();
}

uint64_t sub_266C44BA8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;
  v5 = v2[61];
  v6 = *v1;
  OUTLINED_FUNCTION_10_3();
  *v7 = v6;
  v3[62] = v8;
  v3[63] = v0;

  v9 = v2[60];
  v10 = v2[57];
  if (v0)
  {
    v12 = v3[55];
    v11 = v3[56];
    sub_266C4755C(v10);

    sub_266C47654(v12, &qword_2800CA050, &qword_266DB0080);
    v13 = OUTLINED_FUNCTION_32();
    sub_266C47654(v13, v14, &qword_266DB0080);
  }

  else
  {
    sub_266C4755C(v10);
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_102();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_266C44D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[62];
  v24 = v22[45];
  v25 = v22[46];
  v26 = v22[44];
  sub_266DA7E5C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_266DA7C7C();
  v31 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
  sub_266DA7BCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v34 = OUTLINED_FUNCTION_101();
  v22[64] = v34;
  *(v34 + 16) = xmmword_266DAE3B0;
  *(v34 + 32) = v23;
  v35 = v23;
  v154 = v34;
  if (sub_266C3A14C(v34, v36, v37))
  {
    OUTLINED_FUNCTION_69();
    if (v25)
    {
      v38 = MEMORY[0x26D5F1780](0, v34);
    }

    else
    {
      v38 = *(v34 + 32);
    }

    v39 = v38;
    v40 = [v38 catId];

    v147 = sub_266DAA70C();
    v150 = v41;
  }

  else
  {
    v147 = 0;
    v150 = 0;
  }

  v42 = v22[58];
  v43 = v22[56];
  v44 = v22[53];
  v46 = v22[47];
  v45 = v22[48];
  v143 = v22[46];
  v144 = v22[45];
  v47 = v22[43];
  v142 = v22[44];
  v49 = v22[41];
  v48 = v22[42];
  v145 = v22[40];
  v146 = v43;
  v148 = v22[33];
  v149 = v22[52];
  sub_266C4756C(v22[55], v22[54]);
  sub_266C4756C(v43, v44);
  v50 = (v45 + *(v46 + 80) + ((*(v46 + 80) + 24) & ~*(v46 + 80))) & ~*(v46 + 80);
  v51 = swift_allocObject();
  v22[65] = v51;
  OUTLINED_FUNCTION_91(v51);
  sub_266C475DC(v44, v51 + v50);
  v52 = OUTLINED_FUNCTION_107();
  v53(v52, v142, v49);
  v54 = swift_task_alloc();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 32) = 0;
  *(v54 + 40) = v147;
  *(v54 + 48) = v150;
  *(v54 + 56) = v143;
  *(v54 + 64) = 258;
  *(v54 + 72) = sub_266C4764C;
  *(v54 + 80) = v51;
  *(v54 + 88) = v144;

  sub_266DA800C();

  sub_266C4756C(v146, v149);
  v55 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v55, v56, v148);
  if (v63)
  {
    v57 = v22 + 52;
  }

  else
  {
    v58 = v22[55];
    v59 = v22[51];
    v60 = v22[33];
    sub_266C476A8(v22[52], v22[37]);
    v61 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v61, v62);
    OUTLINED_FUNCTION_19_2();
    if (!v63)
    {
      v103 = v22[37];
      v104 = v22[33];
      sub_266C476A8(v22[51], v22[36]);
      v22[15] = v104;
      OUTLINED_FUNCTION_0_16();
      v107 = sub_266C4770C(v105, 255, v106);
      OUTLINED_FUNCTION_97(v107);
      v108 = OUTLINED_FUNCTION_41();
      sub_266C47750(v108, v109);
      v22[20] = v104;
      v22[21] = v60;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22 + 17);
      OUTLINED_FUNCTION_86(boxed_opaque_existential_1);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD30]);
      v152 = v111;
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v22[66] = v112;
      *v112 = v113;
      OUTLINED_FUNCTION_103(v112);
      v114 = v22[40];
      v115 = v22[29];
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_25_0();

      return v121(v116, v117, v118, v119, v120, v121, v122, v123, a9, v142, v143, v144, v145, v146, v147, v148, v149, v152, v154, a20, a21, a22);
    }

    v57 = v22 + 51;
    sub_266C477B4(v22[37]);
  }

  v64 = *v57;
  v65 = v22[56];
  v66 = v22[50];
  v67 = v22[33];
  sub_266C47654(v64, &qword_2800CA050, &qword_266DB0080);
  v68 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v68, v69);
  OUTLINED_FUNCTION_29();
  v70 = v22[50];
  v71 = v22[33];
  if (v72 != 1)
  {
    sub_266C476A8(v70, v22[35]);
    v22[10] = v71;
    OUTLINED_FUNCTION_0_16();
    v95 = sub_266C4770C(v93, 255, v94);
    OUTLINED_FUNCTION_117(v95);
    v96 = OUTLINED_FUNCTION_41();
    sub_266C47750(v96, v97);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD38]);
    v153 = v98;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v22[67] = v99;
    *v99 = v100;
    OUTLINED_FUNCTION_103(v99);
    v101 = v22[40];
    v102 = v22[29];
    goto LABEL_22;
  }

  v73 = v22[55];
  v74 = v22[49];
  sub_266C47654(v70, &qword_2800CA050, &qword_266DB0080);
  v75 = OUTLINED_FUNCTION_58();
  sub_266C4756C(v75, v76);
  v77 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_61(v77, v78, v71);
  if (!v63)
  {
    v124 = v22[33];
    sub_266C476A8(v22[49], v22[34]);
    v22[5] = v124;
    OUTLINED_FUNCTION_0_16();
    v22[6] = sub_266C4770C(v125, 255, v126);
    __swift_allocate_boxed_opaque_existential_1(v22 + 2);
    v127 = OUTLINED_FUNCTION_41();
    sub_266C47750(v127, v128);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD40]);
    v153 = v129;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v22[68] = v130;
    *v130 = v131;
    OUTLINED_FUNCTION_103(v130);
    v132 = v22[40];
    v133 = v22[29];
LABEL_22:
    OUTLINED_FUNCTION_25_0();

    return v138(v134, v135, v136, v137, v138, v139, v140, v141, a9, v142, v143, v144, v145, v146, v147, v148, v149, v153, v154, a20, a21, a22);
  }

  sub_266C47654(v22[49], &qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD50]);
  v151 = v79;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v22[69] = v80;
  *v80 = v81;
  OUTLINED_FUNCTION_103(v80);
  v82 = v22[40];
  v83 = v22[29];
  OUTLINED_FUNCTION_25_0();

  return v87(v84, v85, v86, v87, v88, v89, v90, v91, a9, v142, v143, v144, v145, v146, v147, v148, v149, v151, v154, a20, a21, a22);
}

uint64_t sub_266C45300()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C45408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[65];
  v26 = v22[62];
  v27 = v22[59];
  v29 = v22[36];
  v28 = v22[37];

  sub_266C477B4(v29);
  sub_266C477B4(v28);
  v30 = OUTLINED_FUNCTION_5_7();
  v31(v30);
  v32 = OUTLINED_FUNCTION_18_3();
  v33(v32);
  v34 = OUTLINED_FUNCTION_35();
  sub_266C47654(v34, v35, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C45588()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C45688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[65];
  v26 = v22[62];
  v27 = v22[59];
  v28 = v22[35];

  sub_266C477B4(v28);
  v29 = OUTLINED_FUNCTION_5_7();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  v33 = OUTLINED_FUNCTION_35();
  sub_266C47654(v33, v34, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C45800()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *(v4 + 512);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266C45900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[65];
  v26 = v22[62];
  v27 = v22[59];
  v28 = v22[34];

  sub_266C477B4(v28);
  v29 = OUTLINED_FUNCTION_5_7();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  v33 = OUTLINED_FUNCTION_35();
  sub_266C47654(v33, v34, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C45A78()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 552);
  v3 = *(v1 + 512);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266C45B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[65];
  v26 = v22[62];
  v27 = v22[59];

  v28 = OUTLINED_FUNCTION_5_7();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  v32 = OUTLINED_FUNCTION_35();
  sub_266C47654(v32, v33, &qword_266DB0080);
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266C45CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = *(v20 + 472);

  v22 = *(v20 + 504);
  OUTLINED_FUNCTION_45();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266C45DD0()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_64();
  v1[6] = swift_task_alloc();
  v7 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_266C45E84()
{
  OUTLINED_FUNCTION_114();
  v3 = v0[2];
  if (v3)
  {
    v4 = [v0[2] deviceOwner];
    if (v4)
    {
      v5 = v4;
      [v4 isMe];
    }
  }

  v6 = sub_266C3A14C(v0[3], v1, v2);
  v82 = v0;
  v79 = v3;
  if (v6)
  {
    v9 = v6;
    v83 = MEMORY[0x277D84F90];
    sub_266DAAE8C();
    if (v9 < 0)
    {
LABEL_67:
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = v0[3];
    v12 = v0[4];
    type metadata accessor for FindmyDevice(0);
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v80 = v11;
    v81 = v11 + 32;
    v15 = v10;
    do
    {
      if (v14)
      {
        v16 = v82;
        MEMORY[0x26D5F1780](v13, v82[3]);
      }

      else
      {
        v17 = *(v81 + 8 * v13);
        v16 = v82;
      }

      v18 = v16[7];
      ++v13;
      v19 = v12[11];
      __swift_project_boxed_opaque_existential_1(v12 + 7, v12[10]);
      sub_266DA7AFC();
      OUTLINED_FUNCTION_105();
      sub_266D9AF54(v20, v21, v22, v23, v24, v25, v26, v27);
      sub_266DAAE6C();
      v28 = *(v83 + 16);
      sub_266DAAE9C();
      sub_266DAAEAC();
      sub_266DAAE7C();
    }

    while (v15 != v13);
    v0 = v82;
    v29 = v83;
    v30 = v82[3];
    v31 = v80;
  }

  else
  {
    v30 = v0[3];
    v14 = v30 & 0xC000000000000001;
    v29 = MEMORY[0x277D84F90];
    v31 = v30;
  }

  v0[8] = v29;
  v32 = sub_266C3A14C(v30, v7, v8);
  v33 = 0;
  v34 = v31 & 0xFFFFFFFFFFFFFF8;
  v35 = v30 + 32;
  do
  {
    v36 = v33;
    if (v32 == v33)
    {
      break;
    }

    if (v14)
    {
      v37 = MEMORY[0x26D5F1780](v33, v82[3]);
    }

    else
    {
      if (v33 >= *(v34 + 16))
      {
        goto LABEL_62;
      }

      v37 = *(v35 + 8 * v33);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v39 = [v37 deviceLocality];

    v33 = v36 + 1;
  }

  while (v39 == 1);
  for (i = 0; v32 != i; ++i)
  {
    if (v14)
    {
      v41 = MEMORY[0x26D5F1780](i, v82[3]);
    }

    else
    {
      if (i >= *(v34 + 16))
      {
        goto LABEL_64;
      }

      v41 = *(v35 + 8 * i);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_63;
    }

    v42 = v41;
    v43 = sub_266CC7C44();

    if (v43)
    {
      v48 = *(v82[4] + 136);
      v49 = swift_task_alloc();
      v82[9] = v49;
      *v49 = v82;
      v49[1] = sub_266C46484;
      OUTLINED_FUNCTION_60();

      sub_266D42EB8(v50);
      return;
    }
  }

  for (j = 0; v32 != j; ++j)
  {
    if (v14)
    {
      v45 = MEMORY[0x26D5F1780](j, v82[3]);
    }

    else
    {
      if (j >= *(v34 + 16))
      {
        goto LABEL_66;
      }

      v45 = *(v35 + 8 * j);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_65;
    }

    v46 = v45;
    v47 = sub_266CC7DA4();

    if ((v47 & 1) == 0)
    {
      v57 = *(v82[4] + 136);
      if (v32 == v36)
      {
        v58 = v82[6];
        if (v79)
        {
          v59 = v82[2];
          sub_266CAB098(v82[6]);
        }

        else
        {
          sub_266DA919C();
          v61 = OUTLINED_FUNCTION_31();
          __swift_storeEnumTagSinglePayload(v61, v62, 1, v63);
        }

        v64 = swift_task_alloc();
        v82[11] = v64;
        *v64 = v82;
        v64[1] = sub_266C4676C;
        OUTLINED_FUNCTION_111(v82[6]);
        OUTLINED_FUNCTION_60();

        sub_266D42FE4();
      }

      else
      {
        if (v79)
        {
          v60 = v82[2];
          sub_266CAB098(v82[5]);
        }

        else
        {
          sub_266DA919C();
          v66 = OUTLINED_FUNCTION_31();
          __swift_storeEnumTagSinglePayload(v66, v67, 1, v68);
        }

        v69 = v82[3];
        Array<A>.hasSameDeviceName.getter();
        v70 = Array<A>.uniqueModels.getter(v69);
        sub_266C3A14C(v70, v71, v72);

        v73 = Array<A>.uniqueOwners.getter(v69);
        sub_266C3A14C(v73, v74, v75);

        if (v79)
        {
          v76 = v82[2];
          sub_266CAB114();
        }

        v77 = swift_task_alloc();
        v82[13] = v77;
        *v77 = v82;
        v77[1] = sub_266C468F4;
        OUTLINED_FUNCTION_111(v82[5]);
        OUTLINED_FUNCTION_60();

        sub_266D4321C();
      }

      return;
    }
  }

  v52 = *(v82[4] + 136);
  v53 = swift_task_alloc();
  v82[10] = v53;
  *v53 = v82;
  v53[1] = sub_266C465F8;
  OUTLINED_FUNCTION_60();

  sub_266D42D7C(v54, v55);
}

uint64_t sub_266C46484()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = v1[7];
  v7 = v1[6];
  v8 = v1[5];

  v9 = *(v4 + 8);
  OUTLINED_FUNCTION_102();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266C465F8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = v1[7];
  v7 = v1[6];
  v8 = v1[5];

  v9 = *(v4 + 8);
  OUTLINED_FUNCTION_102();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_266C4676C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[8];
  v8 = v5[6];
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v3[12] = v0;

  sub_266C47654(v8, &qword_2800CA038, &unk_266DAFBF0);

  if (v0)
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_102();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v16 = v3[6];
    v15 = v3[7];
    v17 = v3[5];

    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_102();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_266C468F4()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v6 = v5[13];
  v7 = v5[8];
  v8 = v5[5];
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  v3[14] = v0;

  sub_266C47654(v8, &qword_2800CA038, &unk_266DAFBF0);

  if (v0)
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_102();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v16 = v3[6];
    v15 = v3[7];
    v17 = v3[5];

    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_102();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_266C46A7C()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266C46AF4()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[14];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t *sub_266C46BB4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];

  v2 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  return v0;
}

uint64_t sub_266C46C04()
{
  sub_266C46BB4();

  return MEMORY[0x2821FE8D8](v0, 233, 7);
}

void sub_266C46C74()
{
  _s22DisambiguationStrategyCMa();

  JUMPOUT(0x26D5EE050);
}

uint64_t sub_266C46CEC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266C48BB4;

  return sub_266C3AC28(a1, a2);
}

uint64_t sub_266C46D98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C48BB4;

  return sub_266C3B124();
}

uint64_t sub_266C46E5C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C48BB4;

  return sub_266C3D314();
}

uint64_t sub_266C46F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = _s22DisambiguationStrategyCMa();
  *v11 = v5;
  v11[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_266C46FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = _s22DisambiguationStrategyCMa();
  *v11 = v5;
  v11[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_266C470A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s22DisambiguationStrategyCMa();
  *v9 = v4;
  v9[1] = sub_266C4716C;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_266C4716C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  OUTLINED_FUNCTION_28();

  return v5();
}

uint64_t sub_266C4724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = _s22DisambiguationStrategyCMa();
  *v9 = v4;
  v9[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_266C47310()
{
  _s22DisambiguationStrategyCMa();

  return sub_266DA772C();
}

uint64_t sub_266C4735C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C48BB4;

  return sub_266C3BD18();
}

uint64_t sub_266C47408()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C48BB4;

  return sub_266C444F4();
}

unint64_t sub_266C47508()
{
  result = qword_2800CA030;
  if (!qword_2800CA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA030);
  }

  return result;
}

unint64_t sub_266C4755C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_266C4756C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C475DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C47654(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_266C476A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C4770C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_41();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266C47750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C477B4(uint64_t a1)
{
  v2 = type metadata accessor for Snippets();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266C47810()
{
  result = qword_2800CA078;
  if (!qword_2800CA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA078);
  }

  return result;
}

uint64_t sub_266C47864()
{
  OUTLINED_FUNCTION_34();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_266C4716C;
  OUTLINED_FUNCTION_54();

  return sub_266C43E8C(v7, v8, v9, v4);
}

uint64_t sub_266C4790C()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_266C48BB4;

  return sub_266C44284(v3, v5, v4);
}

void sub_266C479B0(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

uint64_t sub_266C479D8(void *a1)
{
  v2 = [a1 deviceName];

  if (v2)
  {
    sub_266DAA70C();
  }

  return OUTLINED_FUNCTION_58();
}

unint64_t sub_266C47A44()
{
  result = qword_2800CA098;
  if (!qword_2800CA098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA0A0, &qword_266DAFC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA098);
  }

  return result;
}

unint64_t sub_266C47AA8()
{
  result = qword_2800CA0B0;
  if (!qword_2800CA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA0B0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;
  v11 = *(v0 + 16);

  v12 = (v0 + v9);
  v13 = type metadata accessor for Snippets();
  v14 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v14, v15, v13))
  {
    OUTLINED_FUNCTION_75();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v35 = v12[1];

        v36 = v12[3];

        v37 = type metadata accessor for Snippets.Contact();
        v38 = OUTLINED_FUNCTION_98(v37);
        OUTLINED_FUNCTION_8_0(v38);
        (*(v39 + 8))(&v2[v12]);
        v34 = v1[7];
        goto LABEL_35;
      case 1u:
      case 2u:
      case 3u:
        v16 = *v12;
        goto LABEL_36;
      case 4u:
        v21 = v12[1];

        v22 = v12[3];

        v23 = v12[5];

        v24 = v12[6];

        v12 = (v12 + *(type metadata accessor for Friend() + 40));
        v1 = type metadata accessor for FriendLocation();
        v25 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v25, v26, v1))
        {
          break;
        }

        v27 = v12[1];

        v28 = v1[8];
LABEL_23:
        v71 = v12 + v28;
        v1 = type metadata accessor for Location();
        v72 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v72, v73, v1))
        {
          v74 = v1[7];
          v75 = sub_266DA746C();
          OUTLINED_FUNCTION_8_0(v75);
          (*(v76 + 8))(&v71[v74]);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = &v71[v1[11]];
          v77 = type metadata accessor for Address();
          v78 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
          {
            sub_266DA919C();
            v80 = OUTLINED_FUNCTION_109();
            v238 = v81;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v82, v81);
            if (!EnumTagSinglePayload)
            {
              OUTLINED_FUNCTION_20_2(EnumTagSinglePayload, v84, v85, v86, v87, v88, v89, v90, v235, v238);
              (*(v91 + 8))(v2);
            }

            OUTLINED_FUNCTION_70(v77[5]);
            OUTLINED_FUNCTION_70(v77[6]);
            v92 = OUTLINED_FUNCTION_70(v77[7]);
            v100 = OUTLINED_FUNCTION_115(v92, v93, v94, v95, v96, v97, v98, v99, v235, v238);
            if (!v100)
            {
              OUTLINED_FUNCTION_20_2(v100, v101, v102, v103, v104, v105, v106, v107, v235, v239);
              (*(v108 + 8))(v3 + v2);
            }

            OUTLINED_FUNCTION_70(v77[9]);
            OUTLINED_FUNCTION_70(v77[10]);
            OUTLINED_FUNCTION_70(v77[11]);
            v109 = *&v2[v77[12]];
          }

          v34 = v1[12];
LABEL_35:
          OUTLINED_FUNCTION_48(v34);
LABEL_36:
        }

        break;
      case 5u:
        v48 = v12[1];

        v49 = v12[3];

        v50 = v12[5];

        v51 = v12[6];

        v52 = v12 + *(type metadata accessor for Friend() + 40);
        v53 = type metadata accessor for FriendLocation();
        if (!OUTLINED_FUNCTION_66(v53))
        {
          v54 = *(v52 + 1);

          v55 = &v52[*(v2 + 8)];
          v56 = type metadata accessor for Location();
          if (!OUTLINED_FUNCTION_66(v56))
          {
            v57 = *(v2 + 7);
            v58 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v58);
            (*(v59 + 8))(&v55[v57]);
            OUTLINED_FUNCTION_21_0(*(v2 + 8));
            v60 = &v55[*(v2 + 11)];
            v3 = type metadata accessor for Address();
            if (!__swift_getEnumTagSinglePayload(v60, 1, v3))
            {
              v237 = sub_266DA919C();
              v61 = __swift_getEnumTagSinglePayload(v60, 1, v237);
              if (!v61)
              {
                OUTLINED_FUNCTION_20_2(v61, v62, v63, v64, v65, v66, v67, v68, v235, v237);
                (*(v69 + 8))(v60);
              }

              OUTLINED_FUNCTION_89(v3[5]);
              OUTLINED_FUNCTION_89(v3[6]);
              OUTLINED_FUNCTION_89(v3[7]);
              v235 = v3[8];
              if (!__swift_getEnumTagSinglePayload(v60 + v235, 1, v237))
              {
                (*(*(v237 - 8) + 8))(v60 + v235);
              }

              OUTLINED_FUNCTION_89(v3[9]);
              OUTLINED_FUNCTION_89(v3[10]);
              OUTLINED_FUNCTION_89(v3[11]);
              v70 = *(v60 + v3[12]);
            }

            OUTLINED_FUNCTION_21_0(*(v2 + 12));
          }
        }

        v28 = *(type metadata accessor for Snippets.CarPlayFriendLocation() + 20);
        goto LABEL_23;
      case 6u:
        v110 = v12[1];

        v111 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v112);
        }

        v113 = v12[8];

        v114 = v12[10];
        goto LABEL_36;
      case 7u:
        v40 = v12[1];

        v41 = v12[3];

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(v12[5], v42);
        }

        v45 = v12[8];

        v46 = v12[10];

        v47 = v12[12];
        goto LABEL_36;
      case 8u:
        if ((v12[2] - 1) < 7)
        {
          break;
        }

        goto LABEL_36;
      case 9u:
        v29 = v12[1];

        v30 = v12[3];

        v31 = type metadata accessor for Snippets.Contact();
        v32 = OUTLINED_FUNCTION_98(v31);
        OUTLINED_FUNCTION_8_0(v32);
        (*(v33 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(v1[5]);

        v34 = v1[6];
        goto LABEL_35;
      case 0xAu:
        v115 = v12[1];

        v116 = v12[3];

        v117 = type metadata accessor for Snippets.Contact();
        v118 = OUTLINED_FUNCTION_98(v117);
        OUTLINED_FUNCTION_8_0(v118);
        (*(v119 + 8))(&v2[v12]);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(v1[7]);

        v34 = v1[8];
        goto LABEL_35;
      case 0xBu:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v17);
        (*(v18 + 8))(v12);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v2 = v1[5];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v19);
        (*(v20 + 8))(&v2[v12]);
        if (*(v12 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_36;
      default:
        break;
    }
  }

  v120 = (v0 + v10);
  v121 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v121, v122, v13))
  {
    OUTLINED_FUNCTION_75();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v147 = *(v120 + 1);

        v148 = *(v120 + 3);

        v149 = type metadata accessor for Snippets.Contact();
        v150 = OUTLINED_FUNCTION_96(v149);
        OUTLINED_FUNCTION_8_0(v150);
        (*(v151 + 8))(v1 + v120);
        v146 = *(v13 + 28);
        goto LABEL_71;
      case 1u:
      case 2u:
      case 3u:
        v123 = *v120;
        goto LABEL_73;
      case 4u:
        v130 = *(v120 + 1);

        v131 = *(v120 + 3);

        v132 = *(v120 + 5);

        v133 = *(v120 + 6);

        v134 = &v120[*(type metadata accessor for Friend() + 40)];
        v135 = type metadata accessor for FriendLocation();
        v136 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v136, v137, v135))
        {
          break;
        }

        v138 = *(v134 + 1);

        v139 = &v134[*(v135 + 32)];
LABEL_59:
        v209 = type metadata accessor for Location();
        v210 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v210, v211, v209))
        {
          break;
        }

        v212 = v209[7];
        v213 = sub_266DA746C();
        OUTLINED_FUNCTION_8_0(v213);
        (*(v214 + 8))(&v139[v212]);
        v215 = *&v139[v209[8] + 8];

        v216 = &v139[v209[11]];
        v217 = type metadata accessor for Address();
        if (!OUTLINED_FUNCTION_66(v217))
        {
          v218 = sub_266DA919C();
          if (!__swift_getEnumTagSinglePayload(v216, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 5));
          OUTLINED_FUNCTION_21_0(*(v2 + 6));
          OUTLINED_FUNCTION_21_0(*(v2 + 7));
          v219 = *(v2 + 8);
          if (!__swift_getEnumTagSinglePayload(v216 + v219, 1, v218))
          {
            (*(*(v218 - 8) + 8))(v216 + v219, v218);
          }

          OUTLINED_FUNCTION_21_0(*(v2 + 9));
          OUTLINED_FUNCTION_21_0(*(v2 + 10));
          OUTLINED_FUNCTION_21_0(*(v2 + 11));
          v220 = *(v216 + *(v2 + 12));
        }

        v221 = &v139[v209[12]];
LABEL_72:
        v233 = *(v221 + 1);
LABEL_73:

        break;
      case 5u:
        v158 = *(v120 + 1);

        v159 = *(v120 + 3);

        v160 = *(v120 + 5);

        v161 = *(v120 + 6);

        v162 = &v120[*(type metadata accessor for Friend() + 40)];
        v163 = type metadata accessor for FriendLocation();
        v164 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v164, v165, v163))
        {
          v166 = *(v162 + 1);

          v167 = &v162[*(v163 + 32)];
          v168 = type metadata accessor for Location();
          v169 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v169, v170, v168))
          {
            v171 = v168[7];
            v172 = sub_266DA746C();
            OUTLINED_FUNCTION_8_0(v172);
            (*(v173 + 8))(&v167[v171]);
            v174 = *&v167[v168[8] + 8];

            v2 = &v167[v168[11]];
            v175 = type metadata accessor for Address();
            v176 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v176, v177, v175))
            {
              sub_266DA919C();
              v178 = OUTLINED_FUNCTION_109();
              v240 = v179;
              v181 = __swift_getEnumTagSinglePayload(v178, v180, v179);
              if (!v181)
              {
                OUTLINED_FUNCTION_20_2(v181, v182, v183, v184, v185, v186, v187, v188, v235, v240);
                (*(v189 + 8))(v2);
              }

              OUTLINED_FUNCTION_70(v175[5]);
              OUTLINED_FUNCTION_70(v175[6]);
              v190 = OUTLINED_FUNCTION_70(v175[7]);
              v198 = OUTLINED_FUNCTION_115(v190, v191, v192, v193, v194, v195, v196, v197, v235, v240);
              if (!v198)
              {
                OUTLINED_FUNCTION_20_2(v198, v199, v200, v201, v202, v203, v204, v205, v236, v241);
                (*(v206 + 8))(v3 + v2);
              }

              OUTLINED_FUNCTION_70(v175[9]);
              OUTLINED_FUNCTION_70(v175[10]);
              OUTLINED_FUNCTION_70(v175[11]);
              v207 = *&v2[v175[12]];
            }

            v208 = *&v167[v168[12] + 8];
          }
        }

        v139 = &v120[*(type metadata accessor for Snippets.CarPlayFriendLocation() + 20)];
        goto LABEL_59;
      case 6u:
        v222 = *(v120 + 1);

        v223 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v224);
        }

        v225 = *(v120 + 8);

        v226 = *(v120 + 10);
        goto LABEL_73;
      case 7u:
        v152 = *(v120 + 1);

        v153 = *(v120 + 3);

        OUTLINED_FUNCTION_52();
        if (!(!v44 & v43))
        {
          sub_266C2BB04(*(v120 + 5), v154);
        }

        v155 = *(v120 + 8);

        v156 = *(v120 + 10);

        v157 = *(v120 + 12);
        goto LABEL_73;
      case 8u:
        if ((*(v120 + 2) - 1) < 7)
        {
          break;
        }

        goto LABEL_73;
      case 9u:
        v140 = *(v120 + 1);

        v141 = *(v120 + 3);

        v142 = type metadata accessor for Snippets.Contact();
        v143 = OUTLINED_FUNCTION_96(v142);
        OUTLINED_FUNCTION_8_0(v143);
        (*(v144 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v145 = type metadata accessor for Snippets.SetGeoFenceConfirmation();
        OUTLINED_FUNCTION_48(*(v145 + 20));

        v146 = *(v145 + 24);
        goto LABEL_71;
      case 0xAu:
        v227 = *(v120 + 1);

        v228 = *(v120 + 3);

        v229 = type metadata accessor for Snippets.Contact();
        v230 = OUTLINED_FUNCTION_96(v229);
        OUTLINED_FUNCTION_8_0(v230);
        (*(v231 + 8))(v1 + v120);
        OUTLINED_FUNCTION_48(*(v13 + 28));

        v232 = type metadata accessor for Snippets.SetGeoFenceResult();
        OUTLINED_FUNCTION_48(*(v232 + 28));

        v146 = *(v232 + 32);
LABEL_71:
        v221 = &v120[v146];
        goto LABEL_72;
      case 0xBu:
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0(v124);
        (*(v125 + 8))(v0 + v10);
        v126 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
        v127 = *(v126 + 20);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0(v128);
        (*(v129 + 8))(&v120[v127]);
        if (*&v120[*(v126 + 24) + 16] == 1)
        {
          break;
        }

        goto LABEL_73;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}