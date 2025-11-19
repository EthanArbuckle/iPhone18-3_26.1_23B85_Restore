uint64_t sub_26108F7EC()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_260FF7C64;

  return sub_261018F4C();
}

id PASExtensionHandle.authenticator(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 56);
  v5 = type metadata accessor for PASExtensionAuthController();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v4;
  a2[3] = v5;
  a2[4] = &off_287388CE0;
  *a2 = v6;

  return a1;
}

uint64_t PASExtensionHandle.signInSucceeded(appleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26108F928, 0, 0);
}

uint64_t sub_26108F928()
{
  v1 = *(v0[4] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_260FE6A50;
  v4 = v0[2];
  v3 = v0[3];

  return sub_26101A998(v4, v3);
}

uint64_t PASExtensionHandle.typeErasedIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v3 - 8) + 16);

  return v6(boxed_opaque_existential_1, v4, v3);
}

uint64_t PASExtensionHandle.viewDetails(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26108FA68, 0, 0);
}

uint64_t sub_26108FA68()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26108FB04;
  v3 = v0[2];

  return sub_2610196F0(v3);
}

uint64_t sub_26108FB04(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_26108FC24()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2610793AC;

  return sub_26101B0FC();
}

uint64_t sub_26108FCD8()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26108FD6C;

  return sub_26101B924();
}

uint64_t sub_26108FD6C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PASExtensionHandle.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t PASExtensionHandle.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t PASExtensionHandle.debugDescription.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_2610BC754();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](47, 0xE100000000000000);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = sub_2610BC764();
  MEMORY[0x2666F7380](v2);

  MEMORY[0x2666F7380](10272, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](41, 0xE100000000000000);
  return 0;
}

uint64_t dispatch thunk of PASSourceAuthControllerProtocol.authenticate(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_260FBD298;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2610901B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, void (*a4)(void *__return_ptr)@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  sub_260FA9918(v5 + 16, v13, a1, a2);
  if (v13[3])
  {
    return a3(v13, a5);
  }

  sub_260FA9980(v13, a1, a2);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  a4(v13);
  sub_260FA99E0(v13, a5);
  a3(v13, v12);
  swift_beginAccess();
  sub_260FC3844(v12, v5 + 16, a1, a2);
  return swift_endAccess();
}

uint64_t sub_261090328(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E756F6363416F6ELL;
  v4 = *a1;
  v5 = 0x6341534D44496F6ELL;
  v6 = 0xED0000746E756F63;
  if (v4 == 1)
  {
    v5 = 0x6E756F6363416F6ELL;
    v6 = 0xE900000000000074;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002610D1AE0;
  }

  if (*a2 != 1)
  {
    v3 = 0x6341534D44496F6ELL;
    v2 = 0xED0000746E756F63;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002610D1AE0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_26109043C()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610904F4()
{
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_261090598()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26109064C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2610929BC();
  *a2 = result;
  return result;
}

void sub_26109067C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x6E756F6363416F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6341534D44496F6ELL;
    v3 = 0xED0000746E756F63;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (v5)
  {
    v3 = 0x80000002610D1AE0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2610906F0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B46E4(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_2610907B8(uint64_t a1)
{
  v2 = sub_261091168();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610907F4(uint64_t a1)
{
  v2 = sub_261091168();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261090830(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_261090850, 0, 0);
}

uint64_t sub_261090850()
{
  v1 = *(v0[13] + 24);

  sub_2610901B4(&qword_27FE65000, &qword_2610BEE60, sub_260FA9F80, sub_260F9DC50, (v0 + 2));

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_2610909CC;

  return v8(v2, v3);
}

uint64_t sub_2610909CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_261090F90;
  }

  else
  {
    v5 = sub_261090AE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261090AE0()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[13];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v3 = *(v2 + 24);

    sub_2610901B4(&qword_27FE65000, &qword_2610BEE60, sub_260FA9F80, sub_260F9DC50, (v0 + 7));

    v4 = v0[10];
    v5 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
    v6 = *(v5 + 64);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_261090CE8;

    return v12(v1, v4, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    sub_2610910DC();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_261090CE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_261090FF4;
  }

  else
  {
    v5 = sub_261090DFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261090DFC()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (v1)
  {
    v2 = v0[18];
    v3 = v0[12];
    v3[3] = &type metadata for PASDevice;
    v3[4] = &protocol witness table for PASDevice;
    v3[5] = sub_260FBE5B4();
    v3[6] = sub_260FC37F0();
    v4 = swift_allocObject();
    *v3 = v4;
    v5 = qword_27FE637F8;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = v0[18];
    v8 = v0[15];
    v9 = v0[12];
    sub_260FA6AE0(qword_27FE65498, v4 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
    v10 = swift_allocObject();
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0;
    *(v9 + 56) = v7;
    *(v9 + 64) = v10;
    v11 = v0[1];
  }

  else
  {
    v12 = v0[15];
    sub_2610910DC();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_261090F90()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[16];
  v2 = v0[1];

  return v2();
}

uint64_t sub_261090FF4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(v0 + 152);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261091060()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_2610910DC()
{
  result = qword_27FE666B0;
  if (!qword_27FE666B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666B0);
  }

  return result;
}

unint64_t sub_261091130(void *a1)
{
  a1[1] = sub_261091168();
  a1[2] = sub_2610911BC();
  result = sub_261091210();
  a1[3] = result;
  return result;
}

unint64_t sub_261091168()
{
  result = qword_27FE666B8;
  if (!qword_27FE666B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666B8);
  }

  return result;
}

unint64_t sub_2610911BC()
{
  result = qword_27FE666C0;
  if (!qword_27FE666C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666C0);
  }

  return result;
}

unint64_t sub_261091210()
{
  result = qword_27FE666C8;
  if (!qword_27FE666C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666C8);
  }

  return result;
}

unint64_t sub_261091268()
{
  result = qword_27FE666D0;
  if (!qword_27FE666D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666D0);
  }

  return result;
}

uint64_t sub_2610912BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6F34;

  return sub_261091360();
}

uint64_t sub_261091360()
{
  *(v1 + 216) = v0;
  v2 = swift_task_alloc();
  *(v1 + 224) = v2;
  *v2 = v1;
  v2[1] = sub_2610913F8;

  return sub_261090830(v1 + 16);
}

uint64_t sub_2610913F8()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_261091E0C;
  }

  else
  {
    v3 = sub_26109150C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26109150C()
{
  v1 = *(v0[27] + 16);

  sub_2610901B4(&qword_27FE63CB0, &unk_2610BFDB0, sub_260FA9F80, sub_260F9E15C, (v0 + 16));

  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_261091690;

  return (v8)(v0 + 21, v2, v3);
}

uint64_t sub_261091690()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2610920E8;
  }

  else
  {
    v3 = sub_2610917A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610917A4()
{
  v1 = *(v0 + 192);
  *(v0 + 256) = v1;
  *(v0 + 272) = __swift_project_boxed_opaque_existential_1((v0 + 168), v1);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = sub_261091850;

  return sub_261092E5C(1);
}

uint64_t sub_261091850(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2610923D4, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[38] = v7;
    *v7 = v6;
    v7[1] = sub_2610919FC;
    v8 = v4[34];
    v9 = v4[32];
    v13 = v4[33];
    v10 = MEMORY[0x277D839B0];

    return sub_260FAECF0((v4 + 40), 4, 0, 0, 1, a1, v9, v10);
  }
}

uint64_t sub_2610919FC()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 288);

  if (v0)
  {
    v6 = sub_2610926C8;
  }

  else
  {
    v6 = sub_261091B30;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261091B30()
{
  v18 = v0;
  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 141558274;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2080;
    if (v1)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_260FA5970(v7, v8, v17);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASPersonalSourceAuthController sent selectedOwnAccount and got response: %{mask.hash}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  sub_260FC3748(v0 + 16);
  v10 = *(*(v0 + 216) + 32);

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, v0 + 88);

  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 88), v11);
  LOBYTE(v17[0]) = 0;
  LOBYTE(v10) = (*(v12 + 8))(v17, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  if (v10)
  {
    v13 = *(v0 + 8);

    return v13(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_261091E0C()
{
  v20 = v0;
  v1 = v0[29];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    v0[26] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASPersonalSourceAuthController failed to send selectedOwnAccount\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0[27] + 32);

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, (v0 + 11));

  v13 = v0[14];
  v14 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v13);
  LOBYTE(v19[0]) = 0;
  LOBYTE(v12) = (*(v14 + 8))(v19, v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (v12)
  {
    v15 = v0[1];

    return v15(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2610920E8()
{
  v20 = v0;
  sub_260FC3748((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = v0[31];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    v0[26] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASPersonalSourceAuthController failed to send selectedOwnAccount\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0[27] + 32);

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, (v0 + 11));

  v13 = v0[14];
  v14 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v13);
  LOBYTE(v19[0]) = 0;
  LOBYTE(v12) = (*(v14 + 8))(v19, v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (v12)
  {
    v15 = v0[1];

    return v15(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2610923D4()
{
  v20 = v0;
  sub_260FC3748((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = v0[37];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    v0[26] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASPersonalSourceAuthController failed to send selectedOwnAccount\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0[27] + 32);

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, (v0 + 11));

  v13 = v0[14];
  v14 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v13);
  LOBYTE(v19[0]) = 0;
  LOBYTE(v12) = (*(v14 + 8))(v19, v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (v12)
  {
    v15 = v0[1];

    return v15(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2610926C8()
{
  v20 = v0;
  sub_260FC3748((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = v0[39];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136446210;
    v0[26] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASPersonalSourceAuthController failed to send selectedOwnAccount\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0[27] + 32);

  sub_2610901B4(&unk_27FE63C00, &qword_2610BEDD0, sub_260FA9F80, sub_260F9E668, (v0 + 11));

  v13 = v0[14];
  v14 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v13);
  LOBYTE(v19[0]) = 0;
  LOBYTE(v12) = (*(v14 + 8))(v19, v13, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (v12)
  {
    v15 = v0[1];

    return v15(0);
  }

  else
  {
    sub_2610910DC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2610929BC()
{
  v0 = sub_2610BD154();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261092A0C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v18[10] = a2;
  v8 = sub_2610BC3C4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_2610BC3B4();
  type metadata accessor for PASDeviceContext();
  sub_26109BCFC(&qword_27FE655A8, type metadata accessor for PASDeviceContext);
  v11 = sub_2610BC3A4();
  v13 = v12;

  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
    inited = swift_initStackObject();
    *(inited + 32) = a4;
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 64) = MEMORY[0x277CC9318];
    *(inited + 40) = v11;
    *(inited + 48) = v13;

    sub_260FAA188(v11, v13);
    v16 = sub_260FA8D08(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = a1;
    sub_2610998BC(v16, sub_26109954C, 0, isUniquelyReferenced_nonNull_native, v18, a3 & 1);

    sub_260FAC46C(v11, v13);
    return v18[0];
  }

  return result;
}

id sub_261092BE8(void *a1, uint64_t a2, char a3, char a4)
{
  v19[10] = *MEMORY[0x277D85DE8];
  v19[0] = 0;
  v8 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v19];
  v9 = v19[0];
  if (!v8)
  {
    v17 = v9;
    sub_2610BC4F4();

    result = swift_willThrow();
    goto LABEL_5;
  }

  v10 = sub_2610BC534();
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 32) = a4;
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 64) = MEMORY[0x277CC9318];
  *(inited + 40) = v10;
  *(inited + 48) = v12;

  sub_260FAA188(v10, v12);
  v14 = sub_260FA8D08(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = a1;
  sub_2610998BC(v14, sub_26109954C, 0, isUniquelyReferenced_nonNull_native, v19, a3 & 1);
  if (!v4)
  {

    sub_260FAC46C(v10, v12);
    result = v19[0];
LABEL_5:
    v18 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t PASDeviceAndAccount.init(device:account:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(a3 + 64) = v6;
  result = sub_261092E3C(a1, a3);
  *(a3 + 56) = a2;
  return result;
}

uint64_t sub_261092E3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_261092E5C(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 112) = a1;
  return MEMORY[0x2822009F8](sub_261092E80, 0, 0);
}

uint64_t sub_261092E80()
{
  v1 = *(v0 + 56);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  *(v0 + 64) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 56);
    v7 = v6[5];
    v8 = v6[6];
    v9 = __swift_project_boxed_opaque_existential_1(v6, v1[3]);
    v10 = sub_260FA8D08(MEMORY[0x277D84F90]);
    v11 = sub_260FB2964(v10, v9, 0, 5);
    *(v0 + 72) = v11;
    v15 = v11;
    v16 = *(v0 + 56);

    v17 = *(v16 + 56);
    *(v0 + 80) = v17;
    if (v17)
    {
      v18 = *(v0 + 56);
      v19 = v17;
      sub_261095FC4(v0 + 16);
      v20 = *(v0 + 40);
      v21 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
      v22 = *(v21 + 72);
      v27 = (v22 + *v22);
      v23 = v22[1];
      v24 = swift_task_alloc();
      *(v0 + 88) = v24;
      *v24 = v0;
      v24[1] = sub_261093148;
      v25 = *(v0 + 112);

      return v27(v19, v25, v20, v21);
    }

    else
    {

      v26 = *(v0 + 8);

      return v26(v15);
    }
  }

  else
  {
    sub_261096B58();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_261093148(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[9];

    v6 = sub_261093328;
  }

  else
  {
    v6 = sub_261093264;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261093264()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = sub_261092BE8(v3, v1, 0, 0);
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  v9 = v0[1];
  if (!v2)
  {
    v8 = v4;
  }

  return v9(v8);
}

uint64_t sub_261093328()
{
  v1 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 104);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26109339C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_260FB1A10(a1, 5u, 5u, &v13);
  if (v2)
  {
  }

  if (!*(&v14 + 1))
  {
    sub_260FA9980(&v13, &unk_27FE66710, &qword_2610BF8F8);
    sub_260FBE4B4();
    swift_allocError();
    *v6 = xmmword_2610CE390;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    swift_willThrow();
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  sub_260FB137C(a1, 0, 0, &v13);

  v7 = *(&v13 + 1);
  if (*(&v13 + 1) >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = v13;
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64D80, 0x277CB8F30);
    v8 = sub_2610BCD94();
    sub_260FAC458(v9, v7);
    v10 = v8;
  }

  a2[3] = &type metadata for PASDevice;
  a2[4] = &protocol witness table for PASDevice;
  a2[5] = sub_260FBE5B4();
  a2[6] = sub_260FC37F0();
  v11 = swift_allocObject();
  *a2 = v11;
  v12 = v18;
  *(v11 + 16) = v17;
  *(v11 + 32) = v12;
  *(v11 + 48) = v19;
  *(v11 + 64) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  result = swift_allocObject();
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0;
  a2[7] = v8;
  a2[8] = result;
  return result;
}

uint64_t sub_2610935F0()
{
  v1 = *(v0 + 64);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_261093720;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_261093720()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_2610939E4;
  }

  else
  {
    v3 = sub_261093834;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261093834()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64868, &unk_2610C26F0);
  sub_260FADDAC(5u, 0, &unk_2610CE5F8, v4, v2, v5, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASDeviceInfoExchanger did registerForRequests", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2610939E4()
{
  v17 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[7] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260F97000, v4, v5, "PASDeviceInfoExchanger failed to registerForRequests. %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_261093BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261093BD8, 0, 0);
}

uint64_t sub_261093BD8()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_261093CE4;
    v4 = *(v0 + 48);

    return sub_26109A154(v4);
  }

  else
  {
    **(v0 + 40) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_261093CE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_261093E38;
  }

  else
  {
    v8 = *(v4 + 64);

    *(v4 + 88) = a1;
    v7 = sub_261093E14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261093E38()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_261093E9C()
{
  v1[15] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261093F44, 0, 0);
}

uint64_t sub_261093F44()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = sub_2610BCC94();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_260FA9918(v2, v1, &unk_27FE65800, &qword_2610BF910);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 3;
  *(v5 + 40) = &unk_2610CE5C0;
  *(v5 + 48) = v3;
  *(v5 + 56) = sub_261094738;
  *(v5 + 64) = 0;
  *(v5 + 72) = xmmword_2610CE3A0;
  *(v5 + 88) = 0;

  v6 = sub_261043008(0, 0, v1, &unk_2610CE5D0, v5);
  v0[18] = v6;
  sub_260FA9980(v2, &unk_27FE65800, &qword_2610BF910);
  v7 = *(MEMORY[0x277D857C8] + 4);
  v8 = swift_task_alloc();
  v0[19] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AB0, &qword_2610C91A0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  *v8 = v0;
  v8[1] = sub_26109413C;
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 14, v6, v9, v10, v11);
}

uint64_t sub_26109413C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_261094658;
  }

  else
  {
    v6 = sub_261094270;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261094270()
{
  v1 = v0[14];
  v0[21] = v1;
  v0[5] = &type metadata for PASDevice;
  v0[6] = &protocol witness table for PASDevice;
  v0[7] = sub_260FBE5B4();
  v0[8] = sub_260FC37F0();
  v2 = swift_allocObject();
  v0[2] = v2;
  v3 = qword_27FE637F8;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_260FA6AE0(qword_27FE65498, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v0[9] = v1;
  v0[10] = v5;
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_2610943C8;

  return sub_261092E5C(0);
}

uint64_t sub_2610943C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  sub_260FC3748(v3 + 16);
  if (v1)
  {
    v5 = sub_2610946C4;
  }

  else
  {
    v5 = sub_2610944E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610944E4()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_beginAccess();

  v4 = sub_260FA93B4(v3);

  type metadata accessor for PASDeviceContext();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_261092A0C(v1, v5, 0, 10);
  v7 = v0[23];
  v8 = v0[21];
  if (v2)
  {

    v10 = v0[16];
    v9 = v0[17];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[16];
    v13 = v0[17];

    v15 = v0[1];

    return v15(v6);
  }
}

uint64_t sub_261094658()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2610946C4()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  v4 = *(v0 + 8);

  return v4();
}

BOOL sub_261094738()
{
  v0 = sub_2610BC4E4();
  v1 = [v0 domain];
  v2 = sub_2610BCA04();
  v4 = v3;

  v5 = *MEMORY[0x277CB8DC0];
  if (v2 == sub_2610BCA04() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_2610BD384();

    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  v10 = [v0 code];

  return v10 == 10002;
}

uint64_t sub_26109481C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26109483C, 0, 0);
}

uint64_t sub_26109483C()
{
  v1 = *(v0 + 24);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_261094964;

  return v8(v2, v3);
}

uint64_t sub_261094964(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 40) = a1;

  return MEMORY[0x2822009F8](sub_261094AB0, 0, 0);
}

uint64_t sub_261094AF4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASDeviceInfoExchanger sendPASDeviceInfo", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 64);

  v6 = v5[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_261094CE0;

  return v12(v0 + 16, v6, v7);
}

uint64_t sub_261094CE0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_261095390;
  }

  else
  {
    v3 = sub_261094DF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261094DF4()
{
  v1 = *(v0 + 40);
  *(v0 + 88) = v1;
  *(v0 + 104) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_261094E9C;
  v3 = *(v0 + 64);

  return sub_261093E9C();
}

uint64_t sub_261094E9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_261090F90, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[17] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
    *v7 = v6;
    v7[1] = sub_261095058;
    v9 = v4[13];
    v10 = v4[11];
    v13 = v4[12];

    return sub_260FAECF0((v4 + 7), 5, 0, 10, 0, a1, v10, v8);
  }
}

uint64_t sub_261095058()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_2610953A8;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_261095174;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261095174()
{
  v1 = v0[7];
  v0[19] = v1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_261095218;
  v3 = v0[8];

  return sub_261095478(v1);
}

uint64_t sub_261095218()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_261095414;
  }

  else
  {
    v3 = sub_26109532C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26109532C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2610953A8()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_261095414()
{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

uint64_t sub_261095478(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return MEMORY[0x2822009F8](sub_261095498, 0, 0);
}

uint64_t sub_261095498()
{
  v1 = *(v0 + 168);

  sub_26109339C(v2, (v0 + 16));
  v3 = sub_260FB1C74(*(v0 + 168), 0xAu, 0xAu);
  if (!v3)
  {
    type metadata accessor for PASDeviceContext();
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x277D84FA0];
  }

  *(v0 + 184) = v3;
  v4 = *(v0 + 176);
  v5 = *(v4 + 160);
  *(v0 + 192) = *(v4 + 104);
  v6 = *(v4 + 112);
  *(v0 + 200) = v6;
  *(v0 + 208) = swift_getObjectType();
  v16 = *(v0 + 40);
  v7 = *(v0 + 40);
  v8 = __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  *(v0 + 112) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
  *(v0 + 152) = type metadata accessor for PASDeviceContext();
  *(v0 + 160) = sub_26109BCFC(&qword_27FE63848, type metadata accessor for PASDeviceContext);
  *(v0 + 128) = v3;
  if (v5)
  {
    *(v0 + 296) = *(v6 + 80);
    *(v0 + 304) = (v6 + 80) & 0xFFFFFFFFFFFFLL | 0xBEBB000000000000;
    sub_2610BCC74();

    *(v0 + 312) = sub_2610BCC64();
    v10 = sub_2610BCBF4();
    v12 = v11;
    v13 = sub_261095A70;
  }

  else
  {
    *(v0 + 216) = *(v6 + 72);
    *(v0 + 224) = (v6 + 72) & 0xFFFFFFFFFFFFLL | 0x20B1000000000000;
    *(v0 + 232) = sub_2610BCC74();

    *(v0 + 240) = sub_2610BCC64();
    v10 = sub_2610BCBF4();
    v12 = v14;
    v13 = sub_261095714;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_261095714()
{
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];

  v3(v0 + 11, v0 + 16, v4, v5);
  sub_260FA9980((v0 + 16), &qword_27FE63850, qword_2610CC240);
  sub_260FA9980((v0 + 11), &qword_27FE63858, &unk_2610BE900);

  return MEMORY[0x2822009F8](sub_2610957DC, 0, 0);
}

uint64_t sub_2610957DC()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = type metadata accessor for PASAccountWithImage();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = xmmword_2610BF320;
    v4 = sub_26109BCFC(&unk_27FE65010, type metadata accessor for PASAccountWithImage);
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v3 = 0;
  }

  v5 = v0[29];
  v6 = v0[22];
  v0[11] = v3;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = v2;
  v0[15] = v4;
  v7 = v6[18];
  v0[31] = v7;
  v8 = v6[19];
  v0[32] = v8;
  v0[33] = __swift_project_boxed_opaque_existential_1(v6 + 15, v7);
  v9 = type metadata accessor for PASAccountContext.ExistingAccount();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v0[19] = v9;
  v0[20] = &protocol witness table for PASAccountContext.ExistingAccount;
  v0[16] = v10;
  v0[34] = *(v8 + 40);
  v0[35] = (v8 + 40) & 0xFFFFFFFFFFFFLL | 0xA5A5000000000000;
  v11 = v1;
  v0[36] = sub_2610BCC64();
  v13 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261095950, v13, v12);
}

uint64_t sub_261095950()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];

  v4(v0 + 11, v0 + 16, v6, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x2822009F8](sub_2610959EC, 0, 0);
}

uint64_t sub_2610959EC()
{
  v1 = *(v0 + 184);

  sub_260FA9980(v0 + 88, &unk_27FE656B0, &unk_2610BFCE0);
  sub_260FC3748(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261095A70()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];

  v3(v0 + 11, v0 + 16, v4, v5);
  sub_260FA9980((v0 + 16), &qword_27FE63850, qword_2610CC240);
  sub_260FA9980((v0 + 11), &qword_27FE63858, &unk_2610BE900);

  return MEMORY[0x2822009F8](sub_261095B38, 0, 0);
}

uint64_t sub_261095B38()
{
  v1 = *(v0 + 184);

  sub_260FC3748(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261095BA4(_BYTE *a1)
{
  if (*a1 <= 4u)
  {
    *a1;
    *a1;
  }

  else
  {
    v1 = *a1 <= 7u;
  }

  return sub_2610BCF24();
}

uint64_t *sub_261095D70()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASDeviceInfoExchanger deinit", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = v1[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 8);
  v7 = v1[13];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 15);
  return v1;
}

uint64_t sub_261095E78()
{
  sub_261095D70();

  return MEMORY[0x2821FE8D8](v0, 161, 7);
}

uint64_t sub_261095EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB6DB4;

  return sub_2610935D0();
}

uint64_t sub_261095F38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB6DB4;

  return sub_261094AD4();
}

uint64_t sub_261095FC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_261099C18(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_2610960D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6563697665446F6ELL;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v3)
  {
    v5 = 0x80000002610D1900;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6563697665446F6ELL;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0x80000002610D1900;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2610BD384();
  }

  return v9 & 1;
}

uint64_t sub_261096184()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26109620C()
{
  *v0;
  sub_2610BCA54();
}

uint64_t sub_261096280()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_261096304@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

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

void sub_261096364(unint64_t *a1@<X8>)
{
  v2 = 0x80000002610D1900;
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0x6563697665446F6ELL;
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2610963A8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B4044(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_261096470(uint64_t a1)
{
  v2 = sub_26109BE94();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610964AC(uint64_t a1)
{
  v2 = sub_26109BE94();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASDeviceAndAccount.description.getter()
{
  v1 = v0;
  v2 = 1701736302;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_2610BCF84();

  v36 = 0xD00000000000001CLL;
  v37 = 0x80000002610D5FE0;
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  (*(v4 + 8))(&v32, v3, v4);
  v5 = v34;
  v6 = v35;
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  v7 = (*(v6 + 8))(v5, v6);
  MEMORY[0x2666F7380](v7);

  __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  MEMORY[0x2666F7380](8236, 0xE200000000000000);
  v9 = v36;
  v8 = v37;
  v32 = 0x6563766965446B61;
  v33 = 0xEA0000000000203ALL;
  v10 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v36 = (*(v11 + 32))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE666D8, &qword_2610CE3B8);
  v12 = sub_2610BCA34();
  MEMORY[0x2666F7380](v12);

  v13 = v32;
  v14 = v33;
  v32 = v9;
  v33 = v8;

  MEMORY[0x2666F7380](v13, v14);

  v16 = v32;
  v15 = v33;
  v32 = 0x797274656D6F6962;
  v33 = 0xEA0000000000203ALL;
  v17 = v0[3];
  v18 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v19 = (*(v18 + 16))(v17, v18);
  MEMORY[0x2666F7380](v19);

  MEMORY[0x2666F7380](8236, 0xE200000000000000);
  v20 = v32;
  v21 = v33;
  v32 = v16;
  v33 = v15;

  MEMORY[0x2666F7380](v20, v21);

  v23 = v32;
  v22 = v33;
  v32 = 0x3A746E756F636361;
  v33 = 0xE800000000000000;
  v24 = v0[7];
  if (v24 && (v25 = [v24 username]) != 0)
  {
    v26 = v25;
    v2 = sub_2610BCA04();
    v28 = v27;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x2666F7380](v2, v28);

  v29 = v32;
  v30 = v33;
  v32 = v23;
  v33 = v22;

  MEMORY[0x2666F7380](v29, v30);

  return v32;
}

uint64_t dispatch thunk of PASDeviceInfoExchangerProtocol.registerForRequests()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASDeviceInfoExchangerProtocol.sendPASDeviceInfo()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return v9(a1, a2);
}

uint64_t sub_261096A48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261096A90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261096B04()
{
  result = qword_27FE666E8;
  if (!qword_27FE666E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666E8);
  }

  return result;
}

unint64_t sub_261096B58()
{
  result = qword_27FE666F0;
  if (!qword_27FE666F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE666F0);
  }

  return result;
}

uint64_t sub_261096BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2610BD074();
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

  return MEMORY[0x2822009F8](sub_261096CAC, 0, 0);
}

uint64_t sub_261096CAC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2610BD084();
  v7 = sub_26109BCFC(&qword_27FE66720, MEMORY[0x277D85928]);
  sub_2610BD454();
  sub_26109BCFC(&qword_27FE66728, MEMORY[0x277D858F8]);
  sub_2610BD094();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_261096E3C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_261096E3C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (!v0)
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_261096FF8, 0, 0);
}

uint64_t sub_261096FF8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_261097078(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
  v36 = a2;
  result = sub_2610BD104();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_260FA6A84(v25, v37);
      }

      else
      {
        sub_260FA3F5C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_260FA6A84(v37, (*(v8 + 56) + 32 * v16));
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_261097330(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
  result = sub_2610BD104();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_260FA6A84((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_260FA9708(v24, &v38);
        sub_260FA3F5C(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_2610BCF04();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_260FA6A84(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2610975E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C18, &qword_2610BEDE8);
  result = sub_2610BD104();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_260FA6A84(v22, v33);
      }

      else
      {
        sub_260FA3F5C(v22, v33);
      }

      v23 = *(v8 + 40);
      sub_2610BD514();
      sub_2610BCA54();

      result = sub_2610BD574();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_260FA6A84(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_261097A0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66740, &qword_2610BECD0);
  v39 = a2;
  result = sub_2610BD104();
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
      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
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

uint64_t sub_261097CB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66750, &unk_2610CE610);
  v36 = a2;
  result = sub_2610BD104();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_260F98E14(v25, v37);
      }

      else
      {
        sub_260FA99E0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_260F98E14(v37, *(v8 + 56) + 40 * v16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_261097F88(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_2610BD104();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];

        swift_unknownObjectRetain();
      }

      v29 = *(v10 + 40);
      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_261098228(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2610BCEE4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_2610BD514();

      sub_2610BCA54();
      v14 = sub_2610BD574();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2610983D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2610BCEE4() + 1) & ~v5;
    do
    {
      sub_260FA9708(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_2610BCF04();
      result = sub_260FA9764(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26109857C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2610BCEE4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_2610BD514();
      sub_2610BCA54();

      result = sub_2610BD574();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2610988A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2610BCEE4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2610BD514();

      sub_2610BCA54();
      v13 = sub_2610BD574();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_261098A54(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_260FA6A84(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_261098AC0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_260FA6A84(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_261098B3C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_260FA6A84(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_261098BA4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_261098C00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
  v2 = *v0;
  v3 = sub_2610BD0F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_260FA3F5C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_260FA6A84(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_261098DA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
  v2 = *v0;
  v3 = sub_2610BD0F4();
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
        v18 = 40 * v17;
        sub_260FA9708(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_260FA3F5C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_260FA6A84(v22, (*(v4 + 56) + v17));
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

void *sub_261098F48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C18, &qword_2610BEDE8);
  v2 = *v0;
  v3 = sub_2610BD0F4();
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
        v18 = *(*(v2 + 48) + v17);
        sub_260FA3F5C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_260FA6A84(v19, (*(v4 + 56) + 32 * v17));
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

id sub_2610990C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66740, &qword_2610BECD0);
  v2 = *v0;
  v3 = sub_2610BD0F4();
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

void *sub_261099230()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66750, &unk_2610CE610);
  v2 = *v0;
  v3 = sub_2610BD0F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 40 * v17;
        sub_260FA99E0(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_260F98E14(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2610993EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2610BD0F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = swift_unknownObjectRetain();
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

      v18 = *(v4 + 64 + 8 * v10);
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

    *v3 = v6;
  }

  return result;
}

uint64_t sub_26109954C@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_260FA3F5C((a1 + 8), (a2 + 8));
  *a2 = v3;
  return result;
}

_OWORD *sub_26109957C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + v13);
    sub_260FA3F5C(*(v3 + 56) + 32 * v13, v19);
    LOBYTE(v21) = v14;
    result = sub_260FA6A84(v19, (&v21 + 8));
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19[0] = v21;
      v19[1] = v22;
      v20 = v16;
      v18(v19);
      return sub_260FA9980(v19, &unk_27FE66700, &unk_2610CE580);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2610996C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_2610997AC;

  return sub_26109A910(a4, a5, a6, a7, a8, v17, v18, v19 & 1);
}

uint64_t sub_2610997AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_2610998BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, char a6)
{
  LOBYTE(v6) = a6;
  v9 = -1 << *(a1 + 32);
  v10 = ~v9;
  v11 = *(a1 + 64);
  v12 = -v9;
  v52 = a1;
  v53 = a1 + 64;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v54 = v10;
  v55 = 0;
  v56 = v13 & v11;
  v57 = a2;
  v58 = a3;

  sub_26109957C(v49);
  if (!v51)
  {
    goto LABEL_31;
  }

  v14 = v49[0];
  sub_260FA6A84(&v50, v48);
  v15 = *a5;
  result = sub_260FA60F8(v14);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22 = v17;
  if (*(v15 + 24) < v21)
  {
    sub_2610975E8(v21, a4 & 1);
    v23 = *a5;
    result = sub_260FA60F8(v14);
    if ((v22 & 1) == (v24 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_2610BD444();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v29 = result;
    sub_261098F48();
    result = v29;
    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_10:
  if (v22)
  {
LABEL_11:
    v25 = *a5;
    v26 = 32 * result;
    sub_260FA3F5C(*(*a5 + 56) + 32 * result, v46);
    if (v6)
    {
      v27 = v48;
    }

    else
    {
      v27 = v46;
    }

    sub_260FA3F5C(v27, v47);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    v28 = *(v25 + 56);
    __swift_destroy_boxed_opaque_existential_0Tm((v28 + v26));
    sub_260FA6A84(v47, (v28 + v26));
LABEL_18:
    sub_26109957C(v49);
    if (v51)
    {
      if (v6)
      {
        v6 = v48;
      }

      else
      {
        v6 = v46;
      }

      v22 = 1;
      do
      {
        v14 = v49[0];
        sub_260FA6A84(&v50, v48);
        v36 = *a5;
        result = sub_260FA60F8(v14);
        v38 = *(v36 + 16);
        v39 = (v37 & 1) == 0;
        v20 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v20)
        {
          goto LABEL_32;
        }

        a4 = v37;
        if (*(v36 + 24) < v40)
        {
          sub_2610975E8(v40, 1);
          v41 = *a5;
          result = sub_260FA60F8(v14);
          if ((a4 & 1) != (v42 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v33 = *a5;
          v34 = 32 * result;
          sub_260FA3F5C(*(*a5 + 56) + 32 * result, v46);
          sub_260FA3F5C(v6, v47);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          v35 = *(v33 + 56);
          __swift_destroy_boxed_opaque_existential_0Tm((v35 + v34));
          sub_260FA6A84(v47, (v35 + v34));
        }

        else
        {
          v43 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v43[6] + result) = v14;
          result = sub_260FA6A84(v48, (v43[7] + 32 * result));
          v44 = v43[2];
          v20 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v20)
          {
            goto LABEL_33;
          }

          v43[2] = v45;
        }

        sub_26109957C(v49);
      }

      while (v51);
    }

LABEL_31:
    sub_26103B514();
  }

LABEL_16:
  v30 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v30[6] + result) = v14;
  result = sub_260FA6A84(v48, (v30[7] + 32 * result));
  v31 = v30[2];
  v20 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v20)
  {
    v30[2] = v32;
    goto LABEL_18;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_261099C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65000, &qword_2610BEE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261099C88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260FB6DB4;

  return sub_26109481C(a1, v1);
}

void sub_261099D24()
{
  v13 = *(v0 + 16);
  v2 = *(v0 + 40);
  v10 = *(v0 + 32);
  v11 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_260FBF860;

  JUMPOUT(0x2610996C4);
}

uint64_t sub_261099E2C(uint64_t a1, uint64_t *a2, void (*a3)(void *__return_ptr, unsigned __int8 *), uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v42 = a5;
  if (v10)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(*(v6 + 48) + (v14 | (v12 << 6)));
        v49 = v15;
        a3(v48, &v49);
        if (*(a5 + 16))
        {
          v16 = sub_260FA60F8(v15);
          if (v17)
          {
            break;
          }
        }

        v30 = *a2;
        v31 = sub_260FA60B4(v48);
        if (v32)
        {
          v33 = v31;
          v34 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = *a2;
          v45 = *a2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261098DA4();
            v36 = v45;
          }

          sub_260FA9764(*(v36 + 48) + 40 * v33);
          sub_260FA6A84((*(v36 + 56) + 32 * v33), v46);
          sub_2610983D8(v33, v36);
          *a2 = v36;
        }

        else
        {
          memset(v46, 0, sizeof(v46));
        }

        sub_260FA9764(v48);
        sub_260FA9980(v46, &qword_27FE63830, &qword_2610BE8E0);
        a5 = v42;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v18 = v6;
      sub_260FA3F5C(*(a5 + 56) + 32 * v16, v47);
      sub_260FA6A84(v47, v46);
      v19 = *a2;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a2;
      v23 = sub_260FA60B4(v48);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((v20 & 1) == 0)
        {
          sub_261098DA4();
        }
      }

      else
      {
        sub_261097330(v26, v20);
        v28 = sub_260FA60B4(v48);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_33;
        }

        v23 = v28;
      }

      v6 = v18;
      if (v27)
      {
        v37 = (v21[7] + 32 * v23);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        sub_260FA6A84(v46, v37);
      }

      else
      {
        v21[(v23 >> 6) + 8] |= 1 << v23;
        sub_260FA9708(v48, v21[6] + 40 * v23);
        sub_260FA6A84(v46, (v21[7] + 32 * v23));
        v38 = v21[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_32;
        }

        v21[2] = v40;
      }

      sub_260FA9764(v48);
      *a2 = v21;
      a5 = v42;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

uint64_t sub_26109A154(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_26109A174, 0, 0);
}

uint64_t sub_26109A174()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[5] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASDeviceInfoExchanger handlePASDeviceInfo", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_26109A2C8;
  v6 = v0[3];
  v7 = v0[4];

  return sub_261095478(v6);
}

uint64_t sub_26109A2C8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26109A610, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_26109A434;
    v5 = v3[4];

    return sub_261093E9C();
  }
}

uint64_t sub_26109A434(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26109A790;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_26109A55C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26109A55C()
{
  v8 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v7 = sub_260FA8BCC(MEMORY[0x277D84F90]);

  sub_261099E2C(v3, &v7, sub_261095BA4, 0, v1);
  swift_bridgeObjectRelease_n();
  v4 = v7;
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26109A610()
{
  v15 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASDeviceInfoExchanger failed to handlePASDeviceInfo\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_26109A790()
{
  v15 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASDeviceInfoExchanger failed to handlePASDeviceInfo\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_26109A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 57) = a8;
  *(v8 + 136) = a6;
  *(v8 + 144) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = sub_2610BD074();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v12 = sub_2610BD084();
  *(v8 + 184) = v12;
  v13 = *(v12 - 8);
  *(v8 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26109AA48, 0, 0);
}

uint64_t sub_26109AA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[12];
  if (v5 < 0)
  {
    __break(1u);
    return MEMORY[0x2822008C8](a1, a2, a3, a4);
  }

  else if (v5)
  {
    v4[26] = 0;
    v4[27] = 0;
    sub_2610BCCD4();
    v14 = (v4[13] + *v4[13]);
    v6 = *(v4[13] + 4);
    v7 = swift_task_alloc();
    v4[28] = v7;
    *v7 = v4;
    v7[1] = sub_26109AF6C;
    v8 = v4[14];

    return v14(v4 + 10);
  }

  else
  {
    sub_26109BD44();
    swift_allocError();
    swift_willThrow();
    v10 = v4[25];
    v12 = v4[21];
    v11 = v4[22];

    v13 = v4[1];

    return v13();
  }
}

uint64_t sub_26109AF6C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_26109B110;
  }

  else
  {
    v3 = sub_26109B080;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26109B080()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);

  v4 = *(v0 + 80);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_26109B110()
{
  v44 = v0;
  v1 = *(v0 + 232);
  *(v0 + 240) = v1;

  v2 = v1;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = v1;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD54();

  if (os_log_type_enabled(v5, v6))
  {
    v41 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43 = v8;
    *v7 = 136446466;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = sub_2610BD4A4();
    v14 = sub_260FA5970(v12, v13, &v43);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2050;
    *(v7 + 14) = v41;
    _os_log_impl(&dword_260F97000, v5, v6, "Retry task received error: %{public}s, retryCount: %{public}ld)", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v15 = *(v0 + 128);
  if (((*(v0 + 120))(v1) & 1) == 0)
  {
    swift_willThrow();

LABEL_14:
    v33 = *(v0 + 200);
    v35 = *(v0 + 168);
    v34 = *(v0 + 176);

    v36 = *(v0 + 8);

    return v36();
  }

  if (*(v0 + 57))
  {

    v16 = *(v0 + 216) + 1;
    if (v16 != *(v0 + 96))
    {
      *(v0 + 208) = *(v0 + 240);
      *(v0 + 216) = v16;
      sub_2610BCCD4();
      v42 = (*(v0 + 104) + **(v0 + 104));
      v37 = *(*(v0 + 104) + 4);
      v38 = swift_task_alloc();
      *(v0 + 224) = v38;
      *v38 = v0;
      v38[1] = sub_26109AF6C;
      v39 = *(v0 + 112);

      return v42(v0 + 80);
    }

    swift_willThrow();
    v32 = *(v0 + 240);
    goto LABEL_14;
  }

  v17 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v21 = *(v0 + 160);
  v20 = *(v0 + 168);
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  v24 = *(v0 + 136);
  sub_2610BD474();
  *(v0 + 64) = v24;
  *(v0 + 72) = v22;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v25 = sub_26109BCFC(&qword_27FE66720, MEMORY[0x277D85928]);
  sub_2610BD454();
  sub_26109BCFC(&qword_27FE66728, MEMORY[0x277D858F8]);
  sub_2610BD094();
  v26 = *(v21 + 8);
  *(v0 + 248) = v26;
  *(v0 + 256) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v20, v23);
  v27 = *(MEMORY[0x277D85A58] + 4);
  v28 = swift_task_alloc();
  *(v0 + 264) = v28;
  *v28 = v0;
  v28[1] = sub_26109B5E8;
  v29 = *(v0 + 200);
  v31 = *(v0 + 176);
  v30 = *(v0 + 184);

  return MEMORY[0x2822008C8](v31, v0 + 40, v30, v25);
}

uint64_t sub_26109B5E8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v15 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    (*(v2 + 248))(*(v2 + 176), *(v2 + 152));
    v5 = sub_26109BC50;
  }

  else
  {
    v7 = *(v2 + 248);
    v6 = *(v2 + 256);
    v8 = *(v2 + 240);
    v10 = *(v2 + 192);
    v9 = *(v2 + 200);
    v12 = *(v2 + 176);
    v11 = *(v2 + 184);
    v13 = *(v2 + 152);

    v7(v12, v13);
    (*(v10 + 8))(v9, v11);
    v5 = sub_26109B760;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26109B760()
{
  v48 = v0;
  v1 = *(v0 + 216) + 1;
  if (v1 == *(v0 + 96))
  {
LABEL_2:
    v2 = *(v0 + 240);
    swift_willThrow();
    v3 = *(v0 + 240);
LABEL_3:
    v4 = *(v0 + 200);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 272);
    v10 = 0x27FE63000uLL;
    while (1)
    {
      *(v0 + 208) = *(v0 + 240);
      *(v0 + 216) = v1;
      sub_2610BCCD4();
      if (!v9)
      {
        break;
      }

      v11 = v9;
      *(v0 + 240) = v9;

      v12 = v9;
      if (*(v10 + 2056) != -1)
      {
        swift_once();
      }

      v13 = sub_2610BC7B4();
      __swift_project_value_buffer(v13, qword_27FE65900);
      v14 = v9;
      v15 = sub_2610BC794();
      v16 = sub_2610BCD54();

      if (os_log_type_enabled(v15, v16))
      {
        v45 = *(v0 + 216);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v47 = v18;
        *v17 = 136446466;
        swift_getErrorValue();
        v20 = *(v0 + 16);
        v19 = *(v0 + 24);
        v21 = *(v0 + 32);
        v22 = sub_2610BD4A4();
        v24 = v10;
        v25 = sub_260FA5970(v22, v23, &v47);

        *(v17 + 4) = v25;
        v10 = v24;
        *(v17 + 12) = 2050;
        *(v17 + 14) = v45;
        _os_log_impl(&dword_260F97000, v15, v16, "Retry task received error: %{public}s, retryCount: %{public}ld)", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x2666F8720](v18, -1, -1);
        MEMORY[0x2666F8720](v17, -1, -1);
      }

      v26 = *(v0 + 128);
      if (((*(v0 + 120))(v11) & 1) == 0)
      {
        swift_willThrow();

        goto LABEL_3;
      }

      if ((*(v0 + 57) & 1) == 0)
      {
        v30 = *(v0 + 200);
        v32 = *(v0 + 176);
        v31 = *(v0 + 184);
        v34 = *(v0 + 160);
        v33 = *(v0 + 168);
        v35 = *(v0 + 144);
        v36 = *(v0 + 152);
        v37 = *(v0 + 136);
        sub_2610BD474();
        *(v0 + 64) = v37;
        *(v0 + 72) = v35;
        *(v0 + 48) = 0;
        *(v0 + 40) = 0;
        *(v0 + 56) = 1;
        v38 = sub_26109BCFC(&qword_27FE66720, MEMORY[0x277D85928]);
        sub_2610BD454();
        sub_26109BCFC(&qword_27FE66728, MEMORY[0x277D858F8]);
        sub_2610BD094();
        v39 = *(v34 + 8);
        *(v0 + 248) = v39;
        *(v0 + 256) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v39(v33, v36);
        v40 = *(MEMORY[0x277D85A58] + 4);
        v41 = swift_task_alloc();
        *(v0 + 264) = v41;
        *v41 = v0;
        v41[1] = sub_26109B5E8;
        v42 = *(v0 + 200);
        v44 = *(v0 + 176);
        v43 = *(v0 + 184);

        return MEMORY[0x2822008C8](v44, v0 + 40, v43, v38);
      }

      v9 = 0;
      v1 = *(v0 + 216) + 1;
      if (v1 == *(v0 + 96))
      {
        goto LABEL_2;
      }
    }

    v46 = (*(v0 + 104) + **(v0 + 104));
    v27 = *(*(v0 + 104) + 4);
    v28 = swift_task_alloc();
    *(v0 + 224) = v28;
    *v28 = v0;
    v28[1] = sub_26109AF6C;
    v29 = *(v0 + 112);

    return v46(v0 + 80);
  }
}

uint64_t sub_26109BC50()
{
  v1 = v0[30];
  (*(v0[24] + 8))(v0[25], v0[23]);

  v2 = v0[34];
  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26109BCFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26109BD44()
{
  result = qword_27FE66730;
  if (!qword_27FE66730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66730);
  }

  return result;
}

uint64_t sub_26109BD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261093BB4(a1, a2, a3, v3);
}

unint64_t sub_26109BE5C(void *a1)
{
  a1[1] = sub_26109BE94();
  a1[2] = sub_26109BEE8();
  result = sub_26109BF3C();
  a1[3] = result;
  return result;
}

unint64_t sub_26109BE94()
{
  result = qword_27FE66768;
  if (!qword_27FE66768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66768);
  }

  return result;
}

unint64_t sub_26109BEE8()
{
  result = qword_27FE66770;
  if (!qword_27FE66770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66770);
  }

  return result;
}

unint64_t sub_26109BF3C()
{
  result = qword_27FE66778;
  if (!qword_27FE66778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66778);
  }

  return result;
}

unint64_t sub_26109BF94()
{
  result = qword_27FE66780;
  if (!qword_27FE66780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66780);
  }

  return result;
}

uint64_t sub_26109BFF0()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_26109C074()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_26109C0D0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_26109C154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x636E614372657375, 0xED000064656C6C65);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v4;
}

uint64_t sub_26109C248()
{
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x636E614372657375, 0xED000064656C6C65);
  return v1;
}

uint64_t sub_26109C2B4(uint64_t a1)
{
  v2 = sub_26109CF1C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26109C2F0(uint64_t a1)
{
  v2 = sub_26109CF1C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26109C32C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_26109C350, 0, 0);
}

uint64_t sub_26109C350()
{
  v1 = *(v0 + 48);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_26109C478;

  return v8(v2, v3);
}

uint64_t sub_26109C478(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  *(v4 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26109C5AC, 0, 0);
}

uint64_t sub_26109C5AC()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = (*(v0 + 32))();
    *(v0 + 72) = v4;
    [v4 setAuthenticationType_];
    [v4 setAppProvidedContext_];
    v5 = [v1 aa_altDSID];
    [v4 setAltDSID_];

    [v4 setNeedsNewChildAccount_];
    [v4 _setProxyingForApp_];
    v6 = v3[10];
    v7 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v6);
    v8 = *(v7 + 8);
    v9 = v4;
    v15 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *v11 = v0;
    v11[1] = sub_26109C7F8;

    return v15(v4, v6, v7);
  }

  else
  {
    sub_26109CE2C();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_26109C7F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_26109C994;
  }

  else
  {

    *(v4 + 96) = a1;
    v7 = sub_26109C928;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26109C928()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 96);

  return v2(v3);
}

uint64_t sub_26109C994()
{
  v38 = v0;
  v1 = *(v0 + 88);

  v2 = sub_2610BC4E4();
  v3 = [v2 code];

  if (v3 == -7003)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 88);
    v5 = sub_2610BC7B4();
    __swift_project_value_buffer(v5, qword_27FE65900);
    v6 = v4;
    v7 = sub_2610BC794();
    v8 = sub_2610BCD84();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 88);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37[0] = v11;
      *v10 = 136446210;
      *(v0 + 24) = v9;
      v12 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v13 = sub_2610BCA34();
      v15 = sub_260FA5970(v13, v14, v37);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepAccountCreation user cancelled: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x2666F8720](v11, -1, -1);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v16 = *(v0 + 88);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    sub_26109CE80();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 88);
    v20 = sub_2610BC7B4();
    __swift_project_value_buffer(v20, qword_27FE65900);
    v21 = v19;
    v22 = sub_2610BC794();
    v23 = sub_2610BCD64();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 88);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136446210;
      *(v0 + 16) = v24;
      v27 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v28 = sub_2610BCA34();
      v30 = sub_260FA5970(v28, v29, v37);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_260F97000, v22, v23, "PASFlowStepAccountCreation failed: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x2666F8720](v26, -1, -1);
      MEMORY[0x2666F8720](v25, -1, -1);
    }

    v31 = *(v0 + 88);
    v32 = *(v0 + 64);
    v33 = *(v0 + 72);
    swift_willThrow();

    v34 = *(v0 + 88);
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_26109CD20()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_26109CD84(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FB6F34;

  return sub_26109C32C(a1, a2);
}

unint64_t sub_26109CE2C()
{
  result = qword_27FE66788;
  if (!qword_27FE66788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66788);
  }

  return result;
}

unint64_t sub_26109CE80()
{
  result = qword_27FE66790;
  if (!qword_27FE66790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66790);
  }

  return result;
}

unint64_t sub_26109CEE4(void *a1)
{
  a1[1] = sub_26109CF1C();
  a1[2] = sub_26109CF70();
  result = sub_26109CFC4();
  a1[3] = result;
  return result;
}

unint64_t sub_26109CF1C()
{
  result = qword_27FE66798;
  if (!qword_27FE66798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66798);
  }

  return result;
}

unint64_t sub_26109CF70()
{
  result = qword_27FE667A0;
  if (!qword_27FE667A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE667A0);
  }

  return result;
}

unint64_t sub_26109CFC4()
{
  result = qword_27FE667A8;
  if (!qword_27FE667A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE667A8);
  }

  return result;
}

unint64_t sub_26109D01C()
{
  result = qword_27FE667B0;
  if (!qword_27FE667B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE667B0);
  }

  return result;
}

unint64_t sub_26109D074(void *a1)
{
  v1 = 0xD00000000000002FLL;
  if (a1 != 1)
  {
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD000000000000031, 0x80000002610D28C0);
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE641D0, &qword_2610C0510);
    v4 = sub_2610BCA34();
    MEMORY[0x2666F7380](v4);

    return 0;
  }

  return v1;
}

unint64_t PASFlowStepProxiedTermsError.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0xD000000000000023;
    if (v1 != 1)
    {
      v2 = 0xD00000000000002CLL;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000023;
    }
  }

  else
  {
    sub_2610BCF84();

    v4 = sub_2610BD304();
    MEMORY[0x2666F7380](v4);

    return 0xD00000000000002BLL;
  }
}

uint64_t sub_26109D24C()
{
  if (*(v0 + 8) == 1)
  {
    return qword_2610CEDB8[*v0];
  }

  else
  {
    return 2201;
  }
}

uint64_t sub_26109D290(uint64_t a1)
{
  v2 = sub_26109FA34();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26109D2CC(uint64_t a1)
{
  v2 = sub_26109FA34();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26109D31C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__anisetteProvisioningController);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA0E88();
    v4 = *(v1 + 16);
    *(v1 + 16) = v2;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26109D3E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__sourceAppleIDExchanger);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9F58C();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_26109D4C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__analyticsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_26109D5FC()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics);
  }

  else
  {
    v3 = v0;
    sub_26109D4C0(v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = (*(v5 + 8))(&type metadata for PASFlowStepProxiedTerms.AnalyticsEvent, &off_28738B108, v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v6 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t PASFlowStepProxiedTerms.presentTerms(with:)(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x2822009F8](sub_26109D6E4, 0, 0);
}

uint64_t sub_26109D6E4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[18] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepProxiedTerms presentTerms(with:)", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[16];
  v6 = v0[17];

  sub_260FA99E0(v5, (v0 + 2));
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler;
  swift_beginAccess();
  sub_260FC3844((v0 + 2), v6 + v7, &qword_27FE667C8, &qword_2610CEA68);
  swift_endAccess();
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_26109D884;
  v9 = v0[17];

  return sub_26109E1C4();
}

uint64_t sub_26109D884(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_26109DF08;
  }

  else
  {
    v5 = sub_26109D998;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_26109D998()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v0[22] = sub_26109D31C();
  if (qword_27FE637F0 != -1)
  {
    swift_once();
  }

  v4 = v0[17];
  v5 = *(v3 + 8);
  swift_retain_n();
  v10 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_26109DB68;
  v8 = v0[20];
  v9 = v0[17];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_26109DB68()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 136);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_26109DCA0, 0, 0);
}

uint64_t sub_26109DCA0()
{
  v1 = *(v0 + 136);
  *(v0 + 192) = sub_26109D5FC();
  *(v0 + 80) = &type metadata for PASFlowStepProxiedTerms.AnalyticsEvent;
  *(v0 + 88) = &off_28738B108;
  *(v0 + 56) = 0;
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_26109DD64;

  return sub_261048744(v0 + 56, 0, 0);
}

void sub_26109DD64()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 192);

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));

    MEMORY[0x2822009F8](sub_26109DEA8, 0, 0);
  }
}

uint64_t sub_26109DEA8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26109DF08()
{
  v22 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v0[15] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "Failed to load terms error: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v13 = v0[21];
  v14 = v0[17] + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result;
  v15 = *v14;
  *v14 = v13;
  v16 = *(v14 + 8);
  *(v14 + 8) = 1;
  v17 = v13;
  sub_261007204(v15, v16);
  sub_2610BCC74();
  v0[26] = sub_2610BCC64();
  v19 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26109E0F4, v19, v18);
}

uint64_t sub_26109E0F4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26109E164, 0, 0);
}

uint64_t sub_26109E164()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26109E1E4()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepProxiedTerms fetchProxiedDevice", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = sub_26109D3E8();
  v8 = v7;
  v0[3] = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[4] = v12;
  *v12 = v0;
  v12[1] = sub_26109E3CC;

  return v14(ObjectType, v8);
}

uint64_t sub_26109E3CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_26109E570;
  }

  else
  {
    v8 = *(v4 + 24);
    swift_unknownObjectRelease();
    *(v4 + 48) = a1;
    v7 = sub_26109E4FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26109E4FC()
{
  [*(v0 + 48) setLinkType_];
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_26109E570()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_26109E5D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return sub_26109E66C(a1);
}

uint64_t sub_26109E66C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26109E68C, 0, 0);
}

uint64_t sub_26109E68C()
{
  v1 = v0[8] + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result;
  v2 = *v1;
  *v1 = v0[7];
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  sub_261007204(v2, v3);
  sub_2610BCC74();

  v0[9] = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26109E74C, v5, v4);
}

uint64_t sub_26109E74C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_26109E7B8, 0, 0);
}

uint64_t sub_26109E7B8()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = sub_26109D5FC();
  *(v0 + 40) = &type metadata for PASFlowStepProxiedTerms.AnalyticsEvent;
  *(v0 + 48) = &off_28738B108;
  *(v0 + 16) = 1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_26109E880;

  return sub_261048744(v0 + 16, 0, 0);
}

void sub_26109E880()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 80);

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_26109E9BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_26109EA4C();
}

uint64_t sub_26109EA6C()
{
  sub_2610BCC74();
  *(v0 + 64) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26109EB00, v2, v1);
}

uint64_t sub_26109EB00()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_261044FE4();

  return MEMORY[0x2822009F8](sub_26109EB6C, 0, 0);
}

uint64_t sub_26109EB6C()
{
  v1 = *(v0 + 56);
  *(v0 + 72) = sub_26109D5FC();
  *(v0 + 40) = &type metadata for PASFlowStepProxiedTerms.AnalyticsEvent;
  *(v0 + 48) = &off_28738B108;
  *(v0 + 16) = 2;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_26109EC34;

  return sub_261048744(v0 + 16, 0, 0);
}

void sub_26109EC34()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 72);

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t PASFlowStepProxiedTerms.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result + 8);
  if (v2 == 255)
  {
    v0 = 0x80000002610D60A0;
    sub_260FC3450();
    swift_allocError();
    *v4 = 0xD00000000000002FLL;
    *(v4 + 8) = 0x80000002610D60A0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      v5 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = *(v5 + 8);
      sub_260FA99E0(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_account, v19);
      v17 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_proxiedAuthResults);
      sub_261007228(v1, v2);

      PASAuthResults.acceptingTerms(with:)(v1, &v18);
      sub_261007204(v1, v2);

      v8 = v18;
      v9 = type metadata accessor for PASFlowStepSendAuthResults();
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      v12 = swift_allocObject();
      v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65448, &unk_2610C65A0);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v12 + v13) = v14;
      v15 = v12 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result;
      *v15 = 0;
      *(v15 + 8) = -1;
      sub_260FA99E0(v19, v12 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account);
      *(v12 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults) = v8;
      v0 = sub_26104DC44(Strong, v7);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      sub_26109FBC8(&qword_27FE65710, type metadata accessor for PASFlowStepSendAuthResults);
      return v0;
    }

    v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result);
  }

  swift_willThrow();
  sub_261007228(v1, v2);
  return v0;
}

Swift::Void __swiftcall PASFlowStepProxiedTerms.dismissCancelAlert()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepProxiedTerms dismissCancelAlert", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler;
  swift_beginAccess();
  sub_260FA9918(v0 + v10, &v17, &qword_27FE667C8, &qword_2610CEA68);
  if (v18)
  {
    sub_260F98E14(&v17, v19);
    v11 = sub_2610BCC94();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_260FA99E0(v19, &v17);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;
    sub_260F98E14(&v17, (v12 + 5));

    sub_261042434(0, 0, v5, &unk_2610CEAA8, v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    sub_260FA9980(&v17, &qword_27FE667C8, &qword_2610CEA68);
    v13 = sub_2610BC794();
    v14 = sub_2610BCD64();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepProxiedTerms dismissCancelAlert termsHandler is nil", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }
  }
}

uint64_t sub_26109F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_260FBF860;

  return PASFlowStepProxiedTerms.presentTerms(with:)(a5);
}

uint64_t sub_26109F31C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_proxiedAuthResults);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_account));
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__anisetteProvisioningController);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__sourceAppleIDExchanger);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__analyticsProvider);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics);

  sub_261007204(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result + 8));
  return sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler, &qword_27FE667C8, &qword_2610CEA68);
}

uint64_t PASFlowStepProxiedTerms.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_proxiedAuthResults);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_account));
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__anisetteProvisioningController);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__sourceAppleIDExchanger);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms__analyticsProvider);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms____lazy_storage___analytics);

  sub_261007204(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_result + 8));
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepProxiedTerms_termsHandler, &qword_27FE667C8, &qword_2610CEA68);
  return v0;
}

uint64_t PASFlowStepProxiedTerms.__deallocating_deinit()
{
  v0 = PASFlowStepProxiedTerms.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26109F4F4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001CLL;
  v3 = *a1;
  v4 = "edTermsPresented";
  if (v3 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "edTermsPresented";
  }

  else
  {
    v6 = "PASFlowStepProxiedTermsAgree";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "t";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001FLL;
    v4 = "PASFlowStepProxiedTermsAgree";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "t";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_26109F5CC()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26109F668()
{
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_26109F6F0()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26109F788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26109FF88();
  *a2 = result;
  return result;
}

void sub_26109F7B8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001CLL;
  v3 = "edTermsPresented";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000001FLL;
    v3 = "PASFlowStepProxiedTermsAgree";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000020;
    v4 = "t";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_26109F814(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return sub_26109E5D4(a1);
}

uint64_t sub_26109F8AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_26109E9BC();
}

uint64_t sub_26109F93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF860;

  return sub_26109F250(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_26109F9FC(void *a1)
{
  a1[1] = sub_26109FA34();
  a1[2] = sub_26109FA88();
  result = sub_26109FADC();
  a1[3] = result;
  return result;
}

unint64_t sub_26109FA34()
{
  result = qword_27FE66800;
  if (!qword_27FE66800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66800);
  }

  return result;
}

unint64_t sub_26109FA88()
{
  result = qword_27FE66808;
  if (!qword_27FE66808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66808);
  }

  return result;
}

unint64_t sub_26109FADC()
{
  result = qword_27FE66810;
  if (!qword_27FE66810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66810);
  }

  return result;
}

unint64_t sub_26109FB30()
{
  result = qword_27FE66818;
  if (!qword_27FE66818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66818);
  }

  return result;
}

uint64_t sub_26109FB84(uint64_t a1)
{
  result = sub_26109FBC8(&qword_27FE653D0, type metadata accessor for PASFlowStepProxiedTerms);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26109FBC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepProxiedTerms()
{
  result = qword_27FE66820;
  if (!qword_27FE66820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PASTermsHandlerProtocol.loadProxiedTerms(proxiedDevice:anisetteDataProvider:appProvidedContext:acceptAction:declineAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_260FBF860;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PASFlowStepProxiedTermsError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PASFlowStepProxiedTermsError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26109FE34(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26109FE50(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_26109FF34()
{
  result = qword_27FE66838;
  if (!qword_27FE66838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66838);
  }

  return result;
}

uint64_t sub_26109FF88()
{
  v0 = sub_2610BD154();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t PASFlowStepSafetySettings.nextStep()()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  sub_260FA99E0(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_account, v13);
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_authResults);
  v5 = type metadata accessor for PASFlowStepSendSignInResults();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v8 + v9) = v10;
  sub_260FA99E0(v13, v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account);
  *(v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults) = v4;

  v11 = sub_26104E0E4(Strong, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  sub_2610A03A0(&qword_27FE66840, type metadata accessor for PASFlowStepSendSignInResults);
  return v11;
}

void sub_2610A0198()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_account));
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_authResults);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result + 8);

  sub_260FEBBC8(v2, v3);
}

uint64_t PASFlowStepSafetySettings.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_account));
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_authResults);

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result + 8));
  return v0;
}

uint64_t PASFlowStepSafetySettings.__deallocating_deinit()
{
  PASFlowStepSafetySettings.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2610A035C(uint64_t a1)
{
  result = sub_2610A03A0(&unk_27FE66870, type metadata accessor for PASFlowStepSafetySettings);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610A03A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSafetySettings()
{
  result = qword_27FE66848;
  if (!qword_27FE66848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PASPickerSelection.selectedMemberId.getter()
{
  sub_260FDD49C(v0, &v7);
  if (v9 != 3)
  {
    if (v9 == 2)
    {
      v1 = [v7[2] aa_altDSID];
      if (!v1)
      {
LABEL_5:

        v2 = 0;
LABEL_8:
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        return v2;
      }
    }

    else
    {
      if (v9 != 1)
      {
        sub_260FDD4F8(&v7);
        return 0;
      }

      v1 = [v7[2] altDSID];
      if (!v1)
      {
        goto LABEL_5;
      }
    }

    v3 = v1;
    v2 = sub_2610BCA04();

    goto LABEL_8;
  }

  v4 = v7;

  if (*(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID + 8))
  {
    v2 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID);
  }

  else
  {
    v2 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID);
    v5 = *(v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID + 8);
  }

  return v2;
}

uint64_t PASPickerSelection.description.getter()
{
  sub_260FDD49C(v0, &v2);
  if (v4 <= 1u)
  {
    if (v4)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v3);
      return 0x6E65646E65706564;
    }

    else
    {
      sub_260FDD4F8(&v2);
      return 7824750;
    }
  }

  else if (v4 == 2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    return 0x6C616E6F73726570;
  }

  else if (v4 == 3)
  {
    sub_260FDD4F8(&v2);
    return 0xD000000000000016;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup18PASPickerSelectionO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
}

uint64_t sub_2610A071C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 49))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 48);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2610A0758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2610A07A8(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_2610A07FC(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE658A0, &unk_2610C7BB0);
  if (a3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF410;
    strcpy((inited + 32), "member_count");
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 80) = &protocol witness table for Int;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = a1;
    *(inited + 88) = 0x6F697463656C6573;
    *(inited + 96) = 0xE90000000000006ELL;
    if (a2)
    {
      v7 = (*(a2 + 16) >> 59) & 0x18;
      v8 = *&aDependenperson[v7];
      v9 = *&aDependenperson[v7 + 24];
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = v8;
    }

    else
    {
      *(inited + 128) = MEMORY[0x277D837D0];
      *(inited + 136) = &protocol witness table for String;
      *(inited + 104) = 7824750;
      v9 = 0xE300000000000000;
    }

    *(inited + 112) = v9;
    v12 = sub_260FA8F34(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BA0, &qword_2610BED60);
    swift_arrayDestroy();
  }

  else
  {
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_2610BF400;
    *(v10 + 32) = 0x635F7265626D656DLL;
    v11 = v10 + 32;
    *(v10 + 72) = MEMORY[0x277D83B88];
    *(v10 + 80) = &protocol witness table for Int;
    *(v10 + 40) = 0xEC000000746E756FLL;
    *(v10 + 48) = a1;
    v12 = sub_260FA8F34(v10);
    swift_setDeallocating();
    sub_2610A09F8(v11);
  }

  return v12;
}

uint64_t sub_2610A09F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BA0, &qword_2610BED60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2610A0A60(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t PASFlowStepAIDASignIn.__allocating_init(delegate:account:authResults:serviceOwnersManager:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a3[3];
  v12 = a3[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  v14 = sub_2610A5DC0(a1, a2, v13, a4, a5, v5, v11, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v14;
}

ProximityAppleIDSetup::PASCDPEnrollmentStatus_optional __swiftcall PASCDPEnrollmentStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2610A0BD4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_2610A0BF8, 0, 0);
}

uint64_t sub_2610A0BF8()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_260FF73A4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610A0A60;
  v0[13] = &block_descriptor_8;
  v0[14] = v3;
  [v1 signInToAllServicesInBackgroundUsingContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2610A0DEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v3)
  {
    v5 = "PASFlowStepProxiedTermsDisagree";
  }

  else
  {
    v5 = "unableToInitCDPContext";
  }

  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = "unableToInitCDPContext";
  }

  else
  {
    v7 = "PASFlowStepProxiedTermsDisagree";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2610BD384();
  }

  return v9 & 1;
}

uint64_t sub_2610A0E94()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610A0F10()
{
  *v0;
  sub_2610BCA54();
}

uint64_t sub_2610A0F78()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610A0FF0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

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

void sub_2610A1050(unint64_t *a1@<X8>)
{
  v2 = "unableToInitCDPContext";
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = "PASFlowStepProxiedTermsDisagree";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_2610A108C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B4188(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_2610A1154(uint64_t a1)
{
  v2 = sub_2610A6474();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610A1190(uint64_t a1)
{
  v2 = sub_2610A6474();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepAIDASignIn.authResults.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_2610A124C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__messageSessionProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63CB0, &unk_2610BFDB0);
  swift_endAccess();
}

uint64_t sub_2610A1388@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__accountManager);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63B10, &qword_2610BED30);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63B10, &qword_2610BED30);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9F080(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63B10, &qword_2610BED30);
  swift_endAccess();
}

uint64_t PASFlowStepAIDASignIn.init(delegate:account:authResults:serviceOwnersManager:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a3[3];
  v12 = a3[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_2610A5C48(a1, a2, v16, a4, a5, v5, v11, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v18;
}

uint64_t PASFlowStepAIDASignIn.isPersonalSignIn.getter()
{
  sub_260FA99E0(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  v1 = swift_dynamicCast();
  if (v1)
  {
  }

  return v1 ^ 1u;
}

uint64_t PASFlowStepAIDASignIn.performSignIn(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_2610A1704;

  return sub_2610A1C58();
}

uint64_t sub_2610A1704(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_2610A1804, 0, 0);
}

uint64_t sub_2610A1804()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 32) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
    v2 = *v1;
    *v1 = 1;
    v3 = *(v1 + 8);
    *(v1 + 8) = 0;
    sub_260FEBBC8(v2, v3);
    sub_2610BCC74();
    *(v0 + 64) = sub_2610BCC64();
    v5 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_2610A1BF0, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_2610A1938;
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);

    return sub_2610A20A8(v9, v7);
  }
}

uint64_t sub_2610A1938(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_2610A1B2C;
  }

  else
  {
    *(v4 + 73) = a1 & 1;
    v7 = sub_2610A1A64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2610A1A64()
{
  v1 = *(v0 + 56) != 0;
  v2 = *(v0 + 32) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
  v3 = *v2;
  *v2 = *(v0 + 73);
  v4 = *(v2 + 8);
  *(v2 + 8) = v1;
  sub_260FEBBC8(v3, v4);
  sub_2610BCC74();
  *(v0 + 64) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610A1BF0, v6, v5);
}

uint64_t sub_2610A1B2C()
{
  v1 = v0[7];
  v2 = v0[4] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
  v3 = *v2;
  *v2 = v1;
  v4 = *(v2 + 8);
  *(v2 + 8) = v1 != 0;
  sub_260FEBBC8(v3, v4);
  sub_2610BCC74();
  v0[8] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610A1BF0, v6, v5);
}

uint64_t sub_2610A1BF0()
{
  v1 = v0[8];
  v2 = v0[4];

  sub_2610439BC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2610A1C78()
{
  v18 = v0;
  v1 = v0[9] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = v0[9];
    v4 = *(v1 + 8);
    v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
    swift_beginAccess();
    v17 = *(v3 + v5);

    sub_2610A2880(&v17);

    ObjectType = swift_getObjectType();
    v0[8] = *(v3 + v5);
    v7 = *(v4 + 16);

    v16 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_2610A1F24;

    return (v16)(v0 + 8, ObjectType, v4);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);
    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v12, v13, "PASFlowStepAIDASignIn delegate is nil in askForSignIn", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v15 = v0[1];

    return v15(1);
  }
}

uint64_t sub_2610A1F24(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = a1;

  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_2610A2044, 0, 0);
}

uint64_t sub_2610A2044()
{
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2610A20A8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2610A20CC, 0, 0);
}

uint64_t sub_2610A20CC()
{
  v1 = v0[7];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD74();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepAIDASignIn delegate is nil in performSignIn", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }
  }

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2610A2258;
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];

  return sub_2610A2B38(v9, v7);
}

uint64_t sub_2610A2258(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 80) = v8;
    *v8 = v5;
    v8[1] = sub_2610A23D0;
    v9 = *(v3 + 56);

    return sub_2610A3B68();
  }
}

uint64_t sub_2610A23D0()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2610A27B0;
  }

  else
  {
    v3 = sub_2610A24E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610A24E4()
{
  v1 = (v0[7] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_2610A261C;
  v7 = v0[9];

  return v9(v7, v2, v3);
}

uint64_t sub_2610A261C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_2610A2818;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v7 = sub_2610A2748;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2610A2748()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_2610A27B0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_2610A2818()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(0);
}

void sub_2610A2880(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_260FDFE64(*a1);
  if (qword_27FE637F0 != -1)
  {
    swift_once();
  }

  v4 = qword_27FE64830;
  type metadata accessor for AKAppleIDAuthenticationAppProvidedContext(0);
  v24 = v5;
  v23[0] = v4;
  sub_260FA6A84(v23, v22);
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_260FA6B3C(v22, 0xD000000000000012, 0x80000002610D2F20, isUniquelyReferenced_nonNull_native);
  v8 = sub_260FDF608(v3);

  v23[0] = sub_260FA8A9C(MEMORY[0x277D84F90]);

  sub_260FE4DD0(v9, v23, sub_260FE618C, 0, v8);
  swift_bridgeObjectRelease_n();
  v10 = sub_260FE03F8(v23[0]);

  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = v10;

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v13 = sub_2610BC7B4();
  __swift_project_value_buffer(v13, qword_27FE65900);

  v14 = sub_2610BC794();
  v15 = sub_2610BCD54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v22[0] = v17;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    v21 = *(v2 + v11);

    v18 = sub_2610BCA34();
    v20 = sub_260FA5970(v18, v19, v22);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_260F97000, v14, v15, "PASFlowStepAIDASignIn addAppProvidedContext to AuthResults:%{mask.hash}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x2666F8720](v17, -1, -1);
    MEMORY[0x2666F8720](v16, -1, -1);
  }
}

uint64_t sub_2610A2B38(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  return MEMORY[0x2822009F8](sub_2610A2B5C, 0, 0);
}

uint64_t sub_2610A2B5C()
{
  v1 = v0[39];
  v2 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
  v0[40] = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
  swift_beginAccess();
  v3 = *(v1 + v2);

  sub_260FDF8D0(v4);

  v5 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
  v6 = sub_2610BC8F4();

  v7 = [v5 initWithAuthenticationResults_];
  v0[41] = v7;

  if (v7)
  {
    v8 = v0[39];
    sub_2610A124C((v0 + 7));
    v9 = v0[10];
    v10 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
    v11 = *(v10 + 16);
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[42] = v13;
    *v13 = v0;
    v13[1] = sub_2610A2D98;

    return (v17)(v0 + 2, v9, v10);
  }

  else
  {
    sub_2610A63D8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2610A2D98()
{
  v2 = *(*v1 + 336);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2610A3500;
  }

  else
  {
    v3 = sub_2610A2EB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610A2EB0()
{
  v43 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  sub_260FA99E0(*(v0 + 312) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 280);

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD54();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_19;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepAIDASignIn this is not personal sigin, so skip on setting sharing channel", v5, 2u);
    v6 = v5;
LABEL_18:
    MEMORY[0x2666F8720](v6, -1, -1);
LABEL_19:

    goto LABEL_21;
  }

  sub_260FA9918(v0 + 16, v0 + 136, &unk_27FE668E0, &qword_2610C8230);
  if (*(v0 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64008, &unk_2610BF9A0);
    sub_260FA9AB4(0, &qword_27FE64010, 0x277D02880);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 288);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 328);
      v9 = sub_2610BC7B4();
      __swift_project_value_buffer(v9, qword_27FE65900);
      v10 = v7;
      v11 = v8;
      v12 = sub_2610BC794();
      v13 = sub_2610BCD54();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 328);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543874;
        *(v15 + 4) = v10;
        *(v15 + 12) = 2160;
        *(v15 + 14) = 1752392040;
        *(v15 + 22) = 2112;
        *(v15 + 24) = v14;
        *v16 = v10;
        v16[1] = v14;
        v17 = v10;
        v18 = v14;
        _os_log_impl(&dword_260F97000, v12, v13, "PASFlowStepAIDASignIn setting sharing channel (%{public}@ on cdp context (%{mask.hash}@)", v15, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF0, &unk_2610BFDA0);
        swift_arrayDestroy();
        MEMORY[0x2666F8720](v16, -1, -1);
        MEMORY[0x2666F8720](v15, -1, -1);
      }

      v19 = *(v0 + 328);

      [v19 setSharingChannel_];
      goto LABEL_21;
    }
  }

  else
  {
    sub_260FA9980(v0 + 136, &unk_27FE668E0, &qword_2610C8230);
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 328);
  v21 = sub_2610BC7B4();
  __swift_project_value_buffer(v21, qword_27FE65900);
  sub_260FA9918(v0 + 16, v0 + 176, &unk_27FE668E0, &qword_2610C8230);
  v22 = v20;
  v3 = sub_2610BC794();
  v23 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v23))
  {
    v24 = *(v0 + 328);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v25 = 136446722;
    sub_260FA9918(v0 + 176, v0 + 216, &unk_27FE668E0, &qword_2610C8230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668E0, &qword_2610C8230);
    v27 = sub_2610BCA34();
    v29 = v28;
    sub_260FA9980(v0 + 176, &unk_27FE668E0, &qword_2610C8230);
    v30 = sub_260FA5970(v27, v29, &v42);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2160;
    *(v25 + 14) = 1752392040;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v24;
    *v26 = v24;
    v31 = v24;
    _os_log_impl(&dword_260F97000, v3, v23, "PASFlowStepAIDASignIn unable to cast/unwrap message session (%{public}s for cdp context (%{mask.hash}@)", v25, 0x20u);
    sub_260FA9980(v26, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x2666F8720](v41, -1, -1);
    v6 = v25;
    goto LABEL_18;
  }

  sub_260FA9980(v0 + 176, &unk_27FE668E0, &qword_2610C8230);
LABEL_21:
  v33 = *(v0 + 320);
  v32 = *(v0 + 328);
  v34 = *(v0 + 304);
  v35 = *(v0 + 312);
  v36 = (*(v0 + 296))(v32);
  [v36 setShouldForceOperation_];
  [v36 setOperationUIPermissions_];
  v37 = *(v35 + v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v38 = sub_2610BC8F4();

  [v36 setAuthenticationResults_];

  sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);
  v39 = *(v0 + 8);

  return v39(v36);
}

uint64_t sub_2610A3500()
{
  v43 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  sub_260FA99E0(*(v0 + 312) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 280);

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD54();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_19;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepAIDASignIn this is not personal sigin, so skip on setting sharing channel", v5, 2u);
    v6 = v5;
LABEL_18:
    MEMORY[0x2666F8720](v6, -1, -1);
LABEL_19:

    goto LABEL_21;
  }

  sub_260FA9918(v0 + 16, v0 + 136, &unk_27FE668E0, &qword_2610C8230);
  if (*(v0 + 160))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64008, &unk_2610BF9A0);
    sub_260FA9AB4(0, &qword_27FE64010, 0x277D02880);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 288);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 328);
      v9 = sub_2610BC7B4();
      __swift_project_value_buffer(v9, qword_27FE65900);
      v10 = v7;
      v11 = v8;
      v12 = sub_2610BC794();
      v13 = sub_2610BCD54();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 328);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543874;
        *(v15 + 4) = v10;
        *(v15 + 12) = 2160;
        *(v15 + 14) = 1752392040;
        *(v15 + 22) = 2112;
        *(v15 + 24) = v14;
        *v16 = v10;
        v16[1] = v14;
        v17 = v10;
        v18 = v14;
        _os_log_impl(&dword_260F97000, v12, v13, "PASFlowStepAIDASignIn setting sharing channel (%{public}@ on cdp context (%{mask.hash}@)", v15, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF0, &unk_2610BFDA0);
        swift_arrayDestroy();
        MEMORY[0x2666F8720](v16, -1, -1);
        MEMORY[0x2666F8720](v15, -1, -1);
      }

      v19 = *(v0 + 328);

      [v19 setSharingChannel_];
      goto LABEL_21;
    }
  }

  else
  {
    sub_260FA9980(v0 + 136, &unk_27FE668E0, &qword_2610C8230);
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 328);
  v21 = sub_2610BC7B4();
  __swift_project_value_buffer(v21, qword_27FE65900);
  sub_260FA9918(v0 + 16, v0 + 176, &unk_27FE668E0, &qword_2610C8230);
  v22 = v20;
  v3 = sub_2610BC794();
  v23 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v23))
  {
    v24 = *(v0 + 328);
    v25 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v25 = 136446722;
    sub_260FA9918(v0 + 176, v0 + 216, &unk_27FE668E0, &qword_2610C8230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668E0, &qword_2610C8230);
    v26 = sub_2610BCA34();
    v28 = v27;
    sub_260FA9980(v0 + 176, &unk_27FE668E0, &qword_2610C8230);
    v29 = sub_260FA5970(v26, v28, &v42);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2160;
    *(v25 + 14) = 1752392040;
    *(v25 + 22) = 2112;
    *(v25 + 24) = v24;
    *v40 = v24;
    v30 = v24;
    _os_log_impl(&dword_260F97000, v3, v23, "PASFlowStepAIDASignIn unable to cast/unwrap message session (%{public}s for cdp context (%{mask.hash}@)", v25, 0x20u);
    sub_260FA9980(v40, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x2666F8720](v41, -1, -1);
    v6 = v25;
    goto LABEL_18;
  }

  sub_260FA9980(v0 + 176, &unk_27FE668E0, &qword_2610C8230);
LABEL_21:
  v32 = *(v0 + 320);
  v31 = *(v0 + 328);
  v33 = *(v0 + 304);
  v34 = *(v0 + 312);
  v35 = (*(v0 + 296))(v31);
  [v35 setShouldForceOperation_];
  [v35 setOperationUIPermissions_];
  v36 = *(v34 + v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v37 = sub_2610BC8F4();

  [v35 setAuthenticationResults_];

  sub_260FA9980(v0 + 16, &unk_27FE668E0, &qword_2610C8230);
  v38 = *(v0 + 8);

  return v38(v35);
}

uint64_t sub_2610A3B88()
{
  sub_260FA99E0(v0[18] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  if (swift_dynamicCast())
  {
    v1 = v0[17];

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepAIDASignIn.startCDPServer this is not personal sigin. Don't start CDP server", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }

    v6 = v0[1];

    return v6(0);
  }

  else
  {
    v8 = v0[18];
    sub_2610A124C((v0 + 12));
    v9 = v0[15];
    v10 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
    v11 = *(v10 + 16);
    v14 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_2610A3E0C;

    return (v14)(v0 + 7, v9, v10);
  }
}

uint64_t sub_2610A3E0C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_2610A41A0;
  }

  else
  {
    v3 = sub_2610A3F20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610A3F20()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[21] = v2;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_2610A4018;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 24), 11, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_2610A4018()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_2610A4208;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_2610A4134;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2610A4134()
{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2610A41A0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[20];
  v2 = v0[1];

  return v2(0);
}

uint64_t sub_2610A4208()
{
  v1 = v0[21];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v0[23];
  v3 = v0[1];

  return v3(0);
}

uint64_t PASFlowStepAIDASignIn.nextStep()()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result + 8);
  if (v2 == 255)
  {
    v13 = 0x80000002610D6260;
    sub_260FC3450();
    swift_allocError();
    *v14 = 0xD000000000000023;
    *(v14 + 8) = 0x80000002610D6260;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    swift_willThrow();
  }

  else
  {
    v3 = v0;
    if (v2)
    {
      v4 = *v1;
      sub_260FEBBEC(*v1, *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result + 8));
      sub_260FEBC04(v4, 1);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v5 = sub_2610BC7B4();
      __swift_project_value_buffer(v5, qword_27FE65900);
      sub_260FEBC04(v4, 1);
      v6 = sub_2610BC794();
      v7 = sub_2610BCD64();
      sub_260FEBBC8(v4, v2);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v46 = v9;
        *v8 = 136446210;
        v49 = v4;
        sub_260FEBC04(v4, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
        v10 = sub_2610BCA34();
        v12 = sub_260FA5970(v10, v11, &v46);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepAIDASignIn failed with error:\n%{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x2666F8720](v9, -1, -1);
        MEMORY[0x2666F8720](v8, -1, -1);
      }

      sub_260FEBBEC(v4, v2);
      v13 = sub_2610A5A28(v4);
      sub_260FEBBC8(v4, v2);
      if (v13)
      {
        swift_willThrow();
      }

      else
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_2610BCF84();
        MEMORY[0x2666F7380](0xD000000000000029, 0x80000002610D6290);
        v49 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
        sub_2610BD0A4();
        v13 = v46;
        v43 = v47;
        sub_260FC3450();
        swift_allocError();
        *v44 = v13;
        *(v44 + 8) = v43;
        *(v44 + 16) = &unk_2610CF0D0;
        *(v44 + 24) = v3;
        *(v44 + 32) = 3;
        swift_willThrow();

        sub_260FEBBC8(v4, v2);
      }

      sub_260FEBBC8(v4, v2);
    }

    else
    {
      v15 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account;
      v16 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account + 24);
      v17 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account + 32);
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account), v16);
      (*(v17 + 24))(v16, v17);
      if (v18 && (sub_2610A1388(&v46), __swift_project_boxed_opaque_existential_1(&v46, v48), v19 = _s21ProximityAppleIDSetup24AKAccountManagerProtocolPAAE17fetchUserAgeRange7altDSIDSo06AKUseriJ0VSS_tF_0(), , __swift_destroy_boxed_opaque_existential_0Tm(&v46), (v19 - 1) <= 1))
      {
        v20 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v22 = *(v20 + 8);
        sub_260FA99E0(v15, &v46);
        v23 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
        swift_beginAccess();
        v24 = *(v3 + v23);
        v25 = type metadata accessor for PASFlowStepSafetySettings();
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        v28 = swift_allocObject();
        v29 = v28 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_result;
        *v29 = 0;
        *(v29 + 8) = -1;
        sub_260FA99E0(&v46, v28 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_account);
        *(v28 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASFlowStepSafetySettings_authResults) = v24;

        v13 = sub_26104E0E4(Strong, v22);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v46);
        v30 = &unk_27FE66870;
        v31 = type metadata accessor for PASFlowStepSafetySettings;
      }

      else
      {
        v32 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        v34 = *(v32 + 8);
        sub_260FA99E0(v15, &v46);
        v35 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults;
        swift_beginAccess();
        v36 = *(v3 + v35);
        v37 = type metadata accessor for PASFlowStepSendSignInResults();
        v38 = *(v37 + 48);
        v39 = *(v37 + 52);
        v40 = swift_allocObject();
        v41 = OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults__messageSessionProvider;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
        v42 = swift_allocObject();
        *(v42 + 16) = 0u;
        *(v42 + 32) = 0u;
        *(v42 + 48) = 0;
        *(v40 + v41) = v42;
        sub_260FA99E0(&v46, v40 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_account);
        *(v40 + OBJC_IVAR____TtC21ProximityAppleIDSetup28PASFlowStepSendSignInResults_authResults) = v36;

        v13 = sub_26104E0E4(v33, v34);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(&v46);
        v30 = &qword_27FE66840;
        v31 = type metadata accessor for PASFlowStepSendSignInResults;
      }

      sub_2610A60CC(v30, v31);
    }
  }

  return v13;
}

uint64_t sub_2610A4890(uint64_t a1)
{
  v1[5] = a1;
  sub_2610BCC74();
  v1[6] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2610A4928, v3, v2);
}

uint64_t sub_2610A4928()
{
  v1 = v0[5] + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = sub_2610A60CC(&unk_27FE64F80, type metadata accessor for PASFlowStepAIDASignIn);
    v6 = *(v3 + 8);
    v7 = *(v6 + 24);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_2610A4AFC;
    v10 = v0[5];

    return v14(v10, v5, ObjectType, v6);
  }

  else
  {
    v12 = v0[6];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2610A4AFC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_260FF59C0, v5, v4);
}

void sub_2610A4C70()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager));
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__messageSessionProvider);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__accountManager);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result);
  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result + 8);

  sub_260FEBBC8(v4, v5);
}

uint64_t PASFlowStepAIDASignIn.deinit()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_cancellables);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase_timer);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase__baseStepAnalyticsProvider);

  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup15PASFlowStepBase____lazy_storage___baseStepAnalytics);

  sub_260F99170(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASTargetFlowStepBase_delegate);
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager));
  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__messageSessionProvider);

  v9 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__accountManager);

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result + 8));
  return v0;
}

uint64_t PASFlowStepAIDASignIn.__deallocating_deinit()
{
  PASFlowStepAIDASignIn.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2610A50E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 225) = a5;
  *(v5 + 176) = a4;
  return MEMORY[0x2822009F8](sub_2610A5104, 0, 0);
}

uint64_t sub_2610A5104()
{
  v1 = v0[22];
  sub_2610A124C((v0 + 11));
  v2 = v0[14];
  v3 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_2610A523C;

  return (v8)(v0 + 16, v2, v3);
}

uint64_t sub_2610A523C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_2610A566C;
  }

  else
  {
    v3 = sub_2610A5350;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610A5350()
{
  v1 = *(v0 + 225);
  v2 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 128), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 6;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 64) = sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
  *(inited + 40) = v4;
  v5 = sub_260FA8D08(inited);
  *(v0 + 200) = v5;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &qword_27FE63C20, &unk_2610BEDF0);
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_2610A54E8;
  v7 = MEMORY[0x277D839B0];

  return sub_260FAECF0(v0 + 224, 6, 0, 0, 1, v5, v2, v7);
}

uint64_t sub_2610A54E8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_2610A5840;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_2610A5604;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2610A5604()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2610A566C()
{
  v15 = v0;
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[21] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAIDASignIn failed to send cdpEnrollmentStatus\n%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_2610A5840()
{
  v16 = v0;
  v1 = v0[25];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v2 = v0[27];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = v2;
  v5 = sub_2610BC794();
  v6 = sub_2610BCD64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v0[21] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepAIDASignIn failed to send cdpEnrollmentStatus\n%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2610A5A28(uint64_t result)
{
  if (result)
  {
    v15 = result;
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    sub_260FA9AB4(0, &qword_27FE668D0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      if ([v14 shouldDisplayToUser])
      {
        if (qword_27FE63808 != -1)
        {
          swift_once();
        }

        v2 = sub_2610BC7B4();
        __swift_project_value_buffer(v2, qword_27FE65900);
        v3 = v14;
        v4 = sub_2610BC794();
        v5 = sub_2610BCD84();

        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v15 = v7;
          *v6 = 136446210;
          v8 = v3;
          v9 = [v8 description];
          v10 = sub_2610BCA04();
          v12 = v11;

          v13 = sub_260FA5970(v10, v12, &v15);

          *(v6 + 4) = v13;
          _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAIDASignIn received error: %{public}s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v7);
          MEMORY[0x2666F8720](v7, -1, -1);
          MEMORY[0x2666F8720](v6, -1, -1);
        }

        else
        {
        }

        return 1;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2610A5C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[3] = a7;
  v24[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a3, a7);
  v16 = *a4;
  v17 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v18 = swift_allocObject();
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  *(a6 + v17) = v18;
  v19 = OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn__accountManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65020, &unk_2610CF360);
  v20 = swift_allocObject();
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0;
  *(a6 + v19) = v20;
  v21 = a6 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_result;
  *v21 = 0;
  *(v21 + 8) = -1;
  sub_260FA99E0(v24, a6 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_account);
  *(a6 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_authResults) = v16;
  sub_260FA99E0(a5, a6 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASFlowStepAIDASignIn_serviceOwnersManager);
  v22 = sub_26104E0E4(a1, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return v22;
}

uint64_t sub_2610A5DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a3, a7);
  return sub_2610A5C48(a1, a2, v18, a4, a5, v22, a7, a8);
}

uint64_t sub_2610A5EDC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_2610A4890(v0);
}

uint64_t sub_2610A5F6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_2610A50E0(a1, v4, v5, v6, v7);
}

unint64_t sub_2610A6034()
{
  result = qword_27FE668A0;
  if (!qword_27FE668A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668A0);
  }

  return result;
}

uint64_t sub_2610A6088(uint64_t a1)
{
  result = sub_2610A60CC(&unk_27FE64F80, type metadata accessor for PASFlowStepAIDASignIn);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2610A60CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepAIDASignIn()
{
  result = qword_27FE668A8;
  if (!qword_27FE668A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PASAIDAServiceOwnersManagerProtocol.signInToAllServicesInBackground(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBD298;

  return v11(a1, a2, a3);
}

unint64_t sub_2610A6358()
{
  result = qword_27FE668B8;
  if (!qword_27FE668B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668B8);
  }

  return result;
}

unint64_t sub_2610A63D8()
{
  result = qword_27FE668D8;
  if (!qword_27FE668D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668D8);
  }

  return result;
}

unint64_t sub_2610A643C(void *a1)
{
  a1[1] = sub_2610A6474();
  a1[2] = sub_2610A64C8();
  result = sub_2610A651C();
  a1[3] = result;
  return result;
}

unint64_t sub_2610A6474()
{
  result = qword_27FE668F0;
  if (!qword_27FE668F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668F0);
  }

  return result;
}

unint64_t sub_2610A64C8()
{
  result = qword_27FE668F8;
  if (!qword_27FE668F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE668F8);
  }

  return result;
}

unint64_t sub_2610A651C()
{
  result = qword_27FE66900;
  if (!qword_27FE66900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66900);
  }

  return result;
}

unint64_t sub_2610A6574()
{
  result = qword_27FE66908;
  if (!qword_27FE66908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66908);
  }

  return result;
}

uint64_t sub_2610A65EC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2610A6680()
{
  v1 = v0[2];
  if (*(v1 + 112) == 1)
  {
    v2 = *(MEMORY[0x277D857E8] + 4);
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_2610A6760;

    return MEMORY[0x282200480](1);
  }

  else
  {
    *(v1 + 112) = 1;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2610A6760()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_2610A6D4C, v6, 0);
}

uint64_t sub_2610A68E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PASLock();
  v3 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  a1[3] = v2;
  a1[4] = &off_28738B450;
  *a1 = v3;
  return result;
}

uint64_t dispatch thunk of PASLocking.try()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBCD00;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASLocking.lock()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASLocking.unlock()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return v9(a1, a2);
}

uint64_t sub_2610A6D50()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610A6E7C()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_2610A6FC8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260FE1AB8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D90, &qword_2610C4548);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26106EFEC;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2610A70E4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBD298;

  return v9(a1, a2);
}

uint64_t sub_2610A7210()
{
  *v0;
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_2610A732C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2610AA210();
  *a2 = result;
  return result;
}

void sub_2610A735C(uint64_t *a1@<X8>)
{
  v2 = 0x7465677261546F6ELL;
  v3 = *v1;
  v4 = 0xEE00656369766544;
  v5 = 0x656372756F536F6ELL;
  v6 = 0xEF746E756F636341;
  v7 = 0xD000000000000014;
  v8 = 0x80000002610D1C10;
  if (v3 != 4)
  {
    v7 = 0xD000000000000019;
    v8 = 0x80000002610D1C30;
  }

  if (v3 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xEF64726F77737361;
  v10 = 0x5064657661536F6ELL;
  if (v3 != 1)
  {
    v10 = 0x7465677261546F6ELL;
    v9 = 0xEF746E756F636341;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v5;
    v11 = v6;
  }

  *a1 = v2;
  a1[1] = v11;
}