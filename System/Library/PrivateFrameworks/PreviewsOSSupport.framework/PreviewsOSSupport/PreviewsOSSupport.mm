id UVShellConnectionInterface(uint64_t a1)
{
  v1 = [MEMORY[0x277CF3278] interfaceWithIdentifier:a1];
  v2 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_28718A7C0];
  [v1 setServer:v2];

  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_28718A7C0];
  [v1 setClient:v3];

  return v1;
}

uint64_t ClientRole.handleActivation(_:)(void *a1)
{
  v3 = sub_25F5025E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  v13 = [a1 remoteToken];
  sub_25F4D6100(v1, v12);
  v14 = *v12;

  v15 = *(v9 + 56);
  sub_25F5025F8();
  if (v13)
  {
    v18[1] = v13;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
    sub_25F4D8FF0(&qword_27FD90198, &qword_27FD90190, &qword_25F503788);
    sub_25F5022D8();
  }

  else
  {
    sub_25F4D6170();
    v13 = swift_allocError();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
    sub_25F4D8FF0(&qword_27FD90198, &qword_27FD90190, &qword_25F503788);
    sub_25F5022C8();
  }

  (*(v4 + 8))(v7, v3);

  return (*(*(v16 - 8) + 8))(&v12[v15], v16);
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

uint64_t sub_25F4D6100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F4D6170()
{
  result = qword_27FD90188;
  if (!qword_27FD90188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90188);
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

Swift::Void __swiftcall ClientRole.handleInvalidation()()
{
  v1 = sub_25F5025E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780) - 8);
  v7 = (*(*v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  sub_25F4D6100(v0, &v13 - v8);
  v10 = *v9;

  v11 = v6[14];
  sub_25F5025F8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
  sub_25F4D8FF0(&qword_27FD90198, &qword_27FD90190, &qword_25F503788);
  sub_25F5022B8();
  (*(v2 + 8))(v5, v1);
  (*(*(v12 - 8) + 8))(&v9[v11], v12);
}

uint64_t sub_25F4D6420()
{
  v1 = sub_25F5025E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780) - 8);
  v7 = (*(*v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  sub_25F4D6100(v0, &v14 - v8);
  v10 = *v9;

  v11 = v6[14];
  sub_25F5025F8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
  sub_25F4D8FF0(&qword_27FD90198, &qword_27FD90190, &qword_25F503788);
  sub_25F5022B8();
  (*(v2 + 8))(v5, v1);
  return (*(*(v12 - 8) + 8))(&v9[v11], v12);
}

uint64_t ServerRole.clientContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F502258();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id ServerRole.clientAuditToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerRole(0) + 20));

  return v1;
}

uint64_t ShellConnection<>.serverAuditToken.getter()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for ClientRole(0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4D67DC, 0, 0);
}

uint64_t sub_25F4D67DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_25F4D8F08(*(v0 + 24) + *(**(v0 + 24) + 136), v2, type metadata accessor for ClientRole);
  sub_25F4D6C28(v2, v1);
  v4 = *v1;
  *(v0 + 56) = *v1;
  *(v0 + 80) = *(v3 + 48);
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_25F4D8634(0, &unk_27FD901A0, 0x277CF0B98);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A50, &qword_25F503DF0);
  *v6 = v0;
  v6[1] = sub_25F4D6918;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v4, v7, v8, v9);
}

uint64_t sub_25F4D6918()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_25F4D6B10;
  }

  else
  {
    v4 = sub_25F4D6A48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F4D6A48()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
  (*(*(v5 - 8) + 8))(v2 + v1, v5);

  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_25F4D6B10()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90190, &qword_25F503788);
  (*(*(v4 - 8) + 8))(v2 + v1, v4);

  v5 = *(v0 + 8);
  v6 = *(v0 + 72);

  return v5();
}

uint64_t sub_25F4D6BF0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F4D6C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25F4D6CCC(void *a1)
{
  v2 = sub_25F5021A8();
  v3 = sub_25F502778();
  [a1 encodeObject:v2 forKey:v3];
}

uint64_t sub_25F4D6D54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

unint64_t sub_25F4D6DA8()
{
  sub_25F5029B8();

  v6 = *v0;
  v1 = ShellService.description.getter();
  MEMORY[0x25F8DED60](v1);

  MEMORY[0x25F8DED60](10272, 0xE200000000000000);
  sub_25F4D9098(0, &qword_27FD903D0, _s17MachLookupFailureVMa);
  v3 = *(v2 + 20);
  sub_25F501EB8();
  sub_25F4D95E8();
  v4 = sub_25F502A28();
  MEMORY[0x25F8DED60](v4);

  MEMORY[0x25F8DED60](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t sub_25F4D6EB4()
{
  v1 = 0x2010000uLL >> (8 * (*v0 - 2));
  sub_25F4D9098(0, &qword_27FD903D0, _s17MachLookupFailureVMa);
  v3 = ShellService.Domain.machName(for:)(&v0[*(v2 + 20)]);
  MEMORY[0x25F8DED60](v3);

  return 0x6D616E206863614DLL;
}

uint64_t sub_25F4D6FAC(uint64_t a1)
{
  v2 = sub_25F4D90FC(&qword_27FD90508, &qword_27FD903D0, _s17MachLookupFailureVMa);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F4D702C(uint64_t a1)
{
  v2 = sub_25F4D90FC(&qword_27FD90508, &qword_27FD903D0, _s17MachLookupFailureVMa);

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F4D70A0()
{
  v1 = *v0;
  sub_25F5029B8();

  v2 = ShellService.description.getter();
  MEMORY[0x25F8DED60](v2);

  return 0xD00000000000002FLL;
}

uint64_t sub_25F4D7128()
{
  v1 = [*(v0 + 8) description];
  v2 = sub_25F502788();
  v4 = v3;

  MEMORY[0x25F8DED60](v2, v4);

  return 0x746E696F70646E45;
}

uint64_t sub_25F4D71BC(uint64_t a1)
{
  v2 = sub_25F4D90FC(&unk_27FD90510, &qword_27FD903B0, _s25EndpointConnectionFailureVMa);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F4D7230(uint64_t a1)
{
  v2 = sub_25F4D90FC(&unk_27FD90510, &qword_27FD903B0, _s25EndpointConnectionFailureVMa);

  return MEMORY[0x2821A07F0](a1, v2);
}

void *ShellConnection<>.init(connection:context:service:)(void *a1, void *a2, unsigned __int8 *a3)
{
  v35 = a1;
  v36 = type metadata accessor for ServerRole(0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F502028();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD901B0, &qword_25F5037A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v31 - v13;
  v15 = sub_25F502258();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a3;
  sub_25F4D8634(0, &qword_27FD901B8, 0x277D40FE8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = sub_25F502778();
  v38 = a2;
  v22 = [a2 decodeObjectOfClass:ObjCClassFromMetadata forKey:v21];

  if (v22)
  {
    sub_25F502968();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (!*(&v41 + 1))
  {
    sub_25F4D867C(v42, &unk_27FD901C0, &qword_25F5037A8);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v23 = v39;
  if (v39)
  {
    v24 = v39;
    sub_25F502938();

    sub_25F502008();
    (*(v32 + 8))(v11, v33);
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v19, v14, v15);
    goto LABEL_12;
  }

LABEL_10:
  (*(v16 + 56))(v14, 1, 1, v15);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_25F4D867C(v14, &qword_27FD901B0, &qword_25F5037A0);
  }

LABEL_12:
  (*(v16 + 16))(v7, v19, v15);
  v25 = v35;
  v26 = [v25 remoteToken];
  *&v7[*(v36 + 20)] = v26;
  v27 = *(v37 + 48);
  v28 = *(v37 + 52);
  swift_allocObject();
  v29 = sub_25F4D86DC(v25, v34, v7);
  swift_unknownObjectRelease();

  (*(v16 + 8))(v19, v15);
  return v29;
}

id ShellConnection<>.clientAuditToken.getter()
{
  v1 = v0 + *(*v0 + 136);
  v2 = *(v1 + *(type metadata accessor for ServerRole(0) + 20));

  return v2;
}

uint64_t ShellConnection<>.clientContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  v4 = sub_25F502258();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t default argument 2 of ShellConnectionSender<>.send<A>(endpoint:context:expecting:)(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t sub_25F4D7820(uint64_t a1, id *a2)
{
  v3 = sub_25F5025E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2[4] invalidate];
  v8 = *(*a2 + 17);
  type metadata accessor for ClientRole(0);
  sub_25F4D6420();
  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  sub_25F4D8FF0(qword_27FD90B80, &qword_27FD90330, &qword_25F503890);
  sub_25F5022B8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25F4D79BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F5025E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + 32) invalidate];
  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  sub_25F4D8FF0(qword_27FD90B80, &qword_27FD90330, &qword_25F503890);
  sub_25F5022B8();
  return (*(v4 + 8))(v7, v3);
}

void *sub_25F4D7B2C(void *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v28 = a1;
  v5 = *v3;
  v30 = a3;
  v31 = v5;
  v27 = sub_25F5025E8();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v27 - v13;
  v15 = *(*(sub_25F502468() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v17 + 104))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  v18 = sub_25F502558();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v3[2] = sub_25F502548();
  v21 = qword_27FD90A58;
  sub_25F5025F8();
  v22 = sub_25F5028B8();
  (*(v6 + 8))(v9, v27);
  (*(v11 + 32))(v4 + v21, v14, v10);
  v4[5] = v22;
  v23 = v28;
  v4[4] = v28;
  *(v4 + 24) = v29;
  v24 = v30;
  sub_25F4D8F08(v30, v4 + *(*v4 + 136), type metadata accessor for ClientRole);
  v32 = v4;
  sub_25F4D8FF0(&qword_27FD903C8, &qword_27FD903C0, &qword_25F504A40);
  v25 = v23;

  sub_25F5024C8();

  sub_25F4D9038(v24, type metadata accessor for ClientRole);
  return v4;
}

uint64_t sub_25F4D7F04(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_25F5025E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(*(type metadata accessor for ClientRole(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a2;
  v29 = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_25F4D8F78;
  *(v15 + 24) = v28;
  aBlock[4] = sub_25F4D8F90;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F4D6D54;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_self();

  v18 = [v17 connectionWithEndpoint:a1 clientContextBuilder:v16];
  _Block_release(v16);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    if (v18)
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780) + 48);
      v21 = v18;
      sub_25F5025F8();
      sub_25F4D8634(0, &unk_27FD901A0, 0x277CF0B98);
      v22 = sub_25F5028B8();
      (*(v7 + 8))(v10, v6);
      *v13 = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD903C0, &qword_25F504A40);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v14 = sub_25F4D7B2C(v21, v14, v13);
    }

    else
    {
      sub_25F4D9098(0, &qword_27FD903B0, _s25EndpointConnectionFailureVMa);
      sub_25F4D90FC(&qword_27FD903B8, &qword_27FD903B0, _s25EndpointConnectionFailureVMa);
      swift_allocError();
      *v26 = v14;
      *(v26 + 8) = a1;
      swift_willThrow();
      v27 = a1;
    }

    return v14;
  }

  return result;
}

uint64_t sub_25F4D82A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if (v4 <= 9)
  {
    v5 = 1;
    if (((1 << v4) & 0x3CC) != 0)
    {
      v6 = 0;
      goto LABEL_4;
    }

    if (v4 == 4)
    {
LABEL_14:
      v22 = v5;
      ShellService.Domain.machName(for:)(a2);
      goto LABEL_15;
    }

    if (v4 == 5)
    {
      v5 = 2;
      goto LABEL_14;
    }
  }

  v6 = 3;
LABEL_4:
  v22 = v6;
  ShellService.Domain.machName(for:)(a2);
  if (v4 > 5)
  {
    if (v4 > 7)
    {
      if (v4 == 8)
      {
        v7 = 0;
      }

      else
      {
        if (v4 != 9)
        {
          goto LABEL_29;
        }

        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_22;
  }

  if ((v4 - 4) < 2)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_22;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      v7 = 0;
      goto LABEL_22;
    }

LABEL_29:
    if (v4)
    {
      v7 = 0xED00006563697672;
    }

    else
    {
      v7 = 0xEC00000065636976;
    }

    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:
  v8 = sub_25F502778();

  v9 = sub_25F502778();

  if (v7)
  {
    v10 = sub_25F502778();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() endpointForMachName:v8 service:v9 instance:v10];

  if (v11)
  {
    v21 = v4;
    v12 = v11;
    v3 = sub_25F4D7F04(v12, &v21, a3);
  }

  else
  {
    sub_25F4D9098(0, &qword_27FD903D0, _s17MachLookupFailureVMa);
    v14 = v13;
    sub_25F4D90FC(qword_27FD903D8, &qword_27FD903D0, _s17MachLookupFailureVMa);
    swift_allocError();
    v16 = v15;
    *v15 = v4;
    v17 = *(v14 + 20);
    v18 = sub_25F501EB8();
    (*(*(v18 - 8) + 16))(&v16[v17], v3, v18);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_25F4D8634(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F4D867C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_25F4D86DC(void *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v28 = a1;
  v5 = *v3;
  v30 = a3;
  v31 = v5;
  v27 = sub_25F5025E8();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v27 - v13;
  v15 = *(*(sub_25F502468() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v17 + 104))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  v18 = sub_25F502558();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v3[2] = sub_25F502548();
  v21 = qword_27FD90A58;
  sub_25F5025F8();
  v22 = sub_25F5028B8();
  (*(v6 + 8))(v9, v27);
  (*(v11 + 32))(v4 + v21, v14, v10);
  v4[5] = v22;
  v23 = v28;
  v4[4] = v28;
  *(v4 + 24) = v29;
  v24 = v30;
  sub_25F4D8F08(v30, v4 + *(*v4 + 136), type metadata accessor for ServerRole);
  v32 = v4;
  sub_25F4D8FF0(&qword_27FD90338, &unk_27FD90340, qword_25F503898);
  v25 = v23;

  sub_25F5024C8();

  sub_25F4D9038(v24, type metadata accessor for ServerRole);
  return v4;
}

uint64_t sub_25F4D8AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F4D8B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90180, &qword_25F503780);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_25F4D8BD0()
{
  sub_25F4D8C3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F4D8C3C()
{
  if (!qword_27FD901E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD901E8, "dG");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90190, &qword_25F503788);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD901E0);
    }
  }
}

uint64_t sub_25F4D8CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F502258();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F4D8DAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F502258();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F4D8E64()
{
  result = sub_25F502258();
  if (v1 <= 0x3F)
  {
    result = sub_25F4D8634(319, &unk_27FD901A0, 0x277CF0B98);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F4D8F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F4D8F90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F4D8FF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F4D9038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25F4D9098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F4D90FC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_25F4D9098(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F4D9148()
{
  result = sub_25F501EB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F4D91D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 246)
  {
    v4 = *a1;
    if (v4 <= 9)
    {
      v5 = 9;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 9;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_25F501EB8();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_25F4D929C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 246)
  {
    *result = a2 + 9;
  }

  else
  {
    v7 = sub_25F501EB8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F4D933C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25F4D9384(uint64_t a1, int a2)
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

uint64_t sub_25F4D93CC(uint64_t result, int a2, int a3)
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

unint64_t sub_25F4D95E8()
{
  result = qword_27FD90500;
  if (!qword_27FD90500)
  {
    sub_25F501EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90500);
  }

  return result;
}

uint64_t sub_25F4D9688()
{
  v1 = *v0;
  sub_25F502B08();
  MEMORY[0x25F8DF0B0](v1);
  return sub_25F502B38();
}

uint64_t sub_25F4D96FC()
{
  v1 = *v0;
  sub_25F502B08();
  MEMORY[0x25F8DF0B0](v1);
  return sub_25F502B38();
}

uint64_t sub_25F4D9740()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_25F502B08();
  sub_25F502B28();
  MEMORY[0x25F8DF0B0](v2);
  return sub_25F502B38();
}

uint64_t sub_25F4D97A0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_25F502B28();
  return MEMORY[0x25F8DF0B0](v2);
}

uint64_t sub_25F4D97E0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_25F502B08();
  sub_25F502B28();
  MEMORY[0x25F8DF0B0](v2);
  return sub_25F502B38();
}

unint64_t sub_25F4D9868(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (v7 = a2 | (a1 << 32), result = sub_25F501880(v7), (v9 & 1) == 0))
  {
    v17 = sub_25F502778();
    v18 = sub_25F502778();
    v19 = [objc_opt_self() attributeWithDomain:v17 name:v18];

    if (a1 > 1u)
    {
      v21 = v19;
      v23 = sub_25F502778();
      v22 = [objc_opt_self() targetWithPid:a2 environmentIdentifier:v23];
    }

    else
    {
      v20 = objc_opt_self();
      v21 = v19;
      v22 = [v20 targetWithPid_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD905A0, &qword_25F503C90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_25F503BE0;
    *(v24 + 32) = v21;
    v25 = objc_allocWithZone(MEMORY[0x277D46DB8]);
    v26 = v22;
    v27 = sub_25F502778();

    sub_25F4DAB1C();
    v28 = sub_25F5027E8();

    v29 = [v25 initWithExplanation:v27 target:v26 attributes:v28];

    v16 = v29;
    v30 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v3;
    sub_25F4FE27C(v16, 1, a2 | (a1 << 32), isUniquelyReferenced_nonNull_native);

    goto LABEL_9;
  }

  v10 = *(v6 + 56) + 16 * result;
  v11 = *(v10 + 8);
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    v13 = *v10;
    v14 = *v3;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v3;
    sub_25F4FE27C(v13, v12, v7, v15);
    v16 = 0;
LABEL_9:
    *v3 = v32;
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F4D9C94()
{
  type metadata accessor for PreviewAssertionManager();
  v0 = swift_allocObject();
  sub_25F500858(MEMORY[0x277D84F90]);
  result = sub_25F5026C8();
  *(v0 + 16) = result;
  qword_27FD90580 = v0;
  return result;
}

uint64_t static PreviewAssertionManager.shared.getter()
{
  if (qword_27FD90160 != -1)
  {
    swift_once();
  }
}

uint64_t PreviewAssertionManager.takeActivePreviewAssertion(for:)(int a1)
{
  sub_25F4D9E0C(0, a1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  return sub_25F502318();
}

void sub_25F4D9E0C(char a1, int a2)
{
  v5 = sub_25F5025E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  aBlock[7] = *(v2 + 16);

  sub_25F5025F8();
  v14[16] = a1;
  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90588, &qword_25F503C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90590, &qword_25F503C88);
  sub_25F4DA9A0();
  sub_25F502528();
  (*(v6 + 8))(v9, v5);

  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = v2;
    *(v11 + 32) = a1;
    aBlock[4] = sub_25F4DAA84;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25F4DA854;
    aBlock[3] = &block_descriptor_0;
    v12 = _Block_copy(aBlock);
    v13 = v10;

    [v13 acquireWithInvalidationHandler_];

    _Block_release(v12);
  }
}

void sub_25F4DA074(uint64_t a1, int a2)
{
  v4 = sub_25F5025E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + 16);

  sub_25F5025F8();
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90588, &qword_25F503C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90590, &qword_25F503C88);
  sub_25F4DA9A0();
  sub_25F502528();
  (*(v5 + 8))(v8, v4);

  v9 = v13;
  [v13 invalidate];
}

uint64_t sub_25F4DA218()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

void sub_25F4DA25C(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v6 = a2;
    v7 = sub_25F501880(a2);
    if (v8)
    {
      v9 = *(v4 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      if (v11 < 2)
      {
        v16 = v10;
        sub_25F4F9DFC(0, 0, v6);
      }

      else
      {
        v12 = v11 - 1;
        v13 = v10;
        v14 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *a1;
        sub_25F4FE27C(v13, v12, v6, isUniquelyReferenced_nonNull_native);
        v16 = 0;
        *a1 = v17;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  *a3 = v16;
}

uint64_t sub_25F4DA35C(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  v43 = a5;
  v42 = a1;
  v8 = sub_25F5025E8();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  (MEMORY[0x28223BE20])();
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F502718();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v45 = a3;
  if (a2)
  {
    v41 = v8;
    v20 = a2;
    sub_25F5026D8();
    v21 = a2;
    v22 = sub_25F5026F8();
    v23 = sub_25F502918();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v40 = a4;
      v25 = v24;
      v26 = swift_slowAlloc();
      v39 = v12;
      v27 = v26;
      v46 = v26;
      *v25 = 67240450;
      *(v25 + 4) = a3;
      *(v25 + 8) = 2080;
      swift_getErrorValue();
      v28 = sub_25F502A98();
      v30 = sub_25F4DE2EC(v28, v29, &v46);

      *(v25 + 10) = v30;
      _os_log_impl(&dword_25F4D4000, v22, v23, "Assertion error for pid %{public}d: %s", v25, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x25F8DF6E0](v27, -1, -1);
      v31 = v25;
      a4 = v40;
      MEMORY[0x25F8DF6E0](v31, -1, -1);

      (*(v13 + 8))(v19, v39);
    }

    else
    {

      (*(v13 + 8))(v19, v12);
    }

    v8 = v41;
  }

  else
  {
    v32 = v12;
    sub_25F5026D8();
    v33 = sub_25F5026F8();
    v34 = sub_25F502908();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67240192;
      *(v35 + 4) = v45;
      _os_log_impl(&dword_25F4D4000, v33, v34, "Assertion invalidated for pid %{public}d", v35, 8u);
      MEMORY[0x25F8DF6E0](v35, -1, -1);
    }

    (*(v13 + 8))(v17, v32);
  }

  v46 = *(a4 + 16);

  v36 = sub_25F5025F8();
  MEMORY[0x28223BE20](v36);
  *(&v38 - 2) = v42;
  *(&v38 - 8) = v43;
  *(&v38 - 1) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90588, &qword_25F503C80);
  sub_25F4DA9A0();
  sub_25F502528();
  (*(v44 + 8))(v11, v8);
}

void sub_25F4DA7C4(uint64_t *a1, uint64_t a2, unsigned __int8 a3, unsigned int a4)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v6 = a4 | (a3 << 32);
    v7 = sub_25F501880(v6);
    if ((v8 & 1) != 0 && *(*(v4 + 56) + 16 * v7) == a2)
    {
      sub_25F4F9DFC(0, 0, v6);
    }
  }
}

void sub_25F4DA854(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t PreviewAssertionManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PreviewAssertionManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_25F4DA9A0()
{
  result = qword_27FD90598;
  if (!qword_27FD90598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90588, &qword_25F503C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90598);
  }

  return result;
}

unint64_t sub_25F4DAA04@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F4D9868(*(v1 + 16), *(v1 + 20));
  *a1 = result;
  return result;
}

uint64_t sub_25F4DAA4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

unint64_t sub_25F4DAB1C()
{
  result = qword_27FD905A8;
  if (!qword_27FD905A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD905A8);
  }

  return result;
}

uint64_t sub_25F4DAB68(uint64_t *a1, int a2)
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

uint64_t sub_25F4DABB0(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAssertionManager.Storage.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewAssertionManager.Storage.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_25F4DACB0()
{
  result = qword_27FD905B0;
  if (!qword_27FD905B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD905B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewAssertionManager.AssertionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewAssertionManager.AssertionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F4DAE74()
{
  result = qword_27FD905B8;
  if (!qword_27FD905B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD905B8);
  }

  return result;
}

uint64_t ShellConnectionMessage<>.reply.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {

    sub_25F4D8634(255, &qword_27FD905C0, 0x277CF3288);
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(a1 + 16);
      v10 = *(*(a1 + 24) + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v12 = sub_25F501FA8();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v12 - 8) + 32))(a2, v6 + *(TupleTypeMetadata2 + 48), v12);
      return (*(*(AssociatedTypeWitness - 8) + 8))(v6, AssociatedTypeWitness);
    }

    if (EnumCaseMultiPayload != 2)
    {
      result = sub_25F502A58();
      __break(1u);
      return result;
    }

    sub_25F4D8634(255, &qword_27FD905C8, 0x277CCAEA0);
    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
  }

  v19 = swift_getAssociatedTypeWitness();
  v20 = sub_25F501FA8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v22 = *(TupleTypeMetadata3 + 48);
  (*(*(v20 - 8) + 32))(a2, v6 + *(TupleTypeMetadata3 + 64), v20);
  return (*(*(v19 - 8) + 8))(v6 + v22, v19);
}

uint64_t ShellConnectionMessage<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(a1 + 16);
    v9 = *(*(a1 + 24) + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = sub_25F501FA8();
    v12 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v6, AssociatedTypeWitness);
    return (*(*(v11 - 8) + 8))(&v6[v12], v11);
  }

  else
  {
    result = sub_25F502A58();
    __break(1u);
  }

  return result;
}

uint64_t ShellConnectionSender.transportDescription.getter()
{
  v0 = sub_25F4DE894();

  return v0;
}

uint64_t ShellConnectionSender.messageRelay.getter()
{
  v0 = sub_25F4DE89C();

  return v0;
}

uint64_t sub_25F4DB37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  type metadata accessor for ShellConnection();
  swift_getWitnessTable();
  sub_25F502A48();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  a4[2] = sub_25F4DF8A8;
  a4[3] = v10;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a1;
  a4[4] = sub_25F4DF884;
  a4[5] = v11;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  a4[6] = sub_25F4DF860;
  a4[7] = v12;
  return swift_retain_n();
}

uint64_t sub_25F4DB4D8()
{
  v0 = sub_25F4DE894();

  return v0;
}

uint64_t sub_25F4DB510()
{
  v0 = sub_25F4DE89C();

  return v0;
}

uint64_t ShellConnectionSender<>.send(endpoint:context:reply:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v58 = a1;
  v59 = a3;
  v61 = a2;
  v60 = sub_25F502028();
  v57 = *(v60 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v60);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F502258();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 16);
  v12 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v21 = sub_25F502718();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = *(v47 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v5[1];
  v44 = *v5;
  v26 = v5[3];
  v50 = v5[4];
  v27 = v5[5];
  v28 = v5[7];
  sub_25F5026E8();
  v29 = *(v15 + 16);
  v51 = AssociatedTypeWitness;
  v45 = v29;
  v29(v20, v61, AssociatedTypeWitness);

  v30 = sub_25F5026F8();
  v31 = sub_25F5028F8();

  v49 = v27;

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v62[0] = v33;
    *v32 = 136446466;

    v34 = sub_25F4DE2EC(v44, v25, v62);
    LODWORD(v44) = v31;
    v35 = v34;

    *(v32 + 4) = v35;
    *(v32 + 12) = 2082;
    v36 = v51;
    v45(v46, v20, v51);
    v37 = sub_25F502798();
    v39 = v38;
    (*(v15 + 8))(v20, v36);
    v40 = sub_25F4DE2EC(v37, v39, v62);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_25F4D4000, v30, v44, "%{public}s sending xpc endpoint: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8DF6E0](v33, -1, -1);
    MEMORY[0x25F8DF6E0](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v20, v51);
  }

  (*(v47 + 8))(v24, v48);
  v41 = v52;
  sub_25F5024D8();
  v42 = v55;
  sub_25F502198();
  (*(v53 + 8))(v41, v54);
  v50(v58, v42, v59);
  return (*(v57 + 8))(v42, v60);
}

{
  v56 = a5;
  v58 = a1;
  v59 = a3;
  v61 = a2;
  v60 = sub_25F502028();
  v57 = *(v60 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v60);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F502258();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 16);
  v12 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v21 = sub_25F502718();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = *(v47 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v5[1];
  v44 = *v5;
  v26 = v5[3];
  v27 = v5[5];
  v50 = v5[6];
  v28 = v5[7];
  sub_25F5026E8();
  v29 = *(v15 + 16);
  v51 = AssociatedTypeWitness;
  v45 = v29;
  v29(v20, v61, AssociatedTypeWitness);

  v30 = sub_25F5026F8();
  v31 = sub_25F5028F8();
  v49 = v28;

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v62[0] = v33;
    *v32 = 136446466;

    v34 = sub_25F4DE2EC(v44, v25, v62);
    LODWORD(v44) = v31;
    v35 = v34;

    *(v32 + 4) = v35;
    *(v32 + 12) = 2082;
    v36 = v51;
    v45(v46, v20, v51);
    v37 = sub_25F502798();
    v39 = v38;
    (*(v15 + 8))(v20, v36);
    v40 = sub_25F4DE2EC(v37, v39, v62);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_25F4D4000, v30, v44, "%{public}s sending bs endpoint: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8DF6E0](v33, -1, -1);
    MEMORY[0x25F8DF6E0](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v20, v51);
  }

  (*(v47 + 8))(v24, v48);
  v41 = v52;
  sub_25F5024D8();
  v42 = v55;
  sub_25F502198();
  (*(v53 + 8))(v41, v54);
  v50(v58, v42, v59);
  return (*(v57 + 8))(v42, v60);
}

uint64_t ShellConnectionSender<>.send(endpoint:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_25F4DBFCC(a1, a2, a3, a4, 71, 75, ShellConnectionSender<>.send(endpoint:context:reply:));
}

{
  return sub_25F4DBFCC(a1, a2, a3, a4, 104, 108, ShellConnectionSender<>.send(endpoint:context:reply:));
}

uint64_t ShellConnectionSender<>.send<A>(endpoint:context:expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_25F4DC32C(a1, a2, a3, a4, a5, a6, a7, 85, 89, ShellConnectionSender<>.send(endpoint:context:reply:));
}

{
  return sub_25F4DC32C(a1, a2, a3, a4, a5, a6, a7, 118, 122, ShellConnectionSender<>.send(endpoint:context:reply:));
}

uint64_t sub_25F4DBFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v41 = a4;
  v42 = a7;
  v35[1] = a5;
  v35[2] = a6;
  v8 = v7;
  v40 = a3;
  v37 = a1;
  v38 = a2;
  v39 = sub_25F501FA8();
  v36 = *(v39 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F5025E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD905D0, &unk_25F503DE0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = (v35 - v23);
  v25 = v8[1];
  v43 = *v8;
  v44 = v25;
  v26 = v8[3];
  v45 = v8[2];
  v46 = v26;
  v27 = *(v18 + 56);
  sub_25F5025F8();
  v28 = sub_25F5028B8();
  (*(v13 + 8))(v16, v12);
  *v24 = v28;
  sub_25F5025F8();
  sub_25F4DE8A4(v24, v22);
  v29 = *v22;

  v30 = &v22[*(v18 + 56)];
  sub_25F501F98();
  v42(v37, v38, v11, v40, v41);
  (*(v36 + 8))(v11, v39);
  sub_25F4DE914(v24, v22);
  v31 = *v22;
  v32 = *(v18 + 56);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  (*(*(v33 - 8) + 8))(&v22[v32], v33);
  return v31;
}

uint64_t sub_25F4DC32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v35[1] = a8;
  v44 = a4;
  v45 = a7;
  v40 = a1;
  v42 = a2;
  v43 = a10;
  v37 = a9;
  v38 = a6;
  v41 = sub_25F501FA8();
  v39 = *(v41 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = sub_25F5025E8();
  v14 = *(v35[0] - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v35[0]);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90A50, &qword_25F503DF0);
  sub_25F5028E8();
  v36 = sub_25F5028C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (v35 - v25);
  v27 = v10[1];
  v46 = *v10;
  v47 = v27;
  v28 = v10[3];
  v48 = v10[2];
  v49 = v28;
  v29 = *(v24 + 48);
  sub_25F5025F8();
  v30 = sub_25F5028B8();
  (*(v14 + 8))(v17, v35[0]);
  *v26 = v30;
  sub_25F5025F8();
  (*(v19 + 16))(v23, v26, TupleTypeMetadata2);
  v31 = *v23;

  v32 = &v23[*(TupleTypeMetadata2 + 48)];
  sub_25F501F88();
  v43(v40, v42, v13, v44, v45);
  (*(v39 + 8))(v13, v41);
  (*(v19 + 32))(v23, v26, TupleTypeMetadata2);
  v33 = *v23;
  (*(*(v36 - 8) + 8))(&v23[*(TupleTypeMetadata2 + 48)]);
  return v33;
}

uint64_t ShellConnection.makeSender<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  v6 = *v4;
  v5[2] = v4;
  v7 = *(MEMORY[0x277D40CB8] + 4);
  v8 = swift_task_alloc();
  v5[7] = v8;
  WitnessTable = swift_getWitnessTable();
  *v8 = v5;
  v8[1] = sub_25F4DC7EC;

  return MEMORY[0x2821A1860](v6, WitnessTable);
}

uint64_t sub_25F4DC7EC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_25F4DC980;
  }

  else
  {
    v3 = sub_25F4DC900;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F4DC900()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  sub_25F4DB37C(v5, v3, v2, v4);
  v6 = v0[1];

  return v6();
}

uint64_t ShellConnection.activate<A>(forReceiving:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ShellConnectionMessage();
  v6 = sub_25F502848();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13[-v8];
  v14 = a2;
  v15 = a3;
  v16 = v3;
  swift_checkMetadataState();
  v10 = *MEMORY[0x277D85778];
  v11 = sub_25F502848();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  return sub_25F5028A8();
}

uint64_t sub_25F4DCAB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = *a2;
  v8 = v36;
  type metadata accessor for ShellConnectionMessage();
  v35 = sub_25F502878();
  v32 = *(v35 - 8);
  v34 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v33 = v28 - v9;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  v41 = a2;
  swift_getWitnessTable();
  sub_25F502A48();
  v40 = *(&v42 + 1);
  v31 = v42;
  v44 = v8;
  WitnessTable = swift_getWitnessTable();
  v45 = WitnessTable;
  *&v42 = a2;

  v38 = sub_25F4DCEFC(&v42, a1, a3, a4, &unk_287185F68, sub_25F4DF77C, MEMORY[0x277D40AB0]);
  v39 = v11;
  __swift_destroy_boxed_opaque_existential_0(&v42);
  v44 = v8;
  v45 = WitnessTable;
  *&v42 = a2;

  v37 = sub_25F4DCEFC(&v42, a1, a3, a4, &unk_287185F40, sub_25F4DFA44, MEMORY[0x277D40AB8]);
  v13 = v12;
  v28[2] = v12;
  __swift_destroy_boxed_opaque_existential_0(&v42);
  v44 = v8;
  v45 = WitnessTable;
  v28[1] = v8;
  *&v42 = a2;
  v14 = sub_25F4DD078(&v42, a1, a3, a4);
  v29 = v14;
  v16 = v15;
  v28[3] = v15;

  __swift_destroy_boxed_opaque_existential_0(&v42);
  v44 = v8;
  v45 = WitnessTable;
  *&v42 = a2;
  v17 = sub_25F4DD240(&v42, a1, a3, a4);
  v19 = v18;
  v30 = v18;

  __swift_destroy_boxed_opaque_existential_0(&v42);
  *&v42 = v31;
  *(&v42 + 1) = v40;
  v43 = v38;
  v44 = v39;
  v45 = v37;
  v46 = v13;
  v47 = v14;
  v48 = v16;
  v49 = v17;
  v50 = v19;
  sub_25F4E81A8(&v42);
  v41 = a2;
  v20 = v32;
  v21 = v33;
  v22 = v35;
  (*(v32 + 16))(v33, a1, v35);
  v23 = v20;
  v24 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v25 = swift_allocObject();
  v26 = v36;
  *(v25 + 2) = *(v36 + 80);
  *(v25 + 3) = a3;
  *(v25 + 4) = *(v26 + 88);
  *(v25 + 5) = a4;
  (*(v23 + 32))(&v25[v24], v21, v22);
  swift_getWitnessTable();
  sub_25F5024C8();

  sub_25F4DF408(v38);
  sub_25F4DF408(v37);
  sub_25F4DF408(v29);
  sub_25F4DF408(v17);
}

uint64_t sub_25F4DCEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v20 = a6;
  v21 = a7;
  type metadata accessor for ShellConnectionMessage();
  v11 = sub_25F502878();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  (*(v12 + 16))(&v20 - v14, a2, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = v21(a1, v20, v17, a3, *(a4 + 8));

  return v18;
}

uint64_t (*sub_25F4DD078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ShellConnectionMessage();
  v9 = sub_25F502878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
  {
    return 0;
  }

  (*(v10 + 16))(v13, a2, v9);
  sub_25F4DF418(a1, v19);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = v4;
  sub_25F4DF47C(v19, v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_25F4DF5CC;
}

uint64_t (*sub_25F4DD240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ShellConnectionMessage();
  v9 = sub_25F502878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
  {
    return 0;
  }

  (*(v10 + 16))(v13, a2, v9);
  sub_25F4DF418(a1, v19);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v14, v13, v9);
  *(v16 + v15) = v4;
  sub_25F4DF47C(v19, v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_25F4DF494;
}

Swift::Void __swiftcall ShellConnection.activate()()
{
  v1 = *v0;
  *&v2[0] = 0;
  *(&v2[0] + 1) = 0xE000000000000000;
  swift_getWitnessTable();
  sub_25F502A48();
  memset(&v2[1], 0, 64);
  sub_25F4E81A8(v2);
}

uint64_t sub_25F4DD4C4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F4DD4F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25F4DFA0C(v1);
  return v1;
}

uint64_t sub_25F4DD528()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25F4DFA0C(v1);
  return v1;
}

uint64_t sub_25F4DD55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = sub_25F501FA8();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  v13 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v15 = *(v32 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = v29 - v17;
  v18 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v4, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v29[0] = *(TupleTypeMetadata2 + 48);
    v29[1] = v13;
    v30 = a3;
    v23 = v31;
    v24 = *(v32 + 32);
    v24(v31, v20, AssociatedTypeWitness);
    v32 = a2;
    v25 = *(v33 + 32);
    v25(v11, &v20[v29[0]], v8);
    v26 = *(TupleTypeMetadata2 + 48);
    v24(v30, v23, AssociatedTypeWitness);
    v25(&v30[v26], v11, v8);
  }

  else
  {
    v27 = swift_getAssociatedTypeWitness();
    (*(*(v27 - 8) + 32))(a3, v20, v27);
  }

  type metadata accessor for ShellConnectionMessage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F4DD894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ShellConnectionMessage();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = sub_25F502838();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = *(a4 + 8);
  v15 = sub_25F502048();
  sub_25F4DD55C(v15, a4, v8);
  sub_25F502878();
  sub_25F502858();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_25F4DDA0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a5;
  v30 = a4;
  v36 = a3;
  v33 = a2;
  v10 = sub_25F502718();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = type metadata accessor for ShellConnectionMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = sub_25F502838();
  v28 = *(v16 - 8);
  v29 = v16;
  v17 = *(v28 + 64);
  MEMORY[0x28223BE20](v16);
  v27 = &v26 - v18;
  sub_25F4D8634(255, &qword_27FD905C8, 0x277CCAEA0);
  swift_getAssociatedTypeWitness();
  v19 = sub_25F501FA8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v21 = *(TupleTypeMetadata3 + 48);
  *v15 = a1;
  v22 = *(a8 + 8);
  v23 = a1;
  sub_25F502068();
  (*(*(v19 - 8) + 16))(&v15[*(TupleTypeMetadata3 + 64)], v36, v19);
  swift_storeEnumTagMultiPayload();
  sub_25F502878();
  v24 = v27;
  sub_25F502858();
  return (*(v28 + 8))(v24, v29);
}

uint64_t sub_25F4DDE0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a5;
  v30 = a4;
  v36 = a3;
  v33 = a2;
  v10 = sub_25F502718();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = type metadata accessor for ShellConnectionMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = sub_25F502838();
  v28 = *(v16 - 8);
  v29 = v16;
  v17 = *(v28 + 64);
  MEMORY[0x28223BE20](v16);
  v27 = &v26 - v18;
  sub_25F4D8634(255, &qword_27FD905C0, 0x277CF3288);
  swift_getAssociatedTypeWitness();
  v19 = sub_25F501FA8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v21 = *(TupleTypeMetadata3 + 48);
  *v15 = a1;
  v22 = *(a8 + 8);
  v23 = a1;
  sub_25F502068();
  (*(*(v19 - 8) + 16))(&v15[*(TupleTypeMetadata3 + 64)], v36, v19);
  swift_storeEnumTagMultiPayload();
  sub_25F502878();
  v24 = v27;
  sub_25F502858();
  return (*(v28 + 8))(v24, v29);
}

uint64_t sub_25F4DE20C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_25F4DE258(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25F4DE290(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25F4DE2EC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25F4DE2EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F4DE3B8(v11, 0, 0, 1, a1, a2);
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
    sub_25F4DF8CC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25F4DE3B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25F4DE4C4(a5, a6);
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
    result = sub_25F5029C8();
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

uint64_t sub_25F4DE4C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F4DE510(a1, a2);
  sub_25F4DE640(&unk_287185528);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25F4DE510(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F4DE72C(v5, 0);
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

  result = sub_25F5029C8();
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
        v10 = sub_25F5027D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F4DE72C(v10, 0);
        result = sub_25F5029A8();
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

uint64_t sub_25F4DE640(uint64_t result)
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

  result = sub_25F4DE7A0(result, v12, 1, v3);
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

void *sub_25F4DE72C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD906D8, &qword_25F503F68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F4DE7A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD906D8, &qword_25F503F68);
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

uint64_t sub_25F4DE894()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_25F4DE89C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_25F4DE8A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD905D0, &unk_25F503DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4DE914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD905D0, &unk_25F503DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4DE9BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_25F501FA8();
    result = swift_getTupleTypeMetadata2();
    if (v5 <= 0x3F)
    {
      sub_25F4D8634(255, &qword_27FD905C8, 0x277CCAEA0);
      swift_getAssociatedTypeWitness();
      result = swift_getTupleTypeMetadata3();
      if (v6 <= 0x3F)
      {
        sub_25F4D8634(255, &qword_27FD905C0, 0x277CF3288);
        swift_getAssociatedTypeWitness();
        result = swift_getTupleTypeMetadata3();
        if (v7 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F4DEB74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(sub_25F501FA8() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (((v8 + v10) & ~v10) + v11 > v7)
  {
    v7 = ((v8 + v10) & ~v10) + v11;
  }

  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = ((*(v12 + 64) + v10 + ((*(v12 + 80) + 8) & ~*(v12 + 80))) & ~v10) + v11;
  if (v13 > v7)
  {
    v7 = v13;
  }

  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = ((*(v14 + 64) + v10 + ((*(v14 + 80) + 8) & ~*(v14 + 80))) & ~v10) + v11;
  if (v15 <= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_30;
  }

  v17 = v16 + 1;
  v18 = 8 * (v16 + 1);
  if ((v16 + 1) <= 3)
  {
    v21 = ((a2 + ~(-1 << v18) - 252) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v21 < 2)
    {
LABEL_30:
      v23 = *(a1 + v16);
      if (v23 >= 4)
      {
        return (v23 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_19:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return (v17 | v22) + 253;
}

void sub_25F4DEE78(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(a4 + 24) + 8);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(sub_25F501FA8() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  if (((v10 + v12) & ~v12) + v13 > v9)
  {
    v9 = ((v10 + v12) & ~v12) + v13;
  }

  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = ((*(v14 + 64) + v12 + ((*(v14 + 80) + 8) & ~*(v14 + 80))) & ~v12) + v13;
  if (v15 > v9)
  {
    v9 = v15;
  }

  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = ((*(v16 + 64) + v12 + ((*(v16 + 80) + 8) & ~*(v16 + 80))) & ~v12) + v13;
  if (v17 <= v9)
  {
    v17 = v9;
  }

  v18 = v17 + 1;
  if (a3 < 0xFD)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 + ~(-1 << (8 * v18)) - 252) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (a2 > 0xFC)
  {
    v20 = a2 - 253;
    if (v18 >= 4)
    {
      bzero(a1, v17 + 1);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v21 = (v20 >> (8 * v18)) + 1;
    if (v17 != -1)
    {
      v24 = v20 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v24;
          if (v19 > 1)
          {
LABEL_43:
            if (v19 == 2)
            {
              *&a1[v18] = v21;
            }

            else
            {
              *&a1[v18] = v21;
            }

            return;
          }
        }

        else
        {
          *a1 = v20;
          if (v19 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v19)
        {
          a1[v18] = v21;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v19 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v17] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v19 == 2)
  {
    *&a1[v18] = 0;
    goto LABEL_28;
  }

  *&a1[v18] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_25F4DF1FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F4DF24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25F4DF294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F4DF2FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  type metadata accessor for ShellConnectionMessage();
  v3 = sub_25F502878();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_25F4DF398()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  type metadata accessor for ShellConnectionMessage();
  v3 = *(sub_25F502878() - 8);
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  return sub_25F502868();
}

uint64_t sub_25F4DF408(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F4DF418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F4DF47C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F4DF4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90AF0, &qword_25F503F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for ShellConnectionMessage();
  v3 = sub_25F502878();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v6, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, v7 + 40, v5 | 7);
}

uint64_t sub_25F4DF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  type metadata accessor for ShellConnectionMessage();
  v10 = *(sub_25F502878() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v12);

  return a4(a1, a2, a3, v4 + v11, v13, v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8), v8, v9);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for ShellConnectionMessage();
  v3 = sub_25F502878();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_25F4DF794(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for ShellConnectionMessage();
  v5 = *(sub_25F502878() - 8);
  return sub_25F4DD894(a1, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_25F4DF828()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F4DF8CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS16LazyPropertyListOIeghn_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_25F4DF960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25F4DF9A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F4DFA0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.streamID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F501EA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity()
{
  result = qword_27FD90720;
  if (!qword_27FD90720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.init(streamID:agentPid:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_25F501EA8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_25F4DFBD4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646950746E656761;
  }

  else
  {
    v2 = 0x44496D6165727473;
  }

  if (*a2)
  {
    v3 = 0x646950746E656761;
  }

  else
  {
    v3 = 0x44496D6165727473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F502A68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F4DFC5C()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4DFCD4()
{
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4DFD30()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4DFDA4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F502A18();

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

void sub_25F4DFE04(uint64_t *a1@<X8>)
{
  v2 = 0x44496D6165727473;
  if (*v1)
  {
    v2 = 0x646950746E656761;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_25F4DFE3C()
{
  if (*v0)
  {
    return 0x646950746E656761;
  }

  else
  {
    return 0x44496D6165727473;
  }
}

uint64_t sub_25F4DFEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90738, &qword_25F504368);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90740, &qword_25F504370);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = *(v7 + 56);
  *(v19 - v12) = 0;
  v15 = sub_25F501EA8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a1, v15);
  LODWORD(v14) = *(a1 + *(type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity() + 20));
  sub_25F4E1104(v13, v11);
  LOBYTE(a1) = *v11;
  (*(v16 + 32))(v5, &v11[*(v7 + 56)], v15);
  (*(v16 + 56))(v5, 0, 1, v15);
  v22 = a1;
  v21 = 1;
  v19[2] = v14;
  v20 = 0;
  sub_25F4E035C();
  v17 = sub_25F502458();
  sub_25F4D867C(v5, &qword_27FD90738, &qword_25F504368);
  sub_25F4D867C(v13, &unk_27FD90740, &qword_25F504370);
  return v17;
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F501EA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &type metadata for ShellAgentSystem.AgentEndpoint.Identity.Key;
  v10 = sub_25F4E035C();
  v18 = v10;
  LOBYTE(v16[0]) = 0;
  sub_25F5021C8();
  if (v2)
  {
    v11 = sub_25F502258();
    (*(*(v11 - 8) + 8))(a1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
    v17 = &type metadata for ShellAgentSystem.AgentEndpoint.Identity.Key;
    v18 = v10;
    LOBYTE(v16[0]) = 1;
    sub_25F5021C8();
    v13 = sub_25F502258();
    (*(*(v13 - 8) + 8))(a1, v13);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v14 = v15[1];
    (*(v6 + 32))(a2, v9, v5);
    result = type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity();
    *(a2 + *(result + 20)) = v14;
  }

  return result;
}

unint64_t sub_25F4E035C()
{
  result = qword_27FD906E0;
  if (!qword_27FD906E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD906E0);
  }

  return result;
}

BOOL static ShellAgentSystem.AgentEndpoint.Identity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25F501E98() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.hash(into:)()
{
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0]);
  sub_25F502758();
  v1 = *(v0 + *(type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity() + 20));
  return sub_25F502B28();
}

uint64_t ShellAgentSystem.AgentEndpoint.Identity.hashValue.getter()
{
  sub_25F502B08();
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0]);
  sub_25F502758();
  v1 = *(v0 + *(type metadata accessor for ShellAgentSystem.AgentEndpoint.Identity() + 20));
  sub_25F502B28();
  return sub_25F502B38();
}

uint64_t sub_25F4E0530(uint64_t a1)
{
  sub_25F502B08();
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0]);
  sub_25F502758();
  v3 = *(v1 + *(a1 + 20));
  sub_25F502B28();
  return sub_25F502B38();
}

uint64_t sub_25F4E05D4(uint64_t a1, uint64_t a2)
{
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0]);
  sub_25F502758();
  v4 = *(v2 + *(a2 + 20));
  return sub_25F502B28();
}

uint64_t sub_25F4E0660(uint64_t a1, uint64_t a2)
{
  sub_25F502B08();
  sub_25F501EA8();
  sub_25F4E0B98(&qword_27FD906E8, MEMORY[0x277CC95F0]);
  sub_25F502758();
  v4 = *(v2 + *(a2 + 20));
  sub_25F502B28();
  return sub_25F502B38();
}

uint64_t static ShellAgentSystem.AgentEndpoint.encode(context:)()
{
  sub_25F502058();
  sub_25F4E0B98(&qword_27FD906F0, MEMORY[0x277D40A08]);
  return sub_25F502238();
}

uint64_t sub_25F4E084C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x747865746E6F63;
  a1[1] = 0xE700000000000000;
  v5 = sub_25F502058();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, a3, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t static ShellAgentSystem.AgentEndpoint.decode(context:)()
{
  v1[3] = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D405A0];
  v1[0] = 0x747865746E6F63;
  v1[1] = 0xE700000000000000;
  sub_25F502058();
  sub_25F4E0B98(&qword_27FD906F0, MEMORY[0x277D40A08]);
  sub_25F5021C8();
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

unint64_t sub_25F4E0A60()
{
  result = qword_27FD906F8;
  if (!qword_27FD906F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD906F8);
  }

  return result;
}

uint64_t sub_25F4E0B98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F4E0BE0()
{
  result = qword_27FD90718;
  if (!qword_27FD90718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90718);
  }

  return result;
}

uint64_t sub_25F4E0C34()
{
  sub_25F502058();
  sub_25F4E0B98(&qword_27FD906F0, MEMORY[0x277D40A08]);
  return sub_25F502238();
}

uint64_t sub_25F4E0CD8()
{
  v1[3] = MEMORY[0x277D837D0];
  v1[4] = MEMORY[0x277D405A0];
  v1[0] = 0x747865746E6F63;
  v1[1] = 0xE700000000000000;
  sub_25F502058();
  sub_25F4E0B98(&qword_27FD906F0, MEMORY[0x277D40A08]);
  sub_25F5021C8();
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_25F4E0DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F501EA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F4E0E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F501EA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F4E0EDC()
{
  result = sub_25F501EA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShellService.Instance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShellService.Instance(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F4E10B0()
{
  result = qword_27FD90730;
  if (!qword_27FD90730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90730);
  }

  return result;
}

uint64_t sub_25F4E1104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90740, &qword_25F504370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F4E1180(uint64_t a1)
{
  result = sub_25F4E11A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4E11A8()
{
  result = qword_27FD90750;
  if (!qword_27FD90750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90750);
  }

  return result;
}

unint64_t sub_25F4E11FC(uint64_t a1)
{
  result = sub_25F4E1224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4E1224()
{
  result = qword_27FD90758;
  if (!qword_27FD90758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90758);
  }

  return result;
}

uint64_t sub_25F4E12D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_25F502818();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_25F4E1FA0(0, 0, v8, &unk_25F5045F8, v10);
}

uint64_t sub_25F4E13F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v6[10] = *MEMORY[0x277D85000] & *a4;
  v7 = sub_25F502718();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E14F4, 0, 0);
}

uint64_t sub_25F4E14F4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v2 + qword_27FD90770);
  v4 = *(v2 + qword_27FD90768);
  v0[14] = v4;
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v0[5] = type metadata accessor for ServiceHubPipeService.ServiceHubTransport();
  v0[6] = swift_getWitnessTable();
  v0[2] = v4;
  v7 = *(MEMORY[0x277D406C8] + 4);

  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_25F4E15F8;

  return MEMORY[0x2821A0EA0](v0 + 2);
}

uint64_t sub_25F4E15F8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_25F4E17B4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_25F4E1714;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F4E1714()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];

  v3(sub_25F4E4F48, v1);

  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F4E17B4()
{
  v1 = v0[16];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_25F5026D8();
  v3 = v1;
  v4 = sub_25F5026F8();
  v5 = sub_25F502918();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_25F4D4000, v4, v5, "Failed to attach host transport to message pipe: %@", v7, 0xCu);
    sub_25F4D867C(v8, &unk_27FD90AF0, &qword_25F503F60);
    MEMORY[0x25F8DF6E0](v8, -1, -1);
    MEMORY[0x25F8DF6E0](v7, -1, -1);
  }

  v11 = v0[16];
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];
  v15 = v0[7];

  (*(v13 + 8))(v12, v14);
  sub_25F4E1D28();

  v16 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_25F4E1948(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD909B0, &qword_25F504608);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  sub_25F4E4F4C(v1 + qword_27FD90858, v8, &qword_27FD90908, &unk_25F504A50);
  v14 = *(v5 + 56);
  v29[0] = a1;
  a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90920, qword_25F5045B0);
  sub_25F502858();
  (*(*(v15 - 8) + 8))(&v8[v14], v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90918, &unk_25F504A60);
  (*(*(v16 - 8) + 8))(v8, v16);
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x277D85748])
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v10 + 8))(v13, v9);
  v32 = v1;
  swift_getWitnessTable();
  sub_25F502108();
  v17 = v30;
  v18 = v31;
  v19 = __swift_project_boxed_opaque_existential_1(v29, v30);
  v20 = *(v17 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23);
  v24 = *(*(v18 + 8) + 8);
  v25 = sub_25F502A38();
  if (v25)
  {
    v26 = v25;
    (*(v20 + 8))(v23, v17);
  }

  else
  {
    v26 = swift_allocError();
    (*(v20 + 32))(v28, v23, v17);
  }

  sub_25F4F3394(v26);

  return __swift_destroy_boxed_opaque_existential_0(v29);
}

uint64_t sub_25F4E1D28()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  v8 = sub_25F502338();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v1[qword_27FD90768];
  v13 = *((v3 & v2) + 0x50);
  v14 = *((v3 & v2) + 0x58);
  type metadata accessor for ServiceHubPipeService.ServiceHubTransport();

  swift_getWitnessTable();
  sub_25F502328();
  sub_25F502308();
  (*(v9 + 8))(v12, v8);

  v15 = sub_25F502818();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;
  v17 = v1;
  sub_25F4E1FA0(0, 0, v7, &unk_25F5045E8, v16);
}

uint64_t sub_25F4E1FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25F4E4F4C(a3, v27 - v11, &unk_27FD90E50, &qword_25F504560);
  v13 = sub_25F502818();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25F4D867C(v12, &unk_27FD90E50, &qword_25F504560);
  }

  else
  {
    sub_25F502808();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25F5027F8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25F5027A8() + 32;
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

      sub_25F4D867C(a3, &unk_27FD90E50, &qword_25F504560);

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

  sub_25F4D867C(a3, &unk_27FD90E50, &qword_25F504560);
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

uint64_t sub_25F4E22D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25F5025E8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E2398, 0, 0);
}

uint64_t sub_25F4E2398()
{
  v1 = v0[5];
  v2 = *(v0[2] + qword_27FD90770);
  sub_25F5025F8();
  v3 = *(MEMORY[0x277D406D0] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_25F4E2470;
  v5 = v0[5];

  return MEMORY[0x2821A0EB8](v5);
}

uint64_t sub_25F4E2470()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

void sub_25F4E25C8(void *a1)
{
  v1 = a1;
  sub_25F4E1D28();
}

uint64_t sub_25F4E2610(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v11 = *(v2 + qword_27FD90768);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *((v6 & v5) + 0x50);
  v9 = *((v6 & v5) + 0x58);
  type metadata accessor for ServiceHubPipeService.ServiceHubTransport();

  swift_getWitnessTable();
  sub_25F5024C8();
}

uint64_t sub_25F4E275C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_25F4E27F0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v17[1] = a4;
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = sub_25F502028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4E3B08();
  (*(v12 + 16))(v15, a1, v11);
  sub_25F4E4F4C(a2, v10, &qword_27FD90900, &unk_25F504590);
  v16 = sub_25F4E2A90(v15, v10);
  v18();
}

void *sub_25F4E2A90(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = sub_25F501FA8();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_25F502258();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_25F502008();
  if (v2)
  {

    sub_25F4D867C(v32, &qword_27FD90900, &unk_25F504590);
    v16 = sub_25F502028();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  else
  {
    v27 = a1;
    v28 = v15;
    sub_25F5021F8();
    (*(v11 + 8))(v14, v10);
    v17 = sub_25F502728();

    v18 = v32;
    sub_25F4E4F4C(v32, v9, &qword_27FD90900, &unk_25F504590);
    v19 = v29;
    if ((*(v29 + 48))(v9, 1, v30) == 1)
    {
      sub_25F4D867C(v9, &qword_27FD90900, &unk_25F504590);
      v20 = 0;
    }

    else
    {
      v21 = v30;
      (*(v19 + 16))(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v30);
      v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v23 = swift_allocObject();
      v18 = v32;
      (*(v19 + 32))(v23 + v22, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
      (*(v19 + 8))(v9, v21);
      aBlock[4] = sub_25F4E503C;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25F4E3C08;
      aBlock[3] = &block_descriptor_1;
      v20 = _Block_copy(aBlock);
    }

    v24 = v27;
    v10 = [v28 initWithMessageType:0 payload:v17 replyHandler:v20];
    _Block_release(v20);

    sub_25F4D867C(v18, &qword_27FD90900, &unk_25F504590);
    v25 = sub_25F502028();
    (*(*(v25 - 8) + 8))(v24, v25);
  }

  return v10;
}

uint64_t sub_25F4E2ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_25F502258();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = sub_25F502028();
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  v6[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90910, &unk_25F5045A0);
  v6[17] = v16;
  v17 = *(v16 - 8);
  v6[18] = v17;
  v18 = *(v17 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E30D4, 0, 0);
}

uint64_t sub_25F4E30D4()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  sub_25F4E4F4C(v0[5] + qword_27FD90858, v2, &qword_27FD90908, &unk_25F504A50);
  v4 = *(v3 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90918, &unk_25F504A60);
  sub_25F502888();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90920, qword_25F5045B0);
  (*(*(v6 - 8) + 8))(v2 + v4, v6);
  (*(*(v5 - 8) + 8))(v2, v5);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_25F4E3250;
  v9 = v0[19];
  v10 = v0[17];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_25F4E3250()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F4E334C, 0, 0);
}

uint64_t sub_25F4E334C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [*(v0 + 16) payload];
    if (v2 && (*(v0 + 24) = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90990, &qword_25F5045C8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90998, &qword_25F5045D0), swift_dynamicCast()))
    {
      v3 = *(v0 + 112);
      v5 = *(v0 + 72);
      v4 = *(v0 + 80);
      v6 = *(v0 + 64);
      v7 = *(v0 + 32);
      sub_25F5021E8();
      sub_25F502198();
      (*(v5 + 8))(v4, v6);
      v8 = [v1 replyHandler];
      if (v8)
      {
        v9 = v8;
        v10 = *(v0 + 88);
        v11 = swift_allocObject();
        *(v11 + 16) = v9;
        v12 = swift_allocObject();
        *(v12 + 16) = sub_25F4E4C50;
        *(v12 + 24) = v11;
        sub_25F501F48();
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v25 = *(v0 + 104);
      v24 = *(v0 + 112);
      v27 = *(v0 + 88);
      v26 = *(v0 + 96);
      v29 = *(v0 + 48);
      v28 = *(v0 + 56);
      v30 = sub_25F501FA8();
      (*(*(v30 - 8) + 56))(v27, v13, 1, v30);
      v29(v24, v27);

      sub_25F4D867C(v27, &qword_27FD90900, &unk_25F504590);
      (*(v25 + 8))(v24, v26);
    }

    else
    {
      v14 = [v1 payload];
      if (v14)
      {
        ObjectType = swift_getObjectType();
      }

      else
      {
        ObjectType = 0;
      }

      sub_25F4E4BC4();
      v22 = swift_allocError();
      *v23 = v14;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      *(v23 + 24) = ObjectType;
      *(v23 + 32) = 0;
      swift_willThrow();
      sub_25F4F3394(v22);
    }

    v31 = *(MEMORY[0x277D85798] + 4);
    v32 = swift_task_alloc();
    *(v0 + 160) = v32;
    *v32 = v0;
    v32[1] = sub_25F4E3250;
    v33 = *(v0 + 152);
    v34 = *(v0 + 136);

    return MEMORY[0x2822003E8](v0 + 16, 0, 0, v34);
  }

  else
  {
    v16 = *(v0 + 128);
    v17 = *(v0 + 112);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_25F4E36F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_25F4D867C(v0 + qword_27FD90858, &qword_27FD90908, &unk_25F504A50);
  return v0;
}

uint64_t sub_25F4E373C()
{
  v0 = sub_25F4E36F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F4E37B4()
{
  v2 = *v0;
  v4 = *(*v0 + 24);
  v3 = *(v2 + 32);
  v6 = *(v1 + 8);

  return v6(v4, v3);
}

uint64_t sub_25F4E3864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A09D0](a1, a2, a3, WitnessTable);
}

void sub_25F4E38D0(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_25F4E4CDC();
}

id sub_25F4E3910()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F4E3948(uint64_t a1)
{
  v2 = *(a1 + qword_27FD90760);

  v3 = *(a1 + qword_27FD90768);

  v4 = *(a1 + qword_27FD90770);
}

void sub_25F4E39C0()
{
  v7 = MEMORY[0x277D83428] + 64;
  v8 = MEMORY[0x277D84F88] + 64;
  sub_25F4E3B54(319, &qword_27FD908E0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8);
    sub_25F4E3B54(319, &unk_27FD908F0, MEMORY[0x277D85788]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8);
      swift_getTupleTypeLayout2();
      v9 = &v6;
      swift_initClassMetadata2();
    }
  }
}

unint64_t sub_25F4E3B08()
{
  result = qword_27FD908E8;
  if (!qword_27FD908E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD908E8);
  }

  return result;
}

void sub_25F4E3B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25F4E3B08();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25F4E3C08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_25F4E3C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25F501DE8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_25F4E3CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v27 = sub_25F5025E8();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD909B8, &qword_25F504610);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD909C0, &qword_25F504618);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v24 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v24 - v21;
  sub_25F4E3FCC(a1, v25, &v28);
  swift_storeEnumTagMultiPayload();
  sub_25F4E50D4(v17, v20);
  sub_25F4E50D4(v20, v22);
  sub_25F501F68();
  sub_25F5025F8();
  sub_25F502188();
  (*(v4 + 8))(v7, v27);
  (*(v9 + 8))(v12, v8);
  return sub_25F4D867C(v22, &unk_27FD909C0, &qword_25F504618);
}

uint64_t sub_25F4E3FCC(uint64_t a1, void *ObjectType, uint64_t *a3)
{
  v6 = sub_25F502258();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27[0] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90990, &qword_25F5045C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90998, &qword_25F5045D0);
    if (swift_dynamicCast())
    {
      sub_25F5021E8();
      sub_25F502198();
      return (*(v7 + 8))(v10, v6);
    }

    if (ObjectType)
    {
      goto LABEL_7;
    }

    ObjectType = swift_getObjectType();
LABEL_12:
    sub_25F4E4BC4();
    v24 = swift_allocError();
    *v25 = a1;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = ObjectType;
    *(v25 + 32) = 1;
    swift_willThrow();
    *a3 = v24;
    return swift_unknownObjectRetain();
  }

  if (!ObjectType)
  {
    goto LABEL_12;
  }

LABEL_7:
  swift_getErrorValue();
  v12 = ObjectType;
  sub_25F502AA8();
  v13 = v28;
  v14 = v29;
  v15 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v16 = *(v13 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19);
  v20 = *(*(v14 + 8) + 8);
  v21 = sub_25F502A38();
  if (v21)
  {
    v22 = v21;
    (*(v16 + 8))(v19, v13);
  }

  else
  {
    v22 = swift_allocError();
    (*(v16 + 32))(v23, v19, v13);
  }

  swift_willThrow();

  result = __swift_destroy_boxed_opaque_existential_0(v27);
  *a3 = v22;
  return result;
}

uint64_t sub_25F4E42F0(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = sub_25F502258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD909A0, &qword_25F5045D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18[-1] - v11);
  sub_25F4E4F4C(a1, &v18[-1] - v11, &unk_27FD909A0, &qword_25F5045D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    swift_getErrorValue();
    sub_25F502AA8();
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v14 = sub_25F5023E8();
    a2(0, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_25F5021F8();
    v16 = sub_25F502728();

    a2(v16, 0);

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_25F4E453C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F4E4634;

  return v7(a1);
}

uint64_t sub_25F4E4634()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F4E472C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90E50, &qword_25F504560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_25F502818();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_25F4E1FA0(0, 0, v8, &unk_25F504570, v10);
}

uint64_t sub_25F4E4850()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F4E4898(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F4E4960;

  return sub_25F4E2ED8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F4E4960()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F4E4A54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F4E5158;

  return sub_25F4E453C(a1, v5);
}

uint64_t sub_25F4E4B0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F4E4960;

  return sub_25F4E453C(a1, v5);
}

unint64_t sub_25F4E4BC4()
{
  result = qword_27FD90928;
  if (!qword_27FD90928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90928);
  }

  return result;
}

uint64_t sub_25F4E4C18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F4E4C58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25F4E4D14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F4E4D3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F4E4D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F4E5158;

  return sub_25F4E22D8(a1, v4, v5, v6);
}

uint64_t sub_25F4E4E38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F4E4E80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F4E5158;

  return sub_25F4E13F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F4E4F4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F4E4FB4()
{
  v1 = sub_25F501FA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F4E503C(uint64_t a1, void *a2)
{
  v5 = *(sub_25F501FA8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25F4E3CF8(a1, a2, v6);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F4E50D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD909C0, &qword_25F504618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShellService.Domain.machName(for:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD909D0, &qword_25F504620) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = *(v4 + 56);
  *(&v14 - v5) = *v1;
  v8 = sub_25F501EB8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  v10 = *v6;
  v11 = (*(v9 + 88))(&v6[v7], v8);
  v12 = *MEMORY[0x277D40F58];
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (v11 == v12)
      {
        return 0xD000000000000034;
      }

      if (v11 == *MEMORY[0x277D40F50])
      {
        return 0xD000000000000035;
      }
    }

    else
    {
      if (v11 == v12)
      {
        return 0xD000000000000030;
      }

      if (v11 == *MEMORY[0x277D40F50])
      {
        return 0xD000000000000034;
      }
    }
  }

  else
  {
    if (!v10)
    {
      if (v11 == v12)
      {
        return 0xD000000000000027;
      }

      if (v11 == *MEMORY[0x277D40F50])
      {
        return 0xD00000000000002BLL;
      }

      goto LABEL_19;
    }

    if (v11 == v12)
    {
      return 0xD000000000000030;
    }

    if (v11 == *MEMORY[0x277D40F50])
    {
      return 0xD000000000000034;
    }
  }

LABEL_19:
  sub_25F4E53C0(v6);
  return 0x6E776F6E6B6E75;
}

uint64_t sub_25F4E53C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD909D0, &qword_25F504620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t ShellService.serviceIdentifier.getter()
{
  result = 0xD000000000000028;
  v2 = *v0;
  if (v2 > 6)
  {
    if (v2 != 7)
    {
      if (v2 == 8 || v2 == 9)
      {
        return result;
      }

      return 0xD000000000000019;
    }

    return 0xD000000000000022;
  }

  if (v2 == 2)
  {
    return 0xD000000000000022;
  }

  if (v2 == 3)
  {
    return 0xD000000000000023;
  }

  if (v2 != 6)
  {
    return 0xD000000000000019;
  }

  return result;
}

uint64_t ShellService.instanceIdentifier.getter()
{
  v1 = 0x7265732D74736F68;
  if (*v0)
  {
    v1 = 0x65732D746E656761;
  }

  *v0;
  if ((*v0 - 2) >= 8u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ShellService.Instance.hashValue.getter()
{
  v1 = *v0;
  sub_25F502B08();
  MEMORY[0x25F8DF0B0](v1);
  return sub_25F502B38();
}

unint64_t ShellService.description.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (*v0 > 3u)
    {
      if (v1 == 4)
      {
        return 0xD00000000000001ALL;
      }

      if (v1 == 5)
      {
        return 0xD00000000000001BLL;
      }

      goto LABEL_20;
    }

    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD000000000000016;
      }

      goto LABEL_20;
    }

    return 0xD000000000000015;
  }

  if (*v0 <= 7u)
  {
    if (v1 == 6)
    {
      return 0xD00000000000001BLL;
    }

    if (v1 != 7)
    {
      goto LABEL_20;
    }

    return 0xD000000000000015;
  }

  if (v1 == 8)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 9)
  {
    return 0xD00000000000001BLL;
  }

LABEL_20:
  sub_25F5029B8();

  if (v1)
  {
    v3 = 0x697320746E656761;
  }

  else
  {
    v3 = 0x6469732074736F68;
  }

  if (v1)
  {
    v4 = 0xEA00000000006564;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  MEMORY[0x25F8DED60](v3, v4);

  return 0xD00000000000001CLL;
}

uint64_t ShellService.Domain.hashValue.getter()
{
  v1 = *v0;
  sub_25F502B08();
  MEMORY[0x25F8DF0B0](v1);
  return sub_25F502B38();
}

unint64_t ShellService.domainIdentifier.getter()
{
  result = 0xD00000000000001ELL;
  v2 = *v0;
  if (v2 > 9)
  {
    return 0xD000000000000027;
  }

  if (((1 << v2) & 0x3CC) != 0)
  {
    return result;
  }

  if (v2 == 5)
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t ShellService.Instance.description.getter()
{
  if (*v0)
  {
    result = 0x697320746E656761;
  }

  else
  {
    result = 0x6469732074736F68;
  }

  *v0;
  return result;
}

uint64_t sub_25F4E5924()
{
  if (*v0)
  {
    result = 0x697320746E656761;
  }

  else
  {
    result = 0x6469732074736F68;
  }

  *v0;
  return result;
}

unint64_t sub_25F4E596C()
{
  result = qword_27FD909D8;
  if (!qword_27FD909D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909D8);
  }

  return result;
}

unint64_t sub_25F4E59C4()
{
  result = qword_27FD909E0;
  if (!qword_27FD909E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShellService(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 9)
  {
    return v8 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShellService(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25F4E5B70(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25F4E5B84(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShellService.Domain(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShellService.Domain(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F4E5DC4(uint64_t a1)
{
  v2 = sub_25F4E60D8();

  return MEMORY[0x2821A0AC0](a1, v2);
}

unint64_t sub_25F4E5E80(uint64_t a1)
{
  result = sub_25F4E5EA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4E5EA8()
{
  result = qword_27FD909E8;
  if (!qword_27FD909E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909E8);
  }

  return result;
}

unint64_t sub_25F4E5F00()
{
  result = qword_27FD909F0;
  if (!qword_27FD909F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909F0);
  }

  return result;
}

unint64_t sub_25F4E5F58()
{
  result = qword_27FD909F8;
  if (!qword_27FD909F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD909F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShellToControlAgent(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ShellToControlAgent(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25F4E60D8()
{
  result = qword_27FD90A00;
  if (!qword_27FD90A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90A00);
  }

  return result;
}

uint64_t sub_25F4E616C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_25F502258();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_25F501EB8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E6288, 0, 0);
}

uint64_t sub_25F4E6288()
{
  v14 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v13[0] = 0;
  (*(v2 + 104))(v1, *MEMORY[0x277D40F58], v3);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  v7 = sub_25F4D82A4(v13, v1, v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD903C0, &qword_25F504A40);
  v10[4] = sub_25F4D8FF0(&qword_27FD90E60, &qword_27FD903C0, &qword_25F504A40);
  *v10 = v7;

  v11 = v0[1];

  return v11();
}

uint64_t sub_25F4E6420(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_25F502258();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_25F501EB8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F4E653C, 0, 0);
}

uint64_t sub_25F4E653C()
{
  v14 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v13[0] = 4;
  (*(v2 + 104))(v1, *MEMORY[0x277D40F58], v3);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  v7 = sub_25F4D82A4(v13, v1, v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD903C0, &qword_25F504A40);
  v10[4] = sub_25F4D8FF0(&qword_27FD90E60, &qword_27FD903C0, &qword_25F504A40);
  *v10 = v7;

  v11 = v0[1];

  return v11();
}

void *sub_25F4E66D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A38, &qword_25F504A48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = sub_25F502468();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v14 + 104))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  v15 = sub_25F502558();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v2[2] = sub_25F502548();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50) + 48);
  sub_25F4E3B08();
  (*(v7 + 104))(v10, *MEMORY[0x277D85778], v6);
  sub_25F502828();
  (*(v7 + 8))(v10, v6);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v2[3] = sub_25F4E795C;
  v2[4] = v19;
  v22 = v2;
  sub_25F4D8FF0(&qword_27FD90A48, &qword_27FD90A10, &qword_25F5049B8);

  sub_25F5024C8();

  return v2;
}

void *sub_25F4E6A08(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A38, &qword_25F504A48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = sub_25F502468();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v14 + 104))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D404B8]);
  v15 = sub_25F502558();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v2[2] = sub_25F502548();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50) + 48);
  sub_25F4E3B08();
  (*(v7 + 104))(v10, *MEMORY[0x277D85778], v6);
  sub_25F502828();
  (*(v7 + 8))(v10, v6);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v2[3] = sub_25F4E7890;
  v2[4] = v19;
  v22 = v2;
  sub_25F4D8FF0(&qword_27FD90A40, &qword_27FD90A28, &qword_25F5049D8);

  sub_25F5024C8();

  return v2;
}

uint64_t sub_25F4E6D38(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  sub_25F4E7898(a2 + qword_27FD90858, &v12 - v6);
  v8 = *(v4 + 56);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90920, qword_25F5045B0);
  sub_25F502868();
  (*(*(v9 - 8) + 8))(&v7[v8], v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90918, &unk_25F504A60);
  return (*(*(v10 - 8) + 8))(v7, v10);
}

id static _UVServiceHubServiceFactory.makeAgentPipeService(messageHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A08, &qword_25F5049B0);
  v5 = objc_allocWithZone(v4);
  v6 = qword_27FD90760;
  v7 = sub_25F502448();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v15 = 2;
  *&v5[v6] = sub_25F502438();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A10, &qword_25F5049B8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  *&v5[qword_27FD90768] = sub_25F4E66D8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A18, &qword_25F5049C0);
  *&v5[qword_27FD90770] = sub_25F501ED8();
  v16.receiver = v5;
  v16.super_class = v4;
  v13 = objc_msgSendSuper2(&v16, sel_init, v15, 0, 0);

  return v13;
}

id static _UVServiceHubServiceFactory.makeShellPipeService(messageHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A20, &qword_25F5049D0);
  v5 = objc_allocWithZone(v4);
  v6 = qword_27FD90760;
  v7 = sub_25F502448();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v15 = 2;
  *&v5[v6] = sub_25F502438();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A28, &qword_25F5049D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  *&v5[qword_27FD90768] = sub_25F4E6A08(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A30, &qword_25F5049E0);
  *&v5[qword_27FD90770] = sub_25F501ED8();
  v16.receiver = v5;
  v16.super_class = v4;
  v13 = objc_msgSendSuper2(&v16, sel_init, v15, 0, 0);

  return v13;
}

id static _UVServiceHubServiceFactory.makePreviewService()()
{
  v1 = sub_25F502258();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25F501EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = 2;
  (*(v7 + 104))(v10, *MEMORY[0x277D40F58], v6);
  _s17PreviewsOSSupport15ShellConnectionCA2A10ClientRoleVRszrlE16createByEndpoint_3for13clientContextACyAEGSo09BSServicedI0C_AA0C7ServiceO0A12FoundationOS12PropertyListVtKFZfA1__0();
  v11 = sub_25F4D82A4(&v16, v10, v5);
  if (v0)
  {
    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v13 = v11;
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v14 = objc_allocWithZone(type metadata accessor for ServiceHubPreviewService());
    return sub_25F4F3F80(v13);
  }
}

id _UVServiceHubServiceFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _UVServiceHubServiceFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _UVServiceHubServiceFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F4E7844()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F4E7898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90908, &unk_25F504A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4E7908()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F4E7970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_25F502718();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_25F4E96E0();
  swift_getObjectType();
  sub_25F4E9838(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_25F4E7CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F502718();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_25F4E96E0();
  ObjectType = swift_getObjectType();
  sub_25F4E9B88(a1, a2, a3, ObjectType, 154, 104, &block_descriptor_5, &selRef_sendXPCEndpoint_context_replyHandler_);

  return swift_unknownObjectRelease();
}

uint64_t sub_25F4E7F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F502718();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_25F4E96E0();
  ObjectType = swift_getObjectType();
  sub_25F4E9B88(a1, a2, a3, ObjectType, 158, 103, &block_descriptor_2, &selRef_sendBSEndpoint_context_replyHandler_);

  return swift_unknownObjectRelease();
}

void sub_25F4E81A8(__int128 *a1)
{
  sub_25F4EAD84();
  v27 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 9);
  v23 = *(a1 + 8);
  v24 = swift_allocObject();
  v9 = a1[3];
  v24[3] = a1[2];
  v24[4] = v9;
  v24[5] = a1[4];
  v10 = a1[1];
  v24[1] = *a1;
  v24[2] = v10;
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  v11[5] = a1[4];
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  v14 = swift_allocObject();
  v15 = a1[3];
  v14[3] = a1[2];
  v14[4] = v15;
  v14[5] = a1[4];
  v16 = a1[1];
  v14[1] = *a1;
  v14[2] = v16;
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2);
  sub_25F4DFA0C(v5);
  sub_25F4DFA0C(v6);
  sub_25F4DFA0C(v23);
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2);
  sub_25F4DFA0C(v5);
  sub_25F4DFA0C(v6);
  sub_25F4DFA0C(v23);
  sub_25F4EAEC8(&v27, aBlock);
  sub_25F4DFA0C(v2);
  sub_25F4DFA0C(v5);
  sub_25F4DFA0C(v6);
  sub_25F4DFA0C(v23);
  v17 = sub_25F4E8B54(sub_25F4EADD4, v24, sub_25F4EAE40, v11, sub_25F4EAEC0, v14);
  v18 = *(v25 + 32);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F4EAF64;
  *(v20 + 24) = v19;
  aBlock[4] = sub_25F4EAF7C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F4D6D54;
  aBlock[3] = &block_descriptor_60;
  v21 = _Block_copy(aBlock);

  v22 = v17;

  [v18 configureConnection_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    [v18 activate];
  }
}

uint64_t ShellConnection.invalidationHandle.getter()
{
  sub_25F4EA864();
}

uint64_t sub_25F4E8530(uint64_t a1, void (*a2)(uint64_t, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = sub_25F501FA8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  a2(a1, v7);
  return sub_25F4D867C(v7, &qword_27FD90900, &unk_25F504590);
}

uint64_t sub_25F4E8620(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_25F501FA8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  a3(a1, v9);
  return sub_25F4D867C(v9, &qword_27FD90900, &unk_25F504590);
}

uint64_t sub_25F4E8758(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a3[2];
  v7 = a3[3];
  v8 = a3[4];
  v4 = *a3;
  v5 = a3[1];
  sub_25F4EAD1C();
  return sub_25F5020A8();
}

uint64_t sub_25F4E87C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = *(a4 + 48);
  if (v12)
  {
    v13 = *(a4 + 56);

    v12(a1, a2, a3);

    return sub_25F4DF408(v12);
  }

  else
  {
    v15 = *(a4 + 48);
    v19[2] = *(a4 + 32);
    v19[3] = v15;
    v19[4] = *(a4 + 64);
    v16 = *(a4 + 16);
    v19[0] = *a4;
    v19[1] = v16;
    v17 = sub_25F501FA8();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v11, a3, v17);
    (*(v18 + 56))(v11, 0, 1, v17);
    sub_25F4EAD1C();
    sub_25F5020B8();
    return sub_25F4D867C(v11, &qword_27FD90900, &unk_25F504590);
  }
}

uint64_t sub_25F4E8990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = *(a4 + 64);
  if (v12)
  {
    v13 = *(a4 + 72);

    v12(a1, a2, a3);

    return sub_25F4DF408(v12);
  }

  else
  {
    v15 = *(a4 + 48);
    v19[2] = *(a4 + 32);
    v19[3] = v15;
    v19[4] = *(a4 + 64);
    v16 = *(a4 + 16);
    v19[0] = *a4;
    v19[1] = v16;
    v17 = sub_25F501FA8();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v11, a3, v17);
    (*(v18 + 56))(v11, 0, 1, v17);
    sub_25F4EAD1C();
    sub_25F5020B8();
    return sub_25F4D867C(v11, &qword_27FD90900, &unk_25F504590);
  }
}

id sub_25F4E8B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v25 = sub_25F4EACC0;
  v26 = v13;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_25F4EA4DC;
  v24 = &block_descriptor_11;
  v14 = _Block_copy(&v21);

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v25 = sub_25F4EACC8;
  v26 = v15;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_25F4EA59C;
  v24 = &block_descriptor_17;
  v16 = _Block_copy(&v21);

  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v25 = sub_25F4EB0A8;
  v26 = v17;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_25F4EA774;
  v24 = &block_descriptor_23;
  v18 = _Block_copy(&v21);

  v19 = [v12 initWithMessageHandler:v14 xpcEndpointHandler:v16 bsEndpointHandler:v18];

  _Block_release(v18);
  _Block_release(v16);
  _Block_release(v14);
  return v19;
}

void sub_25F4E8DB0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24) > 6u)
  {
    *(a2 + 24);
  }

  v6 = sub_25F502778();

  v7 = UVShellConnectionInterface(v6);

  [a1 setInterface_];
  v8 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterfaceTarget_];
  v15 = sub_25F4EAF84;
  v16 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_25F4F6138;
  v14 = &block_descriptor_63;
  v9 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v9);
  v15 = sub_25F4EAF8C;
  v16 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_25F4F6138;
  v14 = &block_descriptor_66;
  v10 = _Block_copy(&v11);

  [a1 setActivationHandler_];
  _Block_release(v10);
}

uint64_t sub_25F4E9058(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_25F502338();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = a2;
  swift_getWitnessTable();
  sub_25F4E22D4();
  sub_25F502308();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F4E91BC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_25F5025E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F5025F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  sub_25F4EAF94();
  sub_25F5022E8();
  (*(v6 + 8))(v9, v5);
  v10 = *(*a2 + 136);
  return (*(*(v4 + 88) + 8))(a1, *(v4 + 80));
}

uint64_t sub_25F4E9370()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = *(MEMORY[0x277D857C8] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90A50, &qword_25F503DF0);
  *v3 = v0;
  v3[1] = sub_25F4E943C;
  v5 = MEMORY[0x277D84950];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v4, v1, v6, v4, v5);
}

uint64_t sub_25F4E943C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_25F4E95D8;
  }

  else
  {
    v3 = sub_25F4E9550;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F4E9550()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(sub_25F4EAD70, v1);
}

uint64_t ShellConnection.description.getter()
{
  v1 = v0;
  v2 = *v0;
  sub_25F5029B8();
  v3 = *(v2 + 80);
  v4 = (*(*(v2 + 88) + 24))();

  MEMORY[0x25F8DED60](0x7463656E6E6F6320, 0xEF206E6F206E6F69);
  v7 = *(v1 + 24);
  v5 = ShellService.description.getter();
  MEMORY[0x25F8DED60](v5);

  return v4;
}

uint64_t sub_25F4E96E0()
{
  v1 = *v0;
  if ([v0[4] remoteTarget])
  {
    sub_25F502968();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD90B00, qword_25F505AB0);
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_25F4D867C(v8, &unk_27FD901C0, &qword_25F5037A8);
  }

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for ShellConnection.RemoteTargetError();
  swift_getWitnessTable();
  swift_allocError();
  *v5 = v0;
  swift_willThrow();
}

void sub_25F4E9838(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25F5025E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = aBlock - v12;
  v14 = sub_25F501FA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4EAC18(a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_25F4D867C(v13, &qword_27FD90900, &unk_25F504590);
    v19 = sub_25F502018();
    [v3 sendMessage_];
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v20 = sub_25F502018();
    sub_25F5025F8();
    v21 = sub_25F501F38();
    v23 = v22;
    (*(v6 + 8))(v9, v5);
    aBlock[4] = v21;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25F4EA278;
    aBlock[3] = &block_descriptor_8;
    v24 = _Block_copy(aBlock);

    [v3 sendMessage:v20 replyHandler:v24];
    _Block_release(v24);

    (*(v15 + 8))(v18, v14);
  }
}

void sub_25F4E9B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v21 = a8;
  v10 = sub_25F5025E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F502018();
  sub_25F5025F8();
  v16 = sub_25F501F38();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  aBlock[4] = v16;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F4EA278;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  [v20 *v21];
  _Block_release(v19);
}

uint64_t sub_25F4E9D3C()
{
  sub_25F5029B8();
  type metadata accessor for ShellConnection();
  swift_getWitnessTable();
  sub_25F502A48();
  MEMORY[0x25F8DED60](0xD00000000000004ALL, 0x800000025F507610);
  return 0;
}

uint64_t sub_25F4E9DFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_25F4E9D3C();
}

uint64_t sub_25F4E9E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F4E9E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t *ShellConnection.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[5];

  v4 = qword_27FD90A58;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90330, &qword_25F503890);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t ShellConnection.__deallocating_deinit()
{
  ShellConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F4EA014()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F4EA0A4;

  return ShellConnection.sender.getter();
}

uint64_t sub_25F4EA0A4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_25F4EA1B4()
{
  v1 = *v0;
  sub_25F4EA864();
}

uint64_t sub_25F4EA20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A09D0](a1, a2, a3, WitnessTable);
}

void sub_25F4EA278(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_25F4EA304(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_25F502028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F502938();
  if (a2)
  {
    sub_25F4DFA0C(a2);
    v16 = a1;
    sub_25F501F58();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_25F501FA8();
  (*(*(v18 - 8) + 56))(v10, v17, 1, v18);
  a4(v15, v10);
  sub_25F4D867C(v10, &qword_27FD90900, &unk_25F504590);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_25F4EA4DC(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_25F4EB0CC;
  }

  v7 = a2;
  v5();

  sub_25F4DF408(v6);
}

uint64_t sub_25F4EA5BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *, char *), uint64_t a6)
{
  v20 = a6;
  v21 = a5;
  v8 = sub_25F501FA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F502028();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F502938();

  v18 = a2;
  sub_25F501F58();
  v21(a1, v17, v12);
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

void sub_25F4EA794(uint64_t a1, void *a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;

  v14 = a2;
  v13 = a3;
  v10(v14, v13, a6, v12);
}

uint64_t _s17PreviewsOSSupport15ShellConnectionC8activate8receiver19interruptionHandleryy0A11MessagingOS16LazyPropertyListO_AG14TransportReplyVSgtYbc_yyYbctF_0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_getWitnessTable();
  sub_25F502A48();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *&v9 = 0;
  *(&v9 + 1) = 0xE000000000000000;
  v10 = sub_25F4EAD74;
  v11 = v6;
  v12 = sub_25F4EAD7C;
  v13 = v7;
  v14 = 0u;
  v15 = 0u;
  swift_retain_n();
  sub_25F4E81A8(&v9);
}

void sub_25F4EAA48(uint64_t a1)
{
  sub_25F4EAB70();
  if (v3 <= 0x3F)
  {
    v7 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_25F4EAB70()
{
  if (!qword_27FD90AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90A50, &qword_25F503DF0);
    v0 = sub_25F5028C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD90AE8);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F4EAC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90900, &unk_25F504590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4EAC88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F4EACE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25F4EAD1C()
{
  result = qword_27FD90B10;
  if (!qword_27FD90B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90B10);
  }

  return result;
}

unint64_t sub_25F4EAD84()
{
  result = qword_27FD90B18;
  if (!qword_27FD90B18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD90B18);
  }

  return result;
}

uint64_t sub_25F4EADD4()
{
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v2 = v0[1];
  v3 = v0[2];
  sub_25F4EAD1C();
  return sub_25F5020A8();
}

uint64_t objectdestroy_44Tm()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  if (v0[6])
  {
    v3 = v0[7];
  }

  if (v0[8])
  {
    v4 = v0[9];
  }

  if (v0[10])
  {
    v5 = v0[11];
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25F4EAF24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25F4EAF94()
{
  result = qword_27FD90B80[0];
  if (!qword_27FD90B80[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD90330, &qword_25F503890);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD90B80);
  }

  return result;
}

uint64_t sub_25F4EAFF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F4EB0F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x4C525579706F63;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x800000025F506560;
  }

  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0x4C525579706F63;
  }

  if (*a2)
  {
    v7 = 0x800000025F506560;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F502A68();
  }

  return v9 & 1;
}

uint64_t sub_25F4EB19C()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EB224()
{
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4EB298()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EB328(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F506560;
  v3 = 0x4C525579706F63;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F4EB36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4ECF60();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4EB430(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7107189;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7107189;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F502A68();
  }

  return v9 & 1;
}

uint64_t sub_25F4EB4D8()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EB55C()
{
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4EB5CC()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EB658(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (!*v1)
  {
    v2 = 0x696D697263736964;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4EB698()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t ShellToControlAgent.TwoWayMessage.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90C70, &qword_25F504DB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16[-v3];
  v5 = sub_25F502098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ShellToControlAgent.TwoWayMessage();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v0;
  v14 = sub_25F4EBA88();
  sub_25F4EBADC();
  sub_25F502238();
  sub_25F4EBB30(v0, v13);
  swift_getEnumCaseMultiPayload();
  (*(v6 + 32))(v9, v13, v5);
  (*(v6 + 16))(v4, v9, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v18[3] = &type metadata for ShellToControlAgent.TwoWayMessage.Key;
  v18[4] = v14;
  LOBYTE(v18[0]) = 1;
  sub_25F4EBB94();
  sub_25F5021B8();
  sub_25F4EBBEC(v4);
  (*(v6 + 8))(v9, v5);
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t type metadata accessor for ShellToControlAgent.TwoWayMessage()
{
  result = qword_27FD90CA8;
  if (!qword_27FD90CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F4EB998(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for ShellToControlAgent.TwoWayMessage();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F4EBB30(a3, v9);
  LOBYTE(a3) = swift_getEnumCaseMultiPayload() == 1;
  v10 = sub_25F502098();
  result = (*(*(v10 - 8) + 8))(v9, v10);
  *a2 = a3;
  return result;
}

unint64_t sub_25F4EBA88()
{
  result = qword_27FD90C78;
  if (!qword_27FD90C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C78);
  }

  return result;
}

unint64_t sub_25F4EBADC()
{
  result = qword_27FD90C80;
  if (!qword_27FD90C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C80);
  }

  return result;
}

uint64_t sub_25F4EBB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShellToControlAgent.TwoWayMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F4EBB94()
{
  result = qword_27FD90C88;
  if (!qword_27FD90C88)
  {
    sub_25F502098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C88);
  }

  return result;
}

uint64_t sub_25F4EBBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90C70, &qword_25F504DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShellToControlAgent.TwoWayMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ShellToControlAgent.TwoWayMessage();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v18 = &type metadata for ShellToControlAgent.TwoWayMessage.Key;
  v12 = sub_25F4EBA88();
  v19 = v12;
  LOBYTE(v17[0]) = 0;
  sub_25F4EBADC();
  sub_25F5021C8();
  if (v2)
  {
    v13 = sub_25F502258();
    (*(*(v13 - 8) + 8))(a1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
    v18 = &type metadata for ShellToControlAgent.TwoWayMessage.Key;
    v19 = v12;
    LOBYTE(v17[0]) = 1;
    if (v20)
    {
      sub_25F502098();
      sub_25F4EBB94();
      sub_25F5021C8();
      v15 = sub_25F502258();
      (*(*(v15 - 8) + 8))(a1, v15);
      __swift_destroy_boxed_opaque_existential_0(v17);
      swift_storeEnumTagMultiPayload();
      v11 = v9;
    }

    else
    {
      sub_25F502098();
      sub_25F4EBB94();
      sub_25F5021C8();
      v16 = sub_25F502258();
      (*(*(v16 - 8) + 8))(a1, v16);
      __swift_destroy_boxed_opaque_existential_0(v17);
      swift_storeEnumTagMultiPayload();
    }

    return sub_25F4EBED0(v11, a2);
  }
}

uint64_t sub_25F4EBED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShellToControlAgent.TwoWayMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F4EBF5C()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EC008()
{
  *v0;
  *v0;
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4EC0A0()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EC148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4EC8C4();
  *a2 = result;
  return result;
}

void sub_25F4EC178(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "ission";
  v4 = "createPreviewSceneAgent";
  v5 = 0xD000000000000016;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000017;
    v4 = "connectHostToAgentPipe";
  }

  if (*v1)
  {
    v3 = "createPreviewNonUIAgent";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_25F4EC1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4ECFB4();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4EC2A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656449656E656373;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xEF7265696669746ELL;
  }

  if (*a2)
  {
    v6 = 0x656449656E656373;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xEF7265696669746ELL;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F502A68();
  }

  return v9 & 1;
}

uint64_t sub_25F4EC364()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EC3FC()
{
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4EC480()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EC520@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F502A18();

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

void sub_25F4EC57C(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x656449656E656373;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xEF7265696669746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4EC5D0()
{
  if (*v0)
  {
    result = 0x656449656E656373;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t ShellToControlAgent.BSEndpointContext.propertyListValue.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F4EC710();
  sub_25F4EC764();
  result = sub_25F502238();
  if (a2 >= 3)
  {
    v6[5] = a1;
    v6[6] = a2;
    v6[3] = &type metadata for ShellToControlAgent.BSEndpointContext.Key;
    v6[4] = v4;
    LOBYTE(v6[0]) = 1;
    sub_25F5021B8();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

_BYTE *sub_25F4EC6E8(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 24);
  *result = 0;
  v4 = v3 >= 3;
  v5 = 0x30200u >> (8 * v3);
  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_25F4EC710()
{
  result = qword_27FD90C90;
  if (!qword_27FD90C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C90);
  }

  return result;
}

unint64_t sub_25F4EC764()
{
  result = qword_27FD90C98;
  if (!qword_27FD90C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90C98);
  }

  return result;
}

uint64_t sub_25F4EC7D0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_25F4EC710();
  sub_25F4EC764();
  result = sub_25F502238();
  if (v1 >= 3)
  {
    v5[5] = v2;
    v5[6] = v1;
    v5[3] = &type metadata for ShellToControlAgent.BSEndpointContext.Key;
    v5[4] = v3;
    LOBYTE(v5[0]) = 1;
    sub_25F5021B8();
    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return result;
}

uint64_t sub_25F4EC898@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25F4EC910(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_25F4EC8C4()
{
  v0 = sub_25F502A18();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4EC910(uint64_t a1)
{
  v10 = &type metadata for ShellToControlAgent.BSEndpointContext.Key;
  v3 = sub_25F4EC710();
  v11 = v3;
  LOBYTE(v9[0]) = 0;
  sub_25F4EC764();
  sub_25F5021C8();
  if (v1)
  {
    v4 = sub_25F502258();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
    if (v8 <= 1u && v8)
    {
      v10 = &type metadata for ShellToControlAgent.BSEndpointContext.Key;
      v11 = v3;
      LOBYTE(v9[0]) = 1;
      sub_25F5021C8();
      v7 = sub_25F502258();
      (*(*(v7 - 8) + 8))(a1, v7);
      __swift_destroy_boxed_opaque_existential_0(v9);
      return v8;
    }

    else
    {
      v6 = sub_25F502258();
      (*(*(v6 - 8) + 8))(a1, v6);
      return 0;
    }
  }
}

unint64_t sub_25F4ECB34(uint64_t a1)
{
  result = sub_25F4ECB5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F4ECB5C()
{
  result = qword_27FD90CA0;
  if (!qword_27FD90CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CA0);
  }

  return result;
}

void sub_25F4ECC10()
{
  sub_25F4ECC70();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_25F4ECC70()
{
  if (!qword_27FD90CB8)
  {
    v0 = sub_25F502098();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD90CB8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17PreviewsOSSupport19ShellToControlAgentO17BSEndpointContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F4ECCD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F4ECD2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_25F4ECD7C(void *result, int a2)
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

unint64_t sub_25F4ECDF8()
{
  result = qword_27FD90CC0;
  if (!qword_27FD90CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CC0);
  }

  return result;
}

unint64_t sub_25F4ECE50()
{
  result = qword_27FD90CC8;
  if (!qword_27FD90CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CC8);
  }

  return result;
}

unint64_t sub_25F4ECEA8()
{
  result = qword_27FD90CD0;
  if (!qword_27FD90CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CD0);
  }

  return result;
}

unint64_t sub_25F4ECF00()
{
  result = qword_27FD90CD8;
  if (!qword_27FD90CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CD8);
  }

  return result;
}

unint64_t sub_25F4ECF60()
{
  result = qword_27FD90CE0;
  if (!qword_27FD90CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CE0);
  }

  return result;
}

unint64_t sub_25F4ECFB4()
{
  result = qword_27FD90CE8;
  if (!qword_27FD90CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CE8);
  }

  return result;
}

uint64_t static LSBundleRecord.canLaunch(agentBundle:)(uint64_t a1)
{
  v2 = sub_25F501FD8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = sub_25F502718();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  sub_25F5026D8();
  v17 = v3[2];
  v59 = a1;
  v54 = v17;
  v55 = v3 + 2;
  v17(v8, a1, v2);
  v18 = sub_25F5026F8();
  v19 = sub_25F502908();
  v20 = os_log_type_enabled(v18, v19);
  v57 = v3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v58 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v53 = v9;
    v24 = v23;
    v61 = v23;
    *v22 = 136315138;
    sub_25F4EDD5C();
    v25 = sub_25F502A28();
    v26 = v3;
    v27 = v14;
    v29 = v28;
    v56 = v26[1];
    v56(v8, v2);
    v30 = sub_25F4DE2EC(v25, v29, &v61);
    v14 = v27;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_25F4D4000, v18, v19, "Checking if %s is a valid development process", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v31 = v24;
    v9 = v53;
    MEMORY[0x25F8DF6E0](v31, -1, -1);
    v32 = v22;
    v10 = v58;
    MEMORY[0x25F8DF6E0](v32, -1, -1);
  }

  else
  {

    v56 = v3[1];
    v56(v8, v2);
  }

  v33 = *(v10 + 8);
  v33(v16, v9);
  v34 = v59;
  v35 = sub_25F4EDA7C();
  v36 = v60;
  if (v35 & 1) != 0 || (sub_25F4EDC48())
  {
    return 1;
  }

  sub_25F5026D8();
  v54(v36, v34, v2);
  v38 = sub_25F5026F8();
  v39 = sub_25F502918();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v58 = v10;
    v41 = v40;
    v42 = v9;
    v43 = swift_slowAlloc();
    v61 = v43;
    *v41 = 136315138;
    sub_25F4EDD5C();
    v44 = sub_25F502A28();
    v45 = v36;
    v46 = v14;
    v48 = v47;
    v56(v45, v2);
    v49 = sub_25F4DE2EC(v44, v48, &v61);

    *(v41 + 4) = v49;
    _os_log_impl(&dword_25F4D4000, v38, v39, "can't do anything with non-development agent %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x25F8DF6E0](v43, -1, -1);
    MEMORY[0x25F8DF6E0](v41, -1, -1);

    v50 = v46;
    v51 = v42;
  }

  else
  {

    v56(v36, v2);
    v50 = v14;
    v51 = v9;
  }

  v33(v50, v51);
  return 0;
}

id sub_25F4ED500()
{
  v1 = [v0 entitlements];
  v2 = sub_25F502778();
  sub_25F4EDDB4();
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    sub_25F502968();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_25F4EDE00(v9);
  }

  return 0;
}

id sub_25F4ED634(uint64_t a1, char a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25F501E28();
  v16[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_25F501E48();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_25F501DF8();

    swift_willThrow();
    v13 = sub_25F501E48();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_25F4ED788(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25F502778();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_25F501DF8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_25F4ED864(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_25F501E28();
  v14[0] = 0;
  v5 = [v2 initWithURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_25F501E48();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_25F501DF8();

    swift_willThrow();
    v11 = sub_25F501E48();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_25F4ED9B0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25F502778();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_25F501DF8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_25F4EDA7C()
{
  v0 = sub_25F501E48();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F501FB8();
  if (v4)
  {
    sub_25F501E18();

    v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v6 = sub_25F4ED634(v3, 0);
  }

  else
  {
    v9 = sub_25F501FC8();
    v11 = v10;
    v12 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v6 = sub_25F4ED788(v9, v11, 0);
  }

  if (v6)
  {
    v13 = v6;
    v14 = [v13 managementDomain];
    v15 = sub_25F502788();
    v17 = v16;

    if (v15 == 0xD000000000000011 && 0x800000025F507680 == v17)
    {

      v7 = 1;
    }

    else
    {
      v19 = sub_25F502A68();

      if (v19)
      {

        v7 = 1;
      }

      else
      {
        v20 = v13;
        v7 = sub_25F4ED500();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_25F4EDC48()
{
  v0 = sub_25F501E48();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F501FB8();
  if (v4)
  {
    sub_25F501E18();

    v5 = objc_allocWithZone(MEMORY[0x277CC1E50]);
    v6 = sub_25F4ED864(v3);
  }

  else
  {
    sub_25F501FC8();
    v8 = objc_allocWithZone(MEMORY[0x277CC1E50]);
    v6 = sub_25F4ED9B0();
  }

  if (v6)
  {
    v9 = v6;
    v7 = sub_25F4ED500();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_25F4EDD5C()
{
  result = qword_27FD90CF0;
  if (!qword_27FD90CF0)
  {
    sub_25F501FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90CF0);
  }

  return result;
}

unint64_t sub_25F4EDDB4()
{
  result = qword_27FD90CF8;
  if (!qword_27FD90CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD90CF8);
  }

  return result;
}

uint64_t sub_25F4EDE00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD901C0, &qword_25F5037A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RefinedPreviewPayload.previewPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F501F08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RefinedPreviewPayload.previewPayload.setter(uint64_t a1)
{
  v3 = sub_25F501F08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RefinedPreviewPayload.requestedGroupIndex.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RefinedPreviewPayload(0) + 20);

  return sub_25F4EE004(a1, v3);
}

uint64_t sub_25F4EE004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D00, &qword_25F5052A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RefinedPreviewPayload.init(previewPayload:requestedGroupIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for RefinedPreviewPayload(0) + 20);
  v7 = sub_25F5020E8();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = sub_25F501F08();
  (*(*(v8 - 8) + 32))(a3, a1, v8);

  return sub_25F4EE004(a2, a3 + v6);
}

uint64_t sub_25F4EE18C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x5077656976657270;
  }

  if (v3)
  {
    v5 = 0xEE0064616F6C7961;
  }

  else
  {
    v5 = 0x800000025F506630;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x5077656976657270;
  }

  if (*a2)
  {
    v7 = 0x800000025F506630;
  }

  else
  {
    v7 = 0xEE0064616F6C7961;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F502A68();
  }

  return v9 & 1;
}

uint64_t sub_25F4EE244()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EE2D8()
{
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4EE358()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EE3F4(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F506630;
  v3 = 0x5077656976657270;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEE0064616F6C7961;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_25F4EE444()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x5077656976657270;
  }

  *v0;
  return result;
}

uint64_t sub_25F4EE4DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E08, &qword_25F5059E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E10, &qword_25F5059F0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90E18, &qword_25F5059F8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = *(v14 + 56);
  *(&v30 - v19) = 0;
  v22 = sub_25F501F08();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v20[v21], a1, v22);
  v24 = *(v6 + 56);
  *v12 = 1;
  v25 = type metadata accessor for RefinedPreviewPayload(0);
  sub_25F4E4F4C(a1 + *(v25 + 20), &v12[v24], &qword_27FD90D00, &qword_25F5052A0);
  sub_25F4E4F4C(v20, v18, &qword_27FD90E18, &qword_25F5059F8);
  LOBYTE(v24) = *v18;
  v26 = v30;
  (*(v23 + 32))(v30, &v18[*(v14 + 56)], v22);
  (*(v23 + 56))(v26, 0, 1, v22);
  v32 = v24;
  sub_25F4E4F4C(v12, v10, &qword_27FD90E10, &qword_25F5059F0);
  v27 = *(v6 + 56);
  v31 = *v10;
  sub_25F5020E8();
  sub_25F4EED9C();
  sub_25F4F1FC0(&qword_27FD90D10, MEMORY[0x277D40840]);
  sub_25F4F1FC0(&qword_27FD90D18, MEMORY[0x277D40CA0]);
  v28 = sub_25F502458();
  sub_25F4D867C(v26, &qword_27FD90E08, &qword_25F5059E8);
  sub_25F4D867C(v12, &qword_27FD90E10, &qword_25F5059F0);
  sub_25F4D867C(v20, &qword_27FD90E18, &qword_25F5059F8);
  sub_25F4D867C(&v10[v27], &qword_27FD90D00, &qword_25F5052A0);
  return v28;
}

uint64_t RefinedPreviewPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F502258();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D00, &qword_25F5052A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = (v28 - v9);
  v10 = sub_25F501F08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x28223BE20](v10);
  v35 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - v15;
  v17 = *(type metadata accessor for RefinedPreviewPayload(0) + 20);
  v18 = sub_25F5020E8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v39 = a2;
  v28[1] = v19 + 56;
  v29 = v20;
  v20(&v17[a2], 1, 1, v18);
  v37 = &type metadata for RefinedPreviewPayload.Key;
  v21 = sub_25F4EED9C();
  v38 = v21;
  LOBYTE(v36[0]) = 0;
  v31 = sub_25F4F1FC0(&qword_27FD90D10, MEMORY[0x277D40840]);
  v22 = v33;
  sub_25F5021C8();
  if (v22)
  {
    v28[0] = v18;
    v30 = v11;
    v33 = v17;
    v24 = v34;
    __swift_destroy_boxed_opaque_existential_0(v36);
    (*(v24 + 16))(v32, a1, v4);
    sub_25F5024E8();
    (*(v24 + 8))(a1, v4);

    v25 = v39;
    v30[4](v39, v35, v10);
    v26 = v33;
    sub_25F4D867C(&v33[v25], &qword_27FD90D00, &qword_25F5052A0);
    return v29(&v26[v25], 1, 1, v28[0]);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v36);
    (*(v11 + 4))(v39, v16, v10);
    v37 = &type metadata for RefinedPreviewPayload.Key;
    v38 = v21;
    LOBYTE(v36[0]) = 1;
    sub_25F4F1FC0(&qword_27FD90D18, MEMORY[0x277D40CA0]);
    v23 = v30;
    sub_25F502208();
    (*(v34 + 8))(a1, v4);
    __swift_destroy_boxed_opaque_existential_0(v36);
    return sub_25F4EE004(v23, &v17[v39]);
  }
}

unint64_t sub_25F4EED9C()
{
  result = qword_27FD90D08;
  if (!qword_27FD90D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD90D08);
  }

  return result;
}

BOOL PreviewStructure.previewCount.getter()
{
  v1 = type metadata accessor for PreviewStructure(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4EF04C(v0, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D20, &qword_25F5052A8);
  v6 = (*(*(v5 - 8) + 48))(v4, 2, v5);
  if (v6)
  {
    return v6 == 1;
  }

  v8 = *(v5 + 48);
  v9 = sub_25F5026B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 32))(v13, v4, v9);
  v14 = PreviewGroupMetadata.previewCount.getter();
  (*(v10 + 8))(v13, v9);
  v15 = sub_25F5020E8();
  (*(*(v15 - 8) + 8))(&v4[v8], v15);
  return v14;
}

uint64_t sub_25F4EF04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewStructure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PreviewGroupMetadata.previewCount.getter()
{
  v0 = sub_25F502658();
  v1 = sub_25F5026A8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_25F502648();
  v5 = sub_25F502678();
  v21 = v2[1];
  v6 = v21(&v20 - v4, v1);
  MEMORY[0x28223BE20](v6);
  v7 = &v20 - v4;
  v8 = *(v0 + 16);
  if (v8)
  {
    v11 = v2[2];
    v10 = v2 + 2;
    v9 = v11;
    v12 = *(v10 + 64);
    v20 = v0;
    v13 = v0 + ((v12 + 32) & ~v12);
    v14 = v10[7];
    v15 = v10;
    while (1)
    {
      v16 = v15;
      v9(v7, v13, v1);
      v17 = sub_25F502678();
      result = v21(v7, v1);
      v19 = __OFADD__(v5, v17);
      v5 += v17;
      if (v19)
      {
        break;
      }

      v13 += v14;
      --v8;
      v15 = v16;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return v5;
  }

  return result;
}

uint64_t sub_25F4EF264(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x77656976657270;
  }

  else
  {
    v2 = 0x6E6F6974636573;
  }

  if (*a2)
  {
    v3 = 0x77656976657270;
  }

  else
  {
    v3 = 0x6E6F6974636573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F502A68();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F4EF2EC()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EF364()
{
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4EF3C0()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EF440(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F6974636573;
  if (*v1)
  {
    v2 = 0x77656976657270;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_25F4EF478()
{
  if (*v0)
  {
    return 0x77656976657270;
  }

  else
  {
    return 0x6E6F6974636573;
  }
}

uint64_t sub_25F4EF4E8()
{
  sub_25F502628();
  sub_25F502608();
  sub_25F4F1D5C();
  return sub_25F502458();
}

uint64_t PreviewGroupIndex.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON_1;
  v3 = sub_25F4F1D5C();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F5021C8();
  if (v1)
  {
    v4 = sub_25F502258();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F5021C8();
    __swift_destroy_boxed_opaque_existential_0(v7);
    sub_25F502618();
    v5 = sub_25F502258();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }
}

uint64_t sub_25F4EF728(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7463655365726F6DLL;
  }

  else
  {
    v4 = 0x6365537473726966;
  }

  if (v3)
  {
    v5 = 0xEC0000006E6F6974;
  }

  else
  {
    v5 = 0xEC000000736E6F69;
  }

  if (*a2)
  {
    v6 = 0x7463655365726F6DLL;
  }

  else
  {
    v6 = 0x6365537473726966;
  }

  if (*a2)
  {
    v7 = 0xEC000000736E6F69;
  }

  else
  {
    v7 = 0xEC0000006E6F6974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F502A68();
  }

  return v9 & 1;
}

uint64_t sub_25F4EF7E0()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4EF874()
{
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4EF8F4()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4EF990(uint64_t *a1@<X8>)
{
  v2 = 0x6365537473726966;
  if (*v1)
  {
    v2 = 0x7463655365726F6DLL;
  }

  v3 = 0xEC0000006E6F6974;
  if (*v1)
  {
    v3 = 0xEC000000736E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4EF9E0()
{
  if (*v0)
  {
    result = 0x7463655365726F6DLL;
  }

  else
  {
    result = 0x6365537473726966;
  }

  *v0;
  return result;
}

uint64_t sub_25F4EFA68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90DF0, &qword_25F5059D0);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 56);
  *v3 = 0;
  sub_25F502648();
  v5 = sub_25F502658();
  MEMORY[0x28223BE20](v5);
  sub_25F4E4F4C(v3, v3, &qword_27FD90DF0, &qword_25F5059D0);
  v6 = *v3;
  v7 = *(v1 + 56);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90DF8, &qword_25F5059D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_25F5026A8();
  v13 = *(v12 - 8);
  (*(v13 + 32))(v11, &v3[v7], v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = v6;
  v17 = 1;
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D40, &qword_25F5052B0);
  sub_25F4F1DB8();
  sub_25F4F1FC0(&qword_27FD90D38, MEMORY[0x28220A608]);
  sub_25F4F1E0C();
  v14 = sub_25F502458();

  sub_25F4D867C(v11, &qword_27FD90DF8, &qword_25F5059D8);
  sub_25F4D867C(v3, &qword_27FD90DF0, &qword_25F5059D0);
  return v14;
}

uint64_t PreviewGroupMetadata.init(propertyListValue:)(uint64_t a1)
{
  v3 = sub_25F5026A8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v10 = &_s3KeyON_0;
  v5 = sub_25F4F1DB8();
  v11 = v5;
  LOBYTE(v9[0]) = 0;
  sub_25F4F1FC0(&qword_27FD90D38, MEMORY[0x28220A608]);
  sub_25F5021C8();
  if (v1)
  {
    v6 = sub_25F502258();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
    v10 = &_s3KeyON_0;
    v11 = v5;
    LOBYTE(v9[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD90D40, &qword_25F5052B0);
    sub_25F4F1E0C();
    sub_25F5021C8();
    __swift_destroy_boxed_opaque_existential_0(v9);
    sub_25F502638();
    v8 = sub_25F502258();
    return (*(*(v8 - 8) + 8))(a1, v8);
  }
}

uint64_t sub_25F4EFFAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4377656976657270;
  }

  else
  {
    v4 = 0x656C746974;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEC000000746E756FLL;
  }

  if (*a2)
  {
    v6 = 0x4377656976657270;
  }

  else
  {
    v6 = 0x656C746974;
  }

  if (*a2)
  {
    v7 = 0xEC000000746E756FLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F502A68();
  }

  return v9 & 1;
}

uint64_t sub_25F4F0058()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

uint64_t sub_25F4F00E0()
{
  *v0;
  sub_25F5027B8();
}

uint64_t sub_25F4F0154()
{
  v1 = *v0;
  sub_25F502B08();
  sub_25F5027B8();

  return sub_25F502B38();
}

void sub_25F4F01E4(uint64_t *a1@<X8>)
{
  v2 = 0x656C746974;
  if (*v1)
  {
    v2 = 0x4377656976657270;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEC000000746E756FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4F0228()
{
  if (*v0)
  {
    result = 0x4377656976657270;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_25F4F02A4()
{
  sub_25F502698();
  sub_25F502678();
  sub_25F4F1EBC();
  v0 = sub_25F502458();

  return v0;
}

uint64_t PreviewGroupMetadata.Section.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON;
  v3 = sub_25F4F1EBC();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F502208();
  if (v1)
  {
    v4 = sub_25F502258();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F5021C8();
    __swift_destroy_boxed_opaque_existential_0(v7);
    sub_25F502688();
    v6 = sub_25F502258();
    return (*(*(v6 - 8) + 8))(a1, v6);
  }
}

uint64_t sub_25F4F0558(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4777656976657270;
  v4 = 0xEC00000070756F72;
  v5 = 0x800000025F5066A0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000025F5066A0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7250656C676E6973;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED00007765697665;
  }

  v8 = 0x4777656976657270;
  if (*a2 == 1)
  {
    v5 = 0xEC00000070756F72;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7250656C676E6973;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED00007765697665;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F502A68();
  }

  return v11 & 1;
}