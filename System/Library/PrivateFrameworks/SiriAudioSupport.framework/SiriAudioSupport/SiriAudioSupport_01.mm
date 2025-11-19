BOOL sub_2662B8600(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_2662B8664()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2664DF668();
}

uint64_t sub_2662B86B0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2664DF658();
}

uint64_t sub_2662B8708()
{
  sub_2664E0E68();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2664DF658();
  return sub_2664E0EB8();
}

uint64_t sub_2662B87B8()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0E98();
  return sub_2664E0EB8();
}

uint64_t sub_2662B8800()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0E98();
  return sub_2664E0EB8();
}

uint64_t sub_2662B8844()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

uint64_t sub_2662B888C()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

uint64_t sub_2662B8920(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2664DF648();
}

uint64_t sub_2662B89D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662B8AE8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2662B8B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
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

uint64_t sub_2662B8BA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2662B8C00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2662B8D00(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2662B8D6C()
{
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v0 = qword_280F8F808;
  qword_280F90290 = type metadata accessor for MultiUserConnectionProvider();
  unk_280F90298 = &protocol witness table for MultiUserConnectionProvider;
  qword_280F90278 = v0;
  qword_280F902A0 = sub_2662B9148;
  unk_280F902A8 = 0;
}

uint64_t static InstalledAppProvider.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280F90270 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_2662B8E78(&qword_280F90278, v2);
}

uint64_t sub_2662B8EB0()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000014, 0x80000002664E35C0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280F902C0 = v10;
  return result;
}

uint64_t sub_2662B9048()
{
  if (!static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF528();
    sub_2664DF518();
  }

  sub_2664DF4E8();

  sub_2664DEAE8();
  sub_2664DEAD8();
}

uint64_t sub_2662B90BC()
{
  v0 = sub_2662C3A68(&unk_2877E1200);
  result = swift_arrayDestroy();
  qword_280F91C90 = v0;
  return result;
}

uint64_t sub_2662B9108()
{
  v0 = sub_2662C3A68(&unk_2877E1240);
  result = sub_2662C1834(&unk_2877E1260);
  qword_280F91C88 = v0;
  return result;
}

uint64_t sub_2662B9188(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280F902D0 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v8 = off_280F902D8;
  v14[0] = 0x6968747972657665;
  v14[1] = 0xEA0000000000676ELL;
  if (a1)
  {
    v9 = 0x405E000000000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(*v8 + 160);

  v11(v14, sub_2662BCC08, 0, v9, 0, a5, v10);
}

uint64_t sub_2662B92B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34D0;
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072480, &qword_2664E3690);
  *(inited + 32) = sub_2664E0318();
  *(inited + 40) = v1;
  sub_2662C1744(0, &unk_280F8F588, 0x277CD4030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072488, &qword_2664E3698);
  *(inited + 48) = sub_2664E0318();
  *(inited + 56) = v2;
  sub_2662C1744(0, &qword_280F8F580, 0x277CD42B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072490, &qword_2664E36A0);
  *(inited + 64) = sub_2664E0318();
  *(inited + 72) = v3;
  sub_2662C1744(0, &qword_280F8F5F8, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072498, &qword_2664E36A8);
  *(inited + 80) = sub_2664E0318();
  *(inited + 88) = v4;
  v5 = sub_2662C3A68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_280F91CA8 = v5;
  return result;
}

uint64_t sub_2662B9448()
{
  v0 = sub_2662C3A68(&unk_2877E1270);
  result = swift_arrayDestroy();
  qword_280F91CA0 = v0;
  return result;
}

uint64_t sub_2662B9494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072480, &qword_2664E3690);
  *(inited + 32) = sub_2664E0318();
  *(inited + 40) = v1;
  sub_2662C1744(0, &qword_280F8F5F8, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072498, &qword_2664E36A8);
  *(inited + 48) = sub_2664E0318();
  *(inited + 56) = v2;
  v3 = sub_2662C3A68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_280F91C98 = v3;
  return result;
}

uint64_t sub_2662B95A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724A0, &qword_2664E36B0);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385498(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000002664F37E0;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000019, 0x80000002664F37E0, 1, v3);
  *(v0 + 24) = result;
  off_280F902D8 = v0;
  return result;
}

uint64_t sub_2662B96B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a3();
  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v6;

  return v5(v8);
}

uint64_t sub_2662B9720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v47 = a5;
  v48 = a4;
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a1 + 16);
  swift_beginAccess();
  v22 = *(a2 + 16);

  v23 = _s16SiriAudioSupport12InstalledAppV13additiveMerge4left5rightSayACGAG_AGtFZ_0(v21, v22);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v20, v24, v16);
  (*(v10 + 16))(v15, a3, v9);

  v25 = sub_2664DFE18();
  v26 = v20;
  v27 = v9;
  v28 = sub_2664E06C8();

  if (os_log_type_enabled(v25, v28))
  {
    v29 = swift_slowAlloc();
    v43 = v26;
    v30 = v29;
    v31 = swift_slowAlloc();
    v42 = v17;
    v32 = v31;
    v49 = v31;
    *v30 = 136315394;
    v33 = sub_2662B9B7C(v23);
    v44 = v23;
    v35 = sub_2662A320C(v33, v34, &v49);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2048;
    v36 = v45;
    sub_2664DE428();
    sub_2664DE388();
    v38 = v37;
    v39 = *(v10 + 8);
    v39(v36, v27);
    v39(v15, v27);
    v23 = v44;
    *(v30 + 14) = v38;
    _os_log_impl(&dword_26629C000, v25, v28, "InstalledAppProvider#apps found %s bundles in %fms", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);

    (*(v42 + 8))(v43, v16);
  }

  else
  {

    (*(v10 + 8))(v15, v27);
    (*(v17 + 8))(v26, v16);
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v47;
  *(v40 + 24) = v46;

  sub_2662BFA30(v23, v48, sub_2662C13F4, v40);
}

uint64_t sub_2662B9B7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2662FCF24(0, v1, 0);
    v3 = v18;
    v4 = (a1 + 48);
    do
    {
      v17 = v3;
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v4[1];
      v9 = *(v4 + 16);
      v11 = v4[4];
      v10 = v4[5];

      sub_2664E0B28();
      MEMORY[0x2667833B0](0xD000000000000021, 0x80000002664F36A0);
      MEMORY[0x2667833B0](v5, v6);
      MEMORY[0x2667833B0](0xD000000000000012, 0x80000002664F36D0);
      v3 = v17;
      sub_2664E0C28();
      MEMORY[0x2667833B0](32032, 0xE200000000000000);

      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2662FCF24((v12 > 1), v13 + 1, 1);
        v3 = v17;
      }

      v4 += 8;
      *(v3 + 16) = v13 + 1;
      v14 = v3 + 16 * v13;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0xE000000000000000;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600);
  v15 = sub_2664E0288();

  return v15;
}

uint64_t sub_2662B9DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = sub_2662B9B7C(a1);
    v17 = sub_2662A320C(v15, v16, &v23);
    v21 = v4;
    v18 = a2;
    v19 = v17;

    *(v13 + 4) = v19;
    a2 = v18;
    _os_log_impl(&dword_26629C000, v10, v11, "InstalledAppProvider#apps non-hidden apps: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    (*(v22 + 8))(v8, v21);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_2662BA058(_OWORD *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v31 = a3;
  v27 = sub_2664E0038();
  v30 = *(v27 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2664E00B8();
  v28 = *(v29 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v35[0] = *a1;
  v35[1] = v14;
  v15 = a1[3];
  v35[2] = a1[2];
  v35[3] = v15;
  dispatch_group_enter(a2);
  v16 = v35[0];
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a5;
  v18 = a1[1];
  *(v17 + 32) = *a1;
  *(v17 + 48) = v18;
  v19 = a1[3];
  *(v17 + 64) = a1[2];
  *(v17 + 80) = v19;
  sub_2662A5550(v26, v34);
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  sub_2662A8618(v34, v20 + 32);
  *(v20 + 72) = sub_2662C1470;
  *(v20 + 80) = v17;
  aBlock[4] = sub_2662C147C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_65;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  sub_2662C0AE0(v35, v32);

  sub_2664E0068();
  v32[0] = MEMORY[0x277D84F90];
  sub_2662C16C0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  v23 = v27;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v13, v10, v21);
  _Block_release(v21);

  (*(v30 + 8))(v10, v23);
  (*(v28 + 8))(v13, v29);
}

void sub_2662BA41C(uint64_t a1, NSObject *a2, uint64_t a3, _OWORD *a4)
{
  v66 = a2;
  v67 = a4;
  v63 = a3;
  v5 = sub_2664DEAF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = sub_2664DEB18();
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DFE38();
  v64 = *(v17 - 8);
  v65 = v17;
  v18 = *(v64 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v61 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072450, &qword_2664E3610);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v60 - v25);
  sub_2662C0C3C(a1, &v60 - v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v42 = v62;
    (*(v62 + 32))(v16, v26, v13);
    sub_2664DEB08();
    (*(v6 + 104))(v10, *MEMORY[0x277D5BDF8], v5);
    sub_2662C16C0(&qword_280F914C0, MEMORY[0x277D5BE10]);
    v43 = sub_2664E0298();
    v44 = *(v6 + 8);
    v44(v10, v5);
    v44(v12, v5);
    if (v43)
    {
      v45 = v67;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v46 = v65;
      v47 = __swift_project_value_buffer(v65, qword_280F914F0);
      swift_beginAccess();
      v48 = v64;
      v49 = v61;
      (*(v64 + 16))(v61, v47, v46);
      sub_2662C0AE0(v45, v68);
      v50 = sub_2664DFE18();
      v51 = sub_2664E06D8();
      sub_2662C0B3C(v45);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = v16;
        v54 = v48;
        v55 = swift_slowAlloc();
        v68[0] = v55;
        *v52 = 136315138;
        *(v52 + 4) = sub_2662A320C(*v45, *(v45 + 1), v68);
        _os_log_impl(&dword_26629C000, v50, v51, "InstalledAppProvider#lsRecordApps app: %s is hidden. Excluding from installed apps", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x266784AD0](v55, -1, -1);
        MEMORY[0x266784AD0](v52, -1, -1);

        (*(v54 + 8))(v61, v46);
        (*(v42 + 8))(v53, v13);
        goto LABEL_16;
      }

      (*(v48 + 8))(v49, v46);
    }

    else
    {
      v58 = v63;
      swift_beginAccess();
      v59 = *(v58 + 16);

      sub_2662BD754(v67);
    }

    (*(v42 + 8))(v16, v13);
    goto LABEL_16;
  }

  v27 = *v26;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = v65;
  v29 = __swift_project_value_buffer(v65, qword_280F914F0);
  swift_beginAccess();
  v30 = v64;
  (*(v64 + 16))(v22, v29, v28);
  v31 = v27;
  v32 = sub_2664DFE18();
  v33 = sub_2664E06D8();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v67;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v69 = v37;
    *v36 = 136315138;
    swift_getErrorValue();
    v38 = sub_2664E0DE8();
    v40 = v30;
    v41 = sub_2662A320C(v38, v39, &v69);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_26629C000, v32, v33, "Error getting protected app status: %s. Including app anyway", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v36, -1, -1);

    (*(v40 + 8))(v22, v28);
    v35 = v67;
  }

  else
  {

    (*(v30 + 8))(v22, v28);
  }

  v56 = v63;
  swift_beginAccess();
  v57 = *(v56 + 16);

  sub_2662BD754(v35);

LABEL_16:
  dispatch_group_leave(v66);
}

uint64_t sub_2662BAB48(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  v6 = sub_2662BDA94();

  a1(v6);
}

uint64_t sub_2662BABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  sub_2662A5550(a3, v20);
  v15 = swift_allocObject();
  sub_2662A8618(v20, v15 + 16);
  *(v15 + 56) = a1;
  *(v15 + 64) = a2;
  v16 = sub_2664E05C8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2664E3648;
  v17[5] = v15;
  v17[6] = sub_2662C148C;
  v17[7] = v14;

  sub_26633E760(0, 0, v13, &unk_2664E3650, v17);
}

uint64_t sub_2662BAD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_2664DFE38();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2662BAE38, 0, 0);
}

uint64_t sub_2662BAE38()
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "InstalledAppProvider#protectedAppStatus getting protected app client status", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = *(MEMORY[0x277D5BFC0] + 4);
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_2662BB008;
  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[5];

  return MEMORY[0x2821BB7C0](v18, v16, v17, v12, v13);
}

uint64_t sub_2662BB008()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t InstalledAppProvider.isAppInstalledAndVisible(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = qword_280071A70;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_2662A5550(&unk_280072410, v19);
  sub_2662A5550(v19, v18);
  v14 = swift_allocObject();
  sub_2662A8618(v18, v14 + 16);
  *(v14 + 56) = a1;
  *(v14 + 64) = a2;
  v15 = sub_2664E05C8();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2664E3560;
  v16[5] = v14;
  v16[6] = sub_2662BD0A0;
  v16[7] = v12;

  sub_26633E760(0, 0, v11, &unk_2664E3570, v16);

  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_2662BB32C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v44 = a2;
  v5 = sub_2664DEAF8();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v35 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072450, &qword_2664E3610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = sub_2664DEB18();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662C0C3C(a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2662A9238(v19, &qword_280072450, &qword_2664E3610);
    return (v44)(0);
  }

  else
  {
    v38 = v20;
    v39 = a3;
    v37 = v21;
    (*(v21 + 32))(v24, v19, v20);
    sub_2664DEB08();
    v26 = *MEMORY[0x277D5BE08];
    v27 = v43;
    v36 = *(v43 + 104);
    v36(v13, v26, v5);
    sub_2662C16C0(&qword_280072458, MEMORY[0x277D5BE10]);
    sub_2664E0468();
    sub_2664E0468();
    v40 = v24;
    if (v47 == v45 && v48 == v46)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_2664E0D88();
    }

    v29 = *(v27 + 8);
    v29(v13, v5);
    v29(v15, v5);

    if (v28)
    {
      v30 = 1;
      v31 = v44;
    }

    else
    {
      v32 = v41;
      sub_2664DEB08();
      v33 = v42;
      v36(v42, *MEMORY[0x277D5BE00], v5);
      sub_2664E0468();
      sub_2664E0468();
      if (v47 == v45 && v48 == v46)
      {
        v30 = 1;
      }

      else
      {
        v30 = sub_2664E0D88();
      }

      v31 = v44;
      v29(v33, v5);
      v29(v32, v5);
    }

    v34 = v40;
    v31(v30 & 1);
    return (*(v37 + 8))(v34, v38);
  }
}

void sub_2662BB7BC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v92 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v92 - v17;
  if (!a1 || a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v19, v8);

    v20 = a2;
    v21 = sub_2664DFE18();
    v22 = sub_2664E06D8();

    if (os_log_type_enabled(v21, v22))
    {
      v100 = v8;
      v23 = v9;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v106[0] = v25;
      *v24 = 136315394;
      swift_beginAccess();
      v26 = *(a3 + 16);

      v27 = sub_2664E01D8();
      v29 = v28;

      v30 = sub_2662A320C(v27, v29, v106);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v31 = sub_2664E0DE8();
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      v104 = v31;
      v105 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v50 = sub_2664E0318();
      v52 = sub_2662A320C(v50, v51, v106);

      *(v24 + 14) = v52;
      _os_log_impl(&dword_26629C000, v21, v22, "InstalledAppProvider#pluginKitApps error enumerating plugins matching query: %s, %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v25, -1, -1);
      MEMORY[0x266784AD0](v24, -1, -1);

      (*(v23 + 8))(v13, v100);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    return;
  }

  v33 = a1;
  v34 = [v33 containingBundle];
  if (!v34)
  {
    goto LABEL_20;
  }

  v35 = v34;
  v36 = [v34 bundleIdentifier];
  if (!v36)
  {

LABEL_20:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v16, v53, v8);
    v54 = v33;
    v55 = sub_2664DFE18();
    v56 = sub_2664E06D8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v54;
      *v58 = a1;
      v59 = v54;
      _os_log_impl(&dword_26629C000, v55, v56, "InstalledAppProvider#pluginKitApps missing containing bundle of plugin: %@", v57, 0xCu);
      sub_2662A9238(v58, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    else
    {
      v59 = v55;
      v55 = v54;
    }

    (*(v9 + 8))(v16, v8);
    return;
  }

  v37 = v9;
  v38 = v36;
  v98 = sub_2664E02C8();
  v100 = v39;

  if (qword_280F90300 != -1)
  {
    swift_once();
  }

  v40 = qword_280F91CA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2664E34F0;
  *(v41 + 32) = v33;
  sub_2662C1744(0, &qword_280F8F5F0, 0x277CC1ED8);
  v99 = v33;

  v42 = sub_2664E0488();

  v43 = INSupportedMediaCategories();

  if (!v43)
  {
    __break(1u);
    return;
  }

  v44 = sub_2664E0608();

  v45 = sub_2664B9554(v44, v40);

  v46 = v100;
  if (*(v45 + 16))
  {
    v47 = *MEMORY[0x277CD3830];
    sub_2662C1744(0, &unk_280F8F570, 0x277CBEA60);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v49 = v99;
    if ([v99 objectForInfoDictionaryKey:v47 ofClass:ObjCClassFromMetadata inScope:0])
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v102 = 0u;
      v103 = 0u;
    }

    v101[0] = v102;
    v101[1] = v103;
    if (!*(&v103 + 1))
    {

      sub_2662A9238(v101, &unk_280074250, &unk_2664E3680);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v60 = v104;
    if (qword_280F90308 != -1)
    {
      swift_once();
    }

    v61 = qword_280F91CA8;

    v62 = sub_2662BDEEC(v60, v61);

    Party16bundleIdentifierSbSS_tFZ_0 = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v63 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v37 + 16))(v18, v63, v8);

    v64 = sub_2664DFE18();
    v65 = sub_2664E06C8();

    v95 = v65;
    v66 = os_log_type_enabled(v64, v65);
    v97 = v62;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v94 = v37;
      v68 = v67;
      v69 = swift_slowAlloc();
      *&v101[0] = v69;
      *v68 = 136315650;
      *(v68 + 4) = sub_2662A320C(v98, v100, v101);
      *(v68 + 12) = 2080;
      v70 = sub_2664E0618();
      v93 = v64;
      v72 = sub_2662A320C(v70, v71, v101);

      *(v68 + 14) = v72;
      *(v68 + 22) = 2080;
      v73 = sub_2664E0618();
      v75 = sub_2662A320C(v73, v74, v101);

      *(v68 + 24) = v75;
      v76 = v93;
      _os_log_impl(&dword_26629C000, v93, v95, "InstalledAppProvider#pluginKitExtensions found bundle: %s, supportedCategories: %s, supportedIntents: %s", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v69, -1, -1);
      v77 = v68;
      v46 = v100;
      MEMORY[0x266784AD0](v77, -1, -1);

      (*(v94 + 8))(v18, v8);
    }

    else
    {

      (*(v37 + 8))(v18, v8);
    }

    v78 = *(v45 + 16);
    v79 = v97;
    if (v78)
    {
      v80 = sub_26640C820(*(v45 + 16), 0);
      v81 = sub_26640C9BC(v101, v80 + 4, v78, v45);
      sub_2662B793C();
      if (v81 == v78)
      {
        goto LABEL_45;
      }

      __break(1u);
    }

    v80 = MEMORY[0x277D84F90];
LABEL_45:
    v82 = *(v79 + 16);
    if (v82)
    {
      v83 = sub_26640C820(*(v79 + 16), 0);
      v84 = sub_26640C9BC(v101, v83 + 4, v82, v79);
      sub_2662B793C();
      if (v84 == v82)
      {
LABEL_49:
        v85 = (Party16bundleIdentifierSbSS_tFZ_0 ^ 1) & 1;
        swift_beginAccess();
        v86 = *(a4 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a4 + 16) = v86;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v86 = sub_2663845E8(0, *(v86 + 2) + 1, 1, v86);
          *(a4 + 16) = v86;
        }

        v89 = *(v86 + 2);
        v88 = *(v86 + 3);
        if (v89 >= v88 >> 1)
        {
          v86 = sub_2663845E8((v88 > 1), v89 + 1, 1, v86);
        }

        *(v86 + 2) = v89 + 1;
        v90 = &v86[64 * v89];
        *(v90 + 4) = v98;
        *(v90 + 5) = v46;
        *(v90 + 6) = v80;
        *(v90 + 7) = v83;
        v90[64] = v85;
        v91 = *(&v104 + 3);
        *(v90 + 65) = v104;
        *(v90 + 17) = v91;
        *(v90 + 9) = 0;
        *(v90 + 10) = 0;
        *(v90 + 11) = MEMORY[0x277D84F90];
        *(a4 + 16) = v86;
        swift_endAccess();

        return;
      }

      __break(1u);
    }

    v83 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }
}

uint64_t sub_2662BC3C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, NSObject *a6, uint64_t a7)
{
  v82 = a5;
  v85 = a4;
  v90 = a2;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v89 = &v76 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v21 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v22 = *(v12 + 2);
    v92 = v12 + 16;
    v93 = v21;
    v91 = v22;
    v22(v20, v21, v11);

    v23 = sub_2664DFE18();
    v24 = sub_2664E06C8();
    v25 = os_log_type_enabled(v23, v24);
    v86 = a7;
    v87 = a6;
    v83 = v16;
    v84 = v11;
    v88 = v12;
    if (!v25)
    {
      break;
    }

    v78 = v24;
    v26 = -1;
    v27 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v96[0] = v77;
    *v27 = 134218242;
    if (a1)
    {
      v26 = *(a1 + 16);
      v11 = a1;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v81 = a3;
    *(v27 + 4) = v26;

    v79 = v27;
    *(v27 + 12) = 2080;
    v30 = *(v11 + 16);
    v80 = a1;

    v94 = v30;
    if (!v30)
    {
      v12 = MEMORY[0x277D84F90];
LABEL_18:

      v35 = MEMORY[0x2667834D0](v12, MEMORY[0x277D837D0]);
      v36 = v20;
      v38 = v37;

      v39 = sub_2662A320C(v35, v38, v96);

      v40 = v79;
      *(v79 + 14) = v39;
      _os_log_impl(&dword_26629C000, v23, v78, "InstalledAppProvider#installedApps computed: %ld apps: %s in the home", v40, 0x16u);
      v41 = v77;
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v40, -1, -1);

      v28 = *(v88 + 1);
      v11 = v84;
      (v28)(v36, v84);
      v16 = v83;
      a3 = v81;
      a1 = v80;
      if (!v80)
      {
        goto LABEL_19;
      }

LABEL_6:
      v29 = sub_266349094(v90, a3, a1);
      goto LABEL_20;
    }

    v16 = 0;
    a3 = (v11 + 40);
    v12 = MEMORY[0x277D84F90];
    a1 = v20;
    a6 = v23;
    while (v16 < *(v11 + 16))
    {
      v31 = *(a3 - 1);
      a7 = *a3;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2663846F4(0, *(v12 + 2) + 1, 1, v12);
      }

      v33 = *(v12 + 2);
      v32 = *(v12 + 3);
      if (v33 >= v32 >> 1)
      {
        v12 = sub_2663846F4((v32 > 1), v33 + 1, 1, v12);
      }

      ++v16;
      *(v12 + 2) = v33 + 1;
      v34 = &v12[16 * v33];
      *(v34 + 4) = v31;
      *(v34 + 5) = a7;
      a3 += 3;
      v20 = a1;
      v23 = a6;
      if (v94 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v28 = *(v12 + 1);
  (v28)(v20, v11);
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_19:
  v29 = MEMORY[0x277D84F90];
LABEL_20:
  v97 = v29;
  v42 = v89;
  v91(v89, v93, v11);

  v43 = sub_2664DFE18();
  v44 = sub_2664E06C8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v96[0] = v46;
    *v45 = 136315394;
    if (a3)
    {
      v47 = v90;
    }

    else
    {
      v47 = 0x3E6C696E3CLL;
    }

    v48 = v28;
    if (a3)
    {
      v49 = a3;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    v50 = sub_2662A320C(v47, v49, v96);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;

    v52 = sub_2662B9B7C(v51);
    v54 = v53;

    v55 = sub_2662A320C(v52, v54, v96);
    v28 = v48;
    v11 = v84;

    *(v45 + 14) = v55;
    _os_log_impl(&dword_26629C000, v43, v44, "InstalledAppProvider#installedApps apps available for user: %s: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);

    v16 = v83;
    v56 = v89;
  }

  else
  {

    v56 = v42;
  }

  (v28)(v56, v11);

  v58 = sub_2662C03AC(v57, v85);

  swift_beginAccess();
  v97 = v58;

  v91(v16, v93, v11);

  v59 = sub_2664DFE18();
  v60 = sub_2664E06C8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = v62;
    *v61 = 136315650;
    if (a3)
    {
      v64 = v90;
    }

    else
    {
      v64 = 0x3E6C696E3CLL;
    }

    v94 = v28;
    v95 = v62;
    if (a3)
    {
      v65 = a3;
    }

    else
    {
      v65 = 0xE500000000000000;
    }

    v66 = sub_2662A320C(v64, v65, &v95);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;

    v68 = sub_2662B9B7C(v67);
    v69 = v16;
    v71 = v70;

    v72 = sub_2662A320C(v68, v71, &v95);

    *(v61 + 14) = v72;
    *(v61 + 22) = 1024;
    *(v61 + 24) = v82 & 1;
    _os_log_impl(&dword_26629C000, v59, v60, "InstalledAppProvider#installedApps user %s has available apps: %s, useCache:%{BOOL}d", v61, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v63, -1, -1);
    MEMORY[0x266784AD0](v61, -1, -1);

    (v94)(v69, v11);
    v73 = v87;
  }

  else
  {

    (v28)(v16, v11);
    v73 = v87;
  }

  (v73)(v74);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2662BCC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2662C0CAC;
  *(v12 + 24) = v11;
  v13 = qword_280F8F800;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280F8F808;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2662C0CE4;
  *(v15 + 24) = v12;
  v16 = qword_280F91508;
  v28[0] = v14;

  v28[1] = v12;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v18 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v5;
  *(v20 + 16) = "installedAppProviderInstalledApps";
  *(v20 + 24) = 33;
  *(v20 + 32) = 2;
  (*(v5 + 32))(v20 + v18, v8, v4);
  v22 = (v20 + v19);
  *v22 = sub_2662C0D0C;
  v22[1] = v15;

  sub_2664E0848();
  sub_2664DFDC8();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2662C0D38;
  *(v23 + 24) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2662C0DE0;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2662C0CAC;
  *(v25 + 24) = v24;
  v26 = qword_280071A70;

  if (v26 != -1)
  {
    swift_once();
  }

  sub_2662C0E68(&unk_280072410, sub_2662C0E1C, v25);

  (*(v21 + 8))(v10, v4);
}

uint64_t sub_2662BD02C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
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

uint64_t sub_2662BD0A8(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2662C1890;

  return sub_2662BAD74(a1, v1 + 16, v4, v5);
}

uint64_t sub_2662BD17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072450, &qword_2664E3610) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2662BD21C, 0, 0);
}

uint64_t sub_2662BD21C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D5C200] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_2664DEB18();
  *v3 = v0;
  v3[1] = sub_2662BD2F0;
  v5 = *(v0 + 48);

  return MEMORY[0x2821BBDF0](v5, &unk_2664E3620, v1, v4);
}

uint64_t sub_2662BD2F0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2662BD408, 0, 0);
}

uint64_t sub_2662BD408()
{
  v1 = *(v0 + 48);
  (*(v0 + 32))(v1);
  sub_2662A9238(v1, &qword_280072450, &qword_2664E3610);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2662BD494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2662C1890;

  return sub_2662BD17C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2662BD568(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662BD660;

  return v7(a1);
}

uint64_t sub_2662BD660()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2662BD754(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  sub_2662C0AE0(a1, v31);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v12 = 136446466;
    *(v12 + 4) = sub_2662A320C(v2[4], v2[5], v30);
    *(v12 + 12) = 2082;
    v13 = a1[1];
    v31[0] = *a1;
    v31[1] = v13;
    v14 = a1[3];
    v31[2] = a1[2];
    v31[3] = v14;
    v15 = sub_2664E0318();
    v17 = sub_2662A320C(v15, v16, v30);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_26629C000, v10, v11, "AtomicArray#append [%{public}s] element: %{public}s. acquiring global lock...", v12, 0x16u);
    v18 = v29;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  else
  {
    sub_2662C0B3C(a1);
  }

  (*(v5 + 8))(v8, v4);
  v19 = v2[3];
  sub_2662A98AC();
  swift_beginAccess();
  v20 = v2[2];
  sub_2662C0AE0(a1, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_2663845E8(0, *(v20 + 2) + 1, 1, v20);
    v2[2] = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_2663845E8((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[64 * v23];
  v25 = *a1;
  v26 = a1[1];
  v27 = a1[3];
  *(v24 + 4) = a1[2];
  *(v24 + 5) = v27;
  *(v24 + 2) = v25;
  *(v24 + 3) = v26;
  v2[2] = v20;
  swift_endAccess();
  return sub_2662BDCD4(v2, "AtomicArray#append [%{public}s] released global lock");
}

uint64_t sub_2662BDA94()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_2662A320C(v1[4], v1[5], v15);
    _os_log_impl(&dword_26629C000, v8, v9, "AtomicArray#getAll [%{public}s]. acquiring global lock...", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266784AD0](v11, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v12 = v1[3];
  sub_2662A98AC();
  swift_beginAccess();
  v13 = v1[2];

  sub_2662BDCD4(v1, "AtomicArray#getAll [%{public}s] released global lock");
  return v13;
}

uint64_t sub_2662BDCD4(void *a1, const char *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);

  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_2662A320C(a1[4], a1[5], &v16);
    _os_log_impl(&dword_26629C000, v11, v12, a2, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2662BDEEC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2662BE08C(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_2662C1710(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x266784AD0](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2662BE08C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_2664E0E68();

          sub_2664E0368();
          v14 = sub_2664E0EB8();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_2664E0D88() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_2664CF388(v26, a2, v25, a4);
}

uint64_t sub_2662BE26C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v8 = *a1;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v8);
}

char *sub_2662BE338()
{
  v0 = sub_2664DE438();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v100 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v113 = &v99 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v99 - v7;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 1);
  v11 = *(v10 + 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v117 = &v99 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v99 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v99 - v19;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v21 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v122 = v10;
    v118 = *(v10 + 2);
    v119 = v10 + 16;
    v118(v20, v21, v9);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v14;
      v25 = v21;
      v26 = v0;
      v27 = v1;
      v28 = v9;
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "InstalledAppProvider#lsRecordApps...", v29, 2u);
      v30 = v29;
      v9 = v28;
      v1 = v27;
      v0 = v26;
      v21 = v25;
      v14 = v24;
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v103 = v14;
    v105 = v1;
    v106 = v0;

    v31 = v122 + 8;
    v32 = *(v122 + 1);
    v32(v20, v9);
    v104 = v8;
    sub_2664DE428();
    v123 = [objc_opt_self() enumeratorWithOptions_];
    v33 = [v123 nextObject];
    v35 = MEMORY[0x277D84F90];
    v114 = v9;
    v122 = v31;
    v120 = v32;
    if (!v33)
    {
      break;
    }

    v121 = 0x80000002664F2EA0;
    v102 = 0x80000002664F37C0;
    *&v34 = 136315650;
    v101 = v34;
    v36 = v113;
    v109 = v21;
    while (2)
    {
      v115 = v35;
      v37 = v117;
      v38 = v9;
      while (1)
      {
        v14 = v33;
        v39 = [v14 bundleIdentifier];
        if (!v39)
        {

          v118(v37, v21, v9);
          v48 = sub_2664DFE18();
          v49 = sub_2664E06D8();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_26629C000, v48, v49, "InstalledAppProvider#lsRecordApps error missing bundle identifier for LSApplicationRecord", v50, 2u);
            v51 = v50;
            v37 = v117;
            MEMORY[0x266784AD0](v51, -1, -1);
          }

          else
          {
          }

          v120(v37, v9);
          goto LABEL_9;
        }

        v40 = v39;
        v0 = sub_2664E02C8();
        v8 = v41;

        if (v0 == 0x6C7070612E6D6F63 && v8 == 0xEF636973754D2E65)
        {
          break;
        }

        if (sub_2664E0D88())
        {
          goto LABEL_28;
        }

        if (v0 == 0xD000000000000012 && v121 == v8)
        {
          v0 = 0xD000000000000012;
LABEL_32:

          if (qword_280F902E0 != -1)
          {
            swift_once();
          }

          v47 = qword_280F91C88;
          goto LABEL_35;
        }

        if (sub_2664E0D88())
        {
          goto LABEL_32;
        }

        if (qword_280F90300 != -1)
        {
          swift_once();
        }

        v44 = qword_280F91CA0;

        v45 = [v14 supportedIntentMediaCategories];
        v46 = sub_2664E04A8();

        v47 = sub_2662BDEEC(v46, v44);

        if (*(v47 + 16))
        {
          if (qword_280F90308 != -1)
          {
            swift_once();
          }

          v83 = qword_280F91CA8;

          v84 = [v14 supportedIntents];

          v85 = sub_2664E04A8();
          v116 = sub_2662BDEEC(v85, v83);

          goto LABEL_38;
        }

        v9 = v38;
LABEL_9:
        v33 = [v123 nextObject];
        if (!v33)
        {
          v35 = v115;
          goto LABEL_68;
        }
      }

      v0 = 0x6C7070612E6D6F63;
LABEL_28:

      if (qword_280F902E8 != -1)
      {
        swift_once();
      }

      v47 = qword_280F91C90;
LABEL_35:
      v52 = qword_280F902F8;

      if (v52 != -1)
      {
        swift_once();
      }

      v116 = qword_280F91C98;

LABEL_38:
      v124 = v0;
      v125 = v8;
      v129 = 0x6C7070612E6D6F63;
      v130 = 0xE900000000000065;
      sub_2662C178C();
      sub_2662C17E0();
      v112 = (sub_2664E0278() & 1) == 0 || (v124 = v0, v125 = v8, v129 = 0xD000000000000013, v130 = v102, (sub_2664E0278() & 1) != 0);
      v53 = v110;
      v54 = v38;
      v118(v110, v21, v38);

      v55 = sub_2664DFE18();
      v56 = sub_2664E06C8();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        LODWORD(v108) = v56;
        v58 = v57;
        v111 = swift_slowAlloc();
        v124 = v111;
        *v58 = v101;
        *(v58 + 4) = sub_2662A320C(v0, v8, &v124);
        *(v58 + 12) = 2080;

        v59 = sub_2664E0618();
        v61 = v60;

        v62 = sub_2662A320C(v59, v61, &v124);

        *(v58 + 14) = v62;
        *(v58 + 22) = 2080;

        v63 = sub_2664E0618();
        v65 = v64;

        v66 = sub_2662A320C(v63, v65, &v124);

        *(v58 + 24) = v66;
        _os_log_impl(&dword_26629C000, v55, v108, "InstalledAppProvider#lsRecordApps found bundle: %s, supportedCategories: %s, supportedIntents: %s", v58, 0x20u);
        v67 = v111;
        swift_arrayDestroy();
        v68 = v67;
        v54 = v114;
        MEMORY[0x266784AD0](v68, -1, -1);
        MEMORY[0x266784AD0](v58, -1, -1);

        v69 = v53;
        v38 = v54;
      }

      else
      {

        v69 = v53;
      }

      v120(v69, v54);
      v9 = *(v47 + 16);
      if (!v9)
      {
        v111 = MEMORY[0x277D84F90];
LABEL_51:
        v73 = v116;
        v74 = *(v116 + 16);
        if (v74)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
          v9 = swift_allocObject();
          v75 = _swift_stdlib_malloc_size(v9);
          v76 = v75 - 32;
          if (v75 < 32)
          {
            v76 = v75 - 17;
          }

          v9[2] = v74;
          v9[3] = 2 * (v76 >> 4);
          v108 = sub_26640C9BC(&v124, v9 + 4, v74, v73);
          v20 = v124;
          v1 = v126;
          v10 = v127;
          v107 = v128;

          sub_2662B793C();
          if (v108 != v74)
          {
            goto LABEL_73;
          }

          v77 = v114;
        }

        else
        {
          v77 = v38;
          v9 = MEMORY[0x277D84F90];
        }

        v35 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_2663845E8(0, *(v35 + 2) + 1, 1, v35);
        }

        v80 = *(v35 + 2);
        v79 = *(v35 + 3);
        if (v80 >= v79 >> 1)
        {
          v35 = sub_2663845E8((v79 > 1), v80 + 1, 1, v35);
        }

        *(v35 + 2) = v80 + 1;
        v81 = &v35[64 * v80];
        *(v81 + 4) = v0;
        *(v81 + 5) = v8;
        *(v81 + 6) = v111;
        *(v81 + 7) = v9;
        v81[64] = v112;
        v82 = *(&v124 + 3);
        *(v81 + 65) = v124;
        *(v81 + 17) = v82;
        *(v81 + 9) = 0;
        *(v81 + 10) = 0;
        *(v81 + 11) = MEMORY[0x277D84F90];

        v33 = [v123 nextObject];
        v36 = v113;
        v9 = v77;
        if (!v33)
        {
          goto LABEL_68;
        }

        continue;
      }

      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
    v70 = swift_allocObject();
    v71 = _swift_stdlib_malloc_size(v70);
    v72 = v71 - 32;
    if (v71 < 32)
    {
      v72 = v71 - 17;
    }

    v70[2] = v9;
    v70[3] = 2 * (v72 >> 4);
    v111 = v70;
    v108 = sub_26640C9BC(&v124, v70 + 4, v9, v47);
    v1 = v126;
    v20 = v127;
    v10 = v128;

    sub_2662B793C();
    if (v108 == v9)
    {
      v38 = v114;
      goto LABEL_51;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v36 = v113;
LABEL_68:
  v86 = v103;
  v118(v103, v21, v9);
  v87 = v105;
  v88 = v104;
  v89 = v106;
  (*(v105 + 16))(v36, v104, v106);
  v90 = sub_2664DFE18();
  v91 = sub_2664E06C8();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    v93 = v100;
    sub_2664DE428();
    sub_2664DE388();
    v95 = v94;
    v115 = v35;
    v96 = *(v87 + 8);
    v96(v93, v89);
    v96(v36, v89);
    *(v92 + 4) = v95;
    _os_log_impl(&dword_26629C000, v90, v91, "InstalledAppProvider#lsRecordApps complete in %fms", v92, 0xCu);
    MEMORY[0x266784AD0](v92, -1, -1);

    v120(v86, v114);
    v96(v88, v89);
    return v115;
  }

  else
  {

    v97 = *(v87 + 8);
    v97(v36, v89);
    v120(v86, v9);
    v97(v88, v89);
  }

  return v35;
}

uint64_t sub_2662BF1C8()
{
  v70 = sub_2664DE438();
  v0 = *(v70 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v70);
  v61[0] = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v61 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = v61 - v7;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v61 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v18 = v10[2];
  v64 = v17;
  v63 = v10 + 2;
  v62 = v18;
  v18(v16, v17, v9);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v6;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "InstalledAppProvider#pluginKitExtensions...", v22, 2u);
    v23 = v22;
    v6 = v21;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v25 = v10[1];
  v24 = v10 + 1;
  v65 = v25;
  v25(v16, v9);
  sub_2664DE428();
  if (qword_280F90308 != -1)
  {
    swift_once();
  }

  v66 = v14;
  v67 = v24;
  v68 = v9;
  v71 = v8;
  v26 = qword_280F91CA8;
  v27 = *(qword_280F91CA8 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v29 = v6;
    v69 = sub_26640C820(*(qword_280F91CA8 + 16), 0);
    v30 = sub_26640C9BC(aBlock, v69 + 4, v27, v26);

    result = sub_2662B793C();
    if (v30 != v27)
    {
      __break(1u);
      return result;
    }

    v6 = v29;
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
  }

  v32 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  v34 = *MEMORY[0x277CCA0F8];
  *(inited + 32) = sub_2664E02C8();
  *(inited + 40) = v35;
  v36 = *MEMORY[0x277CD3858];
  v37 = sub_2664E02C8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v37;
  *(inited + 56) = v38;
  v39 = *MEMORY[0x277CD3828];
  *(inited + 80) = sub_2664E02C8();
  *(inited + 88) = v40;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  *(inited + 96) = v69;
  v41 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  *(v32 + 16) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = v28;
  v61[1] = v42 + 16;
  v43 = [objc_opt_self() defaultWorkspace];
  if (v43)
  {
    v44 = v43;

    v45 = sub_2664E01A8();

    v46 = swift_allocObject();
    *(v46 + 16) = v32;
    *(v46 + 24) = v42;
    aBlock[4] = sub_2662C1708;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A6624;
    aBlock[3] = &block_descriptor_88;
    v47 = _Block_copy(aBlock);

    [v44 enumeratePluginsMatchingQuery:v45 withBlock:v47];
    _Block_release(v47);
  }

  v69 = v32;
  v48 = v66;
  v49 = v68;
  v62(v66, v64, v68);
  (*(v0 + 16))(v6, v71, v70);
  v50 = sub_2664DFE18();
  v51 = sub_2664E06C8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    v53 = v61[0];
    sub_2664DE428();
    sub_2664DE388();
    v55 = v54;
    v64 = v42;
    v56 = *(v0 + 8);
    v57 = v70;
    v56(v53, v70);
    v56(v6, v57);
    *(v52 + 4) = v55;
    _os_log_impl(&dword_26629C000, v50, v51, "InstalledAppProvider#pluginKitExtensions complete in %fms", v52, 0xCu);
    MEMORY[0x266784AD0](v52, -1, -1);

    v65(v48, v49);
    v56(v71, v57);
    v42 = v64;
  }

  else
  {

    v58 = *(v0 + 8);
    v59 = v70;
    v58(v6, v70);
    v65(v48, v49);
    v58(v71, v59);
  }

  swift_beginAccess();
  v60 = *(v42 + 16);

  return v60;
}

uint64_t sub_2662BFA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v33 = a1;
  v34 = a3;
  v32 = a2;
  v4 = sub_2664E0038();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E0788();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E00B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = dispatch_group_create();
  sub_2664E0078();
  sub_2664E0768();
  v17 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000015, 0x80000002664F3740, v16, v11);
  (*(v8 + 8))(v11, v7);
  v18 = *(v13 + 8);
  v39 = v12;
  v35 = v18;
  v18(v16, v12);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072470, &qword_2664E3638);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84F90];
  v20[2] = MEMORY[0x277D84F90];
  v20[4] = 0xD000000000000025;
  v20[5] = 0x80000002664F3760;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91470;
  v44 = type metadata accessor for SiriKitTaskLoggingProvider();
  v45 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock[0] = v22;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v23 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000025, 0x80000002664F3760, 1, aBlock);
  v20[3] = v23;
  *(v19 + 16) = v20;
  MEMORY[0x28223BE20](v23);
  v24 = v37;
  *(&v32 - 4) = v37;
  *(&v32 - 3) = v17;
  v25 = v33;
  *(&v32 - 2) = v32;
  *(&v32 - 1) = v19;
  sub_266487460(sub_2662C13FC, (&v32 - 6), v25);
  v26 = swift_allocObject();
  v27 = v38;
  v26[2] = v34;
  v26[3] = v27;
  v26[4] = v19;
  v45 = sub_2662C141C;
  v46 = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  v44 = &block_descriptor;
  v28 = _Block_copy(aBlock);

  sub_2664E0068();
  v42 = v21;
  sub_2662C16C0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  v29 = v36;
  v30 = v41;
  sub_2664E0A08();
  sub_2664E0758();

  _Block_release(v28);
  (*(v40 + 8))(v29, v30);
  v35(v16, v39);
}

uint64_t sub_2662BFF60(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v41 = a2;
  v42 = a5;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v17;
    v19 = v18;
    v38 = swift_slowAlloc();
    v39 = a6;
    v43 = a1;
    v44 = v38;
    *v19 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072438, &qword_2664E35F8);
    v20 = sub_2664E0318();
    v22 = sub_2662A320C(v20, v21, &v44);
    v36 = a1;
    v23 = a4;
    v24 = v22;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = v41;
    if (a3)
    {
      v26 = v41;
    }

    else
    {
      v26 = 0x3E6C696E3CLL;
    }

    if (a3)
    {
      v27 = a3;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = sub_2662A320C(v26, v27, &v44);

    *(v19 + 14) = v28;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v23 & 1;
    _os_log_impl(&dword_26629C000, v16, v37, "InstalledAppProvider#installedApps for intentType:%s, sharedUserId:%s, useCache:%{BOOL}d...", v19, 0x1Cu);
    v29 = v38;
    swift_arrayDestroy();
    a6 = v39;
    MEMORY[0x266784AD0](v29, -1, -1);
    v30 = v19;
    v31 = v36;
    MEMORY[0x266784AD0](v30, -1, -1);

    (*(v11 + 8))(v14, v10);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    v31 = a1;
    v23 = a4;
    v25 = v41;
  }

  v33 = *(v40 + 40);
  v32 = *(v40 + 48);
  v34 = swift_allocObject();
  *(v34 + 16) = v25;
  *(v34 + 24) = a3;
  *(v34 + 32) = v31;
  *(v34 + 40) = v23 & 1;
  *(v34 + 48) = v42;
  *(v34 + 56) = a6;

  v33(v23 & 1, sub_2662C0398, v34);
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

uint64_t sub_2662C02F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2662C033C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

os_log_t sub_2662C03AC(os_log_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  if (a2)
  {
    v56 = &v52 - v10;
    v57 = v5;
    *&v61 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072448, &qword_2664E3608);
    isUniquelyReferenced_nonNull_native = sub_2664E0318();
    v12 = isUniquelyReferenced_nonNull_native;
    v14 = v13;
    isa = a1[2].isa;
    v58 = v4;
    if (isa)
    {
      v16 = 0;
      v17 = a1 + 4;
      a1 = MEMORY[0x277D84F90];
      v54 = v17;
      do
      {
        v55 = a1;
        v18 = &v17[8 * v16];
        a1 = v16;
        while (1)
        {
          if (a1 >= isa)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v19 = *&v18[2].isa;
          v61 = *&v18->isa;
          v62 = v19;
          v20 = *&v18[6].isa;
          v63 = *&v18[4].isa;
          v64 = v20;
          v16 = (&a1->isa + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_38;
          }

          v4 = &v52;
          v21 = *(&v62 + 1);
          v60[0] = v12;
          v60[1] = v14;
          MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
          *(&v52 - 2) = v60;
          sub_2662C0AE0(&v61, v59);

          v22 = sub_2662AA720(sub_2662AA7CC, (&v52 - 4), v21);

          if (v22)
          {
            break;
          }

          isUniquelyReferenced_nonNull_native = sub_2662C0B3C(&v61);
          a1 = (a1 + 1);
          v18 += 8;
          if (v16 == isa)
          {
            v4 = v58;
            a1 = v55;
            goto LABEL_22;
          }
        }

        a1 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_2662FCF44(0, a1[2].isa + 1, 1);
          a1 = v65;
        }

        v4 = v58;
        v24 = a1[2].isa;
        v23 = a1[3].isa;
        if (v24 >= v23 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_2662FCF44((v23 > 1), v24 + 1, 1);
          a1 = v65;
        }

        a1[2].isa = (v24 + 1);
        v25 = &a1[8 * v24];
        v26 = v61;
        v27 = v62;
        v28 = v64;
        *&v25[8].isa = v63;
        *&v25[10].isa = v28;
        *&v25[4].isa = v26;
        *&v25[6].isa = v27;
        v17 = v54;
      }

      while (v16 != isa);
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }

LABEL_22:
    if (qword_280F914E8 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v33 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      v34 = v57;
      v35 = v56;
      (*(v57 + 16))(v56, v33, v4);

      v36 = sub_2664DFE18();
      v37 = sub_2664E06E8();

      if (!os_log_type_enabled(v36, v37))
      {

        (*(v34 + 8))(v35, v4);
        return a1;
      }

      LODWORD(v54) = v37;
      v55 = v36;
      v38 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v59[0] = v53;
      *v38 = 136446466;
      v12 = sub_2662A320C(v12, v14, v59);

      *(v38 + 4) = v12;
      *(v38 + 12) = 2082;
      v4 = a1[2].isa;
      if (!v4)
      {
        break;
      }

      v39 = 0;
      v40 = a1;
      a1 += 5;
      v14 = MEMORY[0x277D84F90];
      while (v39 < v40[2].isa)
      {
        v41 = a1[-1].isa;
        v12 = a1->isa;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2663846F4(0, *(v14 + 2) + 1, 1, v14);
        }

        v43 = *(v14 + 2);
        v42 = *(v14 + 3);
        if (v43 >= v42 >> 1)
        {
          v14 = sub_2663846F4((v42 > 1), v43 + 1, 1, v14);
        }

        v39 = (v39 + 1);
        *(v14 + 2) = v43 + 1;
        v44 = &v14[16 * v43];
        *(v44 + 4) = v41;
        *(v44 + 5) = v12;
        a1 += 8;
        if (v4 == v39)
        {
          goto LABEL_35;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }

    v40 = a1;
    v14 = MEMORY[0x277D84F90];
LABEL_35:
    v45 = MEMORY[0x2667834D0](v14, MEMORY[0x277D837D0]);
    v47 = v46;

    v48 = sub_2662A320C(v45, v47, v59);

    *(v38 + 14) = v48;
    v49 = v55;
    _os_log_impl(&dword_26629C000, v55, v54, "InstalledAppProvider#installedApps filtered for intent:%{public}s result: %{public}s", v38, 0x16u);
    v50 = v53;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v38, -1, -1);

    (*(v57 + 8))(v56, v58);
    return v40;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v29, v4);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "InstalledAppProvider#installedApps no intent type passed, returning all apps regardless of intent support", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }

  return a1;
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

uint64_t sub_2662C0B90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2662C1890;

  return sub_2662BD568(a1, v5);
}

uint64_t sub_2662C0C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072450, &qword_2664E3610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2662C0CAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2662C0CE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2662C0D0C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2662C0D38(uint64_t *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2662BE26C(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_2662C0DE0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_2662C0E1C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_26634AB34(a1);
  v3();
}

uint64_t sub_2662C0E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v31 = a1;
  v3 = sub_2664DE438();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - v7;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "InstalledAppProvider#apps gathering apps for all users...", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  sub_2664DE428();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D84F90];
  *(v18 + 16) = MEMORY[0x277D84F90];
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  if (qword_280F902B8 != -1)
  {
    swift_once();
  }

  v30 = qword_280F902C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072460, &qword_2664E3628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  *(inited + 32) = sub_2662C12F4;
  v29[1] = inited + 32;
  *(inited + 40) = v18;
  *(inited + 48) = sub_2662C1324;
  *(inited + 56) = v20;
  v22 = v32;
  (*(v32 + 16))(v6, v8, v3);
  sub_2662A5550(v31, v35);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v31 = v8;
  v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  (*(v22 + 32))(v25 + v23, v6, v3);
  sub_2662A8618(v35, v25 + v24);
  v26 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;
  swift_retain_n();
  swift_retain_n();

  _s16SiriAudioSupport5TasksV11parallelize5queue5tasks10completionySo012OS_dispatch_F0C_yyyccdyyctFZ_0(v30, inited, sub_2662C1354, v25);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072468, &qword_2664E3630);
  swift_arrayDestroy();
  (*(v22 + 8))(v31, v3);
}

uint64_t sub_2662C1354()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = (v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_2662B9720(v4, v5, v0 + v2, v0 + v3, v7, v8);
}

uint64_t sub_2662C1428(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2662C148C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_5Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662C14F4(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2662BD660;

  return sub_2662BAD74(a1, v1 + 16, v4, v5);
}

uint64_t objectdestroy_9Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662C15EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2662BD660;

  return sub_2662BD17C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2662C16C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662C1710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2662BE08C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2662C1744(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_2662C178C()
{
  result = qword_280F8F688;
  if (!qword_280F8F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F688);
  }

  return result;
}

unint64_t sub_2662C17E0()
{
  result = qword_280F8F690;
  if (!qword_280F8F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F690);
  }

  return result;
}

uint64_t sub_2662C18A0(uint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v40 = a3;
  v35 = a2;
  v41 = sub_2664DFE38();
  v44 = *(v41 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2664DFE08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  v14 = a1[1];

  sub_2664E0848();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91D48;
  sub_2664DFDF8();
  v39 = v16;
  sub_2664DFDC8();
  v17 = v9;
  v38 = *(v10 + 8);
  v38(v13, v9);
  v18 = *(v15 + 16);
  if (v18)
  {
    v19 = sub_26640C820(*(v15 + 16), 0);
    v20 = sub_26640C9BC(&v43, v19 + 4, v18, v15);
    sub_2662B793C();
    if (v20 == v18)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v19 = MEMORY[0x277D84F90];
LABEL_7:
  v21 = sub_2662C2A48(v19, v14);
  v22 = sub_2664DEF58();
  if (v5)
  {

    return v21;
  }

  v23 = v17;
  v24 = v22;

  v25 = sub_2662C2314(v24);

  v26 = *(v25 + 16);
  if (!v26)
  {
    goto LABEL_12;
  }

  v21 = sub_26640C820(*(v25 + 16), 0);
  v27 = sub_266410DDC(&v43, v21 + 32, v26, v25);
  sub_2662B793C();
  v28 = v41;
  if (v27 != v26)
  {
    __break(1u);
LABEL_12:

    v21 = MEMORY[0x277D84F90];
    v28 = v41;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v28, qword_280F914F0);
  swift_beginAccess();
  (*(v44 + 16))(v42, v29, v28);

  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134349056;
    *(v32 + 4) = *(v21 + 16);

    _os_log_impl(&dword_26629C000, v30, v31, "PlayMediaAppSelector#rawPredict megamodel found %{public}ld candidates", v32, 0xCu);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  else
  {
  }

  (*(v44 + 8))(v42, v28);
  if (v40)
  {
    (*(v37 + 8))((v35 & 1) == 0);
  }

  sub_2664E0838();
  sub_2664DFDF8();
  sub_2664DFDD8();
  v38(v13, v23);
  return v21;
}

uint64_t sub_2662C1DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = v41[8];
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v39 = sub_26639F100(v7);
  v8 = *(a2 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_25:
    v25 = sub_26639EB98(v9);

    v44[0] = v25;
    sub_2662C2560(v39);
    v26 = v44[0];
    v27 = *(v44[0] + 16);
    if (v27)
    {
      v8 = sub_26640C820(*(v44[0] + 16), 0);
      v28 = sub_26640C9BC(v44, v8 + 4, v27, v26);
      sub_2662B793C();
      v11 = v41;
      v2 = v42;
      v14 = v40;
      if (v28 != v27)
      {
        goto LABEL_40;
      }

      if (v8[2])
      {
LABEL_28:
        if (qword_280F914E8 != -1)
        {
          goto LABEL_41;
        }

        goto LABEL_29;
      }
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
      v11 = v41;
      v2 = v42;
      v14 = v40;
      if (*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_28;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
  v10 = a2 + 32;
  v11 = &unk_2664EA600;
  while (1)
  {
    sub_2662A5550(v10, v44);
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    DynamicType = swift_getDynamicType();
    v13 = (*(v44[4] + 16))(DynamicType);
    v14 = *(v13 + 16);
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v17 = v16 - 32;
      if (v16 < 32)
      {
        v17 = v16 - 17;
      }

      v15[2] = v14;
      v15[3] = 2 * (v17 >> 4);
      v18 = sub_26640C9BC(&v43, v15 + 4, v14, v13);
      sub_2662B793C();
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      if (v18 != v14)
      {
        goto LABEL_37;
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v15 = MEMORY[0x277D84F90];
    }

    v14 = v15[2];
    v19 = *(v9 + 2);
    v2 = v19 + v14;
    if (__OFADD__(v19, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v2 <= *(v9 + 3) >> 1)
    {
      if (v15[2])
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v19 <= v2)
      {
        v21 = v19 + v14;
      }

      else
      {
        v21 = v19;
      }

      v9 = sub_2663846F4(isUniquelyReferenced_nonNull_native, v21, 1, v9);
      if (v15[2])
      {
LABEL_20:
        if ((*(v9 + 3) >> 1) - *(v9 + 2) < v14)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v22 = *(v9 + 2);
          v23 = __OFADD__(v22, v14);
          v24 = v22 + v14;
          if (v23)
          {
            goto LABEL_39;
          }

          *(v9 + 2) = v24;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_36;
    }

LABEL_4:
    v10 += 40;
    v8 = (v8 - 1);
    if (!v8)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_29:
  v29 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v11[2](v14, v29, v2);

  v30 = sub_2664DFE18();
  v31 = sub_2664E06C8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x2667834D0](v8, MEMORY[0x277D837D0]);
    v36 = v35;

    v37 = sub_2662A320C(v34, v36, &v43);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_26629C000, v30, v31, "AppSelectionSignals#megamodelSignals: didn't convert signals %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  else
  {
  }

  return (v11[1])(v14, v2);
}

unint64_t *sub_2662C229C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2662C2474(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2662C2314(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2662C2474(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_2662C229C(v9, v4, v2);
  result = MEMORY[0x266784AD0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_2662C2474(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2664CFA5C(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_2664CFA5C(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2662C2560(uint64_t result)
{
  v2 = 0;
  v22 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v22 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v21;
      sub_2664D0458(&v23, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v13 + 40);
    sub_2664E0E68();

    sub_2664E0368();
    v15 = sub_2664E0EB8();
    v16 = -1 << *(v13 + 32);
    v17 = v15 & ~v16;
    if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_7;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(v13 + 48) + 16 * v17);
      v20 = *v19 == v12 && v19[1] == v11;
      if (v20 || (sub_2664E0D88() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v21;
    sub_2662C2748(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

uint64_t sub_2662C2748(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2664E0E68();
  sub_2664E0368();
  v7 = sub_2664E0EB8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2664E0D88() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2664D0D30();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2662C2884(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_2662C2884(unint64_t result)
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

    v9 = sub_2664E0A28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2664E0E68();

        sub_2664E0368();
        v15 = sub_2664E0EB8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2662C2A48(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v3 = sub_2664DEC48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v110 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724A8, &unk_2664E5330);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B0, &qword_2664E36C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v87 - v18);
  v93 = sub_2664E0038();
  v92 = *(v93 - 8);
  v20 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v90 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2664E00B8();
  v89 = *(v91 - 8);
  v22 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2663858A8(MEMORY[0x277D84F90]);
  v95 = *(a2 + 16);
  v94 = a2;
  if (v95)
  {
    v24 = 0;
    v96 = a2 + 32;
    v108 = (v4 + 16);
    v109 = v15;
    v114 = (v4 + 32);
    v101 = v4 + 40;
    v102 = v13;
    v106 = v4;
    v107 = v19;
    v105 = v3;
LABEL_4:
    sub_2662A5550(v96 + 40 * v24, aBlock);
    v98 = v24 + 1;
    v25 = v15;
    v26 = v116;
    v27 = v117;
    __swift_project_boxed_opaque_existential_1(aBlock, v116);
    v28 = *(v27 + 6);
    v29 = v27;
    v15 = v25;
    v30 = v28(v97, v26, v29);
    v31 = v113;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v31;
    v33 = *(v30 + 64);
    v100 = v30 + 64;
    v34 = 1 << *(v30 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & v33;
    v99 = (v34 + 63) >> 6;
    v104 = v30;

    v37 = 0;
    while (1)
    {
      v113 = v31;
      v112 = isUniquelyReferenced_nonNull_native;
      if (!v36)
      {
        if (v99 <= v37 + 1)
        {
          v39 = v37 + 1;
        }

        else
        {
          v39 = v99;
        }

        while (1)
        {
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v38 >= v99)
          {
            v111 = v39 - 1;
            v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
            (*(*(v78 - 8) + 56))(v15, 1, 1, v78);
            v36 = 0;
            goto LABEL_19;
          }

          v36 = *(v100 + 8 * v38);
          ++v37;
          if (v36)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v38 = v37;
LABEL_18:
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v41 = v40 | (v38 << 6);
      v42 = v103;
      v43 = (*(v104 + 48) + 16 * v41);
      v45 = *v43;
      v44 = v43[1];
      (*(v4 + 16))(v103, *(v104 + 56) + *(v4 + 72) * v41, v3);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
      v47 = *(v46 + 48);
      v48 = v109;
      *v109 = v45;
      *(v48 + 1) = v44;
      v15 = v48;
      (*(v4 + 32))(&v48[v47], v42, v3);
      (*(*(v46 - 8) + 56))(v15, 0, 1, v46);

      v111 = v38;
      v13 = v102;
LABEL_19:
      sub_2662C34F8(v15, v13);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
      if ((*(*(v49 - 8) + 48))(v13, 1, v49) == 1)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C0, &unk_2664E36D0);
        v51 = v107;
        (*(*(v50 - 8) + 56))(v107, 1, 1, v50);
        v3 = v105;
        v4 = v106;
      }

      else
      {
        v52 = *(v49 + 48);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C0, &unk_2664E36D0);
        v54 = v15;
        v56 = *v13;
        v55 = v13[1];
        v57 = v13;
        v58 = v107;
        v3 = v105;
        (*v108)(v107 + *(v53 + 48), v57 + v52, v105);
        *v58 = v56;
        v58[1] = v55;
        v15 = v54;
        v51 = v58;
        v13 = v57;

        sub_2662C3568(v57);
        (*(*(v53 - 8) + 56))(v51, 0, 1, v53);
        v4 = v106;
      }

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C0, &unk_2664E36D0);
      if ((*(*(v59 - 8) + 48))(v51, 1, v59) == 1)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        v24 = v98;
        if (v98 == v95)
        {
          break;
        }

        goto LABEL_4;
      }

      v60 = v13;
      v61 = *v51;
      v62 = v51[1];
      v63 = *v114;
      v64 = v3;
      (*v114)(v110, v51 + *(v59 + 48), v3);
      v65 = v113;
      v67 = sub_2662A3E98(v61, v62);
      v68 = *(v65 + 16);
      v69 = (v66 & 1) == 0;
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_38;
      }

      v71 = v66;
      if (*(v65 + 24) >= v70)
      {
        if (v112)
        {
          v31 = v119;
          if (v66)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_266453A9C();
          v31 = v119;
          if (v71)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_266450300(v70, v112 & 1);
        v72 = sub_2662A3E98(v61, v62);
        if ((v71 & 1) != (v73 & 1))
        {
          result = sub_2664E0DD8();
          __break(1u);
          return result;
        }

        v67 = v72;
        v31 = v119;
        if (v71)
        {
LABEL_8:

          v3 = v64;
          (*(v4 + 40))(v31[7] + *(v4 + 72) * v67, v110, v64);
          goto LABEL_9;
        }
      }

      v31[(v67 >> 6) + 8] |= 1 << v67;
      v74 = (v31[6] + 16 * v67);
      *v74 = v61;
      v74[1] = v62;
      v3 = v64;
      v63((v31[7] + *(v4 + 72) * v67), v110, v64);
      v75 = v31[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_39;
      }

      v31[2] = v77;
LABEL_9:
      isUniquelyReferenced_nonNull_native = 1;
      v37 = v111;
      v13 = v60;
      v15 = v109;
    }
  }

  if (qword_280F90D30 != -1)
  {
LABEL_40:
    swift_once();
  }

  v79 = swift_allocObject();
  v80 = v113;
  v81 = v94;
  *(v79 + 16) = v113;
  *(v79 + 24) = v81;
  v117 = sub_2662C35D0;
  v118 = v79;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  v116 = &block_descriptor_0;
  v82 = _Block_copy(aBlock);

  v83 = v88;
  sub_2664E0068();
  v119 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v84 = v90;
  v85 = v93;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v83, v84, v82);
  _Block_release(v82);
  (*(v92 + 8))(v84, v85);
  (*(v89 + 8))(v83, v91);

  return v80;
}

uint64_t sub_2662C34F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724A8, &unk_2664E5330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2662C3568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662C35DC()
{
  v0 = sub_2662C3A68(&unk_2877E1490);
  result = swift_arrayDestroy();
  qword_280F91CF0 = v0;
  return result;
}

unint64_t sub_2662C3628(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36E0;
  strcpy((inited + 32), "isRequestedApp");
  *(inited + 47) = -18;
  v6 = *(v2 + 24);
  if (v6)
  {
    if (*(v2 + 16) == a1 && v6 == a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_2664E0D88();
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277D839B0];
  *(inited + 48) = v8 & 1;
  *(inited + 72) = v9;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000002664F1050;
  *(inited + 96) = *(v2 + 32);
  *(inited + 120) = v9;
  *(inited + 128) = 0x7269467070417369;
  *(inited + 136) = 0xEF79747261507473;
  Party16bundleIdentifierSbSS_tFZ_0 = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0();
  *(inited + 168) = v9;
  *(inited + 144) = Party16bundleIdentifierSbSS_tFZ_0 & 1;
  v11 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_2662C37A8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2662C381C()
{
  if (qword_280F90A08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2662C3878(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  if (v4)
  {
    v6 = *(*v1 + 24);

    v3 = sub_2664475B4(a1, v3, v4);
    v8 = v7;

    v9 = *(v2 + 24);
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 16) = v3;
  *(v2 + 24) = v8;
}

uint64_t sub_2662C3928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(a1);
}

uint64_t sub_2662C39E8(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_266417450(v7, a2, a3, v5, v6);
}

uint64_t sub_2662C3A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
    v3 = sub_2664E0AF8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2664E0E68();

      sub_2664E0368();
      result = sub_2664E0EB8();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2664E0D88();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2662C3BD0(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v45 = a2;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v49 = sub_2664DE438();
  v42[0] = *(v49 - 8);
  v13 = *(v42[0] + 64);
  v14 = MEMORY[0x28223BE20](v49);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = v42 - v17;
  sub_2664DE428();
  v50[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C8, &qword_2664E3778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D0, &unk_2664E3780);
  v18 = sub_2664E0318();
  v20 = v19;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v21 = qword_280F91D48;
  sub_2664DFDE8();
  v22 = *(v6 + 16);
  v46 = v5;
  v22(v10, v12, v5);
  v47 = a3;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2664E36F0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_2662C4094();
  *(v23 + 32) = v18;
  *(v23 + 40) = v20;
  v42[1] = v21;
  sub_2664DFDC8();

  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v44 = v10;
  v24 = sub_26632958C(1019);
  v25 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(a1);
  v27 = v26;
  v28 = [a1 privatePlayMediaIntentData];
  v43 = v6;
  if (v28 && (v29 = v28, v30 = [v28 appInferred], v29, v30))
  {
    v31 = [v30 BOOLValue];
  }

  else
  {
    v31 = 0;
  }

  sub_2664DE428();
  sub_2664DE388();
  v33 = v32;
  v34 = *(v42[0] + 8);
  v34(v16, v49);
  v35 = type metadata accessor for SelectedAppSignal();
  v36 = swift_allocObject();
  *(v36 + 16) = v25;
  *(v36 + 24) = v27;
  *(v36 + 32) = v31;
  *(v36 + 40) = v33;
  if (v24)
  {

    sub_26636B8D0();
  }

  v50[3] = v35;
  v50[4] = &off_2877E6310;
  v50[0] = v36;
  sub_2664E0838();
  v37 = v44;
  sub_2664DFDD8();
  v45(v50);
  v38 = *(v43 + 8);
  v39 = v37;
  v40 = v46;
  v38(v39, v46);

  v38(v12, v40);
  v34(v48, v49);
  return __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

unint64_t sub_2662C4094()
{
  result = qword_280F8F670;
  if (!qword_280F8F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F670);
  }

  return result;
}

void sub_2662C40E8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2664E0A68())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072500, &qword_2664F0870);
      v3 = sub_2664E0AF8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2664E0A68();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x266783B70](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_2664E0908();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_2662C482C();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_2664E0918();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_2664E0908();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_2662C482C();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_2664E0918();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2662C43B4(uint64_t a1)
{
  v2 = sub_2664DE578();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E8, &qword_2664E3798);
    v10 = sub_2664E0AF8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2662C46AC(&qword_280F914C8);
      v18 = sub_2664E0258();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2662C46AC(&qword_2800724F0);
          v25 = sub_2664E0298();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2662C46AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2664DE578();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2662C46F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724F8, &unk_2664E37A0);
    v3 = sub_2664E0AF8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      v11 = *(v3 + 40);
      sub_2664E0E68();
      sub_2664E0E98();
      result = sub_2664E0EB8();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2662C482C()
{
  result = qword_280072508;
  if (!qword_280072508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072508);
  }

  return result;
}

id INPlayMediaIntent.appInferred.getter()
{
  result = [v0 privatePlayMediaIntentData];
  if (result)
  {
    v2 = result;
    v3 = [result appInferred];

    if (v3)
    {
      v4 = [v3 BOOLValue];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id INPlayMediaIntent.recordAppSelectionSignals.getter()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 privatePlayMediaIntentData];
  if (v7 && (v8 = v7, v9 = [v7 appSelectionSignalsEnabled], v8, v9))
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v11, v2);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_26629C000, v12, v13, "INPlayMediaIntent#recordAppSelectionSignals?: %{BOOL}d", v14, 8u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return v10;
}

void INPlayMediaIntent.disambiguationReasonResponseResultType.getter(char *a1@<X8>)
{
  v3 = [v1 privatePlayMediaIntentData];
  if (v3 && (v4 = v3, v5 = [v3 internalSignals], v4, v5))
  {
    v6 = sub_2664E04A8();

    v7 = byte_2877E1A50;
    v20 = 0xD000000000000022;
    v21 = 0x80000002664F38E0;
    v19 = byte_2877E1A50;
    v8 = ResolutionResultType.rawValue.getter();
    MEMORY[0x2667833B0](v8);

    MEMORY[0x28223BE20](v9);
    v18 = &v20;
    v10 = sub_2662AA720(sub_2662AA7EC, v17, v6);

    if ((v10 & 1) == 0)
    {
      v7 = byte_2877E1A51;
      v20 = 0xD000000000000022;
      v21 = 0x80000002664F38E0;
      v19 = byte_2877E1A51;
      v11 = ResolutionResultType.rawValue.getter();
      MEMORY[0x2667833B0](v11);

      MEMORY[0x28223BE20](v12);
      v18 = &v20;
      v13 = sub_2662AA720(sub_2662AA7EC, v17, v6);

      if ((v13 & 1) == 0)
      {
        v7 = byte_2877E1A52;
        v20 = 0xD000000000000022;
        v21 = 0x80000002664F38E0;
        v19 = byte_2877E1A52;
        v14 = ResolutionResultType.rawValue.getter();
        MEMORY[0x2667833B0](v14);

        MEMORY[0x28223BE20](v15);
        v18 = &v20;
        v16 = sub_2662AA720(sub_2662AA7EC, v17, v6);

        if ((v16 & 1) == 0)
        {
          v7 = 12;
        }
      }
    }
  }

  else
  {
    v7 = 12;
  }

  *a1 = v7;
}

INPlayMediaIntent_optional __swiftcall INPlayMediaIntent.toSiriRemembersDonationIntent()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = sub_2664DE4A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v1 backingStore];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    [v16 copy];

    sub_2664E09E8();
    swift_unknownObjectRelease();
    sub_2662C1744(0, &qword_280072510, 0x277CD4370);
    if (swift_dynamicCast())
    {
      v17 = v51;
      v18 = [v51 mediaItems];
      if (v18)
      {
        v19 = v18;
        sub_2662C1744(0, &qword_280072520, 0x277CD4360);
        v20 = sub_2664E04A8();

        if (v20 >> 62)
        {
          if (sub_2664E0A68())
          {
LABEL_6:
            if ((v20 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x266783B70](0, v20);
            }

            else
            {
              if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_32;
              }

              v21 = *(v20 + 32);
            }

            v22 = v21;

            v50 = v22;
            v52 = MEMORY[0x277D84F90];
            if (!v22)
            {
LABEL_21:
              sub_2662C5798(&v50);
              sub_2662C1744(0, &qword_280072520, 0x277CD4360);
              v30 = sub_2664E0488();

              [v17 setMediaItems_];

              [v17 setPrivatePlayMediaIntentData_];
              v31 = [v1 identifier];
              if (v31)
              {
                v32 = v31;
                sub_2664E02C8();
              }

              else
              {
                sub_2664DE498();
                sub_2664DE458();
                (*(v11 + 8))(v14, v10);
              }

              v33 = objc_allocWithZone(MEMORY[0x277CD3EC0]);
              v34 = v17;
              v35 = sub_2664E02A8();

              v36 = [v33 initWithIdentifier:v35 backingStore:v34];

              if (qword_280F914E8 != -1)
              {
                swift_once();
              }

              v37 = __swift_project_value_buffer(v2, qword_280F914F0);
              swift_beginAccess();
              (*(v3 + 16))(v9, v37, v2);
              v38 = v36;
              v39 = sub_2664DFE18();
              v40 = sub_2664E06C8();
              v41 = v38;

              if (os_log_type_enabled(v39, v40))
              {
                v42 = swift_slowAlloc();
                v43 = swift_slowAlloc();
                v51 = v43;
                *v42 = 136315138;
                v44 = INPlayMediaIntent.slimDescription.getter();
                v46 = sub_2662A320C(v44, v45, &v51);
                v49 = v2;
                v47 = v46;

                *(v42 + 4) = v47;
                _os_log_impl(&dword_26629C000, v39, v40, "INPlayMediaIntent#toSiriRemembersDonationIntent intent (reformed): %s", v42, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v43);
                MEMORY[0x266784AD0](v43, -1, -1);
                MEMORY[0x266784AD0](v42, -1, -1);

                (*(v3 + 8))(v9, v49);
              }

              else
              {

                (*(v3 + 8))(v9, v2);
              }

              v29 = v41;
              goto LABEL_33;
            }

            v23 = v22;
            MEMORY[0x266783490]();
            if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_11:
              sub_2664E0518();
              goto LABEL_21;
            }

LABEL_32:
            v49 = v2;
            sub_2664E04C8();
            v2 = v49;
            goto LABEL_11;
          }
        }

        else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_6;
        }
      }

      v50 = 0;
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v7, v24, v2);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06D8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "INPlayMediaIntent#toSiriRemembersDonationIntent error copying intent for use with app selection signals. Returning intent as is", v27, 2u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v29 = 0;
LABEL_33:
  result.value.super.super.isa = v29;
  result.is_nil = v28;
  return result;
}

uint64_t sub_2662C5584(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x266783B70](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2664E0A68();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void *sub_2662C56AC(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_2662C56F4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2662C5768@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2662C5798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072518, &qword_2664E37D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662C581C()
{
  type metadata accessor for PodcastPlaybackHandler.ControllerProvider();
  v13 = swift_allocObject();
  v12 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v2 = qword_280F8F808;
  v28 = type metadata accessor for MultiUserConnectionProvider();
  v29 = &protocol witness table for MultiUserConnectionProvider;
  *&v27 = v2;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();

  v5 = sub_266360778(v1, &v27, v4);

  v6 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v27);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v24 = qword_280F905C8;
  *(&v24 + 5) = *(&qword_280F905C8 + 5);
  v25 = &type metadata for FeatureFlagProvider;
  v26 = &protocol witness table for FeatureFlagProvider;
  v23 = &protocol witness table for SharedContextProvider;
  v22 = type metadata accessor for SharedContextProvider();
  v20 = &protocol witness table for SubscriptionProvider;
  *&v21 = swift_initStaticObject();
  v19 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v8 = qword_280F91470;
  v16 = type metadata accessor for SiriKitTaskLoggingProvider();
  v17 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v15 = v8;
  v14[3] = &type metadata for WatchOSSupportProvider;
  v14[4] = &off_2877EC0A0;
  v9 = type metadata accessor for MediaPlaybackProvider();
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for WatchOSSupportProvider);
  v10[28] = &type metadata for WatchOSSupportProvider;
  v10[29] = &off_2877EC0A0;
  v10[5] = v3;
  v10[6] = &protocol witness table for AccountProvider;
  v10[2] = v5;
  v10[17] = v12;
  v10[18] = v6;
  v10[19] = v7;
  sub_2662A8618(&v27, (v10 + 20));
  sub_2662A8618(&v24, (v10 + 30));
  sub_2662A8618(&v21, (v10 + 35));
  sub_2662A8618(&v18, (v10 + 7));
  sub_2662A8618(&v15, (v10 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  v28 = v9;
  v29 = &off_2877F3740;
  *&v27 = v10;
  return (*(v0 + 128))(v13, &v27);
}

uint64_t sub_2662C5B80(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_2664DD13C(a1, *v9, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t sub_2662C5C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v14 = sub_2662C0CAC;
  v15 = v9;
  v10 = qword_280F91508;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  sub_2664DE7B8();
  sub_2664DE7A8();
  sub_2664E0838();
  sub_2664DFDD8();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2662C5E84(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v11, v6);
    v12 = a2;
    v13 = sub_2664DFE18();
    v14 = sub_2664E06D8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v27 = sub_2664E0DE8();
      v28 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v19 = sub_2664E0318();
      v21 = sub_2662A320C(v19, v20, &v29);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_26629C000, v13, v14, "PodcastPlaybackHandler#ControllerReferece Unexpected error initializing podcasts controller: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266784AD0](v17, -1, -1);
      v22 = v16;
      a3 = v26;
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v23 = 0;
  }

  else
  {
    v23 = a1;
  }

  return a3(v23);
}

uint64_t sub_2662C6110(void *a1, uint64_t a2, void *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v136 = a5;
  v134 = a4;
  v128 = a3;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v122 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v124 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v123 = &v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v127 = &v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v137 = &v122 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v122 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v122 - v27;
  v29 = *(a2 + 16);
  *v149 = *a2;
  *&v149[16] = v29;
  *v150 = *(a2 + 32);
  *&v150[15] = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v31 = v8[2];
  v143 = v30;
  v142 = v8 + 2;
  v141 = v31;
  v31(v28, v30, v7);

  v32 = sub_2664DFE18();
  v33 = sub_2664E06C8();

  v34 = os_log_type_enabled(v32, v33);
  v140 = v7;
  v139 = a1;
  if (v34)
  {
    v35 = a1;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v144 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_2662A320C(v35[7], v35[8], &v144);
    _os_log_impl(&dword_26629C000, v32, v33, "PodcastPlaybackHandler#warm request to warm playback for identifier: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266784AD0](v37, -1, -1);
    v38 = v36;
    v7 = v140;
    MEMORY[0x266784AD0](v38, -1, -1);
  }

  v39 = v8[1];
  v39(v28, v7);
  v40 = v150[16];
  if (v150[16] <= 1u && !v150[16])
  {
    goto LABEL_9;
  }

  v41 = sub_2664E0D88();

  if (v41)
  {
    goto LABEL_11;
  }

  if (v40 != 3)
  {
    v42 = sub_2664E0D88();

    if ((v42 & 1) == 0)
    {
      v141(v15, v143, v7);
      v54 = sub_2664DFE18();
      v55 = sub_2664E06D8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_26629C000, v54, v55, "PodcastPlaybackHandler#warm PodcastsKit doesn't support next/later locations", v56, 2u);
        MEMORY[0x266784AD0](v56, -1, -1);
      }

      v39(v15, v7);
      v141(v12, v143, v7);
      v57 = sub_2664DFE18();
      v58 = sub_2664E06B8();
      v59 = os_log_type_enabled(v57, v58);
      v60 = v39;
      v61 = v134;
      if (v59)
      {
        v62 = swift_slowAlloc();
        v63 = v7;
        v64 = swift_slowAlloc();
        *&v144 = v64;
        *v62 = 134218498;
        *(v62 + 4) = 3;
        *(v62 + 12) = 2048;
        *(v62 + 14) = 6;
        *(v62 + 22) = 2080;
        *(v62 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F3D20, &v144);
        _os_log_impl(&dword_26629C000, v57, v58, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v62, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x266784AD0](v64, -1, -1);
        MEMORY[0x266784AD0](v62, -1, -1);

        v65 = v12;
        v66 = v63;
      }

      else
      {

        v65 = v12;
        v66 = v7;
      }

      v60(v65, v66);
      v144 = xmmword_2664E37F0;
      v145 = 0x80000002664F3D20;
      v146 = 1;
      v61(&v144);
      return sub_2662D2F30(v144, *(&v144 + 1), v145, v146);
    }
  }

  else
  {
LABEL_9:
  }

LABEL_11:
  v141(v26, v143, v7);
  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_26629C000, v43, v44, "PodcastPlaybackHandler#warm item manifest...", v45, 2u);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v138 = v39;
  v39(v26, v7);
  v46 = *v150;
  v148 = *v150;

  if (*(&v46 + 1))
  {

    v47 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v137;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_2663846F4(0, *(v47 + 2) + 1, 1, v47);
    }

    v51 = *(v47 + 2);
    v50 = *(v47 + 3);
    if (v51 >= v50 >> 1)
    {
      v47 = sub_2663846F4((v50 > 1), v51 + 1, 1, v47);
    }

    *(v47 + 2) = v51 + 1;
    v132 = v47;
    *&v47[16 * v51 + 32] = v46;
  }

  else
  {
    v132 = MEMORY[0x277D84F90];
    v49 = v137;
  }

  sub_2662D2F40(&v148);
  v52 = *&v149[8];
  v53 = *&v149[16];
  v126 = v46;
  if (*&v149[16])
  {
    if (*&v149[8] == __PAIR128__(0x80000002664F3D40, 0xD000000000000024) || (sub_2664E0D88() & 1) != 0)
    {
      v52 = 0;
      v53 = 0;
    }

    else
    {
    }
  }

  v67 = v139[13];
  if (v67)
  {
    if (v139[12] == 0xD000000000000024 && v67 == 0x80000002664F3D40)
    {
      v68 = 0;
      v67 = 0;
      v69 = v49;
      goto LABEL_37;
    }

    v68 = v139[12];
    v70 = v139[13];
    v69 = v49;
    if (sub_2664E0D88())
    {
      v68 = 0;
      v67 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v68 = v139[12];
    v69 = v49;
  }

LABEL_37:
  v141(v69, v143, v7);

  v71 = sub_2664DFE18();
  v72 = sub_2664E06C8();

  v73 = os_log_type_enabled(v71, v72);
  v135 = v8 + 1;
  v125 = *(&v46 + 1);
  v131 = v52;
  v130 = v68;
  v129 = v46;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v147[0] = v75;
    *v74 = 136315394;
    *&v144 = v52;
    *(&v144 + 1) = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v76 = sub_2664E0318();
    v78 = sub_2662A320C(v76, v77, v147);

    *(v74 + 4) = v78;
    *(v74 + 12) = 2080;
    *&v144 = v68;
    *(&v144 + 1) = v67;

    v79 = sub_2664E0318();
    v81 = sub_2662A320C(v79, v80, v147);

    *(v74 + 14) = v81;
    _os_log_impl(&dword_26629C000, v71, v72, "PodcastPlaybackHandler#warm manifest call with sharedUserId: %s and sharedUserIdForPlayableAccount: %s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v75, -1, -1);
    MEMORY[0x266784AD0](v74, -1, -1);

    v138(v137, v140);
  }

  else
  {

    v138(v69, v7);
  }

  v82 = v53;
  v83 = v139;
  v84 = v139[7];
  v85 = v139[8];
  swift_beginAccess();
  v86 = v83[2];
  v87 = v83[3];
  v88 = *&v149[24];
  v89 = v133;
  v90 = *(*v133 + 184);

  v139 = v88;
  v91 = v90(v84, v85, v86, v87, v131, v82, v130, v129, v88, v132);

  if (!v91)
  {
    v107 = v123;
    v141(v123, v143, v140);
    v108 = sub_2664DFE18();
    v109 = sub_2664E06D8();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v134;
    if (v110)
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_26629C000, v108, v109, "PodcastPlaybackHandler#warm Failed  to create podcasts manifest", v112, 2u);
      MEMORY[0x266784AD0](v112, -1, -1);
    }

    v113 = v140;
    v114 = v138;
    v138(v107, v140);
    v115 = v124;
    v141(v124, v143, v113);
    v116 = sub_2664DFE18();
    v117 = sub_2664E06B8();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = v111;
      v120 = swift_slowAlloc();
      *&v144 = v120;
      *v118 = 134218498;
      *(v118 + 4) = 3;
      *(v118 + 12) = 2048;
      *(v118 + 14) = 11;
      *(v118 + 22) = 2080;
      *(v118 + 24) = sub_2662A320C(0xD00000000000001ELL, 0x80000002664F3D70, &v144);
      _os_log_impl(&dword_26629C000, v116, v117, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v118, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v120);
      v121 = v120;
      v111 = v119;
      MEMORY[0x266784AD0](v121, -1, -1);
      MEMORY[0x266784AD0](v118, -1, -1);
    }

    v114(v115, v113);
    v144 = xmmword_2664E3800;
    v145 = 0x80000002664F3D70;
    v146 = 1;
    v111(&v144);
    return sub_2662D2F30(v144, *(&v144 + 1), v145, v146);
  }

  v92 = swift_allocObject();
  v93 = v134;
  v92[2] = v89;
  v92[3] = v93;
  v94 = v136;
  v92[4] = v136;
  v92[5] = v91;
  v95 = v127;
  v96 = v140;
  v141(v127, v143, v140);

  v97 = v91;
  v98 = sub_2664DFE18();
  v99 = sub_2664E06E8();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_26629C000, v98, v99, "PodcastPlaybackHandler#warm resolving destination...", v100, 2u);
    v101 = v100;
    v96 = v140;
    MEMORY[0x266784AD0](v101, -1, -1);
  }

  v138(v95, v96);
  v102 = swift_allocObject();
  *(v102 + 16) = v93;
  *(v102 + 24) = v94;
  v103 = v128;
  *(v102 + 32) = v128;
  *(v102 + 40) = v89;
  v104 = *&v149[16];
  *(v102 + 48) = *v149;
  *(v102 + 64) = v104;
  *(v102 + 80) = *v150;
  *(v102 + 95) = *&v150[15];
  *(v102 + 104) = sub_2662D2FA8;
  *(v102 + 112) = v92;

  v105 = v103;
  sub_2662D2A64(v149, &v144);

  sub_2662CB14C(v139, v126, v125, sub_2662D2FB4, v102);
}

uint64_t sub_2662C71E4(char a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, void *a7)
{
  v29 = a7;
  v30 = a2;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = a6;
    v21 = a3;
    v22 = a5;
    v23 = v20;
    *v20 = 67109120;
    *(v20 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v18, v19, "PodcastPlaybackHandler#warm computing reference to PodcastsKit controller..., startPlaybackImmediately: %{BOOL}d", v20, 8u);
    v24 = v23;
    a5 = v22;
    a3 = v21;
    a6 = v28;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v25 = *(a4 + 24);

  v26 = v29;

  sub_26630DD68(0, 1, v25, a5, a6, a1 & 1, v26, a4, v30, a3);
}

uint64_t sub_2662C7454(id *a1, void (*a2)(__int128 *), uint64_t a3, int a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v67 = a7;
  v68 = a6;
  v69 = sub_2664DFE38();
  v14 = *(v69 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v69);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v62 - v24;
  if (*a1)
  {
    v63 = *a1;
    v64 = a8;
    v65 = a4;
    v66 = a5;
    v26 = qword_280F914E8;
    swift_unknownObjectRetain();
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = v69;
    v28 = __swift_project_value_buffer(v69, qword_280F914F0);
    swift_beginAccess();
    v29 = v14;
    v30 = v14[2];
    v30(v22, v28, v27);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "PodcastPlaybackHandler#warm received valid controller reference", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v34 = v29[1];
    v34(v22, v27);
    v30(v19, v28, v27);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06C8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&aBlock = v38;
      *v37 = 136446466;
      if (qword_280071B18 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, &aBlock);
      *(v37 + 12) = 1026;
      *(v37 + 14) = v65 & 1;
      _os_log_impl(&dword_26629C000, v35, v36, "PodcastPlaybackHandler#warm %{public}s Starting Podcasts playback immediately?:%{BOOL,public}d", v37, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v34(v19, v27);
    v39 = v63;
    v40 = [v63 respondsToSelector_];
    v41 = v66;
    v42 = v64;
    if (v40)
    {
      v43 = swift_allocObject();
      v44 = v67;
      v43[2] = v68;
      v43[3] = v44;
      v43[4] = v42;
      v73 = sub_2662D3138;
      v74 = v43;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v71 = sub_2662C7B74;
      v72 = &block_descriptor_124;
      v45 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v39 setManifest:v41 startPlayback:v65 & 1 detailedCompletion:v45];
      _Block_release(v45);

      return swift_unknownObjectRelease_n();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v67 = v23;
    v68 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = v69;
    v48 = __swift_project_value_buffer(v69, qword_280F914F0);
    swift_beginAccess();
    v49 = v14[2];
    v49(v25, v48, v47);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v14;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "PodcastPlaybackHandler#warm error loading PodcastsKit controller", v53, 2u);
      v54 = v53;
      v14 = v52;
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v55 = v14[1];
    v56 = v69;
    v55(v25, v69);
    v57 = v67;
    v49(v67, v48, v56);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06B8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&aBlock = v61;
      *v60 = 134218498;
      *(v60 + 4) = 3;
      *(v60 + 12) = 2048;
      *(v60 + 14) = 33;
      *(v60 + 22) = 2080;
      *(v60 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3AE0, &aBlock);
      _os_log_impl(&dword_26629C000, v58, v59, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v60, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    v55(v57, v56);
    aBlock = xmmword_2664E3810;
    v71 = 0x80000002664F3AE0;
    LOBYTE(v72) = 1;
    a2(&aBlock);
    return sub_2662D2F30(aBlock, *(&aBlock + 1), v71, v72);
  }
}

void sub_2662C7B74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_2662C7BFC(void *a1, void (*a2)(uint64_t *), uint64_t a3, void *a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a7;
  v52 = a5;
  v53 = a4;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  if (a1)
  {
    v24 = qword_280F914E8;
    v50 = a1;
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v21, v25, v13);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06C8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = a8;
      v29 = a2;
      v30 = a3;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "PodcastPlaybackHandler#warm going to continuation buildAndStart...", v31, 2u);
      v32 = v31;
      a3 = v30;
      a2 = v29;
      a8 = v28;
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v14 + 8))(v21, v13);
    v33 = swift_allocObject();
    v34 = v53;
    v35 = v50;
    *(v33 + 16) = v52;
    *(v33 + 24) = v35;
    *(v33 + 32) = v34;
    v36 = *(a6 + 16);
    *(v33 + 40) = *a6;
    *(v33 + 56) = v36;
    *(v33 + 72) = *(a6 + 32);
    *(v33 + 87) = *(a6 + 47);
    *(v33 + 96) = v51;
    *(v33 + 104) = a8;
    v37 = v35;

    v38 = v34;
    sub_2662D2A64(a6, &v54);

    sub_2663F4978(0xD00000000000001BLL, 0x80000002664F3DB0, v38, a2, a3, 0, sub_2662D2FE8, v33);
  }

  else
  {
    v52 = a2;
    v53 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v41 = *(v14 + 16);
    v41(v23, v40, v13);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "PodcastPlaybackHandler#warm unexpected nil MPCAssistantRemoteControlDestination from media remote", v44, 2u);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v45 = *(v14 + 8);
    v45(v23, v13);
    v41(v18, v40, v13);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06B8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v54 = v49;
      *v48 = 134218498;
      *(v48 + 4) = 3;
      *(v48 + 12) = 2048;
      *(v48 + 14) = 13;
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F3D90, &v54);
      _os_log_impl(&dword_26629C000, v46, v47, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v48, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v45(v18, v13);
    v54 = xmmword_2664E3820;
    v55 = 0x80000002664F3D90;
    v56 = 1;
    v52(&v54);
    return sub_2662D2F30(v54, *(&v54 + 1), v55, v56);
  }
}

uint64_t sub_2662C815C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, _OWORD *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v77 = a8;
  v78 = a6;
  v74 = a1;
  v75 = a7;
  v71 = a5;
  v10 = sub_2664DFE08();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v69 = v13;
  v70 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v64 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v68 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - v20;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v23 = v16[2];
  v67 = v22;
  v66 = v23;
  v23(v21, v22, v15);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06C8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v24, v25, "PodcastPlaybackHandler#warm warm-continuation executing; checking if output devices has this device part of WHA group...", v26, 2u);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v65 = v16[1];
  v65(v21, v15);
  v27 = swift_allocObject();
  v28 = v77;
  v29 = v78;
  v30 = v78[1];
  *(v27 + 16) = *v78;
  *(v27 + 32) = v30;
  *(v27 + 48) = *(v29 + 32);
  *(v27 + 63) = *(v29 + 47);
  v31 = v74;
  v32 = v75;
  *(v27 + 72) = a4;
  *(v27 + 80) = v32;
  *(v27 + 88) = v28;
  *(v27 + 96) = v31;
  v33 = a2;
  *(v27 + 104) = a2;
  sub_2662D2A64(v29, aBlock);
  v34 = a4;

  sub_2662D2A64(v29, aBlock);
  v35 = v34;

  v36 = [v35 outputDeviceUIDs];
  v37 = sub_2664E04A8();

  v38 = *(v37 + 16);

  if (v38 || (v39 = [v35 hashedOutputDeviceUIDs], v40 = sub_2664E04A8(), v39, v41 = *(v40 + 16), , v41))
  {
    v74 = v35;
    v75 = v33;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_2662D2FFC;
    *(v42 + 24) = v27;
    v43 = qword_280F91508;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = qword_280F91D48;
    v45 = v76;
    sub_2664DFDE8();
    v46 = v72;
    v47 = v73;
    v48 = v70;
    (*(v72 + 16))(v70, v45, v73);
    v49 = (*(v46 + 80) + 33) & ~*(v46 + 80);
    v50 = (v69 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = "mediaPlaybackProviderCurrentDeviceApartWHAGroup";
    *(v51 + 24) = 47;
    *(v51 + 32) = 2;
    (*(v46 + 32))(v51 + v49, v48, v47);
    v52 = (v51 + v50);
    *v52 = sub_2662D31E8;
    v52[1] = v42;

    sub_2664E0848();
    v53 = v76;
    sub_2664DFDC8();
    v54 = swift_allocObject();
    *(v54 + 16) = sub_2662D31E0;
    *(v54 + 24) = v51;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_2662D31EC;
    *(v55 + 24) = v54;
    v56 = swift_allocObject();
    v35 = v74;
    v56[2] = v74;
    v56[3] = sub_2662D31F0;
    v56[4] = v55;
    aBlock[4] = sub_2662D31C0;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664B740C;
    aBlock[3] = &block_descriptor_118;
    v57 = _Block_copy(aBlock);
    v58 = v35;

    MEMORY[0x266784170](v71, v57);
    _Block_release(v57);

    (*(v46 + 8))(v53, v47);
  }

  else
  {
    v60 = v68;
    v66(v68, v67, v15);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06C8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup: no hashed routes, skipping", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    v65(v60, v15);
    sub_2662C88D0(0, v78, v35, v75, v77, v74, v33);
  }

  return sub_2662D2B88(v78);
}

uint64_t sub_2662C88D0(char a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a4;
  v37 = a7;
  v35[1] = a5;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v35 - v17;
  if ((a1 & 1) != 0 || (v19 = [a3 outputDeviceUIDs], v20 = sub_2664E04A8(), v19, v21 = *(v20 + 16), , !v21))
  {
    if ((*(a2 + 50) & 1) == 0)
    {
      v33 = 0;
      return v36(v33, a6, v37);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v18, v22, v11);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v23, v24, "PodcastPlaybackHandler#warm: sending to remote WHA destination, starting immediately", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
  }

  v26 = [a3 outputDeviceUIDs];
  v27 = sub_2664E04A8();

  v28 = *(v27 + 16);

  if (!v28)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v16, v29, v11);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "PodcastPlaybackHandler#warm: starting local playback immediately, preparing audio handoff...", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    if (qword_280071CD8 != -1)
    {
      swift_once();
    }

    sub_2664ABB34(nullsub_3, 0);
  }

  v33 = 1;
  return v36(v33, a6, v37);
}

uint64_t sub_2662C8CB4(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v45 = a5;
  v42 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = a2[1];
  v47 = *a2;
  v48 = v17;
  v49[0] = a2[2];
  *(v49 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v43 = v11;
  v40 = *(v11 + 16);
  v40(v16, v18, v10);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a4;
    v22 = a3;
    v23 = a6;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "PodcastPlaybackHandler#play (provisional)", v24, 2u);
    v25 = v24;
    a6 = v23;
    a3 = v22;
    a4 = v21;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v26 = *(v43 + 8);
  v26(v16, v10);
  if (*(*(&v48 + 1) + 16) && (BYTE2(v47) & 1) == 0)
  {
    v40(v41, v18, v10);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = a6;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "PodcastPlaybackHandler#play starting continuation...", v34, 2u);
      v35 = v34;
      a6 = v33;
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v26(v41, v10);
    v36 = swift_allocObject();
    *(v36 + 16) = v44;
    v37 = v48;
    *(v36 + 24) = v47;
    *(v36 + 40) = v37;
    *(v36 + 56) = v49[0];
    *(v36 + 71) = *(v49 + 15);
    *(v36 + 80) = a4;

    sub_2662D2A64(&v47, v46);
    v38 = a4;
    sub_2663F4978(0xD00000000000001BLL, 0x80000002664F3A70, v38, v45, a6, a3, sub_2662CDCEC, v36);
  }

  else
  {
    if (qword_280071CD8 != -1)
    {
      swift_once();
    }

    v27 = swift_allocObject();
    v28 = v42;
    *(v27 + 16) = v44;
    *(v27 + 24) = v28;
    v29 = v48;
    *(v27 + 32) = v47;
    *(v27 + 48) = v29;
    *(v27 + 64) = v49[0];
    *(v27 + 79) = *(v49 + 15);
    *(v27 + 88) = a3;
    *(v27 + 96) = a4;
    *(v27 + 104) = v45;
    *(v27 + 112) = a6;

    sub_2662D2A64(&v47, v46);

    v30 = a4;

    sub_2664ABB34(sub_2662D2AC0, v27);
  }
}

uint64_t sub_2662C9114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v25 = a5;
  v26 = a8;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "PodcastPlaybackHandler#play starting continuation...", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  v22 = *(a4 + 16);
  *(v21 + 24) = *a4;
  *(v21 + 40) = v22;
  *(v21 + 56) = *(a4 + 32);
  *(v21 + 71) = *(a4 + 47);
  *(v21 + 80) = a6;

  sub_2662D2A64(a4, v27);
  v23 = a6;
  sub_2663F4978(0xD00000000000001BLL, 0x80000002664F3A70, v23, a7, v26, v25, sub_2662D31BC, v21);
}

uint64_t sub_2662C9378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v29 = a5;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a1;
  v28 = a1;
  v14[4] = a2;
  v15 = qword_280F914E8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v16, v9);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "PodcastPlaybackHandler#play resolving destination...", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v20 = *(a4 + 24);
  v21 = *(a4 + 32);
  v22 = *(a4 + 40);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 16) = v28;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3;
  *(v23 + 40) = v24;
  v25 = *(a4 + 16);
  *(v23 + 48) = *a4;
  *(v23 + 64) = v25;
  *(v23 + 80) = *(a4 + 32);
  *(v23 + 95) = *(a4 + 47);
  *(v23 + 104) = sub_2662D2B2C;
  *(v23 + 112) = v14;

  v26 = v24;
  sub_2662D2A64(a4, v30);

  sub_2662CB14C(v20, v21, v22, sub_2662D2B38, v23);
}

uint64_t sub_2662C9630(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "PodcastPlaybackHandler#play computing reference to PodcastsKit controller...", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *(a1 + 24);

  sub_26630EBB8(0, 1, v15, a2, a3, a1);
}

uint64_t sub_2662C9830(void **a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v55 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = *a1;
  v58 = a3;
  if (v21)
  {
    v56 = a4;
    v22 = qword_280F914E8;
    swift_unknownObjectRetain();
    if (v22 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v24 = v8[2];
    v24(v18, v23, v7);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v55 = v15;
      v28 = v7;
      v29 = v21;
      v30 = v8;
      v31 = v27;
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "PodcastPlaybackHandler#play received valid controller reference", v27, 2u);
      v32 = v31;
      v8 = v30;
      v21 = v29;
      v7 = v28;
      v15 = v55;
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v33 = v8[1];
    v33(v18, v7);
    v24(v15, v23, v7);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06E8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136446210;
      v38 = v58;
      if (qword_280071B18 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, aBlock);
      _os_log_impl(&dword_26629C000, v34, v35, "PodcastPlaybackHandler#play %{public}s calling...", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);

      v33(v15, v7);
    }

    else
    {

      v33(v15, v7);
      v38 = v58;
    }

    v51 = swift_allocObject();
    v52 = v57;
    v51[2] = v56;
    v51[3] = v52;
    v51[4] = v38;
    aBlock[4] = sub_2662D2EA4;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662C7B74;
    aBlock[3] = &block_descriptor_71;
    v53 = _Block_copy(aBlock);

    [v21 playWithDetailedCompletion_];
    _Block_release(v53);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v40 = v8[2];
    v40(v20, v39, v7);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v8;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "PodcastPlaybackHandler#play Error loading PodcastsKit controller", v44, 2u);
      v45 = v44;
      v8 = v43;
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v46 = v8[1];
    v46(v20, v7);
    v40(v12, v39, v7);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06B8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v60 = v50;
      *v49 = 134218498;
      *(v49 + 4) = 3;
      *(v49 + 12) = 2048;
      *(v49 + 14) = 13;
      *(v49 + 22) = 2080;
      *(v49 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3AE0, &v60);
      _os_log_impl(&dword_26629C000, v47, v48, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v49, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v46(v12, v7);
    v60 = xmmword_2664E3830;
    v61 = 0x80000002664F3AE0;
    v57(&v60);
  }
}

uint64_t sub_2662C9EFC(void *a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v92 = a6;
  v93 = a8;
  v87 = a7;
  v90 = a2;
  v91 = a4;
  v94 = a3;
  v10 = sub_2664DFE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v86 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v80 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v80 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v80 - v26;
  if (a1)
  {
    v83 = v25;
    v84 = a5;
    v85 = v10;
    v28 = qword_280F914E8;
    v88 = a1;
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v81 = v16[2];
    v81(v24, v29, v15);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "PodcastPlaybackHandler#play checking if current device part of the WHA destination...", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v33 = v16[1];
    v82 = v16 + 1;
    v80 = v33;
    v33(v24, v15);
    v34 = swift_allocObject();
    v35 = v92;
    *(v34 + 16) = v91;
    v36 = *(v35 + 1);
    *(v34 + 24) = *v35;
    *(v34 + 40) = v36;
    *(v34 + 56) = *(v35 + 2);
    *(v34 + 71) = *(v35 + 47);
    v38 = v93;
    v37 = v94;
    *(v34 + 80) = v90;
    *(v34 + 88) = v37;
    *(v34 + 96) = v87;
    *(v34 + 104) = v38;

    sub_2662D2A64(v35, aBlock);

    sub_2662D2A64(v35, aBlock);

    v39 = v88;
    v40 = [v88 outputDeviceUIDs];
    v41 = sub_2664E04A8();

    v42 = *(v41 + 16);

    if (v42 || (v43 = [v39 hashedOutputDeviceUIDs], v44 = sub_2664E04A8(), v43, v45 = *(v44 + 16), , v45))
    {
      v46 = swift_allocObject();
      *(v46 + 16) = sub_2662D2B50;
      *(v46 + 24) = v34;
      v47 = qword_280F91508;

      if (v47 != -1)
      {
        swift_once();
      }

      v48 = qword_280F91D48;
      v49 = v89;
      sub_2664DFDE8();
      v50 = v86;
      v51 = v49;
      v52 = v85;
      (*(v11 + 16))(v86, v51, v85);
      v53 = (*(v11 + 80) + 33) & ~*(v11 + 80);
      v54 = (v12 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = swift_allocObject();
      *(v55 + 16) = "mediaPlaybackProviderCurrentDeviceApartWHAGroup";
      *(v55 + 24) = 47;
      *(v55 + 32) = 2;
      v56 = v55 + v53;
      v57 = v52;
      (*(v11 + 32))(v56, v50, v52);
      v58 = (v55 + v54);
      *v58 = sub_2662D2B60;
      v58[1] = v46;

      sub_2664E0848();
      v59 = v89;
      sub_2664DFDC8();
      v60 = swift_allocObject();
      *(v60 + 16) = sub_2662D2B68;
      *(v60 + 24) = v55;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_2662D2B6C;
      *(v61 + 24) = v60;
      v62 = swift_allocObject();
      v39 = v88;
      v62[2] = v88;
      v62[3] = sub_2662D2B74;
      v62[4] = v61;
      aBlock[4] = sub_2662D2B7C;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2664B740C;
      aBlock[3] = &block_descriptor_65_0;
      v63 = _Block_copy(aBlock);
      v64 = v39;

      MEMORY[0x266784170](v84, v63);
      _Block_release(v63);

      (*(v11 + 8))(v59, v57);
    }

    else
    {
      v81(v83, v29, v15);
      v77 = sub_2664DFE18();
      v78 = sub_2664E06C8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_26629C000, v77, v78, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup: no hashed routes, skipping", v79, 2u);
        MEMORY[0x266784AD0](v79, -1, -1);
      }

      v80(v83, v15);
      sub_2662D2BDC(0, v92, v90, v94, v87, v93);
    }

    sub_2662D2B88(v92);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v67 = v16[2];
    v67(v27, v66, v15);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06D8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "PodcastPlaybackHandler#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v70, 2u);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    v71 = v27;
    v72 = v16[1];
    v72(v71, v15);
    v67(v20, v66, v15);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06B8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v96 = v76;
      *v75 = 134218498;
      *(v75 + 4) = 3;
      *(v75 + 12) = 2048;
      *(v75 + 14) = 13;
      *(v75 + 22) = 2080;
      *(v75 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v96);
      _os_log_impl(&dword_26629C000, v73, v74, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v75, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v72(v20, v15);
    v96 = xmmword_2664E3840;
    v97 = 0xE900000000000074;
    v90(&v96);
  }
}

uint64_t sub_2662CA934(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v20[0] = a4;
  v7 = sub_2664E0038();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E00B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = v20[0];
  aBlock[4] = sub_2662D2F20;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_83;
  v18 = _Block_copy(aBlock);
  sub_2664E0068();
  v20[1] = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_2662CABE8(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v21 = a4;
  v7 = sub_2664E0038();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2664E00B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 36) = v21;
  aBlock[4] = sub_2662D2F10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_77;
  v18 = _Block_copy(aBlock);
  sub_2664E0068();
  v22 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_2662CAE9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v35 = a7;
  v36 = a8;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(sub_2664DE778());

  v22 = sub_2664DE6F8();
  if (v22)
  {
    v23 = v22;
    v24 = sub_2662CD3DC(v22, a3, a4, a5, a6, v35, v36, a9, a10, MEMORY[0x277D3DF48]);
  }

  else
  {
    v25 = a1;
    v26 = v17;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = v16;
    v28 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v29 = v20;
    (*(v26 + 16))(v20, v28, v27);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_2662A320C(v25, a2, &v37);
      _os_log_impl(&dword_26629C000, v30, v31, "Unexpected error unpacking storeid for episode: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v26 + 8))(v29, v27);
    return 0;
  }

  return v24;
}

uint64_t sub_2662CB14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v61 = &v57[-v16];
  v17 = sub_2664DFE08();
  v64 = *(v17 - 8);
  v18 = *(v64 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v57[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_project_boxed_opaque_existential_1((v5 + 32), *(v5 + 56));
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v63 = v22;
  v60 = *v21;
  v23 = qword_280F91508;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  if (a3 && !*(a1 + 16))
  {
    v59 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v42 = v61;
    (*(v11 + 16))(v61, v41, v10);
    v43 = v59;

    v44 = sub_2664DFE18();
    v45 = sub_2664E06E8();

    v58 = v45;
    v46 = os_log_type_enabled(v44, v45);
    v47 = v62;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v65 = v49;
      aBlock = v47;
      *v48 = 136315138;
      v67 = v43;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v50 = sub_2664E0318();
      v52 = sub_2662A320C(v50, v51, &v65);
      v43 = v59;

      *(v48 + 4) = v52;
      v47 = v62;
      _os_log_impl(&dword_26629C000, v44, v58, "MediaPlaybackProvider#destination Nil or empty hashedRouteUIDs, but non nil seRouteId: %s, will set that", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);

      (*(v11 + 8))(v61, v10);
    }

    else
    {

      (*(v11 + 8))(v42, v10);
    }

    v37 = [objc_opt_self() systemMediaApplicationDestination];
    v53 = swift_allocObject();
    v54 = v63;
    v53[2] = sub_2662CDCCC;
    v53[3] = v54;
    v53[4] = v60;
    v53[5] = v47;
    v53[6] = v43;
    v70 = sub_2662CDCDC;
    v71 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_2663A0C48;
    v69 = &block_descriptor_28;
    v55 = _Block_copy(&aBlock);

    [v37 resolveWithQueue:0 routeIdentifiers:0 localPlaybackPermitted:1 audioRoutingInfo:0 completion:v55];
    _Block_release(v55);
  }

  else
  {
    v60 = v24;
    v62 = v17;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v61 = v20;
    v25 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v15, v25, v10);

    v26 = sub_2664DFE18();
    v27 = sub_2664E06C8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446722;
      type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
      LODWORD(v65) = 0;
      v30 = sub_2664E0318();
      v32 = sub_2662A320C(v30, v31, &aBlock);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v65 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
      v33 = sub_2664E0318();
      v35 = sub_2662A320C(v33, v34, &aBlock);

      *(v28 + 14) = v35;
      *(v28 + 22) = 1026;
      *(v28 + 24) = 1;
      _os_log_impl(&dword_26629C000, v26, v27, "MediaPlaybackProvider#destination for routing: %{public}s, routes: %s, and localPlaybackPermitted: %{BOOL,public}d", v28, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v29, -1, -1);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    v17 = v62;
    v36 = [objc_opt_self() systemMediaApplicationDestination];
    v37 = sub_2664E0488();
    v38 = swift_allocObject();
    v39 = v63;
    *(v38 + 16) = sub_2662CDCCC;
    *(v38 + 24) = v39;
    v70 = sub_2662CDCD4;
    v71 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_2663A0C48;
    v69 = &block_descriptor_1;
    v40 = _Block_copy(&aBlock);

    [v36 resolveWithQueue:0 hashedRouteIdentifiers:v37 localPlaybackPermitted:1 audioRoutingInfo:0 completion:v40];
    _Block_release(v40);

    v20 = v61;
  }

  sub_2664E0838();
  sub_2664DFDD8();

  return (*(v64 + 8))(v20, v17);
}

uint64_t sub_2662CB9D8(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a1;
    v27 = v15;
    *v14 = 136446210;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072538, &unk_2664E3910);
    v17 = sub_2664E0318();
    v19 = sub_2662A320C(v17, v18, &v27);
    v24 = v4;
    v20 = a2;
    v21 = v19;

    *(v14 + 4) = v21;
    a2 = v20;
    _os_log_impl(&dword_26629C000, v11, v12, "Resolved playback destination as: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    (*(v25 + 8))(v8, v24);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_2662CBC78()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);

  return swift_deallocClassInstance();
}

uint64_t sub_2662CBD30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2662C581C();
  *a1 = result;
  return result;
}

uint64_t sub_2662CBDA8()
{
  v0 = sub_2664DFE08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664DE748();
  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_2664E36F0;
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  sub_2664DFDF8();
  sub_2664DFDC8();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2662CBF74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D83B88];
  *(v10 + 16) = xmmword_2664E36F0;
  v12 = MEMORY[0x277D83C10];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = a4;
  sub_2664DFDF8();
  sub_2664DFDC8();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2662CC174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v76 = a3;
  v77 = a5;
  v74 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072528, &unk_2664E3900);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v65[-v13];
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_2664DFE08();
  v78 = *(v19 - 8);
  v79 = v19;
  v20 = *(v78 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  v73 = v23;
  v75 = v22;
  sub_2664DFDC8();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v24, v14);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();

  v27 = os_log_type_enabled(v25, v26);
  v72 = v18;
  v28 = a8;
  if (v27)
  {
    v29 = swift_slowAlloc();
    v68 = v14;
    v30 = v29;
    v67 = swift_slowAlloc();
    v80 = a7;
    v81[0] = v67;
    *v30 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
    v69 = a7;
    v31 = sub_2664E0318();
    v66 = v26;
    v33 = sub_2662A320C(v31, v32, v81);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v80 = v28;
    v34 = v28;

    v35 = sub_2664E0318();
    v37 = sub_2662A320C(v35, v36, v81);
    a7 = v69;

    *(v30 + 14) = v37;
    _os_log_impl(&dword_26629C000, v25, v66, "ControllerProvider#manifest HashedRouteUIDs: %s & SERouteIds: %s", v30, 0x16u);
    v38 = v67;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);

    (*(v15 + 8))(v72, v68);
    if (!a7)
    {
LABEL_13:
      v70 = a4;
      if (v34 && v34[2])
      {
        v49 = v34[5];
        v69 = v34[4];
      }

      else
      {
        v69 = 0;
      }

      v72 = sub_2664DE798();
      if (qword_280F90B20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v51 = qword_280F90B40;
      v50 = unk_280F90B48;
      v52 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v53 = *(v51 - 8);
      v54 = *(v53 + 64);
      MEMORY[0x28223BE20](v52);
      v56 = &v65[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v53 + 16))(v56);
      (*(v50 + 16))(v51, v50);
      (*(v53 + 8))(v56, v51);
      v57 = *MEMORY[0x277D3DF28];
      v58 = sub_2664DE758();
      v59 = *(v58 - 8);
      v60 = v71;
      (*(v59 + 104))(v71, v57, v58);
      (*(v59 + 56))(v60, 0, 1, v58);
      objc_allocWithZone(sub_2664DE738());

      v48 = sub_2664DE718();
      goto LABEL_20;
    }
  }

  else
  {
    v34 = a8;

    (*(v15 + 8))(v72, v14);
    if (!a7)
    {
      goto LABEL_13;
    }
  }

  if (!a7[2])
  {
    goto LABEL_13;
  }

  v72 = sub_2664DE798();
  v39 = qword_280F90B20;

  if (v39 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = qword_280F90B40;
  v41 = unk_280F90B48;
  v42 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v43 = *(v40 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v65[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v43 + 16))(v46);
  (*(v41 + 16))(v40, v41);
  (*(v43 + 8))(v46, v40);
  v47 = objc_allocWithZone(sub_2664DE738());
  v48 = sub_2664DE728();
LABEL_20:
  v61 = v48;
  v62 = sub_2664DE788();

  sub_2664E0838();
  v63 = v75;
  sub_2664DFDD8();
  (*(v78 + 8))(v63, v79);
  return v62;
}

uint64_t sub_2662CCA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t (*a11)(uint64_t, uint64_t, void *))
{
  v83 = a8;
  v80 = a5;
  v81 = a7;
  v79 = a3;
  v85 = a1;
  v86 = a2;
  v13 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072528, &unk_2664E3900);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = &v69 - v16;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2664DFE08();
  v82 = *(v84 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v25 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  v77 = v25;
  sub_2664DFDC8();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v76 = a11;
  v26 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  (*(v18 + 16))(v21, v26, v17);

  v75 = v17;
  v27 = v21;
  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v18;
  v78 = v24;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v71 = v27;
    v33 = v32;
    v70 = swift_slowAlloc();
    v87 = a9;
    v88[0] = v70;
    *v33 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
    v72 = a9;
    v34 = sub_2664E0318();
    v36 = a6;
    v37 = sub_2662A320C(v34, v35, v88);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v87 = a10;
    v38 = a10;

    v39 = sub_2664E0318();
    v41 = sub_2662A320C(v39, v40, v88);

    *(v33 + 14) = v41;
    v13 = v72;
    _os_log_impl(&dword_26629C000, v28, v29, "ControllerProvider#manifest HashedRouteUIDs: %s & SERouteIds: %s", v33, 0x16u);
    v42 = v70;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v42, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);

    (*(v31 + 8))(v71, v75);
  }

  else
  {
    v36 = a6;
    v38 = a10;

    (*(v31 + 8))(v27, v75);
  }

  if (v13 && v13[2])
  {
    v75 = sub_2664DE798();
    v43 = qword_280F90B20;

    if (v43 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v44 = qword_280F90B40;
    v45 = unk_280F90B48;
    v46 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v47 = *(v44 - 8);
    v48 = *(v47 + 64);
    MEMORY[0x28223BE20](v46);
    v50 = &v69 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v50);
    (*(v45 + 16))(v44, v45);
    (*(v47 + 8))(v50, v44);
    v51 = objc_allocWithZone(sub_2664DE738());
    v52 = sub_2664DE728();
  }

  else
  {
    v75 = a4;
    v73 = v36;
    if (v38)
    {
      if (v38[2])
      {
        v53 = v38[4];
        v54 = v38[5];
        v72 = v53;
      }

      else
      {
        v72 = 0;
      }
    }

    else
    {
      v72 = 0;
    }

    sub_2664DE798();
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v56 = qword_280F90B40;
    v55 = unk_280F90B48;
    v57 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v58 = *(v56 - 8);
    v59 = *(v58 + 64);
    MEMORY[0x28223BE20](v57);
    v61 = &v69 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v58 + 16))(v61);
    (*(v55 + 16))(v56, v55);
    (*(v58 + 8))(v61, v56);
    v62 = *MEMORY[0x277D3DF28];
    v63 = sub_2664DE758();
    v64 = *(v63 - 8);
    v65 = v74;
    (*(v64 + 104))(v74, v62, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    objc_allocWithZone(sub_2664DE738());

    v52 = sub_2664DE718();
  }

  v66 = v76(v85, v86, v52);

  sub_2664E0838();
  v67 = v78;
  sub_2664DFDD8();
  (*(v82 + 8))(v67, v84);
  return v66;
}

uint64_t sub_2662CD3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t (*a10)(uint64_t, uint64_t))
{
  v70 = a7;
  v76 = a5;
  v77 = a6;
  v75 = a4;
  v73 = a2;
  v80 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072528, &unk_2664E3900);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = &v65 - v13;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DFE08();
  v78 = *(v19 - 8);
  v79 = v19;
  v20 = *(v78 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  v72 = v23;
  v74 = v22;
  sub_2664DFDC8();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v71 = a10;
  v24 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v24, v14);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v67 = v14;
    v28 = v27;
    v29 = swift_slowAlloc();
    v81 = a8;
    v82[0] = v29;
    v66 = v18;
    v30 = v29;
    *v28 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
    v31 = sub_2664E0318();
    v33 = sub_2662A320C(v31, v32, v82);
    v68 = a8;
    v34 = v33;

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v81 = a9;
    v35 = a9;

    v36 = sub_2664E0318();
    v38 = sub_2662A320C(v36, v37, v82);

    *(v28 + 14) = v38;
    a8 = v68;
    _os_log_impl(&dword_26629C000, v25, v26, "ControllerProvider#manifest HashedRouteUIDs: %s & SERouteIds: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    (*(v15 + 8))(v66, v67);
    if (!a8)
    {
LABEL_13:
      if (v35 && v35[2])
      {
        v49 = v35[5];
        v68 = v35[4];
      }

      else
      {
        v68 = 0;
      }

      v70 = sub_2664DE798();
      if (qword_280F90B20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v50 = qword_280F90B40;
      v51 = unk_280F90B48;
      v52 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v53 = *(v50 - 8);
      v54 = *(v53 + 64);
      MEMORY[0x28223BE20](v52);
      v56 = &v65 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v53 + 16))(v56);
      (*(v51 + 16))(v50, v51);
      (*(v53 + 8))(v56, v50);
      v57 = *MEMORY[0x277D3DF28];
      v58 = sub_2664DE758();
      v59 = *(v58 - 8);
      v60 = v69;
      (*(v59 + 104))(v69, v57, v58);
      (*(v59 + 56))(v60, 0, 1, v58);
      objc_allocWithZone(sub_2664DE738());

      v48 = sub_2664DE718();
      goto LABEL_20;
    }
  }

  else
  {
    v35 = a9;

    (*(v15 + 8))(v18, v14);
    if (!a8)
    {
      goto LABEL_13;
    }
  }

  if (!a8[2])
  {
    goto LABEL_13;
  }

  v70 = sub_2664DE798();
  v39 = qword_280F90B20;

  if (v39 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = qword_280F90B40;
  v41 = unk_280F90B48;
  v42 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v43 = *(v40 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v65 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v46);
  (*(v41 + 16))(v40, v41);
  (*(v43 + 8))(v46, v40);
  v47 = objc_allocWithZone(sub_2664DE738());
  v48 = sub_2664DE728();
LABEL_20:
  v61 = v48;
  v62 = v71(v80, v48);

  sub_2664E0838();
  v63 = v74;
  sub_2664DFDD8();
  (*(v78 + 8))(v63, v79);
  return v62;
}

uint64_t sub_2662CDCFC()
{
  sub_2662D2EBC();
  if (sub_2664E09B8())
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_2664E09B8();
  }

  return v0 & 1;
}

uint64_t sub_2662CDDCC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(_BYTE *), uint64_t a8)
{
  v269 = a8;
  v270 = a7;
  v267 = a6;
  v268 = a5;
  v271 = a4;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v266 = &v246 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v274 = &v246 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v265 = &v246 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v273 = &v246 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v264 = &v246 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v258 = &v246 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v263 = &v246 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v257 = &v246 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v251 = &v246 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v250 = &v246 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v247 = &v246 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v249 = &v246 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v248 = &v246 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v262 = &v246 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v256 = &v246 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v261 = &v246 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v253 = &v246 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v260 = &v246 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v255 = &v246 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v259 = &v246 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v254 = &v246 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v252 = &v246 - v57;
  MEMORY[0x28223BE20](v56);
  v59 = &v246 - v58;
  if (a3)
  {
    v60 = a2;
  }

  else
  {
    v60 = 0;
  }

  v277 = v60;
  if (a3)
  {
    v61 = a3;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  v62 = qword_280F914E8;

  if (v62 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v275 = v12[2];
  v276 = v63;
  v275(v59, v63, v11);

  v64 = sub_2664DFE18();
  v65 = sub_2664E06E8();

  v66 = os_log_type_enabled(v64, v65);
  v67 = v11;
  v272 = v61;
  if (v66)
  {
    v68 = v12;
    v69 = v11;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v280 = v71;
    *v70 = 136315138;
    *(v70 + 4) = sub_2662A320C(v277, v61, v280);
    _os_log_impl(&dword_26629C000, v64, v65, "PodcastPlaybackHandler#_validateResult errorOnion: '%s'", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x266784AD0](v71, -1, -1);
    v72 = v70;
    v67 = v69;
    v12 = v68;
    MEMORY[0x266784AD0](v72, -1, -1);
  }

  v73 = v12[1];
  v73(v59, v67);
  v75 = v273;
  v74 = v274;
  v76 = v275;
  if (a1 <= 3)
  {
    v82 = v277;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v110 = v254;
        v275(v254, v276, v67);
        v111 = sub_2664DFE18();
        v112 = sub_2664E06D8();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *v280 = v114;
          *v113 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v113 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
          *(v113 + 12) = 2050;
          *(v113 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v111, v112, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because explicit content: %{public}ld", v113, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v114);
          MEMORY[0x266784AD0](v114, -1, -1);
          MEMORY[0x266784AD0](v113, -1, -1);

          v73(v254, v67);
          v76 = v275;
        }

        else
        {

          v73(v110, v67);
        }

        *v280 = 0x746963696C707845;
        *&v280[8] = 0xEF746E65746E6F43;
        MEMORY[0x2667833B0](v277, v272);

        v162 = *v280;
        v163 = v259;
        v76(v259, v276, v67);

        v164 = sub_2664DFE18();
        v165 = sub_2664E06B8();
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          *v280 = v167;
          *v166 = 134218498;
          *(v166 + 4) = 3;
          *(v166 + 12) = 2048;
          *(v166 + 14) = 17;
          *(v166 + 22) = 2080;
          v168 = v67;
          v169 = sub_2662A320C(v162, *(&v162 + 1), v280);

          *(v166 + 24) = v169;
          _os_log_impl(&dword_26629C000, v164, v165, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v166, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v167);
          MEMORY[0x266784AD0](v167, -1, -1);
          MEMORY[0x266784AD0](v166, -1, -1);

          v170 = v259;
          v171 = v168;
        }

        else
        {

          v170 = v163;
          v171 = v67;
        }

        v73(v170, v171);
        v151 = v267;
        *v280 = 785;
        *&v280[8] = v162;
        v270(v280);

        a1 = 2;
      }

      else
      {
        v95 = v253;
        v275(v253, v276, v67);
        v96 = sub_2664DFE18();
        v97 = sub_2664E06D8();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *v280 = v99;
          *v98 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v98 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
          *(v98 + 12) = 2050;
          *(v98 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v96, v97, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because server is not reachable: %{public}ld", v98, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          MEMORY[0x266784AD0](v99, -1, -1);
          MEMORY[0x266784AD0](v98, -1, -1);

          v73(v95, v67);
          v82 = v277;
        }

        else
        {

          v73(v95, v67);
        }

        *v280 = 0xD000000000000011;
        *&v280[8] = 0x80000002664F3D00;
        MEMORY[0x2667833B0](v82, v272);

        v141 = *v280;
        v142 = v261;
        v76(v261, v276, v67);

        v143 = sub_2664DFE18();
        v144 = sub_2664E06B8();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          *v280 = v146;
          *v145 = 134218498;
          *(v145 + 4) = 3;
          *(v145 + 12) = 2048;
          *(v145 + 14) = 153;
          *(v145 + 22) = 2080;
          v147 = v67;
          v148 = sub_2662A320C(v141, *(&v141 + 1), v280);

          *(v145 + 24) = v148;
          _os_log_impl(&dword_26629C000, v143, v144, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v145, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v146);
          MEMORY[0x266784AD0](v146, -1, -1);
          MEMORY[0x266784AD0](v145, -1, -1);

          v149 = v261;
          v150 = v147;
        }

        else
        {

          v149 = v142;
          v150 = v67;
        }

        v73(v149, v150);
        v151 = v267;
        *v280 = 926;
        *&v280[8] = v141;
        v270(v280);

        a1 = 3;
      }

      return sub_2662CA934(v271, v268, v151, a1);
    }

    if (!a1)
    {

      v105 = v252;
      v76(v252, v276, v67);
      v106 = sub_2664DFE18();
      v107 = sub_2664E06E8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *v280 = v109;
        *v108 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v108 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
        *(v108 + 12) = 2050;
        *(v108 + 14) = sub_2664DE748();
        _os_log_impl(&dword_26629C000, v106, v107, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result succeeded with code: %{public}ld", v108, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        MEMORY[0x266784AD0](v109, -1, -1);
        MEMORY[0x266784AD0](v108, -1, -1);
      }

      v73(v105, v67);
      memset(v280, 0, sizeof(v280));
      v270(v280);
      a1 = 0;
      goto LABEL_104;
    }

    if (a1 != 1)
    {
LABEL_57:
      v275(v274, v276, v67);
      v130 = sub_2664DFE18();
      v131 = sub_2664E06D8();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *v280 = v133;
        *v132 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v132 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
        *(v132 + 12) = 2050;
        *(v132 + 14) = sub_2664DE748();
        _os_log_impl(&dword_26629C000, v130, v131, "PodcastPlaybackHandler#_validateResult %{public}s result failed with unknown error code: %{public}ld", v132, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        MEMORY[0x266784AD0](v133, -1, -1);
        MEMORY[0x266784AD0](v132, -1, -1);

        v73(v274, v67);
        v76 = v275;
      }

      else
      {

        v73(v74, v67);
      }

      strcpy(v280, "UnknownError_");
      *&v280[14] = -4864;
      v278 = sub_2664DE748();
      v212 = sub_2664E0D48();
      MEMORY[0x2667833B0](v212);

      MEMORY[0x2667833B0](v277, v272);

      v213 = *v280;
      v214 = v266;
      v76(v266, v276, v67);

      v215 = sub_2664DFE18();
      v216 = sub_2664E06B8();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v276 = v12;
        v277 = v67;
        v219 = v218;
        *v280 = v218;
        *v217 = 134218498;
        *(v217 + 4) = 3;
        *(v217 + 12) = 2048;
        *(v217 + 14) = 4;
        *(v217 + 22) = 2080;
        v220 = v213;
        v221 = sub_2662A320C(v213, *(&v213 + 1), v280);

        *(v217 + 24) = v221;
        _os_log_impl(&dword_26629C000, v215, v216, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v217, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v219);
        MEMORY[0x266784AD0](v219, -1, -1);
        MEMORY[0x266784AD0](v217, -1, -1);

        v73(v266, v277);
      }

      else
      {

        v73(v214, v67);
        v220 = v213;
      }

      *v280 = 772;
      *&v280[8] = v220;
      *&v280[16] = *(&v213 + 1);
      v270(v280);

LABEL_104:
      v151 = v267;
      return sub_2662CA934(v271, v268, v151, a1);
    }

    v83 = v272;
    *v280 = v277;
    *&v280[8] = v272;
    v278 = 0x2934202C333828;
    v279 = 0xE700000000000000;
    sub_2662D2EBC();
    if (sub_2664E09B8())
    {
      *v280 = 0xD000000000000012;
      *&v280[8] = 0x80000002664F3BB0;
      MEMORY[0x2667833B0](v82, v83);

      v84 = *&v280[8];
      v85 = *v280;
      v86 = v251;
      v76(v251, v276, v67);

      v87 = sub_2664DFE18();
      v88 = sub_2664E06B8();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v280 = v90;
        *v89 = 134218498;
        *(v89 + 4) = 3;
        *(v89 + 12) = 2048;
        *(v89 + 14) = 152;
        *(v89 + 22) = 2080;
        v91 = v67;
        v92 = sub_2662A320C(v85, v84, v280);

        *(v89 + 24) = v92;
        _os_log_impl(&dword_26629C000, v87, v88, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v89, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        MEMORY[0x266784AD0](v90, -1, -1);
        MEMORY[0x266784AD0](v89, -1, -1);

        v93 = v251;
        v94 = v91;
      }

      else
      {

        v93 = v86;
        v94 = v67;
      }

      v73(v93, v94);
      v151 = v267;
      v222 = 924;
LABEL_107:
      *v280 = v222;
      *&v280[8] = v85;
LABEL_120:
      *&v280[16] = v84;
      v270(v280);

      a1 = 1;
      return sub_2662CA934(v271, v268, v151, a1);
    }

    *v280 = v82;
    *&v280[8] = v83;
    v278 = 0x293731202C323328;
    v279 = 0xE800000000000000;
    if (sub_2664E09B8())
    {

      v84 = 0x80000002664F3B80;
      v134 = v250;
      v76(v250, v276, v67);
      v135 = sub_2664DFE18();
      v136 = sub_2664E06B8();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = v134;
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v280 = v139;
        *v138 = 134218498;
        *(v138 + 4) = 3;
        *(v138 + 12) = 2048;
        *(v138 + 14) = 50;
        *(v138 + 22) = 2080;
        *(v138 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3B80, v280);
        _os_log_impl(&dword_26629C000, v135, v136, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v138, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v139);
        MEMORY[0x266784AD0](v139, -1, -1);
        MEMORY[0x266784AD0](v138, -1, -1);

        v140 = v137;
      }

      else
      {

        v140 = v134;
      }

      v73(v140, v67);
      v151 = v267;
      v230 = xmmword_2664E3860;
    }

    else
    {
      if ((sub_2662CDCFC() & 1) == 0)
      {
        v231 = v248;
        v76(v248, v276, v67);
        v232 = sub_2664DFE18();
        v233 = sub_2664E06D8();
        if (os_log_type_enabled(v232, v233))
        {
          v234 = swift_slowAlloc();
          v235 = swift_slowAlloc();
          *v280 = v235;
          *v234 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v234 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
          *(v234 + 12) = 2050;
          *(v234 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v232, v233, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed : %{public}ld", v234, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v235);
          MEMORY[0x266784AD0](v235, -1, -1);
          MEMORY[0x266784AD0](v234, -1, -1);

          v73(v248, v67);
          v82 = v277;
        }

        else
        {

          v73(v231, v67);
        }

        *v280 = 0xD000000000000015;
        *&v280[8] = 0x80000002664F3CC0;
        MEMORY[0x2667833B0](v82, v272);

        v84 = *&v280[8];
        v85 = *v280;
        v237 = v249;
        v76(v249, v276, v67);

        v238 = sub_2664DFE18();
        v239 = sub_2664E06B8();
        if (os_log_type_enabled(v238, v239))
        {
          v240 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          *v280 = v241;
          *v240 = 134218498;
          *(v240 + 4) = 3;
          *(v240 + 12) = 2048;
          *(v240 + 14) = 4;
          *(v240 + 22) = 2080;
          v242 = v67;
          v243 = sub_2662A320C(v85, v84, v280);

          *(v240 + 24) = v243;
          _os_log_impl(&dword_26629C000, v238, v239, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v240, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v241);
          MEMORY[0x266784AD0](v241, -1, -1);
          MEMORY[0x266784AD0](v240, -1, -1);

          v244 = v249;
          v245 = v242;
        }

        else
        {

          v244 = v237;
          v245 = v67;
        }

        v73(v244, v245);
        v151 = v267;
        v222 = 772;
        goto LABEL_107;
      }

      v84 = 0x80000002664F3B60;
      v223 = v247;
      v76(v247, v276, v67);
      v224 = sub_2664DFE18();
      v225 = sub_2664E06B8();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = v223;
        v227 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        *v280 = v228;
        *v227 = 134218498;
        *(v227 + 4) = 3;
        *(v227 + 12) = 2048;
        *(v227 + 14) = 154;
        *(v227 + 22) = 2080;
        *(v227 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F3B60, v280);
        _os_log_impl(&dword_26629C000, v224, v225, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v227, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v228);
        MEMORY[0x266784AD0](v228, -1, -1);
        MEMORY[0x266784AD0](v227, -1, -1);

        v229 = v226;
      }

      else
      {

        v229 = v223;
      }

      v73(v229, v67);
      v151 = v267;
      v230 = xmmword_2664E3850;
    }

    *v280 = v230;
    goto LABEL_120;
  }

  v77 = v277;
  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      v120 = v255;
      v275(v255, v276, v67);
      v121 = sub_2664DFE18();
      v122 = sub_2664E06D8();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *v280 = v124;
        *v123 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v123 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
        *(v123 + 12) = 2050;
        *(v123 + 14) = sub_2664DE748();
        _os_log_impl(&dword_26629C000, v121, v122, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because there is no unplayed episode: %{public}ld", v123, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v124);
        MEMORY[0x266784AD0](v124, -1, -1);
        MEMORY[0x266784AD0](v123, -1, -1);

        v73(v255, v67);
        v77 = v277;
      }

      else
      {

        v73(v120, v67);
      }

      *v280 = 0xD000000000000012;
      *&v280[8] = 0x80000002664F3C30;
      MEMORY[0x2667833B0](v77, v272);

      v182 = *v280;
      v183 = v260;
      v76(v260, v276, v67);

      v184 = sub_2664DFE18();
      v185 = sub_2664E06B8();
      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        *v280 = v187;
        *v186 = 134218498;
        *(v186 + 4) = 3;
        *(v186 + 12) = 2048;
        *(v186 + 14) = 19;
        *(v186 + 22) = 2080;
        v188 = v67;
        v189 = sub_2662A320C(v182, *(&v182 + 1), v280);

        *(v186 + 24) = v189;
        _os_log_impl(&dword_26629C000, v184, v185, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v186, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v187);
        MEMORY[0x266784AD0](v187, -1, -1);
        MEMORY[0x266784AD0](v186, -1, -1);

        v190 = v260;
        v191 = v188;
      }

      else
      {

        v190 = v183;
        v191 = v67;
      }

      v73(v190, v191);
      v151 = v267;
      *v280 = 787;
      *&v280[8] = v182;
      v270(v280);

      a1 = 4;
    }

    else
    {
      v100 = v257;
      v275(v257, v276, v67);
      v101 = sub_2664DFE18();
      v102 = sub_2664E06D8();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v280 = v104;
        *v103 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v103 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
        *(v103 + 12) = 2050;
        *(v103 + 14) = sub_2664DE748();
        _os_log_impl(&dword_26629C000, v101, v102, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result not subscribed: %{public}ld", v103, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        MEMORY[0x266784AD0](v104, -1, -1);
        MEMORY[0x266784AD0](v103, -1, -1);

        v73(v257, v67);
        v77 = v277;
      }

      else
      {

        v73(v100, v67);
      }

      strcpy(v280, "NoContent");
      *&v280[10] = 0;
      *&v280[12] = -385875968;
      MEMORY[0x2667833B0](v77, v272);

      v152 = *v280;
      v153 = v263;
      v76(v263, v276, v67);

      v154 = sub_2664DFE18();
      v155 = sub_2664E06B8();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        *v280 = v157;
        *v156 = 134218498;
        *(v156 + 4) = 3;
        *(v156 + 12) = 2048;
        *(v156 + 14) = 44;
        *(v156 + 22) = 2080;
        v158 = v67;
        v159 = sub_2662A320C(v152, *(&v152 + 1), v280);

        *(v156 + 24) = v159;
        _os_log_impl(&dword_26629C000, v154, v155, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v156, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v157);
        MEMORY[0x266784AD0](v157, -1, -1);
        MEMORY[0x266784AD0](v156, -1, -1);

        v160 = v263;
        v161 = v158;
      }

      else
      {

        v160 = v153;
        v161 = v67;
      }

      v73(v160, v161);
      v151 = v267;
      *v280 = 813;
      *&v280[8] = v152;
      v270(v280);

      a1 = 5;
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        v115 = v256;
        v275(v256, v276, v67);
        v116 = sub_2664DFE18();
        v117 = sub_2664E06D8();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          *v280 = v119;
          *v118 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v118 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
          *(v118 + 12) = 2050;
          *(v118 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v116, v117, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because max stream count has been reached: %{public}ld", v118, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v119);
          MEMORY[0x266784AD0](v119, -1, -1);
          MEMORY[0x266784AD0](v118, -1, -1);

          v73(v256, v67);
          v77 = v277;
        }

        else
        {

          v73(v115, v67);
        }

        *v280 = 0xD000000000000015;
        *&v280[8] = 0x80000002664F3CE0;
        MEMORY[0x2667833B0](v77, v272);

        v172 = *v280;
        v173 = v262;
        v76(v262, v276, v67);

        v174 = sub_2664DFE18();
        v175 = sub_2664E06B8();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          *v280 = v177;
          *v176 = 134218498;
          *(v176 + 4) = 3;
          *(v176 + 12) = 2048;
          *(v176 + 14) = 14;
          *(v176 + 22) = 2080;
          v178 = v67;
          v179 = sub_2662A320C(v172, *(&v172 + 1), v280);

          *(v176 + 24) = v179;
          _os_log_impl(&dword_26629C000, v174, v175, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v176, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v177);
          MEMORY[0x266784AD0](v177, -1, -1);
          MEMORY[0x266784AD0](v176, -1, -1);

          v180 = v262;
          v181 = v178;
        }

        else
        {

          v180 = v173;
          v181 = v67;
        }

        v73(v180, v181);
        v151 = v267;
        *v280 = 782;
        *&v280[8] = v172;
        v270(v280);

        a1 = 6;
        break;
      case 7:
        v125 = v258;
        v275(v258, v276, v67);
        v126 = sub_2664DFE18();
        v127 = sub_2664E06D8();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          *v280 = v129;
          *v128 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v128 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
          *(v128 + 12) = 2050;
          *(v128 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v126, v127, "PodcastPlaybackHandler#_validateResult %{public}s  podcast was not connected to the internet: %{public}ld", v128, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v129);
          MEMORY[0x266784AD0](v129, -1, -1);
          MEMORY[0x266784AD0](v128, -1, -1);

          v73(v258, v67);
          v77 = v277;
        }

        else
        {

          v73(v125, v67);
        }

        strcpy(v280, "NetworkError");
        v280[13] = 0;
        *&v280[14] = -5120;
        MEMORY[0x2667833B0](v77, v272);

        v202 = *v280;
        v203 = v264;
        v76(v264, v276, v67);

        v204 = sub_2664DFE18();
        v205 = sub_2664E06B8();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          v207 = swift_slowAlloc();
          *v280 = v207;
          *v206 = 134218498;
          *(v206 + 4) = 3;
          *(v206 + 12) = 2048;
          *(v206 + 14) = 36;
          *(v206 + 22) = 2080;
          v208 = v67;
          v209 = sub_2662A320C(v202, *(&v202 + 1), v280);

          *(v206 + 24) = v209;
          _os_log_impl(&dword_26629C000, v204, v205, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v206, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v207);
          MEMORY[0x266784AD0](v207, -1, -1);
          MEMORY[0x266784AD0](v206, -1, -1);

          v210 = v264;
          v211 = v208;
        }

        else
        {

          v210 = v203;
          v211 = v67;
        }

        v73(v210, v211);
        v151 = v267;
        *v280 = 805;
        *&v280[8] = v202;
        v270(v280);

        a1 = 7;
        break;
      case 8:
        v275(v273, v276, v67);
        v78 = sub_2664DFE18();
        v79 = sub_2664E06D8();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *v280 = v81;
          *v80 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v80 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v280);
          *(v80 + 12) = 2050;
          *(v80 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v78, v79, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because application requires preflight: %{public}ld", v80, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          MEMORY[0x266784AD0](v81, -1, -1);
          MEMORY[0x266784AD0](v80, -1, -1);

          v73(v273, v67);
          v77 = v277;
        }

        else
        {

          v73(v75, v67);
        }

        *v280 = 0xD00000000000001CLL;
        *&v280[8] = 0x80000002664F3CA0;
        MEMORY[0x2667833B0](v77, v272);

        v192 = *v280;
        v193 = v265;
        v76(v265, v276, v67);

        v194 = sub_2664DFE18();
        v195 = sub_2664E06B8();
        if (os_log_type_enabled(v194, v195))
        {
          v196 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          *v280 = v197;
          *v196 = 134218498;
          *(v196 + 4) = 3;
          *(v196 + 12) = 2048;
          *(v196 + 14) = 51;
          *(v196 + 22) = 2080;
          v198 = v67;
          v199 = sub_2662A320C(v192, *(&v192 + 1), v280);

          *(v196 + 24) = v199;
          _os_log_impl(&dword_26629C000, v194, v195, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v196, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v197);
          MEMORY[0x266784AD0](v197, -1, -1);
          MEMORY[0x266784AD0](v196, -1, -1);

          v200 = v265;
          v201 = v198;
        }

        else
        {

          v200 = v193;
          v201 = v67;
        }

        v73(v200, v201);
        v151 = v267;
        *v280 = 820;
        *&v280[8] = v192;
        v270(v280);

        a1 = 8;
        return sub_2662CA934(v271, v268, v151, a1);
      default:
        goto LABEL_57;
    }
  }

  return sub_2662CA934(v271, v268, v151, a1);
}

uint64_t sub_2662D0648(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v180 = a7;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  LODWORD(v187) = a1;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v175 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v174 = &v168 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v172 = &v168 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v184 = &v168 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v171 = &v168 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v169 = &v168 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v176 = &v168 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v185 = &v168 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v170 = &v168 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v183 = &v168 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v173 = &v168 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v168 - v36;
  if (a3)
  {
    v38 = a2;
  }

  else
  {
    v38 = 0;
  }

  v186 = v38;
  if (a3)
  {
    v39 = a3;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  v40 = qword_280F914E8;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v42 = (v12 + 2);
  v43 = v12[2];
  v43(v37, v41, v11);

  v44 = sub_2664DFE18();
  v45 = sub_2664E06E8();

  v46 = os_log_type_enabled(v44, v45);
  v182 = a6;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v177 = v43;
    v48 = v41;
    v49 = (v12 + 2);
    v50 = v12;
    v51 = v11;
    v52 = v47;
    v53 = swift_slowAlloc();
    v188[0] = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_2662A320C(v186, v39, v188);
    _os_log_impl(&dword_26629C000, v44, v45, "PodcastPlaybackHandler#validateStatus errorOnion: '%s'", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x266784AD0](v53, -1, -1);
    v54 = v52;
    v11 = v51;
    v12 = v50;
    v42 = v49;
    v41 = v48;
    v43 = v177;
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  v55 = v12[1];
  v55(v37, v11);
  v57 = v184;
  v56 = v185;
  v58 = v183;
  if (v187 <= 3)
  {
    if (!v187)
    {

      v85 = v173;
      v43(v173, v41, v11);
      v86 = sub_2664DFE18();
      v87 = sub_2664E06E8();
      v88 = os_log_type_enabled(v86, v87);
      v89 = v179;
      if (v88)
      {
        v187 = v11;
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v188[0] = v91;
        *v90 = 136446466;
        v92 = v178;
        v93 = v180;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v90 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v188);
        *(v90 + 12) = 1026;
        *(v90 + 14) = 0;
        _os_log_impl(&dword_26629C000, v86, v87, "PodcastPlaybackHandler#validateStatus %{public}s podcast status succeeded with code: %{public}u", v90, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        MEMORY[0x266784AD0](v91, -1, -1);
        MEMORY[0x266784AD0](v90, -1, -1);

        v55(v173, v187);
      }

      else
      {

        v55(v85, v11);
        v92 = v178;
        v93 = v180;
      }

      v188[0] = 0;
      v188[1] = 0;
      v189 = 0;
      v93(v188);
      v119 = 0;
      goto LABEL_70;
    }

    if (v187 != 1)
    {
      if (v187 == 2)
      {
        v43(v183, v41, v11);
        v59 = v58;
        v60 = sub_2664DFE18();
        v61 = sub_2664E06E8();
        v62 = os_log_type_enabled(v60, v61);
        v168 = v12;
        if (v62)
        {
          v63 = v11;
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v188[0] = v65;
          *v64 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v64 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v188);
          *(v64 + 12) = 1026;
          *(v64 + 14) = 2;
          _os_log_impl(&dword_26629C000, v60, v61, "PodcastPlaybackHandler#validateStatus %{public}s status command failed error code: %{public}u", v64, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v65);
          MEMORY[0x266784AD0](v65, -1, -1);
          MEMORY[0x266784AD0](v64, -1, -1);

          v66 = v183;
          v11 = v63;
          v67 = v63;
        }

        else
        {

          v66 = v59;
          v67 = v11;
        }

        v55(v66, v67);
        strcpy(v188, "CommandFailed");
        HIWORD(v188[1]) = -4864;
        MEMORY[0x2667833B0](v186, v39);

        v143 = v188[0];
        v142 = v188[1];
        v144 = v170;
        v43(v170, v41, v11);

        v145 = sub_2664DFE18();
        v146 = sub_2664E06B8();
        v147 = os_log_type_enabled(v145, v146);
        v148 = v180;
        if (v147)
        {
          v149 = swift_slowAlloc();
          v187 = v11;
          v150 = v149;
          v151 = swift_slowAlloc();
          v188[0] = v151;
          *v150 = 134218498;
          *(v150 + 4) = 3;
          *(v150 + 12) = 2048;
          *(v150 + 14) = 0;
          *(v150 + 22) = 2080;
          v152 = v144;
          v153 = sub_2662A320C(v143, v142, v188);

          *(v150 + 24) = v153;
          _os_log_impl(&dword_26629C000, v145, v146, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v150, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v151);
          MEMORY[0x266784AD0](v151, -1, -1);
          MEMORY[0x266784AD0](v150, -1, -1);

          v154 = v152;
          v155 = v187;
        }

        else
        {

          v154 = v144;
          v155 = v11;
        }

        v55(v154, v155);
        v92 = v178;
        v89 = v179;
        v188[0] = 768;
        v188[1] = v143;
        v189 = v142;
        v148(v188);

        v119 = 2;
LABEL_70:
        v118 = v182;
        return sub_2662CABE8(v92, v89, v118, v119);
      }

      goto LABEL_38;
    }

LABEL_26:
    v183 = v55;
    v78 = v41;
    v43(v185, v41, v11);
    v79 = sub_2664DFE18();
    v80 = v11;
    v81 = sub_2664E06E8();
    if (os_log_type_enabled(v79, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v188[0] = v83;
      *v82 = 136446466;
      if (qword_280071B18 != -1)
      {
        swift_once();
      }

      *(v82 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v188);
      *(v82 + 12) = 1026;
      *(v82 + 14) = v187;
      _os_log_impl(&dword_26629C000, v79, v81, "PodcastPlaybackHandler#validateStatus %{public}s status failed with no now playing item error code: %{public}u", v82, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x266784AD0](v83, -1, -1);
      MEMORY[0x266784AD0](v82, -1, -1);

      v84 = v185;
    }

    else
    {

      v84 = v56;
    }

    (v183)(v84, v80);
    v188[0] = 0xD000000000000012;
    v188[1] = 0x80000002664F3C30;
    MEMORY[0x2667833B0](v186, v39);

    v109 = v188[0];
    v108 = v188[1];
    v110 = v176;
    v43(v176, v78, v80);

    v111 = sub_2664DFE18();
    v112 = sub_2664E06B8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v188[0] = v114;
      *v113 = 134218498;
      *(v113 + 4) = 3;
      *(v113 + 12) = 2048;
      *(v113 + 14) = 19;
      *(v113 + 22) = 2080;
      v115 = v110;
      v116 = sub_2662A320C(v109, v108, v188);

      *(v113 + 24) = v116;
      _os_log_impl(&dword_26629C000, v111, v112, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v113, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      MEMORY[0x266784AD0](v114, -1, -1);
      MEMORY[0x266784AD0](v113, -1, -1);

      v117 = v115;
    }

    else
    {

      v117 = v110;
    }

    (v183)(v117, v80);
    v118 = v182;
    v92 = v178;
    v89 = v179;
    v188[0] = 787;
    v188[1] = v109;
    v189 = v108;
    v180(v188);
    goto LABEL_59;
  }

  switch(v187)
  {
    case 4:
      v183 = v55;
      v43(v184, v41, v11);
      v94 = sub_2664DFE18();
      v95 = sub_2664E06E8();
      if (os_log_type_enabled(v94, v95))
      {
        v185 = v39;
        v96 = v43;
        v97 = v11;
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v188[0] = v99;
        *v98 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v98 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v188);
        *(v98 + 12) = 1026;
        *(v98 + 14) = 4;
        _os_log_impl(&dword_26629C000, v94, v95, "PodcastPlaybackHandler#validateStatus %{public}s status failed with cannot modify queue error code: %{public}u", v98, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v99);
        MEMORY[0x266784AD0](v99, -1, -1);
        MEMORY[0x266784AD0](v98, -1, -1);

        v11 = v97;
        (v183)(v184, v97);
        v39 = v185;
      }

      else
      {
        v96 = v43;

        (v183)(v57, v11);
      }

      v188[0] = 0xD000000000000011;
      v188[1] = 0x80000002664F3C10;
      MEMORY[0x2667833B0](v186, v39);

      v121 = v188[0];
      v120 = v188[1];
      v122 = v172;
      v96(v172, v41, v11);

      v123 = sub_2664DFE18();
      v124 = sub_2664E06B8();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = v11;
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v188[0] = v127;
        *v126 = 134218498;
        *(v126 + 4) = 3;
        *(v126 + 12) = 2048;
        *(v126 + 14) = 47;
        *(v126 + 22) = 2080;
        v128 = v122;
        v129 = sub_2662A320C(v121, v120, v188);

        *(v126 + 24) = v129;
        _os_log_impl(&dword_26629C000, v123, v124, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v126, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
        MEMORY[0x266784AD0](v127, -1, -1);
        MEMORY[0x266784AD0](v126, -1, -1);

        v130 = v128;
        v131 = v125;
      }

      else
      {

        v130 = v122;
        v131 = v11;
      }

      (v183)(v130, v131);
      v92 = v178;
      v89 = v179;
      v188[0] = 816;
      v188[1] = v121;
      v189 = v120;
      v180(v188);

      v119 = 4;
      goto LABEL_70;
    case 0xA:
      goto LABEL_26;
    case 0x14:
      v68 = v169;
      v177 = v43;
      v43(v169, v41, v11);
      v69 = v68;
      v70 = sub_2664DFE18();
      v71 = sub_2664E06E8();
      v72 = os_log_type_enabled(v70, v71);
      v168 = v12;
      if (v72)
      {
        v73 = v11;
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v188[0] = v75;
        *v74 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v74 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v188);
        *(v74 + 12) = 1026;
        *(v74 + 14) = 20;
        _os_log_impl(&dword_26629C000, v70, v71, "PodcastPlaybackHandler#validateStatus %{public}s status failed with device not found error code: %{public}u", v74, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x266784AD0](v75, -1, -1);
        MEMORY[0x266784AD0](v74, -1, -1);

        v76 = v69;
        v11 = v73;
        v77 = v73;
      }

      else
      {

        v76 = v69;
        v77 = v11;
      }

      v55(v76, v77);
      strcpy(v188, "DeviceNotFound");
      HIBYTE(v188[1]) = -18;
      MEMORY[0x2667833B0](v186, v39);

      v157 = v188[0];
      v156 = v188[1];
      v158 = v171;
      v177(v171, v41, v11);

      v159 = sub_2664DFE18();
      v160 = sub_2664E06B8();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = v11;
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v188[0] = v163;
        *v162 = 134218498;
        *(v162 + 4) = 3;
        *(v162 + 12) = 2048;
        *(v162 + 14) = 13;
        *(v162 + 22) = 2080;
        v164 = sub_2662A320C(v157, v156, v188);

        *(v162 + 24) = v164;
        _os_log_impl(&dword_26629C000, v159, v160, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v162, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
        MEMORY[0x266784AD0](v163, -1, -1);
        MEMORY[0x266784AD0](v162, -1, -1);

        v165 = v158;
        v166 = v161;
      }

      else
      {

        v165 = v158;
        v166 = v11;
      }

      v55(v165, v166);
      v92 = v178;
      v89 = v179;
      v188[0] = 781;
      v188[1] = v157;
      v189 = v156;
      v180(v188);

      v119 = 20;
      goto LABEL_70;
  }

LABEL_38:
  v185 = v39;
  v100 = v174;
  v177 = v43;
  v43(v174, v41, v11);
  v101 = sub_2664DFE18();
  v102 = sub_2664E06E8();
  v103 = v41;
  if (os_log_type_enabled(v101, v102))
  {
    v184 = v42;
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v188[0] = v105;
    *v104 = 136446466;
    if (qword_280071B18 != -1)
    {
      swift_once();
    }

    *(v104 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v188);
    *(v104 + 12) = 1026;
    v106 = v187;
    *(v104 + 14) = v187;
    _os_log_impl(&dword_26629C000, v101, v102, "PodcastPlaybackHandler#validateStatus %{public}s status failed with unknown error code: %{public}u", v104, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
    MEMORY[0x266784AD0](v105, -1, -1);
    MEMORY[0x266784AD0](v104, -1, -1);

    v55(v174, v11);
    v107 = v11;
  }

  else
  {

    v55(v100, v11);
    v107 = v11;
    v106 = v187;
  }

  strcpy(v188, "UnknownError_");
  HIWORD(v188[1]) = -4864;
  v190 = v106;
  v132 = sub_2664E0D48();
  MEMORY[0x2667833B0](v132);

  MEMORY[0x2667833B0](v186, v185);

  v134 = v188[0];
  v133 = v188[1];
  v135 = v175;
  v177(v175, v103, v107);

  v136 = sub_2664DFE18();
  v137 = sub_2664E06B8();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v188[0] = v139;
    *v138 = 134218498;
    *(v138 + 4) = 3;
    *(v138 + 12) = 2048;
    *(v138 + 14) = 4;
    *(v138 + 22) = 2080;
    v140 = sub_2662A320C(v134, v133, v188);

    *(v138 + 24) = v140;
    _os_log_impl(&dword_26629C000, v136, v137, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v138, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v139);
    MEMORY[0x266784AD0](v139, -1, -1);
    MEMORY[0x266784AD0](v138, -1, -1);

    v141 = v175;
  }

  else
  {

    v141 = v135;
  }

  v55(v141, v107);
  v118 = v182;
  v92 = v178;
  v89 = v179;
  v188[0] = 772;
  v188[1] = v134;
  v189 = v133;
  v180(v188);
LABEL_59:

  v119 = v187;
  return sub_2662CABE8(v92, v89, v118, v119);
}