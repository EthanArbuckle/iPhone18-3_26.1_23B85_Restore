uint64_t SyncedModelTester.localParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
  swift_beginAccess();
  return sub_26C3DDD48(v3 + v4, a1, &qword_280497268, &qword_26C46CFE0);
}

uint64_t sub_26C3D7624(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_26C3DDD48(a1, &v10 - v6, &qword_280497268, &qword_26C46CFE0);
  v8 = *a2;
  return SyncedModelTester.localParticipant.setter(v7);
}

uint64_t SyncedModelTester.localParticipant.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
  swift_beginAccess();
  sub_26C3DDCE0(a1, v3 + v4, &qword_280497268, &qword_26C46CFE0);
  return swift_endAccess();
}

void (*SyncedModelTester.localParticipant.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 24);
  v10 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
  swift_beginAccess();
  sub_26C3DDD48(v9 + v10, v8, &qword_280497268, &qword_26C46CFE0);
  return sub_26C3D7864;
}

void sub_26C3D7864(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_26C3DDD48(*(*a1 + 40), v3, &qword_280497268, &qword_26C46CFE0);
    SyncedModelTester.localParticipant.setter(v3);
    sub_26C3DE270(v4, &qword_280497268, &qword_26C46CFE0);
  }

  else
  {
    SyncedModelTester.localParticipant.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SyncedModelTester.ownerState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  return sub_26C3DDBB0(v3 + v4, a1, type metadata accessor for SyncedModelOwnerState);
}

uint64_t sub_26C3D79A4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SyncedModelOwnerState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDBB0(a1, v7, type metadata accessor for SyncedModelOwnerState);
  v8 = *a2;
  return SyncedModelTester.ownerState.setter(v7);
}

uint64_t SyncedModelTester.ownerState.setter(uint64_t a1)
{
  v3 = type metadata accessor for SyncedModelOwnerState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = *(v1 + 24);
  sub_26C3DDBB0(a1, &v13[-v8], type metadata accessor for SyncedModelOwnerState);
  v11 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v10 + v11, v7, type metadata accessor for SyncedModelOwnerState);
  swift_beginAccess();
  sub_26C3DD644(v9, v10 + v11);
  swift_endAccess();
  sub_26C412324(v7);
  sub_26C3DD6A8(a1);
  sub_26C3DD6A8(v7);
  return sub_26C3DD6A8(v9);
}

void (*SyncedModelTester.ownerState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for SyncedModelOwnerState() - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 24);
  v10 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v9 + v10, v8, type metadata accessor for SyncedModelOwnerState);
  return sub_26C3D7C94;
}

void sub_26C3D7C94(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_26C3DDBB0(*(*a1 + 40), v3, type metadata accessor for SyncedModelOwnerState);
    SyncedModelTester.ownerState.setter(v3);
    sub_26C3DD6A8(v4);
  }

  else
  {
    SyncedModelTester.ownerState.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SyncedModelTester.shouldReceiveOwnership.getter()
{
  v0 = sub_26C3DD704();
  sub_26C3DD720(v0);
  return v0;
}

uint64_t sub_26C3D7D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_26C3DD704();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = swift_allocObject();
    v4 = v6;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_26C3DDE74;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a2 = v9;
  a2[1] = v8;

  return sub_26C3DD720(v4);
}

uint64_t sub_26C3D7DF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26C3DDE3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_26C3DD720(v3);
  return SyncedModelTester.shouldReceiveOwnership.setter(v6, v5);
}

uint64_t SyncedModelTester.shouldReceiveOwnership.setter(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_26C3DD730(v4);
}

uint64_t (*SyncedModelTester.shouldReceiveOwnership.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = (*(v1 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  sub_26C3DD720(v4);
  return sub_26C3D7F08;
}

uint64_t sub_26C3D7F08(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_26C3DD720(*a1);
    v5 = (*(v4 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v2;
    sub_26C3DD730(v6);
    v8 = v3;
  }

  else
  {
    v9 = (*(v4 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
    v8 = *v9;
    v10 = v9[1];
    *v9 = v3;
    v9[1] = v2;
  }

  return sub_26C3DD730(v8);
}

Swift::Void __swiftcall SyncedModelTester.releaseRemoteOwnership()()
{
  v1 = type metadata accessor for SyncedModelOwnerState();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = *(v0 + 24);
  v12 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v11 + v12, v10, type metadata accessor for SyncedModelOwnerState);
  v13 = sub_26C46BCD4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v10, 2, v13);
  sub_26C3DD6A8(v10);
  if (!v15)
  {
    (*(v14 + 56))(v8, 1, 2, v13);
    sub_26C3DDBB0(v11 + v12, v5, type metadata accessor for SyncedModelOwnerState);
    swift_beginAccess();
    sub_26C3DD644(v8, v11 + v12);
    swift_endAccess();
    sub_26C412324(v5);
    sub_26C3DD6A8(v5);
    sub_26C3DD6A8(v8);
  }
}

uint64_t SyncedModelTester.applyRemoteChange<A>(value:keyPath:participant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SyncedModelOwnerState();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = *(v3 + 24);
  v14 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v13 + v14, v12, type metadata accessor for SyncedModelOwnerState);
  v15 = sub_26C46BCD4();
  (*(*(v15 - 8) + 56))(v10, 2, 2, v15);
  LOBYTE(v13) = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v12, v10);
  sub_26C3DD6A8(v10);
  result = sub_26C3DD6A8(v12);
  if ((v13 & 1) == 0)
  {
    v17[2] = *(v3 + 16);
    swift_unknownObjectRetain();
    swift_getAtKeyPath();
    swift_unknownObjectRelease();
    sub_26C3E096C(a1, a3);
  }

  return result;
}

{
  return sub_26C3D836C(a1, a2, a3, sub_26C3FD628);
}

uint64_t sub_26C3D836C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = type metadata accessor for SyncedModelOwnerState();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v15 = *(v4 + 24);
  v16 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C3DDBB0(v15 + v16, v14, type metadata accessor for SyncedModelOwnerState);
  v17 = sub_26C46BCD4();
  (*(*(v17 - 8) + 56))(v12, 2, 2, v17);
  LOBYTE(v15) = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v14, v12);
  sub_26C3DD6A8(v12);
  result = sub_26C3DD6A8(v14);
  if ((v15 & 1) == 0)
  {
    v19[2] = *(v4 + 16);
    swift_unknownObjectRetain();
    swift_getAtKeyPath();
    swift_unknownObjectRelease();
    a4(a1, a3);
  }

  return result;
}

uint64_t SyncedModelTester.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t SyncedModelTester.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_26C3D8578()
{
  result = sub_26C3E8DD4(MEMORY[0x277D84F90]);
  qword_280498528 = result;
  return result;
}

uint64_t (*sub_26C3D85A0())()
{
  if (qword_280497140 != -1)
  {
    swift_once();
  }

  v0 = sub_26C46C8E4();
  v2 = v1;
  swift_beginAccess();
  v3 = qword_280498528;
  if (!*(qword_280498528 + 16))
  {

    goto LABEL_7;
  }

  v4 = sub_26C42C2A8(v0, v2);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = *(v3 + 56);
  *(swift_allocObject() + 16) = *(v7 + 16 * v4);

  v8 = sub_26C3DE1EC;
LABEL_8:
  swift_endAccess();
  return v8;
}

uint64_t static SyncedModelsTester.enableTestMode<A>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280497140 != -1)
  {
    swift_once();
  }

  v9 = sub_26C46C8E4();
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = qword_280498528;
  qword_280498528 = 0x8000000000000000;
  sub_26C3DBDE0(sub_26C3DD778, v12, v9, v11, isUniquelyReferenced_nonNull_native);

  qword_280498528 = v15;
  return swift_endAccess();
}

uint64_t sub_26C3D87FC(uint64_t a1, void (*a2)())
{
  sub_26C3DE214(a1, v4);
  type metadata accessor for SyncedModelTester();
  result = swift_dynamicCast();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_26C3D888C(void *a1, unsigned int a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_26C3DE270(a1, &qword_280497378, &unk_26C46E560);
    v9 = *v2;
    v10 = sub_26C42C1C8(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26C42E174();
        v15 = v17;
      }

      sub_26C3DE0D8(*(v15 + 56) + 16 * v12, &v18);
      sub_26C42CC9C(v12, v15);
      *v3 = v15;
    }

    else
    {
      v18 = xmmword_26C46CFD0;
    }

    return sub_26C3DE270(&v18, &qword_280497378, &unk_26C46E560);
  }

  else
  {
    sub_26C3DE0D8(a1, &v18);
    v6 = *v2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_26C3DBCC0(&v18, a2, v7);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_26C3D899C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_26C3DBDE0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_26C42C2A8(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_26C42E2F0();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_26C42CE30(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_26C3D8AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_26C3DE270(a1, &qword_280497368, &qword_26C46E220);
    v5 = *v2;
    v6 = sub_26C42C320(a2);
    v8 = v7;
    if (v7)
    {
      v9 = v6;
      v10 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26C42E6FC();
        v12 = v16;
      }

      sub_26C3DDEFC(*(v12 + 56) + 8 * v9, &v18);
      sub_26C42D300(v9, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v8 & 1) == 0;
    return sub_26C3DE270(&v18, &qword_280497368, &qword_26C46E220);
  }

  else
  {
    sub_26C3DDEFC(a1, &v18);
    v13 = *v2;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    result = sub_26C3DC144(&v18, a2, v14);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_26C3D8BB4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_26C46BCD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_26C3DE270(a1, &qword_280497268, &qword_26C46CFE0);
    sub_26C42C790(a2, v8);
    v14 = sub_26C46BB54();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_26C3DE270(v8, &qword_280497268, &qword_26C46CFE0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_26C3DC264(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_26C46BB54();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_26C3D8DE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_26C3DC468(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_26C46BB54();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_26C42C210(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_26C42EBCC();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_26C46BB54();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_26C42D490(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_26C46BB54();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_26C3D8FA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497328, &qword_26C46E550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_26C3DE270(a1, &qword_280497328, &qword_26C46E550);
    sub_26C42CAF8(a2);
    v14 = sub_26C46BB54();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_26C3DE270(v8, &qword_280497328, &qword_26C46E550);
  }

  else
  {
    sub_26C3DDC70(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_26C3DC634(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_26C46BB54();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_26C3D91B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497308, &unk_26C46D100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CachedOwnershipRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_26C3DE270(a1, &qword_280497308, &unk_26C46D100);
    sub_26C42C944(a2);
    v14 = sub_26C46BB54();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_26C3DE270(v8, &qword_280497308, &unk_26C46D100);
  }

  else
  {
    sub_26C3DDAE8(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_26C3DC810(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_26C46BB54();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_26C3D93C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v4;
    sub_26C3DC9F8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    v12 = sub_26C46BB54();
    result = (*(*(v12 - 8) + 8))(a4, v12);
    *v4 = v31;
  }

  else
  {
    v14 = *v4;
    v15 = sub_26C42C210(a4);
    if (v16)
    {
      v17 = v15;
      v18 = *v5;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v5;
      v32 = *v5;
      if (!v19)
      {
        sub_26C42F888();
        v20 = v32;
      }

      v21 = *(v20 + 48);
      v22 = sub_26C46BB54();
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      v25 = (*(v20 + 56) + 24 * v17);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];

      sub_26C42DE50(v17, v20);
      result = (v24)(a4, v22);
      *v5 = v20;
    }

    else
    {
      v29 = sub_26C46BB54();
      v30 = *(*(v29 - 8) + 8);

      return v30(a4, v29);
    }
  }

  return result;
}

uint64_t static SyncedModelsTester.disableTestMode<A>(for:)()
{
  if (qword_280497140 != -1)
  {
    swift_once();
  }

  v0 = sub_26C46C8E4();
  v2 = v1;
  swift_beginAccess();
  sub_26C3D899C(0, 0, v0, v2);
  return swift_endAccess();
}

uint64_t sub_26C3D9678(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497380, &unk_26C46D170);
  result = sub_26C46C614();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      if (a2)
      {
        sub_26C3DE0D8(v22, v32);
      }

      else
      {
        sub_26C3DE190(v22, v32);
      }

      result = MEMORY[0x26D6A1200](*(v8 + 40), v21, 4);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      result = sub_26C3DE0D8(v32, *(v8 + 56) + 16 * v16);
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26C3D98F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497388, &qword_26C46D740);
  v36 = a2;
  result = sub_26C46C614();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_26C46C814();
      sub_26C46C1E4();
      result = sub_26C46C844();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26C3D9BAC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26C46BB54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497360, &unk_26C46D150);
  v47 = a2;
  result = sub_26C46C614();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        sub_26C3DDDB0(*v33, v31);
      }

      v34 = *(v13 + 40);
      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_26C3D9F64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497370, &unk_26C46D160);
  result = sub_26C46C614();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = 8 * (v18 | (v9 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      if (a2)
      {
        sub_26C3DDEFC(v23, v34);
      }

      else
      {
        sub_26C3DDFB4(v23, v34);
      }

      v24 = *(v8 + 40);
      result = sub_26C46C804();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      *(*(v8 + 48) + v17) = v22;
      result = sub_26C3DDEFC(v34, *(v8 + 56) + v17);
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26C3DA1E4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_26C46BCD4();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C46BB54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497320, &unk_26C46D110);
  v52 = a2;
  result = sub_26C46C614();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_26C3DA65C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26C46BB54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497350, &unk_26C46D140);
  v44 = a2;
  result = sub_26C46C614();
  v13 = result;
  if (*(v10 + 16))
  {
    v48 = v6;
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v46 = (v7 + 32);
    v20 = result + 64;
    v21 = v45;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v46)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      v30 = *(v13 + 40);
      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v45;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v13 + 48) + v47 * v22, v21, v48);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
      v10 = v42;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_26C3DAA08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497348, &qword_26C46D138);
  result = sub_26C46C614();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v31 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_26C3DDDB0(v31, *(&v31 + 1));
      }

      result = MEMORY[0x26D6A1200](*(v8 + 40), v21, 4);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26C3DAC84(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26C46BB54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497340, &qword_26C46D130);
  v48 = a2;
  result = sub_26C46C614();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_26C3DB03C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CachedOwnershipRequest(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C46BB54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497310, &qword_26C46E540);
  v48 = a2;
  result = sub_26C46C614();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26C3DDAE8(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26C3DDBB0(v33 + v32 * v28, v52, type metadata accessor for CachedOwnershipRequest);
      }

      v34 = *(v16 + 40);
      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_26C3DDAE8(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_26C3DB484(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v44 - v8;
  v9 = sub_26C46BB54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v15 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497338, &unk_26C46D700);
  v51 = a2;
  result = sub_26C46C614();
  v17 = result;
  if (*(v14 + 16))
  {
    v54 = v13;
    v45 = v3;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v46 = (v10 + 16);
    v47 = v10;
    v52 = (v10 + 32);
    v24 = result + 64;
    v48 = v14;
    v49 = v9;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v29 = v26 | (v18 << 6);
      v30 = *(v14 + 48);
      v53 = *(v10 + 72);
      v31 = v30 + v53 * v29;
      if (v51)
      {
        (*v52)(v54, v31, v9);
        v32 = *(v14 + 56);
        v33 = *(v50 + 72);
        sub_26C3DDC70(v32 + v33 * v29, v55);
      }

      else
      {
        (*v46)(v54, v31, v9);
        v34 = *(v14 + 56);
        v33 = *(v50 + 72);
        sub_26C3DDD48(v34 + v33 * v29, v55, &qword_280497330, &unk_26C46D120);
      }

      v35 = *(v17 + 40);
      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v38);
          if (v42 != -1)
          {
            v25 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v9 = v49;
      (*v52)((*(v17 + 48) + v53 * v25), v54, v49);
      result = sub_26C3DDC70(v55, *(v17 + 56) + v33 * v25);
      ++*(v17 + 16);
      v10 = v47;
      v14 = v48;
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v28 = v19[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v14 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v3 = v17;
  return result;
}

uint64_t sub_26C3DB8CC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26C46BB54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497358, &unk_26C46E5F0);
  v47 = a2;
  result = sub_26C46C614();
  v14 = result;
  if (*(v11 + 16))
  {
    v51 = v10;
    v43 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = (v7 + 16);
    v45 = v11;
    v46 = v7;
    v48 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v50 = *(v46 + 72);
      v29 = v28 + v50 * v27;
      if (v47)
      {
        (*v48)(v51, v29, v6);
        v30 = *(v11 + 56) + 24 * v27;
        v52 = *v30;
        v49 = *(v30 + 16);
      }

      else
      {
        (*v44)(v51, v29, v6);
        v31 = *(v11 + 56) + 24 * v27;
        v52 = *v31;
        v32 = *(v31 + 16);

        v49 = v32;
      }

      v33 = *(v14 + 40);
      sub_26C3DDC18();
      result = sub_26C46C1A4();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v48)(*(v14 + 48) + v50 * v22, v51, v6);
      v23 = *(v14 + 56) + 24 * v22;
      *v23 = v52;
      *(v23 + 16) = v49;
      ++*(v14 + 16);
      v11 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_26C3DBCC0(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26C42C1C8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_26C42E174();
      v9 = v17;
      goto LABEL_8;
    }

    sub_26C3D9678(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_26C42C1C8(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_26C46C7A4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 16 * v9;

    return sub_26C3DE134(a1, v21);
  }

  else
  {

    return sub_26C3DCBF8(v9, a2, a1, v20);
  }
}

uint64_t sub_26C3DBDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26C42C2A8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_26C3D98F4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_26C42C2A8(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_26C46C7A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_26C42E2F0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_26C3DBF68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a1;
  v9 = sub_26C46BB54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_26C42C210(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_26C42E470();
      goto LABEL_9;
    }

    sub_26C3D9BAC(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_26C42C210(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    v29 = v27[1];
    *v27 = v32;
    v27[1] = a2;

    return sub_26C3DDEA8(v28, v29);
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_26C3DCC60(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_26C3DC144(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26C42C320(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_26C42E6FC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_26C3D9F64(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_26C42C320(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_26C46C7A4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 8 * v9;

    return sub_26C3DDF58(a1, v21);
  }

  else
  {

    return sub_26C3DCD20(v9, a2, a1, v20);
  }
}

uint64_t sub_26C3DC264(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26C42C210(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_26C42E878();
      goto LABEL_7;
    }

    sub_26C3DA1E4(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_26C42C210(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_26C3DCD8C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_26C46BCD4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_26C3DC468(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26C42C210(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_26C42EBCC();
      goto LABEL_7;
    }

    sub_26C3DA65C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_26C42C210(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_26C3DCE80(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_26C3DC634(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26C42C210(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
      return sub_26C3DDCE0(a1, v22 + *(*(v23 - 8) + 72) * v15, &qword_280497330, &unk_26C46D120);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_26C42F56C();
    goto LABEL_7;
  }

  sub_26C3DB484(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_26C42C210(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_26C3DCF38(v15, v12, a1, v21);
}

uint64_t sub_26C3DC810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26C46BB54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26C42C210(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_26C42F240();
      goto LABEL_7;
    }

    sub_26C3DB03C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_26C42C210(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_26C3DD020(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for CachedOwnershipRequest(0) - 8) + 72) * v15;

  return sub_26C3DDB4C(a1, v23);
}

uint64_t sub_26C3DC9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v33 = a1;
  v34 = a2;
  v10 = sub_26C46BB54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_26C42C210(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_26C42F888();
      goto LABEL_9;
    }

    sub_26C3DB8CC(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_26C42C210(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_26C46C7A4();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v34;
  v27 = *v6;
  if (v21)
  {
    v28 = (v27[7] + 24 * v17);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    *v28 = v33;
    v28[1] = v26;
    v28[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    return sub_26C3DD0FC(v17, v14, v33, v26, a3, v27);
  }
}

uint64_t sub_26C3DCBF8(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_26C3DE0D8(a3, a4[7] + 16 * a1);
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

uint64_t sub_26C3DCC60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_26C46BB54();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_26C3DCD20(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_26C3DDEFC(a3, a4[7] + 8 * a1);
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

uint64_t sub_26C3DCD8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26C46BB54();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_26C46BCD4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_26C3DCE80(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26C46BB54();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_26C3DCF38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26C46BB54();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  result = sub_26C3DDC70(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_26C3DD020(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26C46BB54();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for CachedOwnershipRequest(0);
  result = sub_26C3DDAE8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_26C3DD0FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_26C46BB54();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_26C46BB54();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_26C46BCD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SyncedModelOwnerState();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497390, &unk_26C46D180);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v36 - v22;
  v24 = *(v21 + 56);
  sub_26C3DDBB0(a1, &v36 - v22, type metadata accessor for SyncedModelOwnerState);
  v25 = v11;
  sub_26C3DDBB0(v39, &v23[v24], type metadata accessor for SyncedModelOwnerState);
  v26 = *(v11 + 48);
  v27 = v26(v23, 2, v10);
  if (!v27)
  {
    v39 = v7;
    sub_26C3DDBB0(v23, v18, type metadata accessor for SyncedModelOwnerState);
    if (!v26(&v23[v24], 2, v10))
    {
      v30 = *(v11 + 32);
      v36 = v14;
      v30(v14, &v23[v24], v10);
      v31 = v9;
      sub_26C46BCC4();
      v32 = v39;
      sub_26C46BCC4();
      v28 = sub_26C46BB14();
      v33 = v38;
      v34 = *(v37 + 8);
      v34(v32, v38);
      v34(v31, v33);
      v35 = *(v25 + 8);
      v35(v36, v10);
      v35(v18, v10);
      sub_26C3DD6A8(v23);
      return v28 & 1;
    }

    (*(v11 + 8))(v18, v10);
    goto LABEL_9;
  }

  if (v27 == 1)
  {
    if (v26(&v23[v24], 2, v10) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v26(&v23[v24], 2, v10) != 2)
  {
LABEL_9:
    sub_26C3DE270(v23, &qword_280497390, &unk_26C46D180);
    v28 = 0;
    return v28 & 1;
  }

  sub_26C3DD6A8(v23);
  v28 = 1;
  return v28 & 1;
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

uint64_t type metadata accessor for SyncedModelOwnerState()
{
  result = qword_280497270;
  if (!qword_280497270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C3DD644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedModelOwnerState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3DD6A8(uint64_t a1)
{
  v2 = type metadata accessor for SyncedModelOwnerState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C3DD704()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_26C3DD720(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C3DD730(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C3DD740()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C3DD778(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_26C3D87FC(a1, *(v1 + 32));
}

__n128 sub_26C3DD790(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26C3DD7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C46BCD4();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C3DD848(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26C46BCD4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26C3DD8D0()
{
  v0 = sub_26C46BCD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for SyncedModelsTester(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SyncedModelsTester(_WORD *result, int a2, int a3)
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

void type metadata accessor for CFRunLoopObserver()
{
  if (!qword_280497300)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280497300);
    }
  }
}

uint64_t sub_26C3DDAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedOwnershipRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3DDB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedOwnershipRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3DDBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26C3DDC18()
{
  result = qword_280497318;
  if (!qword_280497318)
  {
    sub_26C46BB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497318);
  }

  return result;
}

uint64_t sub_26C3DDC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3DDCE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C3DDD48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C3DDDB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26C3DDE04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C3DDE3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_26C3DDE74@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26C3DDEA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_26C3DE010(uint64_t a1)
{
  v2 = *v1;
  v1[2] = a1;
  type metadata accessor for TestSyncedModelController();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = swift_unknownObjectRetain();
  v1[3] = sub_26C412CF4(v5);
  return v1;
}

uint64_t sub_26C3DE1EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26C3DE214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26C3DE270(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26C3DE314()
{
  v0 = sub_26C46BFA4();
  __swift_allocate_value_buffer(v0, qword_280498530);
  __swift_project_value_buffer(v0, qword_280498530);
  return sub_26C46BF94();
}

uint64_t sub_26C3DE390(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  sub_26C46C474();
  sub_26C3DE518(sub_26C3DE4F8, v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t sub_26C3DE428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_26C46C1D4();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_26C3DE518@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26C3DE85C()
{
  v0 = swift_allocObject();
  *(v0 + 24) = MEMORY[0x277D84F98];
  *(v0 + 32) = xmmword_26C46D190;
  sub_26C46BC14();
  *(v0 + 16) = sub_26C46BC04();
  return v0;
}

uint64_t sub_26C3DE8CC()
{
  *(v0 + 24) = MEMORY[0x277D84F98];
  *(v0 + 32) = xmmword_26C46D190;
  sub_26C46BC14();
  *(v0 + 16) = sub_26C46BC04();
  return v0;
}

uint64_t sub_26C3DE928(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v82 = a3;
  v11 = sub_26C46C0A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_26C46C0D4();
  v78 = *(v80 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C46C0B4();
  v75 = *(v17 - 8);
  v76 = v17;
  v18 = *(v75 + 64);
  MEMORY[0x28223BE20](v17);
  v74 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26C46BB54();
  v81 = *(v20 - 8);
  v21 = *(v81 + 64);
  MEMORY[0x28223BE20](v20);
  v88 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v29 = 0;
    if (v28 != 2)
    {
      goto LABEL_10;
    }

    v31 = *(a1 + 16);
    v30 = *(a1 + 24);
    v32 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (!v32)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v28)
  {
    v29 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v29) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v29 = v29;
LABEL_10:
  v33 = v6[4];
  v87 = v20;
  if (v33 >= v29)
  {
    goto LABEL_17;
  }

  v34 = v6[5];
  v32 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v32)
  {
    __break(1u);
    goto LABEL_34;
  }

  v6[5] = v35;
  if (v35 < 201)
  {
    goto LABEL_18;
  }

  v86 = v25;
  v73 = v12;
  if (qword_280497148 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v36 = sub_26C46BFA4();
    __swift_project_value_buffer(v36, qword_280498530);
    v37 = sub_26C46BF84();
    v38 = sub_26C46C3F4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v71 = a4;
      v40 = v39;
      *v39 = 134217984;
      *(v39 + 4) = 200;
      _os_log_impl(&dword_26C3D6000, v37, v38, "SyncedModel message size has been constantly increasing for more than %ld messages.", v39, 0xCu);
      v41 = v40;
      a4 = v71;
      MEMORY[0x26D6A18D0](v41, -1, -1);
    }

    v12 = v73;
    v25 = v86;
LABEL_17:
    v6[5] = 0;
LABEL_18:
    if (v28 > 1)
    {
      break;
    }

    if (!v28)
    {
      v42 = a1;
      v43 = a5;
      v44 = v25;
      v45 = BYTE6(a2);
      goto LABEL_27;
    }

    LODWORD(v45) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v42 = a1;
      v43 = a5;
      v44 = v25;
      v45 = v45;
      goto LABEL_27;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  if (v28 == 2)
  {
    v47 = *(a1 + 16);
    v46 = *(a1 + 24);
    v32 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (!v32)
    {
      v42 = a1;
      v43 = a5;
      v44 = v25;
      goto LABEL_27;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v42 = a1;
  v43 = a5;
  v44 = v25;
  v45 = 0;
LABEL_27:
  v6[4] = v45;
  v48 = sub_26C411A3C(60000, v42, a2);
  v49 = *(v48 + 16);
  if (v49 == 1)
  {

    v50 = v6[2];
    sub_26C46BB44();
    v51 = &v27[*(v44 + 20)];
    *v51 = v42;
    v51[1] = a2;
    v27[*(v44 + 24)] = 1;
    sub_26C3DDDB0(v42, a2);
    sub_26C3E04A0(&qword_2804973E0, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage);
    sub_26C3E04A0(&qword_2804973E8, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage);
    sub_26C46BBE4();
    return sub_26C3E02C0(v27);
  }

  else
  {
    v72 = v48;
    v71 = a4;
    v69 = v43;
    v73 = v12;
    v70 = v11;
    v53 = v88;
    sub_26C46BB44();
    v54 = dispatch_group_create();
    v86 = swift_allocObject();
    *(v86 + 16) = 0;
    if (v49)
    {
      v85 = v6[2];
      v55 = (v72 + 32);
      v83 = *(v81 + 16);
      v84 = v81 + 16;
      do
      {
        v83(v27, v53, v87);
        --v49;
        v56 = *v55++;
        *&v27[*(v44 + 20)] = v56;
        v27[*(v44 + 24)] = v49 == 0;
        sub_26C3DDDB0(v56, *(&v56 + 1));
        dispatch_group_enter(v54);
        v57 = swift_allocObject();
        *(v57 + 16) = v86;
        *(v57 + 24) = v54;
        sub_26C3E04A0(&qword_2804973E0, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage);
        sub_26C3E04A0(&qword_2804973E8, type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage);

        v58 = v54;
        v53 = v88;
        sub_26C46BBE4();

        sub_26C3E02C0(v27);
      }

      while (v49);
    }

    sub_26C3E03F0();
    v60 = v75;
    v59 = v76;
    v61 = v74;
    (*(v75 + 104))(v74, *MEMORY[0x277D851C8], v76);
    v62 = sub_26C46C464();
    (*(v60 + 8))(v61, v59);
    v63 = swift_allocObject();
    v64 = v69;
    v63[2] = v71;
    v63[3] = v64;
    v63[4] = v86;
    aBlock[4] = sub_26C3E047C;
    aBlock[5] = v63;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C3DF384;
    aBlock[3] = &block_descriptor;
    v65 = _Block_copy(aBlock);

    v66 = v77;
    sub_26C46C0C4();
    v89 = MEMORY[0x277D84F90];
    sub_26C3E04A0(&qword_2804973F8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
    sub_26C3E04E8();
    v67 = v79;
    v68 = v70;
    sub_26C46C484();
    sub_26C46C414();
    _Block_release(v65);

    (*(v73 + 8))(v67, v68);
    (*(v78 + 8))(v66, v80);
    (*(v81 + 8))(v53, v87);
  }
}

void sub_26C3DF27C(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = a1;
  if (!a1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    v7 = v6;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  *(a2 + 16) = v6;
  v9 = a1;

  dispatch_group_leave(a3);
}

void sub_26C3DF318(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(v5);
}

uint64_t sub_26C3DF384(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26C3DF3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = *(v7 + 24);
    if (*(v8 + 16))
    {
      v9 = *(v7 + 24);

      v10 = sub_26C42C210(a1);
      if (v11)
      {
        v12 = (*(v8 + 56) + 16 * v10);
        v13 = *v12;
        v14 = v12[1];
        sub_26C3DDDB0(*v12, v14);
      }

      else
      {
        v13 = 0;
        v14 = 0xC000000000000000;
      }
    }

    else
    {
      v13 = 0;
      v14 = 0xC000000000000000;
    }

    *&v28 = v13;
    *(&v28 + 1) = v14;
    v15 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage();
    v16 = (a1 + *(v15 + 20));
    v17 = *v16;
    v18 = v16[1];
    sub_26C46BAB4();
    if (*(a1 + *(v15 + 24)))
    {
      swift_beginAccess();
      sub_26C42C6B4(a1, &v27);
      sub_26C3E05C4(v27, *(&v27 + 1));
      swift_endAccess();

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497410, &qword_26C46D298);
      v20 = *(v19 + 48);
      *a3 = v28;
      v21 = sub_26C46BBD4();
      (*(*(v21 - 8) + 16))(&a3[v20], a2, v21);
      return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
    }

    v23 = v28;
    swift_beginAccess();
    sub_26C3DDDB0(v28, *(&v28 + 1));
    v24 = *(v7 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = *(v7 + 24);
    *(v7 + 24) = 0x8000000000000000;
    sub_26C3DBF68(v23, *(&v23 + 1), a1, isUniquelyReferenced_nonNull_native);
    *(v7 + 24) = v27;
    swift_endAccess();

    sub_26C3DDEA8(v23, *(&v23 + 1));
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497410, &qword_26C46D298);
  return (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
}

uint64_t sub_26C3DF678()
{
  v1 = *v0;
  sub_26C46C814();
  MEMORY[0x26D6A1230](v1);
  return sub_26C46C844();
}

uint64_t sub_26C3DF6EC()
{
  v1 = *v0;
  sub_26C46C814();
  MEMORY[0x26D6A1230](v1);
  return sub_26C46C844();
}

uint64_t sub_26C3DF730()
{
  v1 = 0x64616F6C796170;
  if (*v0 != 1)
  {
    v1 = 0x6E7568437473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_26C3DF788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C3E084C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26C3DF7C8(uint64_t a1)
{
  v2 = sub_26C3E0168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C3DF804(uint64_t a1)
{
  v2 = sub_26C3E0168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26C3DF840(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804973C8, &qword_26C46D288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C3E0168();
  sub_26C46C8B4();
  LOBYTE(v17) = 0;
  sub_26C46BB54();
  sub_26C3E04A0(&qword_2804973D0, MEMORY[0x277CC95F0]);
  sub_26C46C6D4();
  if (!v2)
  {
    v11 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage();
    v12 = (v3 + *(v11 + 20));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16[15] = 1;
    sub_26C3DDDB0(v17, v13);
    sub_26C3E031C();
    sub_26C46C6D4();
    sub_26C3DDEA8(v17, v18);
    v14 = *(v3 + *(v11 + 24));
    LOBYTE(v17) = 2;
    sub_26C46C6C4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26C3DFA50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_26C46BB54();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804973A8, &qword_26C46D280);
  v28 = *(v31 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v24 - v8;
  v10 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C3E0168();
  sub_26C46C894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  v15 = v29;
  v25 = v10;
  v26 = v13;
  LOBYTE(v32) = 0;
  sub_26C3E04A0(&qword_2804973B8, MEMORY[0x277CC95F0]);
  v18 = v30;
  v17 = v31;
  sub_26C46C684();
  (*(v15 + 32))(v26, v18, v4);
  v33 = 1;
  sub_26C3E0208();
  sub_26C46C684();
  *&v26[*(v25 + 20)] = v32;
  LOBYTE(v32) = 2;
  v19 = sub_26C46C674();
  (*(v16 + 8))(v9, v17);
  v20 = v19 & 1;
  v22 = v26;
  v21 = v27;
  v26[*(v25 + 24)] = v20;
  sub_26C3E025C(v22, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26C3E02C0(v22);
}

uint64_t sub_26C3DFE44()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26C3DFEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BB54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26C3DFF9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C46BB54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage()
{
  result = qword_280497398;
  if (!qword_280497398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C3E00A0()
{
  result = sub_26C46BB54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26C3E0168()
{
  result = qword_2804973B0;
  if (!qword_2804973B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804973B0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_26C3E0208()
{
  result = qword_2804973C0;
  if (!qword_2804973C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804973C0);
  }

  return result;
}

uint64_t sub_26C3E025C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3E02C0(uint64_t a1)
{
  v2 = type metadata accessor for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C3E031C()
{
  result = qword_2804973D8;
  if (!qword_2804973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804973D8);
  }

  return result;
}

uint64_t sub_26C3E0370()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C3E03A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26C3E03F0()
{
  result = qword_2804973F0;
  if (!qword_2804973F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804973F0);
  }

  return result;
}

uint64_t sub_26C3E043C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C3E04A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26C3E04E8()
{
  result = qword_280497408;
  if (!qword_280497408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497400, &qword_26C46D290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497408);
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

uint64_t sub_26C3E0594@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26C3E05C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C3DDEA8(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SyncedModelGroupSessionMessenger.ChunkedSyncedModelMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26C3E0748()
{
  result = qword_280497418;
  if (!qword_280497418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497418);
  }

  return result;
}

unint64_t sub_26C3E07A0()
{
  result = qword_280497420;
  if (!qword_280497420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497420);
  }

  return result;
}

unint64_t sub_26C3E07F8()
{
  result = qword_280497428;
  if (!qword_280497428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497428);
  }

  return result;
}

uint64_t sub_26C3E084C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_26C46C764() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_26C46C764() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7568437473616CLL && a2 == 0xE90000000000006BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C46C764();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26C3E096C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v34 = *(TupleTypeMetadata3 - 8);
  v35 = TupleTypeMetadata3;
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v11 = v29 - v10;
  v12 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20](v9);
  v15 = v29 - v14;
  v16 = *(v5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v29 - v18;
  v31 = v29 - v18;
  v20 = *(v4 + 304);
  swift_beginAccess();
  v32 = v16;
  v30 = *(v16 + 16);
  v30(v19, &v2[v20], v5);
  swift_beginAccess();
  (*(v16 + 24))(&v2[v20], a1, v5);
  swift_endAccess();
  v29[1] = *&v2[*(*v2 + 336)];
  v21 = sub_26C46BCD4();
  v22 = *(v21 - 8);
  v23 = v15;
  (*(v22 + 16))(v15, v33, v21);
  (*(v22 + 56))(v15, 0, 1, v21);
  v24 = *(v35 + 48);
  v25 = *(v35 + 64);
  v26 = v30;
  v27 = v31;
  v30(v11, v31, v5);
  v26(&v11[v24], &v2[v20], v5);
  sub_26C3E9F28(v23, &v11[v25], &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  (*(v34 + 8))(v11, v35);
  return (*(v32 + 8))(v27, v5);
}

uint64_t sub_26C3E0CE0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  *(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = a1;
}

uint64_t sub_26C3E0D08(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  v58 = a3;
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v56 = &v49 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = sub_26C46BB54();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v49 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v49 - v28;
  sub_26C3DDD48(a1, v63, &qword_280497450, &qword_26C471080);
  if (!v64)
  {
    return sub_26C3DE270(v63, &qword_280497450, &qword_26C471080);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
  result = swift_dynamicCast();
  if (result)
  {
    v54 = v8;
    v31 = v61;
    v32 = v62;
    ObjectType = swift_getObjectType();
    v55 = v31;
    v34 = sub_26C3F8720(ObjectType, v32);
    v35 = *(v59 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
    if (v35 && (Strong = swift_weakLoadStrong()) != 0)
    {
      v51 = Strong;
      v53 = v35;
      sub_26C3DDD48(v57, v18, &qword_280497430, &unk_26C46D3D0);
      v57 = *(v20 + 48);
      v37 = v57(v18, 1, v19);
      v52 = v34;
      if (v37 == 1)
      {

        sub_26C3DE270(v18, &qword_280497430, &unk_26C46D3D0);
      }

      else
      {
        (*(v20 + 32))(v29, v18, v19);
        v50 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v49 = *(v20 + 24);

        v49(v34 + v50, v29, v19);
        swift_endAccess();
        (*(v20 + 8))(v29, v19);
      }

      sub_26C3DDD48(v58, v16, &qword_280497430, &unk_26C46D3D0);
      v43 = v57(v16, 1, v19);
      v44 = v54;
      if (v43 == 1)
      {
        sub_26C3DE270(v16, &qword_280497430, &unk_26C46D3D0);
        v45 = v52;
      }

      else
      {
        (*(v20 + 32))(v27, v16, v19);
        (*(v20 + 16))(v13, v27, v19);
        (*(v20 + 56))(v13, 0, 1, v19);
        v46 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
        v45 = v52;
        swift_beginAccess();
        v47 = v56;
        sub_26C3DDD48(v45 + v46, v56, &qword_280497430, &unk_26C46D3D0);
        swift_beginAccess();
        sub_26C3E9EB8(v13, v45 + v46);
        swift_endAccess();
        sub_26C3DDD48(v45 + v46, v44, &qword_280497430, &unk_26C46D3D0);
        sub_26C418F90(v47, v44);
        sub_26C3DE270(v44, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v47, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v13, &qword_280497430, &unk_26C46D3D0);
        (*(v20 + 8))(v27, v19);
      }

      sub_26C3E9FFC(v45, v53);
      v48 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      (*(v20 + 16))(v24, v45 + v48, v19);
      swift_beginAccess();
      sub_26C3D8DE0(0, v24);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      (*(v20 + 16))(v24, v34 + v38, v19);
      v39 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
      v40 = v59;
      swift_beginAccess();

      v41 = *(v40 + v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = *(v40 + v39);
      *(v40 + v39) = 0x8000000000000000;
      sub_26C3DC468(v34, v24, isUniquelyReferenced_nonNull_native);
      (*(v20 + 8))(v24, v19);
      *(v40 + v39) = v60;
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_26C3E13DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26C46BB54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DE214(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v15[2];
    ObjectType = swift_getObjectType();
    v12 = sub_26C3F8720(ObjectType, v10);
    v13 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    (*(v5 + 16))(v8, v12 + v13, v4);
    swift_beginAccess();
    sub_26C3D8DE0(0, v8);
    swift_endAccess();
    if (*(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) && swift_weakLoadStrong())
    {
      v14 = sub_26C3F8720(ObjectType, v10);
      sub_26C3EA514(v14);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t SyncedPropertyBase.deinit()
{
  sub_26C3E9BAC(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
  v1 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);

  v2 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers);

  return v0;
}

uint64_t SyncedPropertyBase.__deallocating_deinit()
{
  sub_26C3E9BAC(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
  v1 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);

  v2 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26C3E16D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_26C46C764() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_26C46C764() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26C46C764() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26C46C764();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_26C3E1830(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_26C3E1854(unsigned __int8 a1)
{
  v1 = 0x65756C6176;
  v2 = 25705;
  if (a1 != 2)
  {
    v2 = 0x72656E776FLL;
  }

  if (a1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26C3E18C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C3E1934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26C3E19A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26C3E1A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_26C3E1A80@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3E1830(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C3E1AAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26C3E184C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26C3E1AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26C3E16D4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_26C3E1B28@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C3E1830(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26C3E1B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26C3E1BA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SyncedProperty.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SyncedProperty.init(from:)(a1);
  return v5;
}

void *SyncedProperty.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v74 = a1;
  v3 = *v1;
  v69 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v57 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = v56 - v8;
  v65 = type metadata accessor for LamportTimestamp(0);
  v9 = *(*(v65 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v65);
  v59 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = v56 - v13;
  v14 = v3[35];
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v60 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = v56 - v18;
  v19 = v3[37];
  v63 = v3[36];
  type metadata accessor for SyncedProperty.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_26C46C694();
  v21 = *(v20 - 8);
  v61 = v20;
  v62 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v56 - v23;
  v25 = swift_conformsToProtocol2();
  if (v14)
  {
    v26 = v25 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  *(v2 + v3[39]) = v27;
  v28 = *(*v2 + 320);
  v29 = sub_26C46BB54();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v30 + 56;
  v31(v2 + v28, 1, 1, v29);
  v31(v2 + *(*v2 + 328), 1, 1, v29);
  v33 = *(*v2 + 336);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  v66 = v14;
  swift_getTupleTypeMetadata3();
  sub_26C46C014();
  *(v2 + v33) = sub_26C46C004();
  v34 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v35 = v71;
  sub_26C46C894();
  if (v35)
  {
    __swift_destroy_boxed_opaque_existential_1(v74);
    sub_26C3DE270(v2 + *(*v2 + 320), &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v2 + *(*v2 + 328), &qword_280497430, &unk_26C46D3D0);
    v40 = *(v2 + *(*v2 + 336));

    v41 = *(*v2 + 48);
    v42 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v56[1] = v32;
    WitnessTable = v31;
    v71 = v29;
    v36 = v64;
    v37 = v67;
    v73 = 0;
    v38 = v66;
    v39 = v61;
    sub_26C46C684();
    (*(v36 + 32))(v2 + *(*v2 + 304), v68, v38);
    v73 = 1;
    sub_26C3E9C70(&qword_280497438, type metadata accessor for LamportTimestamp);
    sub_26C46C684();
    v69 = v24;
    v44 = v37;
    v45 = v37;
    v46 = v59;
    sub_26C3E91AC(v44, v59, type metadata accessor for LamportTimestamp);
    *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
    *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
    *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
    v47 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
    *(v2 + v47) = sub_26C3E8EF0(MEMORY[0x277D84F90]);
    sub_26C3E9F90(v46, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
    v48 = *(*v2 + 304);
    swift_beginAccess();
    (*(v36 + 16))(v60, v2 + v48, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      LOBYTE(v72) = 2;
      sub_26C3E9C70(&qword_2804973B8, MEMORY[0x277CC95F0]);
      v49 = v58;
      v50 = v71;
      v51 = v69;
      sub_26C46C684();
      v52 = v62;
      WitnessTable(v49, 0, 1, v50);
      v53 = *(*v2 + 320);
      swift_beginAccess();
      sub_26C3E90D8(v49, v2 + v53);
      swift_endAccess();
      LOBYTE(v72) = 3;
      v54 = v57;
      sub_26C46C664();
      sub_26C3E9BAC(v67, type metadata accessor for LamportTimestamp);
      (*(v52 + 8))(v51, v39);
      v55 = *(*v2 + 328);
      swift_beginAccess();
      sub_26C3E90D8(v54, v2 + v55);
      swift_endAccess();
    }

    else
    {
      sub_26C3E9BAC(v45, type metadata accessor for LamportTimestamp);
      (*(v62 + 8))(v69, v39);
    }

    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  return v2;
}

uint64_t SyncedProperty.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v50 - v7;
  v54 = sub_26C46BB54();
  v53 = *(v54 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for LamportTimestamp(0);
  v10 = *(*(v57 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v57);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v4[35];
  v64 = *(v59 - 8);
  v13 = *(v64 + 8);
  v14 = MEMORY[0x28223BE20](v11);
  v55 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v18 = v4[36];
  ObjectType = v4[37];
  type metadata accessor for SyncedProperty.CodingKeys();
  swift_getWitnessTable();
  v19 = sub_26C46C6E4();
  v63 = *(v19 - 8);
  v20 = *(v63 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C8B4();
  v24 = *(*v2 + 304);
  swift_beginAccess();
  v26 = v64 + 16;
  v25 = *(v64 + 2);
  v56 = v2;
  v27 = v59;
  v25(v17, v2 + v24, v59);
  v68 = 0;
  v61 = v19;
  v28 = v27;
  v29 = v62;
  sub_26C46C6D4();
  if (v29)
  {
    (*(v64 + 1))(v17, v27);
    return (*(v63 + 8))(v22, v61);
  }

  else
  {
    v50 = v26;
    ObjectType = v24;
    v62 = v25;
    (*(v64 + 1))(v17, v27);
    v31 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    v32 = v56;
    swift_beginAccess();
    v33 = v58;
    sub_26C3E91AC(v32 + v31, v58, type metadata accessor for LamportTimestamp);
    LOBYTE(v66) = 1;
    sub_26C3E9C70(&qword_280497448, type metadata accessor for LamportTimestamp);
    v34 = v61;
    sub_26C46C6D4();
    v35 = v34;
    sub_26C3E9BAC(v33, type metadata accessor for LamportTimestamp);
    v62(v55, v32 + ObjectType, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v36 = v67;
      v37 = v22;
      ObjectType = swift_getObjectType();
      v62 = v36;
      v38 = sub_26C3F8720(ObjectType, v36);
      v39 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v40 = v53;
      v41 = v38 + v39;
      v42 = v52;
      v43 = v54;
      (*(v53 + 16))(v52, v41, v54);

      v65 = 2;
      sub_26C3E9C70(&qword_2804973D0, MEMORY[0x277CC95F0]);
      v64 = v37;
      sub_26C46C6D4();
      (*(v40 + 8))(v42, v43);
      v44 = sub_26C3F8720(ObjectType, v62);
      v45 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
      swift_beginAccess();
      v46 = v44 + v45;
      v47 = v51;
      sub_26C3DDD48(v46, v51, &qword_280497430, &unk_26C46D3D0);

      v69 = 3;
      v48 = v64;
      sub_26C46C6B4();
      v49 = v63;
      swift_unknownObjectRelease();
      sub_26C3DE270(v47, &qword_280497430, &unk_26C46D3D0);
      return (*(v49 + 8))(v48, v35);
    }

    else
    {
      return (*(v63 + 8))(v22, v34);
    }
  }
}

uint64_t SyncedProperty.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SyncedProperty.init(wrappedValue:)(a1);
  return v5;
}

void *SyncedProperty.init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = (&v32 - v8);
  v9 = type metadata accessor for LamportTimestamp(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 280);
  if (swift_conformsToProtocol2())
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  *(v2 + *(v3 + 312)) = v16;
  v17 = *(*v2 + 320);
  v18 = sub_26C46BB54();
  v19 = *(*(v18 - 8) + 56);
  v19(v2 + v17, 1, 1, v18);
  v19(v2 + *(*v2 + 328), 1, 1, v18);
  v20 = *(*v2 + 336);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  swift_getTupleTypeMetadata3();
  sub_26C46C014();
  *(v2 + v20) = sub_26C46C004();
  v21 = *(v14 - 8);
  v22 = *(v21 + 16);
  v22(v2 + *(*v2 + 304), v35, v14);
  *v13 = 0;
  v23 = &v13[*(v10 + 28)];
  sub_26C46BD14();
  v24 = *(v10 + 32);
  v25 = type metadata accessor for PBUUID(0);
  (*(*(v25 - 8) + 56))(&v13[v24], 1, 1, v25);
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) = 0;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__parentPropertyID) = -1;
  *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID) = -1;
  v26 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
  *(v2 + v26) = sub_26C3E8EF0(MEMORY[0x277D84F90]);
  sub_26C3E9F90(v13, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
  if (*(v2 + *(*v2 + 312)) == 1)
  {
    v36[3] = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    v28 = v35;
    v22(boxed_opaque_existential_0, v35, v14);
    v29 = v33;
    v19(v33, 1, 1, v18);
    v30 = v34;
    v19(v34, 1, 1, v18);

    sub_26C3E0D08(v36, v29, v30);

    (*(v21 + 8))(v28, v14);
    sub_26C3DE270(v30, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v29, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v36, &qword_280497450, &qword_26C471080);
  }

  else
  {
    (*(v21 + 8))(v35, v14);
  }

  return v2;
}

uint64_t SyncedProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 304);
  swift_beginAccess();
  return (*(*(*(v3 + 280) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26C3E330C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 24) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return SyncedProperty.wrappedValue.setter(v7);
}

uint64_t SyncedProperty.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  v132 = a1;
  v3 = *v1;
  v130 = type metadata accessor for LamportTimestamp(0);
  v111 = *(v130 - 8);
  v4 = *(v111 + 64);
  MEMORY[0x28223BE20](v130);
  v114 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for PropertyChangedMessage(0);
  v6 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v112 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ValueData(0);
  v110 = *(v115 - 8);
  v8 = *(v110 + 64);
  v9 = MEMORY[0x28223BE20](v115);
  v113 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v107 - v11;
  v12 = *(v3 + 280);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v123 = *(TupleTypeMetadata3 - 8);
  v124 = TupleTypeMetadata3;
  v15 = *(v123 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v122 = &v107 - v17;
  v18 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v121 = &v107 - v19;
  v127 = type metadata accessor for PBUUID(0);
  v125 = *(v127 - 8);
  v20 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v129 = (&v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v118 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v117 = (&v107 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = &v107 - v28;
  v30 = sub_26C46BB54();
  v31 = *(v30 - 8);
  v32 = *(v31 + 8);
  v33 = MEMORY[0x28223BE20](v30);
  v128 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v126 = (&v107 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v107 - v38;
  v133 = v12;
  v134 = *(v12 - 8);
  v40 = v134[8];
  MEMORY[0x28223BE20](v37);
  v131 = &v107 - v41;
  v42 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller;
  v43 = *&v2[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller];
  if (v43)
  {
    v44 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller;
    v45 = v31;
    v46 = *(*v43 + 744);
    v47 = *&v2[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller];

    if ((v46(v48) & 1) == 0)
    {
      if (qword_280497148 == -1)
      {
LABEL_7:
        v55 = sub_26C46BFA4();
        __swift_project_value_buffer(v55, qword_280498530);
        v56 = sub_26C46BF84();
        v57 = sub_26C46C3D4();
        v58 = os_log_type_enabled(v56, v57);
        v59 = v132;
        if (v58)
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_26C3D6000, v56, v57, "Controller does not exist or model is owned by somebody else", v60, 2u);
          MEMORY[0x26D6A18D0](v60, -1, -1);
        }

        v61 = v133;
        v62 = v134[1];

        return v62(v59, v61);
      }

LABEL_27:
      swift_once();
      goto LABEL_7;
    }

    v31 = v45;
    v42 = v44;
  }

  v49 = *(*v2 + 304);
  swift_beginAccess();
  v50 = v133;
  v51 = v134[2];
  v120 = v134 + 2;
  v119 = v51;
  v51(v131, &v2[v49], v133);
  swift_beginAccess();
  v52 = v134[3];
  v108 = v49;
  v52(&v2[v49], v132, v50);
  swift_endAccess();
  v53 = *(v42 + v2);
  if (v53)
  {
    v54 = *(v31 + 2);
    v54(v29, v53 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v30);
    v107 = *(v31 + 7);
    v107(v29, 0, 1, v30);
    (*(v31 + 4))(v39, v29, v30);
  }

  else
  {
    v107 = *(v31 + 7);
    v107(v29, 1, 1, v30);
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v64 = __swift_project_value_buffer(v30, qword_2804985C0);
    v54 = *(v31 + 2);
    v54(v39, v64, v30);
    if ((*(v31 + 6))(v29, 1, v30) != 1)
    {
      sub_26C3DE270(v29, &qword_280497430, &unk_26C46D3D0);
    }
  }

  v65 = &v2[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp];
  swift_beginAccess();
  v66 = v126;
  v54(v126, v39, v30);
  v67 = v128;
  v54(v128, v66, v30);
  v68 = v129;
  sub_26C40F280(v67, v129);
  v69 = *(v31 + 1);
  v69(v66, v30);
  v69(v39, v30);
  v70 = *(v130 + 24);
  sub_26C3DE270(v65 + v70, &qword_280497458, &unk_26C46D3F0);
  sub_26C3E9F90(v68, v65 + v70, type metadata accessor for PBUUID);
  (*(v125 + 56))(v65 + v70, 0, 1, v127);
  v71 = *v65 + 1;
  if (*v65 == -1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v127 = v30;
  v128 = v31;
  v129 = v42;
  v126 = v65;
  *v65 = v71;
  swift_endAccess();
  v72 = *&v2[*(*v2 + 336)];
  v73 = sub_26C46BCD4();
  v74 = v121;
  (*(*(v73 - 8) + 56))(v121, 1, 1, v73);
  v75 = v124;
  v76 = *(v124 + 48);
  v77 = *(v124 + 64);
  v78 = v122;
  v79 = v119;
  v80 = v133;
  v119(v122, v131, v133);
  v79(&v78[v76], v132, v80);
  sub_26C3E9F28(v74, &v78[v77], &qword_280497268, &qword_26C46CFE0);
  sub_26C46BFE4();
  (*(v123 + 8))(v78, v75);
  if (v2[*(*v2 + 312)] == 1)
  {
    v81 = v133;
    v136 = v133;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v135);
    v79(boxed_opaque_existential_0, v131, v81);
    sub_26C3E13DC(v135);
    __swift_destroy_boxed_opaque_existential_1(v135);
    v136 = v81;
    v83 = __swift_allocate_boxed_opaque_existential_0(v135);
    v79(v83, &v2[v108], v81);
    v84 = v127;
    v85 = v117;
    v86 = v107;
    v107(v117, 1, 1, v127);
    v87 = v118;
    v86(v118, 1, 1, v84);
    sub_26C3E0D08(v135, v85, v87);
    sub_26C3DE270(v87, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v85, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v135, &qword_280497450, &qword_26C471080);
  }

  v88 = *(v129 + v2);
  v89 = v132;
  if (v88)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v91 = Strong;

      if (!sub_26C3EA940() || *(v91 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options) == 1)
      {
        v92 = v116;
        sub_26C3E4470(v89, v116);
        sub_26C3E91AC(v126, v114, type metadata accessor for LamportTimestamp);
        LODWORD(v128) = *&v2[OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__propertyID];
        sub_26C3E91AC(v92, v113, type metadata accessor for ValueData);
        v93 = v112;
        *v112 = 0;
        v129 = 0;
        v94 = v109;
        v95 = &v93[*(v109 + 20)];
        sub_26C46BD14();
        v96 = *(v94 + 24);
        v97 = *(v111 + 56);
        v98 = v130;
        v97(&v93[v96], 1, 1, v130);
        v99 = *(v94 + 28);
        v100 = *(v110 + 56);
        v100(&v93[v99], 1, 1, v115);
        sub_26C3DE270(&v93[v96], &qword_280497468, &unk_26C46D400);
        sub_26C3E9F90(v114, &v93[v96], type metadata accessor for LamportTimestamp);
        v97(&v93[v96], 0, 1, v98);
        *v93 = v128;
        sub_26C3DE270(&v93[v99], &qword_280497470, &unk_26C46E870);
        sub_26C3E9F90(v113, &v93[v99], type metadata accessor for ValueData);
        v101 = (v100)(&v93[v99], 0, 1, v115);
        v102 = *(v88 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock);
        MEMORY[0x28223BE20](v101);
        *(&v107 - 2) = v88;
        *(&v107 - 1) = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497478, &qword_26C46D410);
        sub_26C46BB64();

        v103 = v133;
        v104 = v134[1];
        ++v134;
        v104(v132, v133);
        sub_26C3E9BAC(v116, type metadata accessor for ValueData);
        v104(v131, v103);

        return sub_26C3E9BAC(v93, type metadata accessor for PropertyChangedMessage);
      }
    }
  }

  v105 = v134[1];
  ++v134;
  v106 = v133;
  v105(v89, v133);
  return (v105)(v131, v106);
}

uint64_t sub_26C3E4470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v68 = a1;
  v63 = *v2;
  v3 = v63;
  v66 = v63[35];
  v64 = *(v66 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v62 = &v59 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v59 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v59 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v59 - v27;
  MEMORY[0x28223BE20](v26);
  v31 = &v59 - v30;
  if (*(v2 + v3[39]))
  {
    v60 = v29;
    v32 = *(v64 + 16);
    v33 = v66;
    v32(v11, v68, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v34 = v67;
      ObjectType = swift_getObjectType();
      v36 = sub_26C3F8720(ObjectType, v34);
      v37 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v38 = sub_26C46BB54();
      v39 = *(v38 - 8);
      (*(v39 + 16))(v25, v36 + v37, v38);

      v40 = *(v39 + 56);
      v40(v25, 0, 1, v38);
      v41 = v62;
      v32(v62, v68, v33);
      v42 = v60;
      v40(v60, 1, 1, v38);
      v43 = v63[36];
      sub_26C40C88C(v25, v41, v42, v33, v63[37], v65);
      return swift_unknownObjectRelease();
    }

    v55 = sub_26C46BB54();
    v56 = *(*(v55 - 8) + 56);
    v56(v21, 1, 1, v55);
    v57 = v61;
    v32(v61, v68, v33);
    v56(v18, 1, 1, v55);
    v58 = v63[36];
    v49 = v63[37];
    v50 = v65;
    v51 = v21;
    v52 = v57;
    v53 = v18;
    v54 = v33;
  }

  else
  {
    v45 = sub_26C46BB54();
    v46 = *(*(v45 - 8) + 56);
    v46(v31, 1, 1, v45);
    v47 = v66;
    (*(v64 + 16))(v13, v68, v66);
    v46(v28, 1, 1, v45);
    v48 = v63[36];
    v49 = v63[37];
    v50 = v65;
    v51 = v31;
    v52 = v13;
    v53 = v28;
    v54 = v47;
  }

  return sub_26C40C88C(v51, v52, v53, v54, v49, v50);
}

void (*SyncedProperty.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 280);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  SyncedProperty.wrappedValue.getter(v9);
  return sub_26C3E4AB4;
}

void sub_26C3E4AB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    SyncedProperty.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    SyncedProperty.wrappedValue.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_26C3E4B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for LamportTimestamp(0);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for ValueData(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PropertyChangedMessage(0);
  v38 = a1;
  sub_26C3DDD48(a1 + *(v37 + 28), v15, &qword_280497470, &unk_26C46E870);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    *v20 = xmmword_26C46D3C0;
    v22 = &v20[v16[5]];
    sub_26C46BD14();
    v35 = v11;
    v23 = v7;
    v24 = v16[6];
    v25 = type metadata accessor for PBUUID(0);
    v26 = *(*(v25 - 8) + 56);
    v36 = a2;
    v27 = &v20[v24];
    v7 = v23;
    v11 = v35;
    v26(v27, 1, 1, v25);
    v26(&v20[v16[7]], 1, 1, v25);
    a2 = v36;
    if (v21(v15, 1, v16) != 1)
    {
      sub_26C3DE270(v15, &qword_280497470, &unk_26C46E870);
    }
  }

  else
  {
    sub_26C3E9F90(v15, v20, type metadata accessor for ValueData);
  }

  sub_26C3DDD48(v38 + *(v37 + 24), v7, &qword_280497468, &unk_26C46D400);
  v28 = v40;
  v29 = *(v39 + 48);
  if (v29(v7, 1, v40) == 1)
  {
    *v11 = 0;
    v30 = v11 + *(v28 + 20);
    sub_26C46BD14();
    v31 = *(v28 + 24);
    v32 = type metadata accessor for PBUUID(0);
    (*(*(v32 - 8) + 56))(v11 + v31, 1, 1, v32);
    if (v29(v7, 1, v28) != 1)
    {
      sub_26C3DE270(v7, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    sub_26C3E9F90(v7, v11, type metadata accessor for LamportTimestamp);
  }

  sub_26C3E4FD8(v20, v11, a2, 0);
  sub_26C3E9BAC(v11, type metadata accessor for LamportTimestamp);
  return sub_26C3E9BAC(v20, type metadata accessor for ValueData);
}

void sub_26C3E4FD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v113 = a4;
  v103 = a3;
  v120 = a2;
  v110 = a1;
  v109 = *v4;
  v5 = v109[35];
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280497268, &qword_26C46CFE0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v105 = *(TupleTypeMetadata3 - 8);
  v7 = *(v105 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v104 = &v97 - v9;
  v10 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v8);
  v102 = &v97 - v12;
  v112 = *(v5 - 8);
  v13 = *(v112 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v114 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v115 = &v97 - v16;
  v17 = type metadata accessor for LamportTimestamp(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v117 = (&v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = type metadata accessor for PBUUID(0);
  v20 = *(v111 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = (&v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v107 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v97 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v101 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v100 = (&v97 - v34);
  MEMORY[0x28223BE20](v33);
  v36 = &v97 - v35;
  v37 = sub_26C46BB54();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v97 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v118 = v4;
  v119 = &v97 - v43;
  v44 = *(v4 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  if (!v44)
  {
    sub_26C46C5E4();
    __break(1u);
    return;
  }

  v45 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v44 + v45, v36, &qword_280497430, &unk_26C46D3D0);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {

    sub_26C3DE270(v36, &qword_280497430, &unk_26C46D3D0);
    v46 = v120;
    v47 = v118;
LABEL_15:
    v65 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    swift_beginAccess();
    v66 = v117;
    sub_26C3E91AC(v47 + v65, v117, type metadata accessor for LamportTimestamp);
    v67 = sub_26C41111C(v66, v46);
    sub_26C3E9BAC(v66, type metadata accessor for LamportTimestamp);
    v68 = v115;
    v69 = v114;
    if (v67 & 1) != 0 || (v113)
    {
      v116 = v44;
      v74 = *(*v47 + 304);
      swift_beginAccess();
      v75 = v112;
      v76 = *(v112 + 16);
      v119 = v74;
      v76(v68, &v74[v47], v5);
      v77 = v109[37];
      sub_26C40CC14(v5, v109[36], v69);
      v118 = v76;
      v82 = v119;
      swift_beginAccess();
      (*(v75 + 40))(&v82[v47], v69, v5);
      swift_endAccess();
      if (*(v47 + *(*v47 + 312)) == 1)
      {
        v122 = v5;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v121);
        v84 = v118;
        v118(boxed_opaque_existential_0, v68, v5);
        sub_26C3E13DC(v121);
        __swift_destroy_boxed_opaque_existential_1(v121);
        v122 = v5;
        v85 = __swift_allocate_boxed_opaque_existential_0(v121);
        v84(v85, &v119[v47], v5);
        v86 = v100;
        sub_26C40CE7C(v100);
        v87 = v101;
        sub_26C40D13C(v101);
        sub_26C3E0D08(v121, v86, v87);
        sub_26C3DE270(v87, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v86, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v121, &qword_280497450, &qword_26C471080);
      }

      v88 = v117;
      sub_26C3E91AC(v120, v117, type metadata accessor for LamportTimestamp);
      swift_beginAccess();
      sub_26C3E9C0C(v88, v47 + v65);
      swift_endAccess();
      v120 = *(v47 + *(*v47 + 336));
      v89 = sub_26C46BCD4();
      v90 = *(v89 - 8);
      v91 = v102;
      (*(v90 + 16))(v102, v103, v89);
      (*(v90 + 56))(v91, 0, 1, v89);
      v92 = TupleTypeMetadata3;
      v93 = *(TupleTypeMetadata3 + 48);
      v94 = *(TupleTypeMetadata3 + 64);
      v95 = v104;
      v96 = v118;
      v118(v104, v68, v5);
      v96(&v95[v93], &v119[v47], v5);
      sub_26C3E9F28(v91, &v95[v94], &qword_280497268, &qword_26C46CFE0);
      sub_26C46BFE4();

      (*(v105 + 8))(v95, v92);
      (*(v112 + 8))(v68, v5);
    }

    else
    {
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v70 = sub_26C46BFA4();
      __swift_project_value_buffer(v70, qword_280498530);
      v71 = sub_26C46BF84();
      v72 = sub_26C46C3D4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_26C3D6000, v71, v72, "SyncedProperty: Timestamp failed and not forcing replace", v73, 2u);
        MEMORY[0x26D6A18D0](v73, -1, -1);
      }
    }

    return;
  }

  v97 = v42;
  v99 = v5;
  v98 = v38;
  (*(v38 + 32))(v119, v36, v37);
  v48 = *(v17 + 24);
  v49 = v120;
  sub_26C3DDD48(v120 + v48, v28, &qword_280497458, &unk_26C46D3F0);
  v50 = *(v20 + 48);
  v51 = v111;
  v52 = v50(v28, 1, v111);
  v53 = v44;
  v54 = v52;
  v116 = v53;

  sub_26C3DE270(v28, &qword_280497458, &unk_26C46D3F0);
  if (v54 == 1)
  {
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v37, qword_2804985C0);
    v56 = v98;
    v57 = v97;
    (*(v98 + 16))(v97, v55, v37);
    v44 = v116;
    v5 = v99;
    v47 = v118;
    v58 = v119;
  }

  else
  {
    v59 = v107;
    sub_26C3DDD48(v49 + v48, v107, &qword_280497458, &unk_26C46D3F0);
    if (v50(v59, 1, v51) == 1)
    {
      v60 = v108;
      *v108 = 0;
      v60[1] = 0;
      v61 = v60 + *(v51 + 24);
      sub_26C46BD14();
      v62 = v50(v59, 1, v51);
      v44 = v116;
      v5 = v99;
      v47 = v118;
      v58 = v119;
      if (v62 != 1)
      {
        sub_26C3DE270(v59, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v60 = v108;
      sub_26C3E9F90(v59, v108, type metadata accessor for PBUUID);
      v44 = v116;
      v5 = v99;
      v47 = v118;
      v58 = v119;
    }

    v57 = v97;
    sub_26C40F3CC();
    sub_26C3E9BAC(v60, type metadata accessor for PBUUID);
    v56 = v98;
  }

  sub_26C3E9C70(&qword_2804975A8, MEMORY[0x277CC95F0]);
  v63 = sub_26C46C1C4();
  v64 = *(v56 + 8);
  v64(v57, v37);
  if (v63)
  {
    v64(v58, v37);
    v46 = v120;
    goto LABEL_15;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v78 = sub_26C46BFA4();
  __swift_project_value_buffer(v78, qword_280498530);
  v79 = sub_26C46BF84();
  v80 = sub_26C46C3D4();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_26C3D6000, v79, v80, "SyncedProperty: Cannot apply property changed message. Not the current owner or unowned", v81, 2u);
    MEMORY[0x26D6A18D0](v81, -1, -1);
  }

  else
  {
  }

  v64(v58, v37);
}

uint64_t sub_26C3E5F6C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v60 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v51 - v8;
  v58 = type metadata accessor for LamportTimestamp(0);
  v55 = *(v58 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v58);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v51 - v15;
  v16 = type metadata accessor for ValueData(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_26C46BD44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = type metadata accessor for PropertyCatchupData(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  v54 = v16;
  if (v27 && (Strong = swift_weakLoadStrong()) != 0)
  {
    v29 = v26;
    v30 = v20;
    v31 = v17;
    v32 = v4;
    v33 = *(Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options);

    v56 = v33 ^ 1;
    v4 = v32;
    v17 = v31;
    v20 = v30;
    v26 = v29;
  }

  else
  {
    v56 = 0;
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_26C3DDDB0(v60, a2);
  sub_26C46BD34();
  sub_26C3E9C70(&qword_2804975A0, type metadata accessor for PropertyCatchupData);
  sub_26C46BE54();
  v34 = v59;
  sub_26C3DDD48(&v26[*(v23 + 20)], v59, &qword_280497470, &unk_26C46E870);
  v35 = *(v17 + 48);
  v36 = v54;
  v37 = v35(v34, 1, v54);
  v53 = v20;
  if (v37 == 1)
  {
    *v20 = xmmword_26C46D3C0;
    v38 = v20 + v36[5];
    sub_26C46BD14();
    v51 = v36[6];
    v39 = type metadata accessor for PBUUID(0);
    v52 = v26;
    v40 = v39;
    v41 = *(*(v39 - 8) + 56);
    v60 = v4;
    v41(v20 + v51, 1, 1, v39);
    v42 = v40;
    v26 = v52;
    v41(v20 + v36[7], 1, 1, v42);
    v43 = v59;
    if (v35(v59, 1, v36) != 1)
    {
      sub_26C3DE270(v43, &qword_280497470, &unk_26C46E870);
    }
  }

  else
  {
    sub_26C3E9F90(v34, v20, type metadata accessor for ValueData);
  }

  sub_26C3DDD48(&v26[*(v23 + 24)], v9, &qword_280497468, &unk_26C46D400);
  v44 = *(v55 + 48);
  if (v44(v9, 1, v58) == 1)
  {
    *v12 = 0;
    v45 = v58;
    v46 = &v12[*(v58 + 20)];
    sub_26C46BD14();
    v47 = *(v45 + 24);
    v48 = type metadata accessor for PBUUID(0);
    (*(*(v48 - 8) + 56))(&v12[v47], 1, 1, v48);
    if (v44(v9, 1, v45) != 1)
    {
      sub_26C3DE270(v9, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    sub_26C3E9F90(v9, v12, type metadata accessor for LamportTimestamp);
  }

  v49 = v53;
  sub_26C3E4FD8(v53, v12, v57, v56 & 1);
  sub_26C3E9BAC(v12, type metadata accessor for LamportTimestamp);
  sub_26C3E9BAC(v49, type metadata accessor for ValueData);
  return sub_26C3E9BAC(v26, type metadata accessor for PropertyCatchupData);
}

uint64_t *sub_26C3E66DC()
{
  v86 = *v0;
  v2 = v86;
  v87 = v1;
  v79 = type metadata accessor for LamportTimestamp(0);
  v73 = *(v79 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for PropertyCatchupData(0);
  v5 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ValueData(0);
  v71 = *(v72 - 8);
  v7 = *(v71 + 64);
  v8 = MEMORY[0x28223BE20](v72);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v68 - v11;
  v12 = *(v2 + 280);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v84 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v82 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v81 = &v68 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v75 = &v68 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v68 - v30;
  v32 = sub_26C46BB54();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v89 = v31;
  v35 = v31;
  v36 = v34;
  v34(v35, 1, 1, v32);
  v90 = v29;
  v36(v29, 1, 1, v32);
  v37 = *(*v0 + 304);
  swift_beginAccess();
  v38 = *(v13 + 16);
  v88 = v0;
  v83 = v13 + 16;
  v80 = v38;
  v38(v18, v0 + v37, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
  v85 = v12;
  if (swift_dynamicCast())
  {
    v39 = v91;
    ObjectType = swift_getObjectType();
    v40 = sub_26C3F8720(ObjectType, v39);
    v70 = v37;
    v41 = v89;
    sub_26C3DE270(v89, &qword_280497430, &unk_26C46D3D0);
    v42 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v43 = v40 + v42;
    v44 = v75;
    (*(v33 + 16))(v75, v43, v32);

    v36(v44, 0, 1, v32);
    sub_26C3E9F28(v44, v41, &qword_280497430, &unk_26C46D3D0);
    v45 = sub_26C3F8720(ObjectType, v39);
    swift_unknownObjectRelease();
    v46 = v90;
    sub_26C3DE270(v90, &qword_280497430, &unk_26C46D3D0);
    v47 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    swift_beginAccess();
    sub_26C3DDD48(v45 + v47, v46, &qword_280497430, &unk_26C46D3D0);

    v48 = v41;
    v37 = v70;
  }

  else
  {
    v48 = v89;
    v46 = v90;
  }

  v49 = v81;
  sub_26C3DDD48(v48, v81, &qword_280497430, &unk_26C46D3D0);
  v50 = v88;
  v51 = v88 + v37;
  v53 = v84;
  v52 = v85;
  v80(v84, v51, v85);
  v54 = v82;
  sub_26C3DDD48(v46, v82, &qword_280497430, &unk_26C46D3D0);
  v55 = v87;
  v56 = *(v86 + 288);
  v57 = v92;
  sub_26C40C88C(v49, v53, v54, v52, *(v86 + 296), v92);
  if (v55)
  {
    v58 = &qword_280497430;
    sub_26C3DE270(v46, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v48, &qword_280497430, &unk_26C46D3D0);
  }

  else
  {
    sub_26C3E91AC(v57, v76, type metadata accessor for ValueData);
    v59 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
    swift_beginAccess();
    sub_26C3E91AC(v50 + v59, v77, type metadata accessor for LamportTimestamp);
    v60 = v74;
    sub_26C46BD14();
    v61 = *(v78 + 20);
    v62 = v78;
    v63 = *(v71 + 56);
    v64 = v72;
    v63(v60 + v61, 1, 1, v72);
    v65 = *(v62 + 24);
    v66 = *(v73 + 56);
    v66(v60 + v65, 1, 1, v79);
    sub_26C3DE270(v60 + v61, &qword_280497470, &unk_26C46E870);
    sub_26C3E9F90(v76, v60 + v61, type metadata accessor for ValueData);
    v63(v60 + v61, 0, 1, v64);
    sub_26C3DE270(v60 + v65, &qword_280497468, &unk_26C46D400);
    sub_26C3E9F90(v77, v60 + v65, type metadata accessor for LamportTimestamp);
    v66(v60 + v65, 0, 1, v79);
    sub_26C3E9C70(&qword_2804975A0, type metadata accessor for PropertyCatchupData);
    v58 = sub_26C46BE64();
    sub_26C3E9BAC(v92, type metadata accessor for ValueData);
    sub_26C3DE270(v90, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v89, &qword_280497430, &unk_26C46D3D0);
    sub_26C3E9BAC(v60, type metadata accessor for PropertyCatchupData);
  }

  return v58;
}

uint64_t sub_26C3E6FEC()
{
  v1 = type metadata accessor for PBUUID(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v56 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v51 = (&v49 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = sub_26C46BB54();
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v54 = &v49 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v61 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v59 = &v49 - v21;
  v22 = type metadata accessor for LamportTimestamp(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v0;
  v26 = v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp;
  swift_beginAccess();
  v53 = v26;
  sub_26C3E91AC(v26, v25, type metadata accessor for LamportTimestamp);
  v52 = v22;
  v27 = *(v22 + 24);
  sub_26C3DDD48(&v25[v27], v12, &qword_280497458, &unk_26C46D3F0);
  v57 = v2;
  v28 = *(v2 + 48);
  LODWORD(v26) = v28(v12, 1, v1);
  sub_26C3DE270(v12, &qword_280497458, &unk_26C46D3F0);
  v58 = v1;
  if (v26 == 1)
  {
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v13, qword_2804985C0);
    v30 = v59;
    v31 = v60;
    (*(v60 + 16))(v59, v29, v13);
  }

  else
  {
    v32 = v50;
    sub_26C3DDD48(&v25[v27], v50, &qword_280497458, &unk_26C46D3F0);
    if (v28(v32, 1, v1) == 1)
    {
      v33 = v51;
      *v51 = 0;
      v33[1] = 0;
      v34 = v33 + *(v1 + 24);
      sub_26C46BD14();
      v35 = v28(v32, 1, v1);
      v30 = v59;
      v31 = v60;
      if (v35 != 1)
      {
        sub_26C3DE270(v32, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v33 = v51;
      sub_26C3E9F90(v32, v51, type metadata accessor for PBUUID);
      v30 = v59;
      v31 = v60;
    }

    sub_26C40F3CC();
    sub_26C3E9BAC(v33, type metadata accessor for PBUUID);
  }

  v36 = v61;
  sub_26C3E9BAC(v25, type metadata accessor for LamportTimestamp);
  if (qword_280497190 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v13, qword_2804985C0);
  v38 = *(v31 + 16);
  v38(v36, v37, v13);
  v39 = sub_26C46BB14();
  v40 = *(v31 + 8);
  v40(v36, v13);
  result = (v40)(v30, v13);
  if (v39)
  {
    v42 = *(v55 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
    if (v42)
    {
      v43 = v49;
      v38(v49, v42 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v13);
      v44 = v54;
      (*(v31 + 32))(v54, v43, v13);
    }

    else
    {
      v44 = v54;
      v38(v54, v37, v13);
    }

    v45 = v58;
    v46 = v53;
    swift_beginAccess();
    v38(v36, v44, v13);
    v47 = v56;
    sub_26C40F280(v36, v56);
    v40(v44, v13);
    v48 = *(v52 + 24);
    sub_26C3DE270(v46 + v48, &qword_280497458, &unk_26C46D3F0);
    sub_26C3E9F90(v47, v46 + v48, type metadata accessor for PBUUID);
    (*(v57 + 56))(v46 + v48, 0, 1, v45);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_26C3E7670()
{
  v1 = *v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  result = MEMORY[0x28223BE20](v5);
  v10 = (v19 - v9 + 64);
  if (*(v0 + *(v1 + 312)) == 1)
  {
    v11 = *(v2 + 304);
    swift_beginAccess();
    v12 = *(v2 + 280);
    v19[3] = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v0 + v11, v12);
    v14 = *(*v0 + 320);
    swift_beginAccess();
    sub_26C3DDD48(v0 + v14, v10, &qword_280497430, &unk_26C46D3D0);
    v15 = *(*v0 + 328);
    swift_beginAccess();
    sub_26C3DDD48(v0 + v15, v7, &qword_280497430, &unk_26C46D3D0);
    sub_26C3E0D08(v19, v10, v7);
    sub_26C3DE270(v7, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v10, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v19, &qword_280497450, &qword_26C471080);
    v16 = sub_26C46BB54();
    v17 = *(*(v16 - 8) + 56);
    v17(v10, 1, 1, v16);
    swift_beginAccess();
    sub_26C3E90D8(v10, v0 + v14);
    swift_endAccess();
    v17(v10, 1, 1, v16);
    swift_beginAccess();
    sub_26C3E90D8(v10, v0 + v15);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_26C3E7940(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](a1);
  v8 = v14 - v7;
  if (*(v1 + *(v9 + 312)) == 1)
  {
    v10 = result;
    v11 = *(v6 + 304);
    swift_beginAccess();
    (*(v3 + 16))(v8, v1 + v11, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    result = swift_dynamicCast();
    if (result)
    {
      v12 = v14[2];
      ObjectType = swift_getObjectType();
      sub_26C3F8720(ObjectType, v12);
      sub_26C415270(v10);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_26C3E7AD8()
{
  v1 = *v0;
  if (*(v0 + *(*v0 + 312)) == 1)
  {
    v2 = *(v1 + 304);
    swift_beginAccess();
    v3 = *(v1 + 280);
    v5[3] = v3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v0 + v2, v3);
    sub_26C3E13DC(v5);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

uint64_t SyncedProperty.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = *(v2 + *(*v2 + 336));
  (*(v6 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26C46BFF4();
}

uint64_t sub_26C3E7C98()
{
  (*(*(*(*v0 + 280) - 8) + 8))(v0 + *(*v0 + 304));
  sub_26C3DE270(v0 + *(*v0 + 320), &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v0 + *(*v0 + 328), &qword_280497430, &unk_26C46D3D0);
  v1 = *(v0 + *(*v0 + 336));
}

uint64_t *SyncedProperty.deinit()
{
  v1 = *v0;
  sub_26C3E9BAC(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
  v2 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);

  v3 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers);

  (*(*(*(v1 + 280) - 8) + 8))(v0 + *(*v0 + 304));
  sub_26C3DE270(v0 + *(*v0 + 320), &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v0 + *(*v0 + 328), &qword_280497430, &unk_26C46D3D0);
  v4 = *(v0 + *(*v0 + 336));

  return v0;
}

uint64_t SyncedProperty.__deallocating_deinit()
{
  SyncedProperty.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26C3E7F78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SyncedProperty.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26C3E7FC8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_26C3E8014(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26C3E804C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26C3E80A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26C3E80A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26C3E8174(v11, 0, 0, 1, a1, a2);
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
    sub_26C3DE214(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26C3E8174(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26C3E8280(a5, a6);
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
    result = sub_26C46C554();
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

uint64_t sub_26C3E8280(uint64_t a1, unint64_t a2)
{
  v4 = sub_26C3E82CC(a1, a2);
  sub_26C3E83FC(&unk_287CF3830);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26C3E82CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_26C3E84E8(v5, 0);
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

  result = sub_26C46C554();
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
        v10 = sub_26C46C204();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26C3E84E8(v10, 0);
        result = sub_26C46C514();
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

uint64_t sub_26C3E83FC(uint64_t result)
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

  result = sub_26C3E855C(result, v12, 1, v3);
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

void *sub_26C3E84E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975B8, &unk_26C46D6E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26C3E855C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975B8, &unk_26C46D6E0);
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

unint64_t sub_26C3E8650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497380, &unk_26C46D170);
    v3 = sub_26C46C624();
    for (i = a1 + 32; ; i += 24)
    {
      sub_26C3DDD48(i, &v11, &qword_2804975E0, &qword_26C46D728);
      v5 = v11;
      result = sub_26C42C1C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_26C3DE0D8(&v12, v3[7] + 16 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_26C3E876C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975D8, &qword_26C46D720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497320, &unk_26C46D110);
    v8 = sub_26C46C624();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v10, v6, &qword_2804975D8, &qword_26C46D720);
      result = sub_26C42C210(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26C46BB54();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_26C46BCD4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_26C3E898C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975D0, &unk_26C46D710);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497310, &qword_26C46E540);
    v8 = sub_26C46C624();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v10, v6, &qword_2804975D0, &unk_26C46D710);
      result = sub_26C42C210(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26C46BB54();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for CachedOwnershipRequest(0);
      result = sub_26C3E9F90(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for CachedOwnershipRequest);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_26C3E8BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975C8, &qword_26C46D6F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497338, &unk_26C46D700);
    v8 = sub_26C46C624();
    v22 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v9, v6, &qword_2804975C8, &qword_26C46D6F8);
      result = sub_26C42C210(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = sub_26C46BB54();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
      result = sub_26C3E9F28(&v6[v22], v16 + *(*(v17 - 8) + 72) * v13, &qword_280497330, &unk_26C46D120);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v9 += v10;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_26C3E8DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497388, &qword_26C46D740);
    v3 = sub_26C46C624();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_26C42C2A8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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

unint64_t sub_26C3E8EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975E8, &unk_26C46D730);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497350, &unk_26C46D140);
    v8 = sub_26C46C624();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v10, v6, &qword_2804975E8, &unk_26C46D730);
      result = sub_26C42C210(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26C46BB54();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_26C3E90D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26C3E91AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_26C3E9270(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SyncedPropertyBase()
{
  result = qword_280497480;
  if (!qword_280497480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C3E9378()
{
  result = type metadata accessor for LamportTimestamp(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_26C3E9448(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(v2 - 8) + 64;
    sub_26C3E959C();
    if (v5 <= 0x3F)
    {
      v7 = *(v4 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_26C3E959C()
{
  if (!qword_280497510[0])
  {
    sub_26C46BB54();
    v0 = sub_26C46C474();
    if (!v1)
    {
      atomic_store(v0, qword_280497510);
    }
  }
}

uint64_t sub_26C3E95FC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26C3E968C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26C3E9790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497370, &unk_26C46D160);
    v3 = sub_26C46C624();
    for (i = a1 + 32; ; i += 16)
    {
      sub_26C3DDD48(i, &v11, &qword_2804975C0, &qword_26C46D6F0);
      v5 = v11;
      result = sub_26C42C320(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26C3DDEFC(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_26C3E98B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497348, &qword_26C46D138);
  v3 = sub_26C46C624();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_26C42C1C8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_26C3DDDB0(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 4);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_26C42C1C8(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C3E99BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497340, &qword_26C46D130);
    v8 = sub_26C46C624();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v10, v6, &qword_280497598, &unk_26C46E010);
      result = sub_26C42C210(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26C46BB54();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_26C3E9BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C3E9C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LamportTimestamp(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3E9C70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26C3E9CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804975B0, &unk_26C46D6D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497358, &unk_26C46E5F0);
    v8 = sub_26C46C624();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26C3DDD48(v10, v6, &qword_2804975B0, &unk_26C46D6D0);
      result = sub_26C42C210(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26C46BB54();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = *(v9 + 2);
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_26C3E9EB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C3E9F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C3E9F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_26C3E9FFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26C46BCD4();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42[-v11];
  v13 = sub_26C46BB54();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  swift_beginAccess();
  v19 = v14[2];
  v48 = v18;
  v46 = v19;
  v19(v17, a1 + v18, v13);
  swift_beginAccess();

  v20 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  sub_26C3DC468(a1, v17, isUniquelyReferenced_nonNull_native);
  v45 = v14[1];
  v45(v17, v13);
  *(v3 + 32) = v51;
  swift_endAccess();
  v22 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
  swift_beginAccess();
  sub_26C3DDD48(a2 + v22, v12, &qword_280497268, &qword_26C46CFE0);
  sub_26C414BC4(v3, 2, 1, v12);
  sub_26C3DE270(v12, &qword_280497268, &qword_26C46CFE0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v23 = sub_26C46BFA4();
  __swift_project_value_buffer(v23, qword_280498530);

  v24 = sub_26C46BF84();
  v25 = sub_26C46C404();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v26 = 136315394;
    v27 = v49;
    v28 = *(v49 + 16);
    v29 = v3 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
    v43 = v25;
    v30 = v47;
    v31 = v50;
    v28(v47, v29, v50);
    sub_26C46BCC4();
    (*(v27 + 8))(v30, v31);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v32 = sub_26C46C704();
    v34 = v33;
    v35 = v45;
    v45(v17, v13);
    v36 = sub_26C3E80A8(v32, v34, &v51);

    *(v26 + 4) = v36;
    *(v26 + 12) = 2080;
    v46(v17, a1 + v48, v13);
    v37 = sub_26C46BB04();
    v39 = v38;
    v35(v17, v13);
    v40 = sub_26C3E80A8(v37, v39, &v51);

    *(v26 + 14) = v40;
    _os_log_impl(&dword_26C3D6000, v24, v43, "SyncedModelManager[%s] Registered dynamic SyncedModel with uuid:%s", v26, 0x16u);
    v41 = v44;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v41, -1, -1);
    MEMORY[0x26D6A18D0](v26, -1, -1);
  }
}

void sub_26C3EA514(uint64_t a1)
{
  v2 = v1;
  v39 = sub_26C46BCD4();
  v36 = *(v39 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C46BB54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  swift_beginAccess();
  v38 = *(v8 + 16);
  v38(v11, a1 + v12, v7);
  swift_beginAccess();
  sub_26C3D8DE0(0, v11);
  swift_endAccess();
  sub_26C41588C();
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v13 = sub_26C46BFA4();
  __swift_project_value_buffer(v13, qword_280498530);

  v14 = sub_26C46BF84();
  v15 = sub_26C46C404();

  v37 = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v12;
    v17 = v8;
    v18 = v16;
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v18 = 136315394;
    v19 = v36;
    v20 = v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
    v21 = v39;
    (*(v36 + 16))(v6, v20, v39);
    v34 = v14;
    sub_26C46BCC4();
    (*(v19 + 8))(v6, v21);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v22 = sub_26C46C704();
    v24 = v23;
    v25 = *(v17 + 8);
    v25(v11, v7);
    v26 = sub_26C3E80A8(v22, v24, v40);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2080;
    v38(v11, a1 + v33, v7);
    v27 = sub_26C46BB04();
    v29 = v28;
    v25(v11, v7);
    v30 = sub_26C3E80A8(v27, v29, v40);

    *(v18 + 14) = v30;
    v14 = v34;
    _os_log_impl(&dword_26C3D6000, v34, v37, "SyncedModelManager[%s] Unregistered dynamic SyncedModel with uuid:%s", v18, 0x16u);
    v31 = v35;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v31, -1, -1);
    MEMORY[0x26D6A18D0](v18, -1, -1);
  }
}

BOOL sub_26C3EA940()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status);

  sub_26C46C024();

  return v4 == 1;
}

uint64_t CatchupKind.hashValue.getter()
{
  v1 = *v0;
  sub_26C46C814();
  MEMORY[0x26D6A1230](v1);
  return sub_26C46C844();
}

uint64_t SyncedModelOptions.description.getter()
{
  v1 = *v0;
  sub_26C46C524();
  MEMORY[0x26D6A0C00](0xD000000000000021, 0x800000026C4759C0);
  sub_26C46C5B4();
  return 0;
}

unint64_t sub_26C3EAB2C()
{
  result = qword_2804975F0;
  if (!qword_2804975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804975F0);
  }

  return result;
}

uint64_t sub_26C3EAB80()
{
  v1 = *v0;
  sub_26C46C524();
  MEMORY[0x26D6A0C00](0xD000000000000021, 0x800000026C4759C0);
  sub_26C46C5B4();
  return 0;
}

uint64_t sub_26C3EAC30(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26C3EACC4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26C3EAD84(uint64_t a1, char a2, void *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v10 = sub_26C46BB54();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v10);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C46BCD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = *a4;
  v22 = MEMORY[0x277D84F90];
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v5 + 24) = 0;
  *(v5 + 32) = sub_26C3E8EF0(v22);
  *(v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_remoteParticipants) = v22;
  v23 = (v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler);
  *v23 = 0;
  v23[1] = 0;
  *(v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_precatchupMessageBuffer) = v22;
  v60 = v14;
  v24 = *(v14 + 16);
  v24(v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, a1, v13);
  *(v5 + 48) = a2;
  *(v5 + 40) = a3;
  v56 = v21;
  *(v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options) = v21;
  v25 = qword_280497148;
  v61 = a3;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_26C46BFA4();
  __swift_project_value_buffer(v26, qword_280498530);
  v24(v20, a1, v13);

  v27 = sub_26C46BF84();
  v28 = sub_26C46C404();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v55 = a1;
    v51 = v20;
    v30 = v29;
    v54 = swift_slowAlloc();
    v63 = v54;
    *v30 = 136315650;
    v24(v18, v5 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v13);
    v31 = v57;
    v53 = v27;
    sub_26C46BCC4();
    v52 = v28;
    v60 = *(v60 + 8);
    (v60)(v18, v13);
    v50 = sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v32 = v59;
    v33 = sub_26C46C704();
    v35 = v34;
    v58 = *(v58 + 8);
    (v58)(v31, v32);
    v36 = sub_26C3E80A8(v33, v35, &v63);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v62 = v56;
    sub_26C3F86C4();
    v37 = sub_26C46C704();
    v39 = sub_26C3E80A8(v37, v38, &v63);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    v40 = v51;
    sub_26C46BCC4();
    v41 = sub_26C46C704();
    v43 = v42;
    (v58)(v31, v32);
    v44 = v60;
    (v60)(v40, v13);
    v45 = sub_26C3E80A8(v41, v43, &v63);

    *(v30 + 24) = v45;
    v46 = v53;
    _os_log_impl(&dword_26C3D6000, v53, v52, "SyncedModelManager[%s] Init with options: %s. Local participant:%s", v30, 0x20u);
    v47 = v54;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v47, -1, -1);
    MEMORY[0x26D6A18D0](v30, -1, -1);

    v44(v55, v13);
  }

  else
  {

    v48 = *(v60 + 8);
    v48(a1, v13);
    v48(v20, v13);
  }

  return v5;
}

uint64_t sub_26C3EB2B8()
{
  v1 = v0;
  v2 = sub_26C46BCF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = *(v1 + 24);
  if (result)
  {
    v38 = v9;
    v35 = v3;
    v36 = v2;

    sub_26C41409C();
    swift_beginAccess();
    v13 = v1;
    v14 = *(v1 + 32);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    if (v17)
    {
      while (1)
      {
        v20 = v19;
LABEL_10:
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v22 = *(*(v14 + 56) + ((v20 << 9) | (8 * v21)));

        sub_26C41409C();

        if (!v17)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v20 >= v18)
      {
        break;
      }

      v17 = *(v14 + 64 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        goto LABEL_10;
      }
    }

    v23 = v13;
    swift_beginAccess();
    v24 = *(v13 + 16);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = *(v7 + 20);
      v27 = v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v38 = *(v38 + 72);
      v39 = v26;
      v28 = (v35 + 16);
      v29 = (v35 + 8);
      v35 = v24;

      v30 = v36;
      do
      {
        sub_26C3F69B8(v27, v11, type metadata accessor for SyncedModelManager.MessageWrapper);
        v31 = *v11;
        v32 = v11[1];
        (*v28)(v6, v11 + v39, v30);
        sub_26C3DDDB0(v31, v32);
        sub_26C3F6910(v11, type metadata accessor for SyncedModelManager.MessageWrapper);
        sub_26C3EB618(v31, v32, v6);
        sub_26C3DDEA8(v31, v32);
        (*v29)(v6, v30);
        v27 += v38;
        --v25;
      }

      while (v25);
    }

    else
    {
    }

    v33 = *(v23 + 16);
    *(v23 + 16) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_26C3EB618(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a3;
  v7 = sub_26C46BCD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C46BB54();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v16 = sub_26C46BFA4();
  __swift_project_value_buffer(v16, qword_280498530);

  sub_26C3DDDB0(a1, a2);
  v17 = sub_26C46BF84();
  v18 = sub_26C46C3D4();

  sub_26C3DDEA8(a1, a2);
  v36 = v18;
  v19 = os_log_type_enabled(v17, v18);
  v20 = v4;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v21 = 136315394;
    (*(v8 + 16))(v11, v20 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v7);
    v35 = v20;
    sub_26C46BCC4();
    (*(v8 + 8))(v11, v7);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v22 = sub_26C46C704();
    v24 = v23;
    (*(v37 + 8))(v15, v12);
    v25 = sub_26C3E80A8(v22, v24, &v39);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = a1;
    v27 = a2;
    v28 = sub_26C46BAA4();
    v30 = sub_26C3E80A8(v28, v29, &v39);

    *(v21 + 14) = v30;
    v20 = v35;
    _os_log_impl(&dword_26C3D6000, v17, v36, "SyncedModelManager[%s] Sending data of size:%s", v21, 0x16u);
    v31 = v34;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v31, -1, -1);
    MEMORY[0x26D6A18D0](v21, -1, -1);
  }

  else
  {
    v26 = a1;
    v27 = a2;
  }

  v32 = *(v20 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler);
  if (v32)
  {
    v33 = *(v20 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_sendDataHandler + 8);

    v32(v26, v27, v38);
    sub_26C3DD730(v32);
  }
}

uint64_t sub_26C3EB9EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26C46BCF4();
  v102 = *(v4 - 8);
  v103 = v4;
  v5 = *(v102 + 64);
  MEMORY[0x28223BE20](v4);
  v101 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = &v95 - v9;
  v10 = sub_26C46BCD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x28223BE20](v10);
  v106 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C46BB54();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v19 = sub_26C46BFA4();
  v20 = __swift_project_value_buffer(v19, qword_280498530);

  v108 = v20;
  v21 = sub_26C46BF84();
  LODWORD(v20) = sub_26C46C404();

  LODWORD(v100) = v20;
  v22 = os_log_type_enabled(v21, v20);
  v23 = 0x280497000uLL;
  v107 = v15;
  v109 = v18;
  v105 = a1;
  if (v22)
  {
    v96 = v21;
    v24 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v110[0] = v95;
    *v24 = 136315650;
    v25 = *(v11 + 2);
    v97 = v2;
    v26 = v106;
    v25(v106, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v10);
    sub_26C46BCC4();
    v98 = v11;
    v99 = v10;
    (*(v11 + 1))(v26, v10);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v27 = sub_26C46C704();
    v29 = v28;
    v30 = *(v15 + 8);
    v30(v18, v14);
    v31 = sub_26C3E80A8(v27, v29, v110);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    v32 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v33 = *(v15 + 16);
    v33(v18, a1 + v32, v14);
    v34 = sub_26C46BB04();
    v36 = v35;
    v30(v18, v14);
    v37 = sub_26C3E80A8(v34, v36, v110);

    *(v24 + 14) = v37;
    *(v24 + 22) = 2080;
    if (qword_280497198 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v14, qword_2804985D8);
    v33(v18, v38, v14);
    v39 = sub_26C46BB04();
    v41 = v40;
    v30(v18, v14);
    v42 = sub_26C3E80A8(v39, v41, v110);

    *(v24 + 24) = v42;
    v43 = v96;
    _os_log_impl(&dword_26C3D6000, v96, v100, "SyncedModelManager[%s] Setting root model that had original UUID=%s to UUID=%s", v24, 0x20u);
    v44 = v95;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v44, -1, -1);
    MEMORY[0x26D6A18D0](v24, -1, -1);

    v11 = v98;
    v10 = v99;
    v15 = v107;
    a1 = v105;
    v2 = v97;
    v23 = 0x280497000;
  }

  else
  {
  }

  if (*(v23 + 408) != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v14, qword_2804985D8);
  v46 = v109;
  (*(v15 + 16))(v109, v45, v14);
  v47 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  swift_beginAccess();
  (*(v15 + 40))(a1 + v47, v46, v14);
  swift_endAccess();
  v48 = *(v2 + 24);
  *(v2 + 24) = a1;

  v49 = *(v2 + 48);

  v50 = sub_26C46BF84();
  v51 = sub_26C46C404();

  v52 = os_log_type_enabled(v50, v51);
  v53 = &unk_280498000;
  if (v49 != 1)
  {
    if (v52)
    {
      v66 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v110[0] = v100;
      *v66 = 136315138;
      v67 = v106;
      (*(v11 + 2))(v106, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v10);
      v68 = v109;
      sub_26C46BCC4();
      (*(v11 + 1))(v67, v10);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
      v69 = sub_26C46C704();
      v70 = v11;
      v72 = v71;
      v73 = v68;
      v53 = &unk_280498000;
      (*(v107 + 8))(v73, v14);
      v74 = sub_26C3E80A8(v69, v72, v110);
      v11 = v70;

      *(v66 + 4) = v74;
      _os_log_impl(&dword_26C3D6000, v50, v51, "SyncedModelManager[%s] Not initial authority so sending catchup request", v66, 0xCu);
      v75 = v100;
      __swift_destroy_boxed_opaque_existential_1(v100);
      MEMORY[0x26D6A18D0](v75, -1, -1);
      v76 = v66;
      a1 = v105;
      MEMORY[0x26D6A18D0](v76, -1, -1);
    }

    v77 = v104;
    (*(v11 + 7))(v104, 1, 1, v10);
    sub_26C414BC4(v2, 1, 1, v77);
    sub_26C3DE270(v77, &qword_280497268, &qword_26C46CFE0);
    v78 = *(a1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status);
    LOBYTE(v110[0]) = 1;

    sub_26C46C034();

    goto LABEL_18;
  }

  if (v52)
  {
    v54 = swift_slowAlloc();
    v98 = v54;
    v100 = swift_slowAlloc();
    v110[0] = v100;
    *v54 = 136315138;
    v99 = *(v11 + 2);
    v55 = v106;
    v99(v106, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v10);
    v56 = v109;
    sub_26C46BCC4();
    (*(v11 + 1))(v55, v10);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v57 = sub_26C46C704();
    v58 = v11;
    v60 = v59;
    (*(v107 + 8))(v56, v14);
    v61 = sub_26C3E80A8(v57, v60, v110);
    v11 = v58;

    v62 = v98;
    *(v98 + 1) = v61;
    v63 = v62;
    _os_log_impl(&dword_26C3D6000, v50, v51, "SyncedModelManager[%s] Is initial authority", v62, 0xCu);
    v64 = v100;
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x26D6A18D0](v64, -1, -1);
    MEMORY[0x26D6A18D0](v63, -1, -1);

    v65 = v99;
  }

  else
  {

    v65 = *(v11 + 2);
  }

  v79 = v104;
  v65(v104, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v10);
  (*(v11 + 7))(v79, 0, 1, v10);
  sub_26C414BC4(v2, 1, 1, v79);
  result = sub_26C3DE270(v79, &qword_280497268, &qword_26C46CFE0);
  v53 = &unk_280498000;
  if (*(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_options))
  {
LABEL_18:
    result = sub_26C3EC674();
  }

  if (*(v2 + v53[175]) == 1)
  {

    v81 = sub_26C46BF84();
    v82 = sub_26C46C404();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v110[0] = v84;
      *v83 = 136315138;
      v85 = v106;
      (*(v11 + 2))(v106, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v10);
      v86 = v109;
      sub_26C46BCC4();
      (*(v11 + 1))(v85, v10);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
      v87 = sub_26C46C704();
      v88 = v14;
      v90 = v89;
      (*(v107 + 8))(v86, v88);
      v91 = sub_26C3E80A8(v87, v90, v110);

      *(v83 + 4) = v91;
      _os_log_impl(&dword_26C3D6000, v81, v82, "SyncedModelManager[%s] Broadcasting existing state", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x26D6A18D0](v84, -1, -1);
      MEMORY[0x26D6A18D0](v83, -1, -1);
    }

    v93 = v101;
    v92 = v102;
    v94 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x277CCB260], v103);
    sub_26C3ECC34(v93);
    return (*(v92 + 8))(v93, v94);
  }

  return result;
}

uint64_t sub_26C3EC674()
{
  v1 = sub_26C46BCF4();
  v50 = *(v1 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x28223BE20](v1);
  v49 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SyncMessage(0);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CatchupRequestMessage(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - v11;
  v12 = sub_26C46BCD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26C46BB54();
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v21 = sub_26C46BFA4();
  __swift_project_value_buffer(v21, qword_280498530);

  v22 = sub_26C46BF84();
  v23 = sub_26C46C404();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = v1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v45 = v0;
    v27 = v26;
    v51 = v26;
    *v25 = 136315138;
    (*(v13 + 16))(v16, v45 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v12);
    sub_26C46BCC4();
    (*(v13 + 8))(v16, v12);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v28 = v44;
    v29 = sub_26C46C704();
    v31 = v30;
    (*(v43 + 8))(v20, v28);
    v32 = sub_26C3E80A8(v29, v31, &v51);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_26C3D6000, v22, v23, "SyncedModelManager[%s] Requesting catchup", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x26D6A18D0](v27, -1, -1);
    v33 = v25;
    v1 = v42;
    MEMORY[0x26D6A18D0](v33, -1, -1);
  }

  v34 = v48;
  sub_26C46BD14();
  v35 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v36 = *(*(v35 - 8) + 56);
  v36(v6, 1, 1, v35);
  v37 = &v6[*(v47 + 20)];
  sub_26C46BD14();
  v38 = v46;
  sub_26C3F69B8(v34, v46, type metadata accessor for CatchupRequestMessage);
  sub_26C3DE270(v6, &qword_280497650, &unk_26C46D930);
  sub_26C3F6A20(v38, v6, type metadata accessor for CatchupRequestMessage);
  swift_storeEnumTagMultiPayload();
  v36(v6, 0, 1, v35);
  v40 = v49;
  v39 = v50;
  (*(v50 + 104))(v49, *MEMORY[0x277CCB260], v1);
  sub_26C3F5D78(v6, v40);
  (*(v39 + 8))(v40, v1);
  sub_26C3F6910(v34, type metadata accessor for CatchupRequestMessage);
  return sub_26C3F6910(v6, type metadata accessor for SyncMessage);
}

void sub_26C3ECC34(uint64_t a1)
{
  v2 = v1;
  v97 = type metadata accessor for SyncMessage(0);
  v4 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CatchupResponseMessage(0);
  v7 = *(*(v95 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v95);
  v96 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = (&v85 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497638, &unk_26C46D920);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v100 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v105 = &v85 - v19;
  v101 = type metadata accessor for ModelData(0);
  v20 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v106 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = sub_26C46BCD4();
  v22 = *(v103 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26C46BB54();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v2 + 24);
  if (v30)
  {
    v94 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v89 = a1;
    v90 = v6;
    v31 = qword_280497148;

    if (v31 != -1)
    {
      swift_once();
    }

    v99 = v11;
    v91 = v18;
    v32 = sub_26C46BFA4();
    v33 = __swift_project_value_buffer(v32, qword_280498530);

    v93 = v33;
    v34 = sub_26C46BF84();
    v35 = sub_26C46C404();

    v36 = os_log_type_enabled(v34, v35);
    v37 = &unk_280498000;
    v102 = v22;
    v88 = v25;
    v87 = v26;
    if (v36)
    {
      v38 = v26;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v92 = v2;
      v86 = v40;
      v107[0] = v40;
      *v39 = 136315138;
      v41 = v103;
      v42 = v104;
      (*(v102 + 16))(v104, v92 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v103);
      v43 = v94;
      sub_26C46BCC4();
      (*(v102 + 8))(v42, v41);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
      v44 = sub_26C46C704();
      v45 = v30;
      v47 = v46;
      (*(v38 + 8))(v43, v25);
      v48 = sub_26C3E80A8(v44, v47, v107);
      v30 = v45;
      v37 = &unk_280498000;

      *(v39 + 4) = v48;
      _os_log_impl(&dword_26C3D6000, v34, v35, "SyncedModelManager[%s] Sending catchup response for root model.", v39, 0xCu);
      v49 = v86;
      __swift_destroy_boxed_opaque_existential_1(v86);
      v2 = v92;
      MEMORY[0x26D6A18D0](v49, -1, -1);
      v50 = v39;
      v22 = v102;
      MEMORY[0x26D6A18D0](v50, -1, -1);
    }

    else
    {

      v41 = v103;
    }

    sub_26C416CE4(v106);
    v62 = v37[174];
    v63 = v30;
    v64 = *(v22 + 16);
    v85 = v62;
    v65 = v105;
    v92 = v22 + 16;
    v86 = v64;
    (v64)(v105, v2 + v62, v41);
    (*(v22 + 56))(v65, 0, 1, v41);
    v66 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    swift_beginAccess();
    v67 = v100;
    v68 = *(v99 + 48);
    sub_26C3DDD48(v65, v100, &qword_280497268, &qword_26C46CFE0);
    v103 = v63;
    sub_26C3DDD48(v63 + v66, v67 + v68, &qword_280497268, &qword_26C46CFE0);
    v69 = *(v22 + 48);
    if (v69(v67, 1, v41) == 1)
    {
      sub_26C3DE270(v65, &qword_280497268, &qword_26C46CFE0);
      if (v69(v67 + v68, 1, v41) == 1)
      {
        sub_26C3DE270(v67, &qword_280497268, &qword_26C46CFE0);
        v70 = 1;
LABEL_21:
        sub_26C3F6970(&qword_280497648, type metadata accessor for ModelData);
        v75 = sub_26C46BE64();
        v77 = v76;
        v78 = v98;
        *v98 = xmmword_26C46D3C0;
        v79 = v78 + *(v95 + 32);
        sub_26C46BD14();
        sub_26C3DDEA8(*v78, *(v78 + 8));
        *v78 = v75;
        *(v78 + 8) = v77;
        *(v78 + 16) = 0;
        *(v78 + 24) = v70 & 1;
        v80 = type metadata accessor for SyncMessage.OneOf_Contents(0);
        v81 = *(*(v80 - 8) + 56);
        v82 = v90;
        v81(v90, 1, 1, v80);
        v83 = v82 + *(v97 + 20);
        sub_26C46BD14();
        v84 = v96;
        sub_26C3F69B8(v78, v96, type metadata accessor for CatchupResponseMessage);
        sub_26C3DE270(v82, &qword_280497650, &unk_26C46D930);
        sub_26C3F6A20(v84, v82, type metadata accessor for CatchupResponseMessage);
        swift_storeEnumTagMultiPayload();
        v81(v82, 0, 1, v80);
        sub_26C3F5D78(v82, v89);

        sub_26C3F6910(v106, type metadata accessor for ModelData);
        sub_26C3F6910(v82, type metadata accessor for SyncMessage);
        sub_26C3F6910(v78, type metadata accessor for CatchupResponseMessage);
        return;
      }
    }

    else
    {
      v71 = v91;
      sub_26C3DDD48(v67, v91, &qword_280497268, &qword_26C46CFE0);
      if (v69(v67 + v68, 1, v41) != 1)
      {
        v73 = v104;
        (*(v22 + 32))(v104, v67 + v68, v41);
        sub_26C3F6970(&qword_280497658, MEMORY[0x277CCB248]);
        v70 = sub_26C46C1C4();
        v74 = *(v22 + 8);
        v74(v73, v41);
        sub_26C3DE270(v105, &qword_280497268, &qword_26C46CFE0);
        v74(v71, v41);
        sub_26C3DE270(v67, &qword_280497268, &qword_26C46CFE0);
        goto LABEL_21;
      }

      sub_26C3DE270(v105, &qword_280497268, &qword_26C46CFE0);
      (*(v22 + 8))(v71, v41);
    }

    sub_26C3DE270(v67, &qword_280497638, &unk_26C46D920);
    v70 = 0;
    goto LABEL_21;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v51 = sub_26C46BFA4();
  __swift_project_value_buffer(v51, qword_280498530);

  v106 = sub_26C46BF84();
  v52 = sub_26C46C404();

  if (os_log_type_enabled(v106, v52))
  {
    v53 = v22;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v107[0] = v55;
    *v54 = 136315138;
    v56 = v103;
    v57 = v104;
    (*(v53 + 16))(v104, v2 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v103);
    sub_26C46BCC4();
    (*(v53 + 8))(v57, v56);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v58 = sub_26C46C704();
    v60 = v59;
    (*(v26 + 8))(v29, v25);
    v61 = sub_26C3E80A8(v58, v60, v107);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_26C3D6000, v106, v52, "SyncedModelManager[%s] Cannot send catchup because no root model exists", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x26D6A18D0](v55, -1, -1);
    MEMORY[0x26D6A18D0](v54, -1, -1);
  }

  else
  {
    v72 = v106;
  }
}

uint64_t sub_26C3EDA30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v160 = a2;
  v149 = a3;
  v146 = type metadata accessor for SyncedModelManager.SyncedModelMessageBufferItem(0);
  v147 = *(v146 - 8);
  v4 = *(v147 + 64);
  MEMORY[0x28223BE20](v146);
  v148 = (&v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_26C46BB54();
  v156 = *(v6 - 8);
  v157 = v6;
  v7 = *(v156 + 8);
  MEMORY[0x28223BE20](v6);
  v155 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C46BCD4();
  v10 = *(v9 - 8);
  v158 = v9;
  v159 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v152 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v138 - v15;
  MEMORY[0x28223BE20](v14);
  v151 = &v138 - v16;
  v17 = type metadata accessor for CatchupResponseMessage(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v145 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v138 - v22;
  v153 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  isa = v153[-1].isa;
  v24 = *(isa + 8);
  v25 = MEMORY[0x28223BE20](v153);
  v27 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v138 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v138 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v138 - v34;
  v36 = sub_26C46BD44();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = type metadata accessor for SyncMessage(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (&v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = 0;
  memset(v162, 0, sizeof(v162));
  sub_26C3DDDB0(a1, v160);
  sub_26C46BD34();
  sub_26C3F6970(&qword_280497660, type metadata accessor for SyncMessage);
  sub_26C46BE54();
  v42 = v33;
  v160 = v27;
  v43 = v151;
  v44 = v152;
  v144 = v35;
  sub_26C3DDD48(v41, v23, &qword_280497650, &unk_26C46D930);
  if ((*(isa + 6))(v23, 1, v153) == 1)
  {
    sub_26C3DE270(v23, &qword_280497650, &unk_26C46D930);
    v45 = v161;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v46 = sub_26C46BFA4();
    __swift_project_value_buffer(v46, qword_280498530);

    v47 = sub_26C46BF84();
    v48 = sub_26C46C3E4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v162[0] = v50;
      *v49 = 136315138;
      v51 = v159;
      v52 = v45 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
      v53 = v154;
      v54 = v158;
      (*(v159 + 16))(v154, v52, v158);
      v55 = v155;
      sub_26C46BCC4();
      (*(v51 + 8))(v53, v54);
      sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
      v56 = v157;
      v57 = sub_26C46C704();
      v59 = v58;
      (*(v156 + 1))(v55, v56);
      v60 = sub_26C3E80A8(v57, v59, v162);

      *(v49 + 4) = v60;
      _os_log_impl(&dword_26C3D6000, v47, v48, "SyncedModelManager[%s] Received message without contents", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x26D6A18D0](v50, -1, -1);
      MEMORY[0x26D6A18D0](v49, -1, -1);
    }

    goto LABEL_28;
  }

  v61 = v144;
  sub_26C3F6A20(v23, v144, type metadata accessor for SyncMessage.OneOf_Contents);
  v62 = v161;
  if (!sub_26C3EA940())
  {
    sub_26C3EED28(v41, v149);
    v96 = v61;
LABEL_27:
    sub_26C3F6910(v96, type metadata accessor for SyncMessage.OneOf_Contents);
LABEL_28:
    v136 = v41;
    return sub_26C3F6910(v136, type metadata accessor for SyncMessage);
  }

  v63 = v62;
  sub_26C3F69B8(v61, v33, type metadata accessor for SyncMessage.OneOf_Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = v149;
  if (EnumCaseMultiPayload != 2)
  {
    sub_26C3F6910(v42, type metadata accessor for SyncMessage.OneOf_Contents);
    v67 = v159;
    v97 = v44;
    v98 = v30;
LABEL_17:
    v99 = v63;
    v100 = v65;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v101 = sub_26C46BFA4();
    __swift_project_value_buffer(v101, qword_280498530);
    sub_26C3F69B8(v144, v98, type metadata accessor for SyncMessage.OneOf_Contents);
    v102 = *(v67 + 16);
    v151 = v98;
    v103 = v158;
    v102(v97, v100, v158);

    v104 = sub_26C46BF84();
    v105 = sub_26C46C404();

    LODWORD(v145) = v105;
    if (os_log_type_enabled(v104, v105))
    {
      v106 = v41;
      v107 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *&v162[0] = v143;
      *v107 = 136315650;
      v142 = v104;
      v108 = v154;
      v102(v154, (v99 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant), v103);
      v109 = v155;
      sub_26C46BCC4();
      v110 = *(v67 + 8);
      v159 = v67 + 8;
      v141 = v110;
      v110(v108, v103);
      v140 = sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
      v154 = (v67 + 16);
      v111 = v157;
      v112 = sub_26C46C704();
      v114 = v113;
      isa = v106;
      v139 = *(v156 + 1);
      v139(v109, v111);
      v115 = sub_26C3E80A8(v112, v114, v162);
      v99 = v161;

      *(v107 + 4) = v115;
      *(v107 + 12) = 256;
      v116 = v151;
      v117 = v160;
      sub_26C3F69B8(v151, v160, type metadata accessor for SyncMessage.OneOf_Contents);
      LOBYTE(v115) = swift_getEnumCaseMultiPayload();
      v156 = v102;
      sub_26C3F6910(v117, type metadata accessor for SyncMessage.OneOf_Contents);
      sub_26C3F6910(v116, type metadata accessor for SyncMessage.OneOf_Contents);
      *(v107 + 14) = v115;
      *(v107 + 15) = 2080;
      v118 = v152;
      sub_26C46BCC4();
      v119 = sub_26C46C704();
      v121 = v120;
      v139(v109, v111);
      v122 = v149;
      v41 = isa;
      v141(v118, v103);
      v123 = sub_26C3E80A8(v119, v121, v162);

      *(v107 + 17) = v123;
      v124 = v142;
      _os_log_impl(&dword_26C3D6000, v142, v145, "SyncedModelManager[%s] Received message before root model has caught up. Caching in precatchup buffer. Message was type:%hhu from participant:%s", v107, 0x19u);
      v125 = v143;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v125, -1, -1);
      v126 = v107;
      v100 = v122;
      v127 = v156;
      MEMORY[0x26D6A18D0](v126, -1, -1);
    }

    else
    {
      sub_26C3F6910(v151, type metadata accessor for SyncMessage.OneOf_Contents);

      (*(v67 + 8))(v97, v103);
      v127 = v102;
    }

    v128 = v147;
    v129 = v148;
    v130 = v146;
    sub_26C3F69B8(v41, v148, type metadata accessor for SyncMessage);
    v127(v129 + *(v130 + 20), v100, v103);
    v131 = OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_precatchupMessageBuffer;
    swift_beginAccess();
    v132 = *(v99 + v131);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v99 + v131) = v132;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v132 = sub_26C42BDE8(0, v132[2] + 1, 1, v132);
      *(v99 + v131) = v132;
    }

    v135 = v132[2];
    v134 = v132[3];
    if (v135 >= v134 >> 1)
    {
      v132 = sub_26C42BDE8(v134 > 1, v135 + 1, 1, v132);
    }

    v132[2] = v135 + 1;
    sub_26C3F6A20(v148, v132 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v135, type metadata accessor for SyncedModelManager.SyncedModelMessageBufferItem);
    *(v99 + v131) = v132;
    swift_endAccess();
    v96 = v144;
    goto LABEL_27;
  }

  v66 = v145;
  sub_26C3F6A20(v42, v145, type metadata accessor for CatchupResponseMessage);
  v67 = v159;
  if (*(v66 + 24) != 1)
  {
    v97 = v44;
    v98 = v30;
    sub_26C3F6910(v66, type metadata accessor for CatchupResponseMessage);
    goto LABEL_17;
  }

  isa = v41;
  v68 = v63;
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v69 = sub_26C46BFA4();
  __swift_project_value_buffer(v69, qword_280498530);
  v70 = *(v67 + 16);
  v71 = v43;
  v72 = v43;
  v73 = v65;
  v74 = v65;
  v75 = v158;
  v70(v72, v74, v158);

  v76 = sub_26C46BF84();
  v77 = sub_26C46C404();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v148 = v78;
    v160 = swift_slowAlloc();
    *&v162[0] = v160;
    *v78 = 136315394;
    v153 = v76;
    v79 = v154;
    v70(v154, (v68 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant), v75);
    LODWORD(v152) = v77;
    v80 = v155;
    sub_26C46BCC4();
    v159 = *(v67 + 8);
    (v159)(v79, v75);
    sub_26C3F6970(&qword_280497640, MEMORY[0x277CC95F0]);
    v81 = v157;
    v82 = sub_26C46C704();
    v84 = v83;
    v85 = *(v156 + 1);
    v85(v80, v81);
    v86 = sub_26C3E80A8(v82, v84, v162);

    v87 = v148;
    *(v148 + 1) = v86;
    *(v87 + 12) = 2080;
    sub_26C46BCC4();
    v88 = sub_26C46C704();
    v90 = v89;
    v73 = v149;
    v85(v80, v81);
    v91 = v144;
    v92 = isa;
    (v159)(v71, v158);
    v93 = sub_26C3E80A8(v88, v90, v162);

    *(v87 + 14) = v93;
    v94 = v153;
    _os_log_impl(&dword_26C3D6000, v153, v152, "SyncedModelManager[%s] Received catchup response from authority:%s)", v87, 0x16u);
    v95 = v160;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v95, -1, -1);
    MEMORY[0x26D6A18D0](v87, -1, -1);
  }

  else
  {

    (*(v67 + 8))(v71, v75);
    v92 = isa;
    v91 = v144;
  }

  sub_26C3EED28(v92, v73);
  sub_26C3F6910(v145, type metadata accessor for CatchupResponseMessage);
  sub_26C3F6910(v91, type metadata accessor for SyncMessage.OneOf_Contents);
  v136 = v92;
  return sub_26C3F6910(v136, type metadata accessor for SyncMessage);
}